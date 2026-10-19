-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Blueberry Pokedex number.
-- Cross-check: Serebii Blueberry Pokedex, PokemonDB The Indigo Disk Pokedex, and Bulbapedia version-exclusive/event pages.
-- Scope note: The Indigo Disk optional content scope only. Base Scarlet/Violet and Teal Mask availability rows are seeded separately.
-- Method note: evolved forms prefer evolution when an in-game evolution path exists; version exclusives use game-specific source rows plus external-trade rows for the paired version; optional event Pokedex rows keep event/transfer distinctions.
-- Form note: Species-level Blueberry Pokedex rows are expanded where the form materially affects planning or source availability: regional forms, Rotom appliance forms, Oricorio styles, Meowstic gender forms, Kyurem/Necrozma-style source extras in the companion extras file, and new static/event legendaries. Source-visible cosmetic or battle-only forms remain excluded by current Voydex form policy.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Indigo Disk
-- Table: reference.pokemon_availability
-- Scope: Blueberry Pokedex availability for Pokémon Scarlet / Violet: The Indigo Disk.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0084 Doduo - Native Encounter
  (84, 8400, 25, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 25, NULL, 7, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 25, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 25, NULL, 7, 'Default Exeggutor evolves from Exeggcute in Scarlet/Violet; Blueberry source displays default and Alolan forms.'),
  -- #0103 Alolan Exeggutor - Native Encounter
  (103, 10301, 25, NULL, 1, 'Alolan Exeggutor is a Blueberry Terarium wild encounter; source displays default and Alolan forms.'),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 25, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 25, NULL, 7, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 25, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 25, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 25, NULL, 7, NULL),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 25, NULL, 1, NULL),
  -- #0125 Electabuzz - Evolution
  (125, 12500, 25, NULL, 7, NULL),
  -- #0466 Electivire - Evolution
  (466, 46600, 25, NULL, 7, NULL),
  -- #0240 Magby - Native Encounter
  (240, 24000, 25, NULL, 1, NULL),
  -- #0126 Magmar - Evolution
  (126, 12600, 25, NULL, 7, NULL),
  -- #0467 Magmortar - Evolution
  (467, 46700, 25, NULL, 7, NULL),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 25, NULL, 1, NULL),
  -- #0113 Chansey - Evolution
  (113, 11300, 25, NULL, 7, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 25, NULL, 7, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 25, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 25, NULL, 7, NULL),
  -- #0900 Kleavor - Native Encounter
  (900, 90000, 25, NULL, 1, 'Kleavor is a wild Canyon Biome encounter in The Indigo Disk; Scyther cannot normally evolve into Kleavor in Scarlet/Violet because Black Augurite is not available.'),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 25, NULL, 1, NULL),
  -- #0522 Blitzle - Native Encounter
  (522, 52200, 25, NULL, 1, NULL),
  -- #0523 Zebstrika - Evolution
  (523, 52300, 25, NULL, 7, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 25, NULL, 1, NULL),
  -- #0981 Farigiraf - Evolution
  (981, 98100, 25, NULL, 7, NULL),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 25, NULL, 1, NULL),
  -- #0552 Krokorok - Evolution
  (552, 55200, 25, NULL, 7, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 25, NULL, 7, NULL),
  -- #0953 Rellor - Native Encounter
  (953, 95300, 25, NULL, 1, NULL),
  -- #0954 Rabsca - Evolution
  (954, 95400, 25, NULL, 7, NULL),
  -- #0627 Rufflet - Native Encounter
  (627, 62700, 25, NULL, 1, NULL),
  -- #0628 Braviary - Evolution
  (628, 62800, 25, NULL, 7, NULL),
  -- #0629 Vullaby - Native Encounter
  (629, 62900, 25, NULL, 1, NULL),
  -- #0630 Mandibuzz - Evolution
  (630, 63000, 25, NULL, 7, NULL),
  -- #0667 Litleo - Native Encounter
  (667, 66700, 25, NULL, 1, NULL),
  -- #0668 Pyroar - Evolution
  (668, 66800, 25, NULL, 7, NULL),
  -- #0585 Deerling - Native Encounter
  (585, 58500, 25, NULL, 1, NULL),
  -- #0586 Sawsbuck - Evolution
  (586, 58600, 25, NULL, 7, NULL),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 25, NULL, 1, NULL),
  -- #0479 Rotom - Native Encounter
  (479, 47900, 25, NULL, 1, 'Default Rotom is available as a Blueberry Terarium encounter; source displays Rotom appliance forms.'),
  -- #0479 Rotom (Heat) - Static Encounter
  (479, 47901, 25, NULL, 2, 'Rotom (Heat) is available through Rotom and Rotom Catalog form access in The Indigo Disk.'),
  -- #0479 Rotom (Wash) - Static Encounter
  (479, 47902, 25, NULL, 2, 'Rotom (Wash) is available through Rotom and Rotom Catalog form access in The Indigo Disk.'),
  -- #0479 Rotom (Frost) - Static Encounter
  (479, 47903, 25, NULL, 2, 'Rotom (Frost) is available through Rotom and Rotom Catalog form access in The Indigo Disk.'),
  -- #0479 Rotom (Fan) - Static Encounter
  (479, 47904, 25, NULL, 2, 'Rotom (Fan) is available through Rotom and Rotom Catalog form access in The Indigo Disk.'),
  -- #0479 Rotom (Mow) - Static Encounter
  (479, 47905, 25, NULL, 2, 'Rotom (Mow) is available through Rotom and Rotom Catalog form access in The Indigo Disk.'),
  -- #0868 Milcery - Native Encounter
  (868, 86800, 25, NULL, 1, NULL),
  -- #0869 Alcremie - Evolution
  (869, 86900, 25, NULL, 7, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 25, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 25, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 25, NULL, 7, NULL),
  -- #0731 Pikipek - Native Encounter
  (731, 73100, 25, NULL, 1, NULL),
  -- #0732 Trumbeak - Evolution
  (732, 73200, 25, NULL, 7, NULL),
  -- #0733 Toucannon - Evolution
  (733, 73300, 25, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 25, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 25, NULL, 7, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 25, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 25, NULL, 7, NULL),
  -- #0230 Kingdra - Evolution
  (230, 23000, 25, NULL, 7, NULL),
  -- #0779 Bruxish - Native Encounter
  (779, 77900, 25, NULL, 1, NULL),
  -- #0546 Cottonee - Native Encounter
  (546, 54600, 25, NULL, 1, NULL),
  -- #0547 Whimsicott - Evolution
  (547, 54700, 25, NULL, 7, NULL),
  -- #0764 Comfey - Native Encounter
  (764, 76400, 25, NULL, 1, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 25, NULL, 1, NULL),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 25, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 25, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 25, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 25, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 25, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 25, NULL, 7, NULL),
  -- #0050 Alolan Diglett - Native Encounter
  (50, 5001, 25, NULL, 1, 'Blueberry Pokedex source lists Alolan Diglett for this slot.'),
  -- #0051 Alolan Dugtrio - Evolution
  (51, 5101, 25, NULL, 7, 'Blueberry Pokedex source lists Alolan Dugtrio for this slot.'),
  -- #0088 Alolan Grimer - Native Encounter
  (88, 8801, 25, NULL, 1, 'Blueberry Pokedex source lists Alolan Grimer for this slot.'),
  -- #0089 Alolan Muk - Evolution
  (89, 8901, 25, NULL, 7, 'Blueberry Pokedex source lists Alolan Muk for this slot.'),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 25, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 25, NULL, 1, NULL),
  -- #0739 Crabrawler - Native Encounter
  (739, 73900, 25, NULL, 1, NULL),
  -- #0740 Crabominable - Evolution
  (740, 74000, 25, NULL, 7, NULL),
  -- #0741 Oricorio - Native Encounter
  (741, 74100, 25, NULL, 1, 'Baile Style Oricorio is available through Oricorio and nectar form access in The Indigo Disk.'),
  -- #0741 Oricorio (Pom-Pom) - Native Encounter
  (741, 74101, 25, NULL, 1, 'Pom-Pom Style Oricorio is available through Oricorio and nectar form access in The Indigo Disk.'),
  -- #0741 Oricorio (Pa'u) - Native Encounter
  (741, 74102, 25, NULL, 1, 'Pa''u Style Oricorio is available through Oricorio and nectar form access in The Indigo Disk.'),
  -- #0741 Oricorio (Sensu) - Native Encounter
  (741, 74103, 25, NULL, 1, 'Sensu Style Oricorio is available through Oricorio and nectar form access in The Indigo Disk.'),
  -- #0079 Galarian Slowpoke - Native Encounter
  (79, 7901, 25, NULL, 1, 'Blueberry Pokedex source lists Galarian Slowpoke for this slot.'),
  -- #0080 Galarian Slowbro - Evolution
  (80, 8002, 25, NULL, 7, 'Blueberry Pokedex source lists Galarian Slowbro for this slot.'),
  -- #0199 Galarian Slowking - Evolution
  (199, 19901, 25, NULL, 7, 'Blueberry Pokedex source lists Galarian Slowking for this slot.'),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 25, NULL, 1, NULL),
  -- #0171 Lanturn - Evolution
  (171, 17100, 25, NULL, 7, NULL),
  -- #0686 Inkay - Native Encounter
  (686, 68600, 25, NULL, 1, NULL),
  -- #0687 Malamar - Evolution
  (687, 68700, 25, NULL, 7, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 25, NULL, 1, NULL),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 25, NULL, 1, NULL),
  -- #0457 Lumineon - Evolution
  (457, 45700, 25, NULL, 7, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 25, NULL, 1, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 25, NULL, 1, NULL),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 25, NULL, 1, NULL),
  -- #0662 Fletchinder - Evolution
  (662, 66200, 25, NULL, 7, NULL),
  -- #0663 Talonflame - Evolution
  (663, 66300, 25, NULL, 7, NULL),
  -- #0751 Dewpider - Native Encounter
  (751, 75100, 25, NULL, 1, NULL),
  -- #0752 Araquanid - Evolution
  (752, 75200, 25, NULL, 7, NULL),
  -- #0236 Tyrogue - Native Encounter
  (236, 23600, 25, NULL, 1, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 25, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 25, NULL, 7, NULL),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 25, NULL, 7, NULL),
  -- #0074 Alolan Geodude - Native Encounter
  (74, 7401, 25, NULL, 1, 'Blueberry Pokedex source lists Alolan Geodude for this slot.'),
  -- #0075 Alolan Graveler - Evolution
  (75, 7501, 25, NULL, 7, 'Blueberry Pokedex source lists Alolan Graveler for this slot.'),
  -- #0076 Alolan Golem - Evolution
  (76, 7601, 25, NULL, 7, 'Blueberry Pokedex source lists Alolan Golem for this slot.'),
  -- #0529 Drilbur - Native Encounter
  (529, 52900, 25, NULL, 1, NULL),
  -- #0530 Excadrill - Evolution
  (530, 53000, 25, NULL, 7, NULL),
  -- #0574 Gothita - Native Encounter
  (574, 57400, 25, NULL, 1, NULL),
  -- #0575 Gothorita - Evolution
  (575, 57500, 25, NULL, 7, NULL),
  -- #0576 Gothitelle - Evolution
  (576, 57600, 25, NULL, 7, NULL),
  -- #0677 Espurr - Native Encounter
  (677, 67700, 25, NULL, 1, NULL),
  -- #0678 Meowstic - Evolution
  (678, 67800, 25, NULL, 7, 'Male Meowstic is source-visible in the Blueberry Pokedex and evolves from male Espurr.'),
  -- #0678 Meowstic (Female) - Evolution
  (678, 67801, 25, NULL, 7, 'Female Meowstic is source-visible in the Blueberry Pokedex and evolves from female Espurr.'),
  -- #0774 Minior - Native Encounter
  (774, 77400, 25, NULL, 1, NULL),
  -- #0408 Cranidos - Scarlet - Native Encounter
  (408, 40800, 25, 36, 1, 'Cranidos is an Indigo Disk Scarlet version-exclusive Blueberry Pokedex encounter.'),
  -- #0408 Cranidos - Violet - External Trade
  (408, 40800, 25, 37, 12, 'Cranidos is an Indigo Disk Scarlet version-exclusive Blueberry Pokedex encounter. Available in the paired version through external trade.'),
  -- #0409 Rampardos - Scarlet - Evolution
  (409, 40900, 25, 36, 7, 'Rampardos evolves from Indigo Disk Scarlet version-exclusive Cranidos.'),
  -- #0409 Rampardos - Violet - External Trade
  (409, 40900, 25, 37, 12, 'Rampardos evolves from Indigo Disk Scarlet version-exclusive Cranidos. Available in the paired version through external trade.'),
  -- #0410 Shieldon - Violet - Native Encounter
  (410, 41000, 25, 37, 1, 'Shieldon is an Indigo Disk Violet version-exclusive Blueberry Pokedex encounter.'),
  -- #0410 Shieldon - Scarlet - External Trade
  (410, 41000, 25, 36, 12, 'Shieldon is an Indigo Disk Violet version-exclusive Blueberry Pokedex encounter. Available in the paired version through external trade.'),
  -- #0411 Bastiodon - Violet - Evolution
  (411, 41100, 25, 37, 7, 'Bastiodon evolves from Indigo Disk Violet version-exclusive Shieldon.'),
  -- #0411 Bastiodon - Scarlet - External Trade
  (411, 41100, 25, 36, 12, 'Bastiodon evolves from Indigo Disk Violet version-exclusive Shieldon. Available in the paired version through external trade.'),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 25, NULL, 1, NULL),
  -- #0573 Cinccino - Evolution
  (573, 57300, 25, NULL, 7, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 25, NULL, 1, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 25, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 25, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 25, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 25, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 25, NULL, 7, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 25, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 25, NULL, 1, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 25, NULL, 1, NULL),
  -- #0560 Scrafty - Evolution
  (560, 56000, 25, NULL, 7, NULL),
  -- #0622 Golett - Native Encounter
  (622, 62200, 25, NULL, 1, NULL),
  -- #0623 Golurk - Evolution
  (623, 62300, 25, NULL, 7, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 25, NULL, 1, NULL),
  -- #0323 Camerupt - Evolution
  (323, 32300, 25, NULL, 7, NULL),
  -- #0854 Sinistea - Native Encounter
  (854, 85400, 25, NULL, 1, NULL),
  -- #0855 Polteageist - Evolution
  (855, 85500, 25, NULL, 7, NULL),
  -- #0137 Porygon - Native Encounter
  (137, 13700, 25, NULL, 1, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 25, NULL, 7, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 25, NULL, 7, NULL),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 25, NULL, 1, NULL),
  -- #0596 Galvantula - Evolution
  (596, 59600, 25, NULL, 7, NULL),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 25, NULL, 1, NULL),
  -- #0603 Eelektrik - Evolution
  (603, 60300, 25, NULL, 7, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 25, NULL, 7, NULL),
  -- #0374 Beldum - Native Encounter
  (374, 37400, 25, NULL, 1, NULL),
  -- #0375 Metang - Evolution
  (375, 37500, 25, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 25, NULL, 7, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 25, NULL, 1, NULL),
  -- #0611 Fraxure - Evolution
  (611, 61100, 25, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 25, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 25, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 25, NULL, 7, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 25, NULL, 1, NULL),
  -- #0211 Hisuian Qwilfish - Native Encounter
  (211, 21101, 25, NULL, 1, 'Blueberry Pokedex source lists Hisuian Qwilfish for this slot.'),
  -- #0904 Overqwil - Evolution
  (904, 90400, 25, NULL, 7, 'Overqwil evolves from Hisuian Qwilfish in Scarlet/Violet.'),
  -- #0577 Solosis - Native Encounter
  (577, 57700, 25, NULL, 1, NULL),
  -- #0578 Duosion - Evolution
  (578, 57800, 25, NULL, 7, NULL),
  -- #0579 Reuniclus - Evolution
  (579, 57900, 25, NULL, 7, NULL),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 25, NULL, 1, NULL),
  -- #0210 Granbull - Evolution
  (210, 21000, 25, NULL, 7, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 25, NULL, 1, NULL),
  -- #0614 Beartic - Evolution
  (614, 61400, 25, NULL, 7, NULL),
  -- #0027 Alolan Sandshrew - Violet - Native Encounter
  (27, 2701, 25, 37, 1, 'Alolan Sandshrew is an Indigo Disk Violet version-exclusive Blueberry Pokedex encounter.'),
  -- #0027 Alolan Sandshrew - Scarlet - External Trade
  (27, 2701, 25, 36, 12, 'Alolan Sandshrew is an Indigo Disk Violet version-exclusive Blueberry Pokedex encounter. Available in the paired version through external trade.'),
  -- #0028 Alolan Sandslash - Violet - Evolution
  (28, 2801, 25, 37, 7, 'Alolan Sandslash evolves from Indigo Disk Violet version-exclusive Alolan Sandshrew.'),
  -- #0028 Alolan Sandslash - Scarlet - External Trade
  (28, 2801, 25, 36, 12, 'Alolan Sandslash evolves from Indigo Disk Violet version-exclusive Alolan Sandshrew. Available in the paired version through external trade.'),
  -- #0037 Alolan Vulpix - Scarlet - Native Encounter
  (37, 3701, 25, 36, 1, 'Alolan Vulpix is an Indigo Disk Scarlet version-exclusive Blueberry Pokedex encounter.'),
  -- #0037 Alolan Vulpix - Violet - External Trade
  (37, 3701, 25, 37, 12, 'Alolan Vulpix is an Indigo Disk Scarlet version-exclusive Blueberry Pokedex encounter. Available in the paired version through external trade.'),
  -- #0038 Alolan Ninetales - Scarlet - Evolution
  (38, 3801, 25, 36, 7, 'Alolan Ninetales evolves from Indigo Disk Scarlet version-exclusive Alolan Vulpix.'),
  -- #0038 Alolan Ninetales - Violet - External Trade
  (38, 3801, 25, 37, 12, 'Alolan Ninetales evolves from Indigo Disk Scarlet version-exclusive Alolan Vulpix. Available in the paired version through external trade.'),
  -- #0459 Snover - Native Encounter
  (459, 45900, 25, NULL, 1, NULL),
  -- #0460 Abomasnow - Evolution
  (460, 46000, 25, NULL, 7, NULL),
  -- #0884 Duraludon - Native Encounter
  (884, 88400, 25, NULL, 1, NULL),
  -- #1018 Archaludon - Evolution
  (1018, 101800, 25, NULL, 7, NULL),
  -- #1019 Hydrapple - Evolution
  (1019, 101900, 25, NULL, 7, 'Requires Dipplin from The Teal Mask or compatible trade/transfer source, then leveling while knowing Dragon Cheer from The Indigo Disk.'),
  -- #0001 Bulbasaur - Native Encounter
  (1, 100, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 25, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 25, NULL, 7, NULL),
  -- #0004 Charmander - Native Encounter
  (4, 400, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 25, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 25, NULL, 7, NULL),
  -- #0007 Squirtle - Native Encounter
  (7, 700, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 25, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 25, NULL, 7, NULL),
  -- #0152 Chikorita - Native Encounter
  (152, 15200, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 25, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 25, NULL, 7, NULL),
  -- #0155 Cyndaquil - Native Encounter
  (155, 15500, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 25, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 25, NULL, 7, NULL),
  -- #0158 Totodile - Native Encounter
  (158, 15800, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 25, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 25, NULL, 7, NULL),
  -- #0252 Treecko - Native Encounter
  (252, 25200, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0253 Grovyle - Evolution
  (253, 25300, 25, NULL, 7, NULL),
  -- #0254 Sceptile - Evolution
  (254, 25400, 25, NULL, 7, NULL),
  -- #0255 Torchic - Native Encounter
  (255, 25500, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 25, NULL, 7, NULL),
  -- #0257 Blaziken - Evolution
  (257, 25700, 25, NULL, 7, NULL),
  -- #0258 Mudkip - Native Encounter
  (258, 25800, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 25, NULL, 7, NULL),
  -- #0260 Swampert - Evolution
  (260, 26000, 25, NULL, 7, NULL),
  -- #0387 Turtwig - Native Encounter
  (387, 38700, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0388 Grotle - Evolution
  (388, 38800, 25, NULL, 7, NULL),
  -- #0389 Torterra - Evolution
  (389, 38900, 25, NULL, 7, NULL),
  -- #0390 Chimchar - Native Encounter
  (390, 39000, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0391 Monferno - Evolution
  (391, 39100, 25, NULL, 7, NULL),
  -- #0392 Infernape - Evolution
  (392, 39200, 25, NULL, 7, NULL),
  -- #0393 Piplup - Native Encounter
  (393, 39300, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 25, NULL, 7, NULL),
  -- #0395 Empoleon - Evolution
  (395, 39500, 25, NULL, 7, NULL),
  -- #0495 Snivy - Native Encounter
  (495, 49500, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0496 Servine - Evolution
  (496, 49600, 25, NULL, 7, NULL),
  -- #0497 Serperior - Evolution
  (497, 49700, 25, NULL, 7, NULL),
  -- #0498 Tepig - Native Encounter
  (498, 49800, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0499 Pignite - Evolution
  (499, 49900, 25, NULL, 7, NULL),
  -- #0500 Emboar - Evolution
  (500, 50000, 25, NULL, 7, NULL),
  -- #0501 Oshawott - Native Encounter
  (501, 50100, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0502 Dewott - Evolution
  (502, 50200, 25, NULL, 7, NULL),
  -- #0503 Samurott - Evolution
  (503, 50300, 25, NULL, 7, NULL),
  -- #0650 Chespin - Native Encounter
  (650, 65000, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0651 Quilladin - Evolution
  (651, 65100, 25, NULL, 7, NULL),
  -- #0652 Chesnaught - Evolution
  (652, 65200, 25, NULL, 7, NULL),
  -- #0653 Fennekin - Native Encounter
  (653, 65300, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0654 Braixen - Evolution
  (654, 65400, 25, NULL, 7, NULL),
  -- #0655 Delphox - Evolution
  (655, 65500, 25, NULL, 7, NULL),
  -- #0656 Froakie - Native Encounter
  (656, 65600, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0657 Frogadier - Evolution
  (657, 65700, 25, NULL, 7, NULL),
  -- #0658 Greninja - Evolution
  (658, 65800, 25, NULL, 7, NULL),
  -- #0722 Rowlet - Native Encounter
  (722, 72200, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0723 Dartrix - Evolution
  (723, 72300, 25, NULL, 7, NULL),
  -- #0724 Decidueye - Evolution
  (724, 72400, 25, NULL, 7, NULL),
  -- #0725 Litten - Native Encounter
  (725, 72500, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0726 Torracat - Evolution
  (726, 72600, 25, NULL, 7, NULL),
  -- #0727 Incineroar - Evolution
  (727, 72700, 25, NULL, 7, NULL),
  -- #0728 Popplio - Native Encounter
  (728, 72800, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0729 Brionne - Evolution
  (729, 72900, 25, NULL, 7, NULL),
  -- #0730 Primarina - Evolution
  (730, 73000, 25, NULL, 7, NULL),
  -- #0810 Grookey - Native Encounter
  (810, 81000, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0811 Thwackey - Evolution
  (811, 81100, 25, NULL, 7, NULL),
  -- #0812 Rillaboom - Evolution
  (812, 81200, 25, NULL, 7, NULL),
  -- #0813 Scorbunny - Native Encounter
  (813, 81300, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0814 Raboot - Evolution
  (814, 81400, 25, NULL, 7, NULL),
  -- #0815 Cinderace - Evolution
  (815, 81500, 25, NULL, 7, NULL),
  -- #0816 Sobble - Native Encounter
  (816, 81600, 25, NULL, 1, 'Terarium wild encounter after the relevant Blueberry League Club biome upgrade in The Indigo Disk.'),
  -- #0817 Drizzile - Evolution
  (817, 81700, 25, NULL, 7, NULL),
  -- #0818 Inteleon - Evolution
  (818, 81800, 25, NULL, 7, NULL),
  -- #1020 Gouging Fire - Scarlet - Static Encounter
  (1020, 102000, 25, 36, 2, 'Gouging Fire is an Indigo Disk Scarlet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression.'),
  -- #1020 Gouging Fire - Violet - External Trade
  (1020, 102000, 25, 37, 12, 'Gouging Fire is an Indigo Disk Scarlet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression. Available in the paired version through external trade.'),
  -- #1021 Raging Bolt - Scarlet - Static Encounter
  (1021, 102100, 25, 36, 2, 'Raging Bolt is an Indigo Disk Scarlet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression.'),
  -- #1021 Raging Bolt - Violet - External Trade
  (1021, 102100, 25, 37, 12, 'Raging Bolt is an Indigo Disk Scarlet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression. Available in the paired version through external trade.'),
  -- #1023 Iron Crown - Violet - Static Encounter
  (1023, 102300, 25, 37, 2, 'Iron Crown is an Indigo Disk Violet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression.'),
  -- #1023 Iron Crown - Scarlet - External Trade
  (1023, 102300, 25, 36, 12, 'Iron Crown is an Indigo Disk Violet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression. Available in the paired version through external trade.'),
  -- #1022 Iron Boulder - Violet - Static Encounter
  (1022, 102200, 25, 37, 2, 'Iron Boulder is an Indigo Disk Violet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression.'),
  -- #1022 Iron Boulder - Scarlet - External Trade
  (1022, 102200, 25, 36, 12, 'Iron Boulder is an Indigo Disk Violet version-exclusive static encounter after the required Blueberry Pokedex/Perrin progression. Available in the paired version through external trade.'),
  -- #1024 Terapagos - Static Encounter
  (1024, 102400, 25, NULL, 2, 'Terapagos is a required story static encounter in The Indigo Disk. Terastal/Stellar battle forms remain excluded by current form policy.'),
  -- #1009 Walking Wake - Event
  (1009, 100900, 25, NULL, 11, 'Optional Blueberry Pokedex entry; source is official Scarlet/Violet Tera Raid Battle event access, also compatible through Pokémon HOME transfer.'),
  -- #1009 Walking Wake - Transfer Only
  (1009, 100900, 25, NULL, 13, 'Optional Blueberry Pokedex entry; compatible through Pokémon HOME transfer when the event source is unavailable in this scope.'),
  -- #1010 Iron Leaves - Event
  (1010, 101000, 25, NULL, 11, 'Optional Blueberry Pokedex entry; source is official Scarlet/Violet Tera Raid Battle event access, also compatible through Pokémon HOME transfer.'),
  -- #1010 Iron Leaves - Transfer Only
  (1010, 101000, 25, NULL, 13, 'Optional Blueberry Pokedex entry; compatible through Pokémon HOME transfer when the event source is unavailable in this scope.'),
  -- #1025 Pecharunt - Event
  (1025, 102500, 25, NULL, 11, 'Optional Blueberry Pokedex entry; Pecharunt is available through the Mythical Pecha Berry event-unlocked Mochi Mayhem epilogue.');
