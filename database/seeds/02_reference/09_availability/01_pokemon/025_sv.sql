-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability in Pokémon Scarlet and Violet and List of Pokémon by Paldea Pokedex number.
-- Cross-check: PokemonDB Scarlet/Violet Pokedex, PokemonDB version exclusives, and Serebii Scarlet/Violet version exclusives.
-- Scope note: base Scarlet/Violet content only. HOME-only compatible Pokémon, event raid additions, Teal Mask, and Indigo Disk availability are seeded separately.
-- Form policy note: persistent, regional, evolution-relevant, item-driven, and team-planning forms are included when they are seeded in Voydex; battle-only and cosmetic forms are excluded.
-- Method note: evolved forms prefer evolution when an in-game evolution path exists; version exclusives use game-specific source rows plus external-trade rows for the paired version.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Scarlet / Violet
-- Table: reference.pokemon_availability
-- Scope: base Paldea Pokedex availability plus normal base-game form/gift/trade rows for Scarlet/Violet.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0906 Sprigatito - Starter
  (906, 90600, 23, NULL, 3, 'Paldea first partner Pokémon choice in Scarlet/Violet.'),
  -- #0907 Floragato - Evolution
  (907, 90700, 23, NULL, 7, NULL),
  -- #0908 Meowscarada - Evolution
  (908, 90800, 23, NULL, 7, NULL),
  -- #0909 Fuecoco - Starter
  (909, 90900, 23, NULL, 3, 'Paldea first partner Pokémon choice in Scarlet/Violet.'),
  -- #0910 Crocalor - Evolution
  (910, 91000, 23, NULL, 7, NULL),
  -- #0911 Skeledirge - Evolution
  (911, 91100, 23, NULL, 7, NULL),
  -- #0912 Quaxly - Starter
  (912, 91200, 23, NULL, 3, 'Paldea first partner Pokémon choice in Scarlet/Violet.'),
  -- #0913 Quaxwell - Evolution
  (913, 91300, 23, NULL, 7, NULL),
  -- #0914 Quaquaval - Evolution
  (914, 91400, 23, NULL, 7, NULL),
  -- #0915 Lechonk - Native Encounter
  (915, 91500, 23, NULL, 1, NULL),
  -- #0916 Oinkologne - Evolution
  (916, 91600, 23, NULL, 7, NULL),
  -- #0917 Tarountula - Native Encounter
  (917, 91700, 23, NULL, 1, NULL),
  -- #0918 Spidops - Evolution
  (918, 91800, 23, NULL, 7, NULL),
  -- #0919 Nymble - Native Encounter
  (919, 91900, 23, NULL, 1, NULL),
  -- #0920 Lokix - Evolution
  (920, 92000, 23, NULL, 7, NULL),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 23, NULL, 1, NULL),
  -- #0188 Skiploom - Evolution
  (188, 18800, 23, NULL, 7, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 23, NULL, 7, NULL),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 23, NULL, 1, NULL),
  -- #0662 Fletchinder - Evolution
  (662, 66200, 23, NULL, 7, NULL),
  -- #0663 Talonflame - Evolution
  (663, 66300, 23, NULL, 7, NULL),
  -- #0921 Pawmi - Native Encounter
  (921, 92100, 23, NULL, 1, NULL),
  -- #0922 Pawmo - Evolution
  (922, 92200, 23, NULL, 7, NULL),
  -- #0923 Pawmot - Evolution
  (923, 92300, 23, NULL, 7, NULL),
  -- #0228 Houndour - Native Encounter
  (228, 22800, 23, NULL, 1, NULL),
  -- #0229 Houndoom - Evolution
  (229, 22900, 23, NULL, 7, NULL),
  -- #0734 Yungoos - Native Encounter
  (734, 73400, 23, NULL, 1, NULL),
  -- #0735 Gumshoos - Evolution
  (735, 73500, 23, NULL, 7, NULL),
  -- #0819 Skwovet - Native Encounter
  (819, 81900, 23, NULL, 1, NULL),
  -- #0820 Greedent - Evolution
  (820, 82000, 23, NULL, 7, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 23, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 23, NULL, 7, NULL),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 23, NULL, 1, NULL),
  -- #0402 Kricketune - Evolution
  (402, 40200, 23, NULL, 7, NULL),
  -- #0664 Scatterbug - Native Encounter
  (664, 66400, 23, NULL, 1, NULL),
  -- #0665 Spewpa - Evolution
  (665, 66500, 23, NULL, 7, NULL),
  -- #0666 Vivillon - Evolution
  (666, 66600, 23, NULL, 7, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 23, NULL, 1, NULL),
  -- #0416 Vespiquen - Evolution
  (416, 41600, 23, NULL, 7, NULL),
  -- #0821 Rookidee - Native Encounter
  (821, 82100, 23, NULL, 1, NULL),
  -- #0822 Corvisquire - Evolution
  (822, 82200, 23, NULL, 7, NULL),
  -- #0823 Corviknight - Evolution
  (823, 82300, 23, NULL, 7, NULL),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 23, NULL, 1, NULL),
  -- #0113 Chansey - Evolution
  (113, 11300, 23, NULL, 7, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 23, NULL, 7, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 23, NULL, 1, NULL),
  -- #0183 Marill - Evolution
  (183, 18300, 23, NULL, 7, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 23, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 23, NULL, 1, NULL),
  -- #0284 Masquerain - Evolution
  (284, 28400, 23, NULL, 7, NULL),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 23, NULL, 1, NULL),
  -- #0419 Floatzel - Evolution
  (419, 41900, 23, NULL, 7, NULL),
  -- #0194 Paldean Wooper - Native Encounter
  (194, 19401, 23, NULL, 1, 'Paldean Wooper wild encounter in Scarlet/Violet.'),
  -- #0980 Clodsire - Evolution
  (980, 98000, 23, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 23, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 23, NULL, 7, NULL),
  -- #0833 Chewtle - Native Encounter
  (833, 83300, 23, NULL, 1, NULL),
  -- #0834 Drednaw - Evolution
  (834, 83400, 23, NULL, 7, NULL),
  -- #0174 Igglybuff - Native Encounter
  (174, 17400, 23, NULL, 1, NULL),
  -- #0039 Jigglypuff - Evolution
  (39, 3900, 23, NULL, 7, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 23, NULL, 7, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 23, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 23, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 23, NULL, 7, NULL),
  -- #0475 Gallade - Evolution
  (475, 47500, 23, NULL, 7, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 23, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 23, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 23, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 23, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 23, NULL, 7, NULL),
  -- #0924 Tandemaus - Native Encounter
  (924, 92400, 23, NULL, 1, NULL),
  -- #0925 Maushold - Evolution
  (925, 92500, 23, NULL, 7, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 23, NULL, 1, NULL),
  -- #0025 Pikachu - Evolution
  (25, 2500, 23, NULL, 7, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 23, NULL, 7, NULL),
  -- #0926 Fidough - Native Encounter
  (926, 92600, 23, NULL, 1, NULL),
  -- #0927 Dachsbun - Evolution
  (927, 92700, 23, NULL, 7, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 23, NULL, 1, NULL),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 23, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 23, NULL, 7, NULL),
  -- #0761 Bounsweet - Native Encounter
  (761, 76100, 23, NULL, 1, NULL),
  -- #0762 Steenee - Evolution
  (762, 76200, 23, NULL, 7, NULL),
  -- #0763 Tsareena - Evolution
  (763, 76300, 23, NULL, 7, NULL),
  -- #0928 Smoliv - Native Encounter
  (928, 92800, 23, NULL, 1, NULL),
  -- #0929 Dolliv - Evolution
  (929, 92900, 23, NULL, 7, NULL),
  -- #0930 Arboliva - Evolution
  (930, 93000, 23, NULL, 7, NULL),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 23, NULL, 1, NULL),
  -- #0185 Sudowoodo - Evolution
  (185, 18500, 23, NULL, 7, NULL),
  -- #0744 Rockruff - Native Encounter
  (744, 74400, 23, NULL, 1, NULL),
  -- #0745 Lycanroc - Evolution
  (745, 74500, 23, NULL, 7, NULL),
  -- #0837 Rolycoly - Native Encounter
  (837, 83700, 23, NULL, 1, NULL),
  -- #0838 Carkol - Evolution
  (838, 83800, 23, NULL, 7, NULL),
  -- #0839 Coalossal - Evolution
  (839, 83900, 23, NULL, 7, NULL),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 23, NULL, 1, NULL),
  -- #0404 Luxio - Evolution
  (404, 40400, 23, NULL, 7, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 23, NULL, 7, NULL),
  -- #0396 Starly - Native Encounter
  (396, 39600, 23, NULL, 1, NULL),
  -- #0397 Staravia - Evolution
  (397, 39700, 23, NULL, 7, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 23, NULL, 7, NULL),
  -- #0741 Oricorio - Native Encounter
  (741, 74100, 23, NULL, 1, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 23, NULL, 1, NULL),
  -- #0180 Flaaffy - Evolution
  (180, 18000, 23, NULL, 7, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 23, NULL, 7, NULL),
  -- #0548 Petilil - Native Encounter
  (548, 54800, 23, NULL, 1, NULL),
  -- #0549 Lilligant - Evolution
  (549, 54900, 23, NULL, 7, NULL),
  -- #0285 Shroomish - Native Encounter
  (285, 28500, 23, NULL, 1, NULL),
  -- #0286 Breloom - Evolution
  (286, 28600, 23, NULL, 7, NULL),
  -- #0840 Applin - Native Encounter
  (840, 84000, 23, NULL, 1, NULL),
  -- #0841 Flapple - Evolution
  (841, 84100, 23, NULL, 7, NULL),
  -- #0842 Appletun - Evolution
  (842, 84200, 23, NULL, 7, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 23, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 23, NULL, 7, NULL),
  -- #0931 Squawkabilly - Native Encounter
  (931, 93100, 23, NULL, 1, NULL),
  -- #0200 Misdreavus - Violet - Native Encounter
  (200, 20000, 23, 37, 1, NULL),
  -- #0200 Misdreavus - Scarlet - External Trade
  (200, 20000, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0429 Mismagius - Violet - Evolution
  (429, 42900, 23, 37, 7, NULL),
  -- #0429 Mismagius - Scarlet - External Trade
  (429, 42900, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 23, NULL, 1, NULL),
  -- #0297 Hariyama - Evolution
  (297, 29700, 23, NULL, 7, NULL),
  -- #0739 Crabrawler - Native Encounter
  (739, 73900, 23, NULL, 1, NULL),
  -- #0740 Crabominable - Evolution
  (740, 74000, 23, NULL, 7, NULL),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 23, NULL, 1, NULL),
  -- #0758 Salazzle - Evolution
  (758, 75800, 23, NULL, 7, NULL),
  -- #0231 Phanpy - Native Encounter
  (231, 23100, 23, NULL, 1, NULL),
  -- #0232 Donphan - Evolution
  (232, 23200, 23, NULL, 7, NULL),
  -- #0878 Cufant - Native Encounter
  (878, 87800, 23, NULL, 1, NULL),
  -- #0879 Copperajah - Evolution
  (879, 87900, 23, NULL, 7, NULL),
  -- #0443 Gible - Native Encounter
  (443, 44300, 23, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 23, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 23, NULL, 7, NULL),
  -- #0932 Nacli - Native Encounter
  (932, 93200, 23, NULL, 1, NULL),
  -- #0933 Naclstack - Evolution
  (933, 93300, 23, NULL, 7, NULL),
  -- #0934 Garganacl - Evolution
  (934, 93400, 23, NULL, 7, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 23, NULL, 1, NULL),
  -- #0279 Pelipper - Evolution
  (279, 27900, 23, NULL, 7, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 23, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 23, NULL, 7, NULL),
  -- #0846 Arrokuda - Native Encounter
  (846, 84600, 23, NULL, 1, NULL),
  -- #0847 Barraskewda - Evolution
  (847, 84700, 23, NULL, 7, NULL),
  -- #0550 Basculin - Native Encounter
  (550, 55000, 23, NULL, 1, NULL),
  -- #0316 Gulpin - Violet - Native Encounter
  (316, 31600, 23, 37, 1, NULL),
  -- #0316 Gulpin - Scarlet - External Trade
  (316, 31600, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0317 Swalot - Violet - Evolution
  (317, 31700, 23, 37, 7, NULL),
  -- #0317 Swalot - Scarlet - External Trade
  (317, 31700, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0052 Meowth - Native Encounter
  (52, 5200, 23, NULL, 1, NULL),
  -- #0053 Persian - Evolution
  (53, 5300, 23, NULL, 7, NULL),
  -- #0425 Drifloon - Scarlet - Native Encounter
  (425, 42500, 23, 36, 1, NULL),
  -- #0425 Drifloon - Violet - External Trade
  (425, 42500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0426 Drifblim - Scarlet - Evolution
  (426, 42600, 23, 36, 7, NULL),
  -- #0426 Drifblim - Violet - External Trade
  (426, 42600, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0669 Flabebe - Native Encounter
  (669, 66900, 23, NULL, 1, NULL),
  -- #0670 Floette - Evolution
  (670, 67000, 23, NULL, 7, NULL),
  -- #0671 Florges - Evolution
  (671, 67100, 23, NULL, 7, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 23, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 23, NULL, 7, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 23, NULL, 1, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 23, NULL, 1, NULL),
  -- #0323 Camerupt - Evolution
  (323, 32300, 23, NULL, 7, NULL),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 23, NULL, 1, NULL),
  -- #0437 Bronzong - Evolution
  (437, 43700, 23, NULL, 7, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 23, NULL, 1, NULL),
  -- #0611 Fraxure - Evolution
  (611, 61100, 23, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 23, NULL, 7, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 23, NULL, 1, NULL),
  -- #0057 Primeape - Evolution
  (57, 5700, 23, NULL, 7, NULL),
  -- #0979 Annihilape - Evolution
  (979, 97900, 23, NULL, 7, NULL),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 23, NULL, 1, NULL),
  -- #0308 Medicham - Evolution
  (308, 30800, 23, NULL, 7, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 23, NULL, 1, NULL),
  -- #0448 Lucario - Evolution
  (448, 44800, 23, NULL, 7, NULL),
  -- #0935 Charcadet - Native Encounter
  (935, 93500, 23, NULL, 1, NULL),
  -- #0936 Armarouge - Scarlet - Evolution
  (936, 93600, 23, 36, 7, 'Evolves from Charcadet with Auspicious Armor, whose normal item source is Pokémon Scarlet.'),
  -- #0936 Armarouge - Violet - External Trade
  (936, 93600, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0937 Ceruledge - Violet - Evolution
  (937, 93700, 23, 37, 7, 'Evolves from Charcadet with Malicious Armor, whose normal item source is Pokémon Violet.'),
  -- #0937 Ceruledge - Scarlet - External Trade
  (937, 93700, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 23, NULL, 1, NULL),
  -- #0340 Whiscash - Evolution
  (340, 34000, 23, NULL, 7, NULL),
  -- #0938 Tadbulb - Native Encounter
  (938, 93800, 23, NULL, 1, NULL),
  -- #0939 Bellibolt - Evolution
  (939, 93900, 23, NULL, 7, NULL),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 23, NULL, 1, NULL),
  -- #0705 Sliggoo - Evolution
  (705, 70500, 23, NULL, 7, NULL),
  -- #0706 Goodra - Evolution
  (706, 70600, 23, NULL, 7, NULL),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 23, NULL, 1, NULL),
  -- #0454 Toxicroak - Evolution
  (454, 45400, 23, NULL, 7, NULL),
  -- #0940 Wattrel - Native Encounter
  (940, 94000, 23, NULL, 1, NULL),
  -- #0941 Kilowattrel - Evolution
  (941, 94100, 23, NULL, 7, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 23, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 23, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 23, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 23, NULL, 7, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 23, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 23, NULL, 7, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 23, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 23, NULL, 7, NULL),
  -- #0700 Sylveon - Evolution
  (700, 70000, 23, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 23, NULL, 1, NULL),
  -- #0982 Dudunsparce - Evolution
  (982, 98200, 23, NULL, 7, NULL),
  -- #0585 Deerling - Native Encounter
  (585, 58500, 23, NULL, 1, NULL),
  -- #0586 Sawsbuck - Evolution
  (586, 58600, 23, NULL, 7, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 23, NULL, 1, NULL),
  -- #0981 Farigiraf - Evolution
  (981, 98100, 23, NULL, 7, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 23, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 23, NULL, 7, NULL),
  -- #0942 Maschiff - Native Encounter
  (942, 94200, 23, NULL, 1, NULL),
  -- #0943 Mabosstiff - Evolution
  (943, 94300, 23, NULL, 7, NULL),
  -- #0848 Toxel - Native Encounter
  (848, 84800, 23, NULL, 1, NULL),
  -- #0849 Toxtricity - Evolution
  (849, 84900, 23, NULL, 7, NULL),
  -- #0702 Dedenne - Native Encounter
  (702, 70200, 23, NULL, 1, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 23, NULL, 1, NULL),
  -- #0944 Shroodle - Native Encounter
  (944, 94400, 23, NULL, 1, NULL),
  -- #0945 Grafaiai - Evolution
  (945, 94500, 23, NULL, 7, NULL),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 23, NULL, 1, NULL),
  -- #0590 Foongus - Native Encounter
  (590, 59000, 23, NULL, 1, NULL),
  -- #0591 Amoonguss - Evolution
  (591, 59100, 23, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 23, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 23, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 23, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 23, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 23, NULL, 7, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 23, NULL, 1, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 23, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 23, NULL, 7, NULL),
  -- #0216 Teddiursa - Native Encounter
  (216, 21600, 23, NULL, 1, NULL),
  -- #0217 Ursaring - Evolution
  (217, 21700, 23, NULL, 7, NULL),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 23, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 23, NULL, 1, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 23, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 23, NULL, 7, NULL),
  -- #0672 Skiddo - Native Encounter
  (672, 67200, 23, NULL, 1, NULL),
  -- #0673 Gogoat - Evolution
  (673, 67300, 23, NULL, 7, NULL),
  -- #0128 Paldean Tauros (Combat Breed) - Native Encounter
  (128, 12801, 23, NULL, 1, 'Paldean Tauros Combat Breed wild encounter in both Pokémon Scarlet and Pokémon Violet.'),
  -- #0128 Paldean Tauros (Blaze Breed) - Scarlet - Native Encounter
  (128, 12802, 23, 36, 1, 'Paldean Tauros Blaze Breed wild encounter in Pokémon Scarlet.'),
  -- #0128 Paldean Tauros (Blaze Breed) - Violet - External Trade
  (128, 12802, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0128 Paldean Tauros (Aqua Breed) - Violet - Native Encounter
  (128, 12803, 23, 37, 1, 'Paldean Tauros Aqua Breed wild encounter in Pokémon Violet.'),
  -- #0128 Paldean Tauros (Aqua Breed) - Scarlet - External Trade
  (128, 12803, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0667 Litleo - Native Encounter
  (667, 66700, 23, NULL, 1, NULL),
  -- #0668 Pyroar - Evolution
  (668, 66800, 23, NULL, 7, NULL),
  -- #0434 Stunky - Scarlet - Native Encounter
  (434, 43400, 23, 36, 1, NULL),
  -- #0434 Stunky - Violet - External Trade
  (434, 43400, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0435 Skuntank - Scarlet - Evolution
  (435, 43500, 23, 36, 7, NULL),
  -- #0435 Skuntank - Violet - External Trade
  (435, 43500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0570 Zorua - Native Encounter
  (570, 57000, 23, NULL, 1, NULL),
  -- #0571 Zoroark - Evolution
  (571, 57100, 23, NULL, 7, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 23, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 23, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 23, NULL, 1, NULL),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 23, NULL, 7, NULL),
  -- #0574 Gothita - Native Encounter
  (574, 57400, 23, NULL, 1, NULL),
  -- #0575 Gothorita - Evolution
  (575, 57500, 23, NULL, 7, NULL),
  -- #0576 Gothitelle - Evolution
  (576, 57600, 23, NULL, 7, NULL),
  -- #0854 Sinistea - Native Encounter
  (854, 85400, 23, NULL, 1, NULL),
  -- #0855 Polteageist - Evolution
  (855, 85500, 23, NULL, 7, NULL),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 23, NULL, 1, NULL),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 23, NULL, 1, NULL),
  -- #0876 Indeedee - Native Encounter
  (876, 87600, 23, NULL, 1, NULL),
  -- #0946 Bramblin - Native Encounter
  (946, 94600, 23, NULL, 1, NULL),
  -- #0947 Brambleghast - Evolution
  (947, 94700, 23, NULL, 7, NULL),
  -- #0948 Toedscool - Native Encounter
  (948, 94800, 23, NULL, 1, NULL),
  -- #0949 Toedscruel - Evolution
  (949, 94900, 23, NULL, 7, NULL),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 23, NULL, 1, NULL),
  -- #0753 Fomantis - Native Encounter
  (753, 75300, 23, NULL, 1, NULL),
  -- #0754 Lurantis - Evolution
  (754, 75400, 23, NULL, 7, NULL),
  -- #0950 Klawf - Native Encounter
  (950, 95000, 23, NULL, 1, NULL),
  -- #0951 Capsakid - Native Encounter
  (951, 95100, 23, NULL, 1, NULL),
  -- #0952 Scovillain - Evolution
  (952, 95200, 23, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 23, NULL, 1, NULL),
  -- #0332 Cacturne - Evolution
  (332, 33200, 23, NULL, 7, NULL),
  -- #0953 Rellor - Native Encounter
  (953, 95300, 23, NULL, 1, NULL),
  -- #0954 Rabsca - Evolution
  (954, 95400, 23, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 23, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 23, NULL, 7, NULL),
  -- #0204 Pineco - Native Encounter
  (204, 20400, 23, NULL, 1, NULL),
  -- #0205 Forretress - Evolution
  (205, 20500, 23, NULL, 7, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 23, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 23, NULL, 7, NULL),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 23, NULL, 1, NULL),
  -- #0955 Flittle - Native Encounter
  (955, 95500, 23, NULL, 1, NULL),
  -- #0956 Espathra - Evolution
  (956, 95600, 23, NULL, 7, NULL),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 23, NULL, 1, NULL),
  -- #0450 Hippowdon - Evolution
  (450, 45000, 23, NULL, 7, NULL),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 23, NULL, 1, NULL),
  -- #0552 Krokorok - Evolution
  (552, 55200, 23, NULL, 7, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 23, NULL, 7, NULL),
  -- #0843 Silicobra - Native Encounter
  (843, 84300, 23, NULL, 1, NULL),
  -- #0844 Sandaconda - Evolution
  (844, 84400, 23, NULL, 7, NULL),
  -- #0749 Mudbray - Native Encounter
  (749, 74900, 23, NULL, 1, NULL),
  -- #0750 Mudsdale - Evolution
  (750, 75000, 23, NULL, 7, NULL),
  -- #0636 Larvesta - Native Encounter
  (636, 63600, 23, NULL, 1, NULL),
  -- #0637 Volcarona - Evolution
  (637, 63700, 23, NULL, 7, NULL),
  -- #0371 Bagon - Violet - Native Encounter
  (371, 37100, 23, 37, 1, NULL),
  -- #0371 Bagon - Scarlet - External Trade
  (371, 37100, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0372 Shelgon - Violet - Evolution
  (372, 37200, 23, 37, 7, NULL),
  -- #0372 Shelgon - Scarlet - External Trade
  (372, 37200, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0373 Salamence - Violet - Evolution
  (373, 37300, 23, 37, 7, NULL),
  -- #0373 Salamence - Scarlet - External Trade
  (373, 37300, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0957 Tinkatink - Native Encounter
  (957, 95700, 23, NULL, 1, NULL),
  -- #0958 Tinkatuff - Evolution
  (958, 95800, 23, NULL, 7, NULL),
  -- #0959 Tinkaton - Evolution
  (959, 95900, 23, NULL, 7, NULL),
  -- #0856 Hatenna - Native Encounter
  (856, 85600, 23, NULL, 1, NULL),
  -- #0857 Hattrem - Evolution
  (857, 85700, 23, NULL, 7, NULL),
  -- #0858 Hatterene - Evolution
  (858, 85800, 23, NULL, 7, NULL),
  -- #0859 Impidimp - Native Encounter
  (859, 85900, 23, NULL, 1, NULL),
  -- #0860 Morgrem - Evolution
  (860, 86000, 23, NULL, 7, NULL),
  -- #0861 Grimmsnarl - Evolution
  (861, 86100, 23, NULL, 7, NULL),
  -- #0960 Wiglett - Native Encounter
  (960, 96000, 23, NULL, 1, NULL),
  -- #0961 Wugtrio - Evolution
  (961, 96100, 23, NULL, 7, NULL),
  -- #0962 Bombirdier - Native Encounter
  (962, 96200, 23, NULL, 1, NULL),
  -- #0963 Finizen - Native Encounter
  (963, 96300, 23, NULL, 1, NULL),
  -- #0964 Palafin - Evolution
  (964, 96400, 23, NULL, 7, NULL),
  -- #0965 Varoom - Native Encounter
  (965, 96500, 23, NULL, 1, NULL),
  -- #0966 Revavroom - Evolution
  (966, 96600, 23, NULL, 7, NULL),
  -- #0967 Cyclizar - Native Encounter
  (967, 96700, 23, NULL, 1, NULL),
  -- #0968 Orthworm - Native Encounter
  (968, 96800, 23, NULL, 1, NULL),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 23, NULL, 1, NULL),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 23, NULL, 1, NULL),
  -- #0354 Banette - Evolution
  (354, 35400, 23, NULL, 7, NULL),
  -- #0870 Falinks - Native Encounter
  (870, 87000, 23, NULL, 1, NULL),
  -- #0701 Hawlucha - Native Encounter
  (701, 70100, 23, NULL, 1, NULL),
  -- #0442 Spiritomb - Native Encounter
  (442, 44200, 23, NULL, 1, NULL),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 23, NULL, 1, NULL),
  -- #0715 Noivern - Evolution
  (715, 71500, 23, NULL, 7, NULL),
  -- #0885 Dreepy - Violet - Native Encounter
  (885, 88500, 23, 37, 1, NULL),
  -- #0885 Dreepy - Scarlet - External Trade
  (885, 88500, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0886 Drakloak - Violet - Evolution
  (886, 88600, 23, 37, 7, NULL),
  -- #0886 Drakloak - Scarlet - External Trade
  (886, 88600, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0887 Dragapult - Violet - Evolution
  (887, 88700, 23, 37, 7, NULL),
  -- #0887 Dragapult - Scarlet - External Trade
  (887, 88700, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0969 Glimmet - Native Encounter
  (969, 96900, 23, NULL, 1, NULL),
  -- #0970 Glimmora - Evolution
  (970, 97000, 23, NULL, 7, NULL),
  -- #0479 Rotom - Native Encounter
  (479, 47900, 23, NULL, 1, NULL),
  -- #0971 Greavard - Native Encounter
  (971, 97100, 23, NULL, 1, NULL),
  -- #0972 Houndstone - Evolution
  (972, 97200, 23, NULL, 7, NULL),
  -- #0765 Oranguru - Scarlet - Native Encounter
  (765, 76500, 23, 36, 1, NULL),
  -- #0765 Oranguru - Violet - External Trade
  (765, 76500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0766 Passimian - Violet - Native Encounter
  (766, 76600, 23, 37, 1, NULL),
  -- #0766 Passimian - Scarlet - External Trade
  (766, 76600, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0775 Komala - Native Encounter
  (775, 77500, 23, NULL, 1, NULL),
  -- #0246 Larvitar - Scarlet - Native Encounter
  (246, 24600, 23, 36, 1, NULL),
  -- #0246 Larvitar - Violet - External Trade
  (246, 24600, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0247 Pupitar - Scarlet - Evolution
  (247, 24700, 23, 36, 7, NULL),
  -- #0247 Pupitar - Violet - External Trade
  (247, 24700, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0248 Tyranitar - Scarlet - Evolution
  (248, 24800, 23, 36, 7, NULL),
  -- #0248 Tyranitar - Violet - External Trade
  (248, 24800, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0874 Stonjourner - Scarlet - Native Encounter
  (874, 87400, 23, 36, 1, NULL),
  -- #0874 Stonjourner - Violet - External Trade
  (874, 87400, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0875 Eiscue - Violet - Native Encounter
  (875, 87500, 23, 37, 1, NULL),
  -- #0875 Eiscue - Scarlet - External Trade
  (875, 87500, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0871 Pincurchin - Native Encounter
  (871, 87100, 23, NULL, 1, NULL),
  -- #0769 Sandygast - Native Encounter
  (769, 76900, 23, NULL, 1, NULL),
  -- #0770 Palossand - Evolution
  (770, 77000, 23, NULL, 7, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 23, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 23, NULL, 7, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 23, NULL, 7, NULL),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 23, NULL, 1, NULL),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 23, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 23, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 23, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 23, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 23, NULL, 1, NULL),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 23, NULL, 1, NULL),
  -- #0457 Lumineon - Evolution
  (457, 45700, 23, NULL, 7, NULL),
  -- #0779 Bruxish - Native Encounter
  (779, 77900, 23, NULL, 1, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 23, NULL, 1, NULL),
  -- #0690 Skrelp - Scarlet - Native Encounter
  (690, 69000, 23, 36, 1, NULL),
  -- #0690 Skrelp - Violet - External Trade
  (690, 69000, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0691 Dragalge - Scarlet - Evolution
  (691, 69100, 23, 36, 7, NULL),
  -- #0691 Dragalge - Violet - External Trade
  (691, 69100, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0692 Clauncher - Violet - Native Encounter
  (692, 69200, 23, 37, 1, NULL),
  -- #0692 Clauncher - Scarlet - External Trade
  (692, 69200, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0693 Clawitzer - Violet - Evolution
  (693, 69300, 23, 37, 7, NULL),
  -- #0693 Clawitzer - Scarlet - External Trade
  (693, 69300, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 23, NULL, 1, NULL),
  -- #0603 Eelektrik - Evolution
  (603, 60300, 23, NULL, 7, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 23, NULL, 7, NULL),
  -- #0747 Mareanie - Native Encounter
  (747, 74700, 23, NULL, 1, NULL),
  -- #0748 Toxapex - Evolution
  (748, 74800, 23, NULL, 7, NULL),
  -- #0973 Flamigo - Native Encounter
  (973, 97300, 23, NULL, 1, NULL),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 23, NULL, 1, NULL),
  -- #0148 Dragonair - Evolution
  (148, 14800, 23, NULL, 7, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 23, NULL, 7, NULL),
  -- #0872 Snom - Native Encounter
  (872, 87200, 23, NULL, 1, NULL),
  -- #0873 Frosmoth - Evolution
  (873, 87300, 23, NULL, 7, NULL),
  -- #0459 Snover - Native Encounter
  (459, 45900, 23, NULL, 1, NULL),
  -- #0460 Abomasnow - Evolution
  (460, 46000, 23, NULL, 7, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 23, NULL, 1, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 23, NULL, 1, NULL),
  -- #0614 Beartic - Evolution
  (614, 61400, 23, NULL, 7, NULL),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 23, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 23, NULL, 7, NULL),
  -- #0478 Froslass - Evolution
  (478, 47800, 23, NULL, 7, NULL),
  -- #0615 Cryogonal - Native Encounter
  (615, 61500, 23, NULL, 1, NULL),
  -- #0974 Cetoddle - Native Encounter
  (974, 97400, 23, NULL, 1, NULL),
  -- #0975 Cetitan - Evolution
  (975, 97500, 23, NULL, 7, NULL),
  -- #0712 Bergmite - Native Encounter
  (712, 71200, 23, NULL, 1, NULL),
  -- #0713 Avalugg - Evolution
  (713, 71300, 23, NULL, 7, NULL),
  -- #0627 Rufflet - Native Encounter
  (627, 62700, 23, NULL, 1, NULL),
  -- #0628 Braviary - Evolution
  (628, 62800, 23, NULL, 7, NULL),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 23, NULL, 1, NULL),
  -- #0625 Bisharp - Evolution
  (625, 62500, 23, NULL, 7, NULL),
  -- #0983 Kingambit - Evolution
  (983, 98300, 23, NULL, 7, NULL),
  -- #0633 Deino - Scarlet - Native Encounter
  (633, 63300, 23, 36, 1, NULL),
  -- #0633 Deino - Violet - External Trade
  (633, 63300, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0634 Zweilous - Scarlet - Evolution
  (634, 63400, 23, 36, 7, NULL),
  -- #0634 Zweilous - Violet - External Trade
  (634, 63400, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0635 Hydreigon - Scarlet - Evolution
  (635, 63500, 23, 36, 7, NULL),
  -- #0635 Hydreigon - Violet - External Trade
  (635, 63500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0976 Veluza - Native Encounter
  (976, 97600, 23, NULL, 1, NULL),
  -- #0977 Dondozo - Native Encounter
  (977, 97700, 23, NULL, 1, NULL),
  -- #0978 Tatsugiri - Native Encounter
  (978, 97800, 23, NULL, 1, NULL),
  -- #0984 Great Tusk - Scarlet - Native Encounter
  (984, 98400, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0984 Great Tusk - Violet - External Trade
  (984, 98400, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0985 Scream Tail - Scarlet - Native Encounter
  (985, 98500, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0985 Scream Tail - Violet - External Trade
  (985, 98500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0986 Brute Bonnet - Scarlet - Native Encounter
  (986, 98600, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0986 Brute Bonnet - Violet - External Trade
  (986, 98600, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0987 Flutter Mane - Scarlet - Native Encounter
  (987, 98700, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0987 Flutter Mane - Violet - External Trade
  (987, 98700, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0988 Slither Wing - Scarlet - Native Encounter
  (988, 98800, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0988 Slither Wing - Violet - External Trade
  (988, 98800, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0989 Sandy Shocks - Scarlet - Native Encounter
  (989, 98900, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #0989 Sandy Shocks - Violet - External Trade
  (989, 98900, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0990 Iron Treads - Violet - Native Encounter
  (990, 99000, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0990 Iron Treads - Scarlet - External Trade
  (990, 99000, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0991 Iron Bundle - Violet - Native Encounter
  (991, 99100, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0991 Iron Bundle - Scarlet - External Trade
  (991, 99100, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0992 Iron Hands - Violet - Native Encounter
  (992, 99200, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0992 Iron Hands - Scarlet - External Trade
  (992, 99200, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0993 Iron Jugulis - Violet - Native Encounter
  (993, 99300, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0993 Iron Jugulis - Scarlet - External Trade
  (993, 99300, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0994 Iron Moth - Violet - Native Encounter
  (994, 99400, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0994 Iron Moth - Scarlet - External Trade
  (994, 99400, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0995 Iron Thorns - Violet - Native Encounter
  (995, 99500, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #0995 Iron Thorns - Scarlet - External Trade
  (995, 99500, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0996 Frigibax - Native Encounter
  (996, 99600, 23, NULL, 1, NULL),
  -- #0997 Arctibax - Evolution
  (997, 99700, 23, NULL, 7, NULL),
  -- #0998 Baxcalibur - Evolution
  (998, 99800, 23, NULL, 7, NULL),
  -- #0999 Gimmighoul - Static Encounter
  (999, 99900, 23, NULL, 2, 'Gimmighoul Chest Form fixed encounter and roaming coin source in Scarlet/Violet.'),
  -- #1000 Gholdengo - Evolution
  (1000, 100000, 23, NULL, 7, NULL),
  -- #1001 Wo-Chien - Static Encounter
  (1001, 100100, 23, NULL, 2, 'Treasures of Ruin static stake-seal encounter in Scarlet/Violet.'),
  -- #1002 Chien-Pao - Static Encounter
  (1002, 100200, 23, NULL, 2, 'Treasures of Ruin static stake-seal encounter in Scarlet/Violet.'),
  -- #1003 Ting-Lu - Static Encounter
  (1003, 100300, 23, NULL, 2, 'Treasures of Ruin static stake-seal encounter in Scarlet/Violet.'),
  -- #1004 Chi-Yu - Static Encounter
  (1004, 100400, 23, NULL, 2, 'Treasures of Ruin static stake-seal encounter in Scarlet/Violet.'),
  -- #1005 Roaring Moon - Scarlet - Native Encounter
  (1005, 100500, 23, 36, 1, 'Area Zero wild encounter in Pokémon Scarlet.'),
  -- #1005 Roaring Moon - Violet - External Trade
  (1005, 100500, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #1006 Iron Valiant - Violet - Native Encounter
  (1006, 100600, 23, 37, 1, 'Area Zero wild encounter in Pokémon Violet.'),
  -- #1006 Iron Valiant - Scarlet - External Trade
  (1006, 100600, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #1007 Koraidon - Scarlet - Static Encounter
  (1007, 100700, 23, 36, 2, 'Pokémon Scarlet version legendary static encounter.'),
  -- #1007 Koraidon - Violet - External Trade
  (1007, 100700, 23, 37, 12, 'Version source is Pokémon Scarlet; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #1008 Miraidon - Violet - Static Encounter
  (1008, 100800, 23, 37, 2, 'Pokémon Violet version legendary static encounter.'),
  -- #1008 Miraidon - Scarlet - External Trade
  (1008, 100800, 23, 36, 12, 'Version source is Pokémon Violet; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0194 Wooper - In-Game Trade
  (194, 19400, 23, NULL, 5, 'Cascarrafa in-game trade for a Paldean Wooper in Scarlet/Violet.'),
  -- #0195 Quagsire - Evolution
  (195, 19500, 23, NULL, 7, 'Evolves from the Johtonian Wooper in-game trade in Scarlet/Violet.'),
  -- #0052 Galarian Meowth - Gift
  (52, 5202, 23, NULL, 4, 'Galarian Meowth gift from Salvatore after completing his Academy language class storyline.'),
  -- #0863 Perrserker - Evolution
  (863, 86300, 23, NULL, 7, 'Evolves from the Galarian Meowth gift in Scarlet/Violet.'),
  -- #0744 Rockruff (Own Tempo) - Raid or Special Encounter
  (744, 74401, 23, NULL, 10, 'Own Tempo Rockruff is available through special wild or Tera Raid sources in Scarlet/Violet.'),
  -- #0745 Lycanroc (Midnight) - Native Encounter
  (745, 74501, 23, NULL, 1, 'Lycanroc Midnight Form is available through night form access in Scarlet/Violet.'),
  -- #0745 Lycanroc (Dusk) - Evolution
  (745, 74502, 23, NULL, 7, 'Lycanroc Dusk Form evolves from Own Tempo Rockruff during the dusk evolution window.'),
  -- #0741 Oricorio (Pom-Pom) - Native Encounter
  (741, 74101, 23, NULL, 1, 'Requires Oricorio and nectar form access in Scarlet/Violet.'),
  -- #0741 Oricorio (Pa'u) - Native Encounter
  (741, 74102, 23, NULL, 1, 'Requires Oricorio and nectar form access in Scarlet/Violet.'),
  -- #0741 Oricorio (Sensu) - Native Encounter
  (741, 74103, 23, NULL, 1, 'Requires Oricorio and nectar form access in Scarlet/Violet.'),
  -- #0550 Basculin (Blue-Striped) - Native Encounter
  (550, 55001, 23, NULL, 1, 'Blue-Striped Basculin wild encounter in Scarlet/Violet.'),
  -- #0479 Rotom (Heat) - Static Encounter
  (479, 47901, 23, NULL, 2, 'Requires Rotom and Rotom Catalog form access in Scarlet/Violet.'),
  -- #0479 Rotom (Wash) - Static Encounter
  (479, 47902, 23, NULL, 2, 'Requires Rotom and Rotom Catalog form access in Scarlet/Violet.'),
  -- #0479 Rotom (Frost) - Static Encounter
  (479, 47903, 23, NULL, 2, 'Requires Rotom and Rotom Catalog form access in Scarlet/Violet.'),
  -- #0479 Rotom (Fan) - Static Encounter
  (479, 47904, 23, NULL, 2, 'Requires Rotom and Rotom Catalog form access in Scarlet/Violet.'),
  -- #0479 Rotom (Mow) - Static Encounter
  (479, 47905, 23, NULL, 2, 'Requires Rotom and Rotom Catalog form access in Scarlet/Violet.'),
  -- #0849 Toxtricity (Low Key) - Evolution
  (849, 84901, 23, NULL, 7, 'Toxtricity Low Key Form evolves from Toxel according to nature in Scarlet/Violet.'),
  -- #0854 Sinistea (Antique) - Native Encounter
  (854, 85401, 23, NULL, 1, 'Sinistea Antique Form wild encounter in Scarlet/Violet.'),
  -- #0855 Polteageist (Antique) - Evolution
  (855, 85501, 23, NULL, 7, 'Polteageist Antique Form evolves from Sinistea Antique Form using the Chipped Pot.'),
  -- #0876 Indeedee (Female) - Native Encounter
  (876, 87601, 23, NULL, 1, 'Indeedee Female wild encounter or raid source in Scarlet/Violet.'),
  -- #0916 Oinkologne (Female) - Evolution
  (916, 91601, 23, NULL, 7, 'Oinkologne Female evolves from female Lechonk in Scarlet/Violet.'),
  -- #0925 Maushold (Family of Three) - Evolution
  (925, 92501, 23, NULL, 7, 'Maushold Family of Three evolves from Tandemaus by its rare form outcome.'),
  -- #0931 Squawkabilly (Blue Plumage) - Native Encounter
  (931, 93101, 23, NULL, 1, 'Squawkabilly Blue Plumage wild encounter in Scarlet/Violet.'),
  -- #0931 Squawkabilly (Yellow Plumage) - Native Encounter
  (931, 93102, 23, NULL, 1, 'Squawkabilly Yellow Plumage wild encounter in Scarlet/Violet.'),
  -- #0931 Squawkabilly (White Plumage) - Native Encounter
  (931, 93103, 23, NULL, 1, 'Squawkabilly White Plumage wild encounter in Scarlet/Violet.'),
  -- #0978 Tatsugiri (Droopy) - Native Encounter
  (978, 97801, 23, NULL, 1, 'Tatsugiri Droopy Form wild encounter in Scarlet/Violet.'),
  -- #0978 Tatsugiri (Stretchy) - Native Encounter
  (978, 97802, 23, NULL, 1, 'Tatsugiri Stretchy Form wild encounter in Scarlet/Violet.'),
  -- #0982 Dudunsparce (Three-Segment) - Evolution
  (982, 98201, 23, NULL, 7, 'Dudunsparce Three-Segment Form evolves from Dunsparce by its rare form outcome.');
