-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Paldea Pokedex number, compatible Pokémon not in any Scarlet/Violet Pokedex and formerly compatible-extra sections.
-- Cross-check: Serebii Scarlet/Violet Transfer Only Pokémon and Pokémon HOME compatibility wording.
-- Scope note: base Scarlet/Violet compatibility extras only. Teal Mask and Indigo Disk native/static availability rows are seeded separately by their own version groups.
-- Representation note: source-visible Galarian Meowth, Perrserker, Johtonian Wooper, and Quagsire are already represented in the base SV availability seed through normal base-game methods.
-- Form policy note: source-visible Pikachu cap forms, Pokeball Pattern Vivillon, Keldeo Resolute Form, Meloetta Pirouette Forme, Greninja Battle Bond, Crowned Zacian/Zamazenta, and Dada Zarude remain excluded by the current Voydex form policy.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Scarlet / Violet
-- Table: reference.pokemon_availability
-- Scope: Pokémon/forms compatible with base Scarlet/Violet outside the base Paldea Pokedex, plus direct event/distribution methods where source-visible.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0004 Charmander - Transfer Only
  (4, 400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0005 Charmeleon - Transfer Only
  (5, 500, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0006 Charizard - Event
  (6, 600, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0006 Charizard - Transfer Only
  (6, 600, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0026 Alolan Raichu - Event
  (26, 2601, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0026 Alolan Raichu - Transfer Only
  (26, 2601, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0027 Alolan Sandshrew - Transfer Only
  (27, 2701, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0028 Alolan Sandslash - Transfer Only
  (28, 2801, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0037 Alolan Vulpix - Transfer Only
  (37, 3701, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0038 Alolan Ninetales - Transfer Only
  (38, 3801, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0050 Alolan Diglett - Transfer Only
  (50, 5001, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0051 Alolan Dugtrio - Transfer Only
  (51, 5101, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0052 Alolan Meowth - Transfer Only
  (52, 5201, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0053 Alolan Persian - Transfer Only
  (53, 5301, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0058 Hisuian Growlithe - Transfer Only
  (58, 5801, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0059 Hisuian Arcanine - Transfer Only
  (59, 5901, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0074 Alolan Geodude - Transfer Only
  (74, 7401, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0075 Alolan Graveler - Transfer Only
  (75, 7501, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0076 Alolan Golem - Transfer Only
  (76, 7601, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0079 Galarian Slowpoke - Transfer Only
  (79, 7901, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0080 Galarian Slowbro - Transfer Only
  (80, 8002, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0088 Alolan Grimer - Transfer Only
  (88, 8801, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0089 Alolan Muk - Transfer Only
  (89, 8901, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0100 Hisuian Voltorb - Event
  (100, 10001, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0100 Hisuian Voltorb - Transfer Only
  (100, 10001, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0101 Hisuian Electrode - Event
  (101, 10101, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0101 Hisuian Electrode - Transfer Only
  (101, 10101, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0110 Galarian Weezing - Transfer Only
  (110, 11001, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0128 Tauros - Transfer Only
  (128, 12800, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0144 Articuno - Transfer Only
  (144, 14400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0144 Galarian Articuno - Transfer Only
  (144, 14401, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0145 Zapdos - Transfer Only
  (145, 14500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0145 Galarian Zapdos - Transfer Only
  (145, 14501, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0146 Moltres - Transfer Only
  (146, 14600, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0146 Galarian Moltres - Transfer Only
  (146, 14601, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0150 Mewtwo - Event
  (150, 15000, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0150 Mewtwo - Transfer Only
  (150, 15000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0151 Mew - Event
  (151, 15100, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0151 Mew - Transfer Only
  (151, 15100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0155 Cyndaquil - Transfer Only
  (155, 15500, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0156 Quilava - Transfer Only
  (156, 15600, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0157 Typhlosion - Event
  (157, 15700, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0157 Typhlosion - Transfer Only
  (157, 15700, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0157 Hisuian Typhlosion - Event
  (157, 15701, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0157 Hisuian Typhlosion - Transfer Only
  (157, 15701, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0199 Galarian Slowking - Transfer Only
  (199, 19901, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0211 Hisuian Qwilfish - Transfer Only
  (211, 21101, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0215 Hisuian Sneasel - Transfer Only
  (215, 21501, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0243 Raikou - Transfer Only
  (243, 24300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0244 Entei - Transfer Only
  (244, 24400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0249 Lugia - Transfer Only
  (249, 24900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0250 Ho-Oh - Transfer Only
  (250, 25000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0377 Regirock - Transfer Only
  (377, 37700, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0378 Regice - Transfer Only
  (378, 37800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0379 Registeel - Transfer Only
  (379, 37900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0380 Latias - Transfer Only
  (380, 38000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0381 Latios - Transfer Only
  (381, 38100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0382 Kyogre - Transfer Only
  (382, 38200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0383 Groudon - Transfer Only
  (383, 38300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0384 Rayquaza - Transfer Only
  (384, 38400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0385 Jirachi - Transfer Only
  (385, 38500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0386 Deoxys - Transfer Only
  (386, 38600, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0386 Deoxys (Attack) - Transfer Only
  (386, 38601, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0386 Deoxys (Defense) - Transfer Only
  (386, 38602, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0386 Deoxys (Speed) - Transfer Only
  (386, 38603, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0387 Turtwig - Transfer Only
  (387, 38700, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0388 Grotle - Transfer Only
  (388, 38800, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0389 Torterra - Transfer Only
  (389, 38900, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0390 Chimchar - Transfer Only
  (390, 39000, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0391 Monferno - Transfer Only
  (391, 39100, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0392 Infernape - Transfer Only
  (392, 39200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0393 Piplup - Transfer Only
  (393, 39300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0394 Prinplup - Transfer Only
  (394, 39400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0395 Empoleon - Transfer Only
  (395, 39500, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0480 Uxie - Transfer Only
  (480, 48000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0481 Mesprit - Transfer Only
  (481, 48100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0482 Azelf - Transfer Only
  (482, 48200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0483 Dialga - Transfer Only
  (483, 48300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0483 Dialga (Origin Forme) - Transfer Only
  (483, 48301, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0484 Palkia - Transfer Only
  (484, 48400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0484 Palkia (Origin Forme) - Transfer Only
  (484, 48401, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0485 Heatran - Transfer Only
  (485, 48500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0486 Regigigas - Transfer Only
  (486, 48600, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0487 Giratina - Transfer Only
  (487, 48700, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0487 Giratina (Origin) - Transfer Only
  (487, 48701, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0488 Cresselia - Transfer Only
  (488, 48800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0489 Phione - Transfer Only
  (489, 48900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0490 Manaphy - Transfer Only
  (490, 49000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0491 Darkrai - Transfer Only
  (491, 49100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0492 Shaymin - Transfer Only
  (492, 49200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0492 Shaymin (Sky) - Transfer Only
  (492, 49201, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus - Transfer Only
  (493, 49300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0493 Arceus (Fighting) - Transfer Only
  (493, 49301, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Flying) - Transfer Only
  (493, 49302, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Poison) - Transfer Only
  (493, 49303, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Ground) - Transfer Only
  (493, 49304, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Rock) - Transfer Only
  (493, 49305, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Bug) - Transfer Only
  (493, 49306, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Ghost) - Transfer Only
  (493, 49307, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Steel) - Transfer Only
  (493, 49308, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Fire) - Transfer Only
  (493, 49309, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Water) - Transfer Only
  (493, 49310, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Grass) - Transfer Only
  (493, 49311, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Electric) - Transfer Only
  (493, 49312, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Psychic) - Transfer Only
  (493, 49313, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Ice) - Transfer Only
  (493, 49314, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Dragon) - Transfer Only
  (493, 49315, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Dark) - Transfer Only
  (493, 49316, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0493 Arceus (Fairy) - Transfer Only
  (493, 49317, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0501 Oshawott - Transfer Only
  (501, 50100, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0502 Dewott - Transfer Only
  (502, 50200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0503 Samurott - Event
  (503, 50300, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0503 Samurott - Transfer Only
  (503, 50300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0503 Hisuian Samurott - Event
  (503, 50301, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0503 Hisuian Samurott - Transfer Only
  (503, 50301, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0549 Hisuian Lilligant - Transfer Only
  (549, 54901, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0550 Basculin (White-Striped) - Transfer Only
  (550, 55002, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0570 Hisuian Zorua - Event
  (570, 57001, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0570 Hisuian Zorua - Transfer Only
  (570, 57001, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0571 Hisuian Zoroark - Event
  (571, 57101, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0571 Hisuian Zoroark - Transfer Only
  (571, 57101, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0628 Hisuian Braviary - Transfer Only
  (628, 62801, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0638 Cobalion - Transfer Only
  (638, 63800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0639 Terrakion - Transfer Only
  (639, 63900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0640 Virizion - Transfer Only
  (640, 64000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0641 Tornadus - Transfer Only
  (641, 64100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0641 Tornadus (Therian) - Transfer Only
  (641, 64101, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0642 Thundurus - Transfer Only
  (642, 64200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0642 Thundurus (Therian) - Transfer Only
  (642, 64201, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0643 Reshiram - Transfer Only
  (643, 64300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0644 Zekrom - Transfer Only
  (644, 64400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0645 Landorus - Transfer Only
  (645, 64500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0645 Landorus (Therian) - Transfer Only
  (645, 64501, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0646 Kyurem - Transfer Only
  (646, 64600, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0646 Kyurem (White) - Transfer Only
  (646, 64601, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0646 Kyurem (Black) - Transfer Only
  (646, 64602, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0647 Keldeo - Transfer Only
  (647, 64700, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0648 Meloetta - Transfer Only
  (648, 64800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0650 Chespin - Transfer Only
  (650, 65000, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0651 Quilladin - Transfer Only
  (651, 65100, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0652 Chesnaught - Event
  (652, 65200, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0652 Chesnaught - Transfer Only
  (652, 65200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0653 Fennekin - Transfer Only
  (653, 65300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0654 Braixen - Transfer Only
  (654, 65400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0655 Delphox - Event
  (655, 65500, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0655 Delphox - Transfer Only
  (655, 65500, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0656 Froakie - Transfer Only
  (656, 65600, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0657 Frogadier - Transfer Only
  (657, 65700, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0658 Greninja - Event
  (658, 65800, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0658 Greninja - Transfer Only
  (658, 65800, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0703 Carbink - Transfer Only
  (703, 70300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0705 Hisuian Sliggoo - Event
  (705, 70501, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0705 Hisuian Sliggoo - Transfer Only
  (705, 70501, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0706 Hisuian Goodra - Event
  (706, 70601, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0706 Hisuian Goodra - Transfer Only
  (706, 70601, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0713 Hisuian Avalugg - Transfer Only
  (713, 71301, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0719 Diancie - Transfer Only
  (719, 71900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0720 Hoopa - Transfer Only
  (720, 72000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0720 Hoopa (Unbound) - Transfer Only
  (720, 72001, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0721 Volcanion - Transfer Only
  (721, 72100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0722 Rowlet - Transfer Only
  (722, 72200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0723 Dartrix - Transfer Only
  (723, 72300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0724 Decidueye - Event
  (724, 72400, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0724 Decidueye - Transfer Only
  (724, 72400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0724 Hisuian Decidueye - Event
  (724, 72401, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0724 Hisuian Decidueye - Transfer Only
  (724, 72401, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0789 Cosmog - Transfer Only
  (789, 78900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0790 Cosmoem - Transfer Only
  (790, 79000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0791 Solgaleo - Transfer Only
  (791, 79100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0792 Lunala - Transfer Only
  (792, 79200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0800 Necrozma - Transfer Only
  (800, 80000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0800 Necrozma (Dusk Mane) - Transfer Only
  (800, 80001, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0800 Necrozma (Dawn Wings) - Transfer Only
  (800, 80002, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0801 Magearna - Transfer Only
  (801, 80100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0801 Magearna (Original Color) - Transfer Only
  (801, 80102, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0810 Grookey - Transfer Only
  (810, 81000, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0811 Thwackey - Transfer Only
  (811, 81100, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0812 Rillaboom - Event
  (812, 81200, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0812 Rillaboom - Transfer Only
  (812, 81200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0813 Scorbunny - Transfer Only
  (813, 81300, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0814 Raboot - Transfer Only
  (814, 81400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0815 Cinderace - Event
  (815, 81500, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0815 Cinderace - Transfer Only
  (815, 81500, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0816 Sobble - Transfer Only
  (816, 81600, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0817 Drizzile - Transfer Only
  (817, 81700, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0818 Inteleon - Event
  (818, 81800, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #0818 Inteleon - Transfer Only
  (818, 81800, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0888 Zacian - Transfer Only
  (888, 88800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0889 Zamazenta - Transfer Only
  (889, 88900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0890 Eternatus - Transfer Only
  (890, 89000, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0891 Kubfu - Transfer Only
  (891, 89100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0892 Urshifu - Transfer Only
  (892, 89200, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0892 Urshifu (Rapid Strike) - Transfer Only
  (892, 89201, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0893 Zarude - Transfer Only
  (893, 89300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0894 Regieleki - Transfer Only
  (894, 89400, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0895 Regidrago - Transfer Only
  (895, 89500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0896 Glastrier - Transfer Only
  (896, 89600, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0897 Spectrier - Transfer Only
  (897, 89700, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0898 Calyrex - Transfer Only
  (898, 89800, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0898 Calyrex (Ice Rider) - Transfer Only
  (898, 89801, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0898 Calyrex (Shadow Rider) - Transfer Only
  (898, 89802, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #0899 Wyrdeer - Transfer Only
  (899, 89900, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0900 Kleavor - Transfer Only
  (900, 90000, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0901 Ursaluna - Transfer Only
  (901, 90100, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0902 Basculegion - Transfer Only
  (902, 90200, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0902 Basculegion (Female) - Transfer Only
  (902, 90201, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0903 Sneasler - Transfer Only
  (903, 90300, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0904 Overqwil - Transfer Only
  (904, 90400, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #0905 Enamorus - Transfer Only
  (905, 90500, 23, NULL, 13, 'Compatible with Scarlet/Violet but outside the base Paldea Pokedex; available through Pokémon HOME transfer or compatible import into the base scope.'),
  -- #0905 Enamorus (Therian) - Transfer Only
  (905, 90501, 23, NULL, 13, 'Compatible form outside the base Paldea Pokedex; available through Pokémon HOME transfer, compatible import, or the relevant in-game form system.'),
  -- #1009 Walking Wake - Event
  (1009, 100900, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #1009 Walking Wake - Transfer Only
  (1009, 100900, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.'),
  -- #1010 Iron Leaves - Event
  (1010, 101000, 23, NULL, 11, 'Official Scarlet/Violet in-game event or distribution source; also compatible through Pokémon HOME transfer.'),
  -- #1010 Iron Leaves - Transfer Only
  (1010, 101000, 23, NULL, 13, 'Compatible with base Scarlet/Violet before later DLC Pokedex support; without optional DLC content, represented as Pokémon HOME transfer-compatible in the base scope.');
