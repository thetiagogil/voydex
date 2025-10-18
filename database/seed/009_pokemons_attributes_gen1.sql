INSERT INTO dex.pokemon_attributes (
  species_id,
  form_id,
  generation_start_id,
  type1_id,
  type2_id,
  ability1_id,
  ability2_id,
  hidden_ability_id,
  hp,
  attack,
  defense,
  special_attack,
  special_defense,
  speed,
  special
) VALUES
  -- 0001 Bulbasaur  Grass/Poison
  (1, 1, 1, 12, 4, NULL, NULL, NULL, 45, 49, 49, NULL, NULL, 45, 65),

  -- 0002 Ivysaur  Grass/Poison
  (2, 2, 1, 12, 4, NULL, NULL, NULL, 60, 62, 63, NULL, NULL, 60, 80),

  -- 0003 Venusaur  Grass/Poison
  (3, 3, 1, 12, 4, NULL, NULL, NULL, 80, 82, 83, NULL, NULL, 80, 100),

  -- 0004 Charmander  Fire
  (4, 4, 1, 10, NULL, NULL, NULL, NULL, 39, 52, 43, NULL, NULL, 65, 50),

  -- 0005 Charmeleon  Fire
  (5, 5, 1, 10, NULL, NULL, NULL, NULL, 58, 64, 58, NULL, NULL, 80, 65),

  -- 0006 Charizard  Fire/Flying
  (6, 6, 1, 10, 3, NULL, NULL, NULL, 78, 84, 78, NULL, NULL, 100, 85),

  -- 0007 Squirtle  Water
  (7, 7, 1, 11, NULL, NULL, NULL, NULL, 44, 48, 65, NULL, NULL, 43, 50),

  -- 0008 Wartortle  Water
  (8, 8, 1, 11, NULL, NULL, NULL, NULL, 59, 63, 80, NULL, NULL, 58, 65),

  -- 0009 Blastoise  Water
  (9, 9, 1, 11, NULL, NULL, NULL, NULL, 79, 83, 100, NULL, NULL, 78, 85),

  -- 0010 Caterpie  Bug
  (10, 10, 1, 7, NULL, NULL, NULL, NULL, 45, 30, 35, NULL, NULL, 45, 20),

  -- 0011 Metapod  Bug
  (11, 11, 1, 7, NULL, NULL, NULL, NULL, 50, 20, 55, NULL, NULL, 30, 25),

  -- 0012 Butterfree  Bug/Flying
  (12, 12, 1, 7, 3, NULL, NULL, NULL, 60, 45, 50, NULL, NULL, 70, 80),

  -- 0013 Weedle  Bug/Poison
  (13, 13, 1, 7, 4, NULL, NULL, NULL, 40, 35, 30, NULL, NULL, 50, 20),

  -- 0014 Kakuna  Bug/Poison
  (14, 14, 1, 7, 4, NULL, NULL, NULL, 45, 25, 50, NULL, NULL, 35, 25),

  -- 0015 Beedrill  Bug/Poison
  (15, 15, 1, 7, 4, NULL, NULL, NULL, 65, 80, 40, NULL, NULL, 75, 45),

  -- 0016 Pidgey  Normal/Flying
  (16, 16, 1, 1, 3, NULL, NULL, NULL, 40, 45, 40, NULL, NULL, 56, 35),

  -- 0017 Pidgeotto  Normal/Flying
  (17, 17, 1, 1, 3, NULL, NULL, NULL, 63, 60, 55, NULL, NULL, 71, 50),

  -- 0018 Pidgeot  Normal/Flying
  (18, 18, 1, 1, 3, NULL, NULL, NULL, 83, 80, 75, NULL, NULL, 91, 70),

  -- 0019 Rattata  Normal
  (19, 19, 1, 1, NULL, NULL, NULL, NULL, 30, 56, 35, NULL, NULL, 72, 25),

  -- 0020 Raticate  Normal
  (20, 20, 1, 1, NULL, NULL, NULL, NULL, 55, 81, 60, NULL, NULL, 97, 50),

  -- 0021 Spearow  Normal/Flying
  (21, 21, 1, 1, 3, NULL, NULL, NULL, 40, 60, 30, NULL, NULL, 70, 31),

  -- 0022 Fearow  Normal/Flying
  (22, 22, 1, 1, 3, NULL, NULL, NULL, 65, 90, 65, NULL, NULL, 100, 61),

  -- 0023 Ekans  Poison
  (23, 23, 1, 4, NULL, NULL, NULL, NULL, 35, 60, 44, NULL, NULL, 55, 40),

  -- 0024 Arbok  Poison
  (24, 24, 1, 4, NULL, NULL, NULL, NULL, 60, 85, 69, NULL, NULL, 80, 65),

  -- 0025 Pikachu  Electric
  (25, 25, 1, 13, NULL, NULL, NULL, NULL, 35, 55, 30, NULL, NULL, 90, 50),

  -- 0026 Raichu  Electric
  (26, 26, 1, 13, NULL, NULL, NULL, NULL, 60, 90, 55, NULL, NULL, 100, 90),

  -- 0027 Sandshrew  Ground
  (27, 27, 1, 5, NULL, NULL, NULL, NULL, 50, 75, 85, NULL, NULL, 40, 30),

  -- 0028 Sandslash  Ground
  (28, 28, 1, 5, NULL, NULL, NULL, NULL, 75, 100, 110, NULL, NULL, 65, 55),

  -- 0029 Nidoran♀  Poison
  (29, 29, 1, 4, NULL, NULL, NULL, NULL, 55, 47, 52, NULL, NULL, 41, 40),

  -- 0030 Nidorina  Poison
  (30, 30, 1, 4, NULL, NULL, NULL, NULL, 70, 62, 67, NULL, NULL, 56, 55),

  -- 0031 Nidoqueen  Poison/Ground
  (31, 31, 1, 4, 5, NULL, NULL, NULL, 90, 82, 87, NULL, NULL, 76, 75),

  -- 0032 Nidoran♂  Poison
  (32, 32, 1, 4, NULL, NULL, NULL, NULL, 46, 57, 40, NULL, NULL, 50, 40),

  -- 0033 Nidorino  Poison
  (33, 33, 1, 4, NULL, NULL, NULL, NULL, 61, 72, 57, NULL, NULL, 65, 55),

  -- 0034 Nidoking  Poison/Ground
  (34, 34, 1, 4, 5, NULL, NULL, NULL, 81, 92, 77, NULL, NULL, 85, 75),

  -- 0035 Clefairy  Normal
  (35, 35, 1, 1, NULL, NULL, NULL, NULL, 70, 45, 48, NULL, NULL, 35, 60),

  -- 0036 Clefable  Normal
  (36, 36, 1, 1, NULL, NULL, NULL, NULL, 95, 70, 73, NULL, NULL, 60, 85),

  -- 0037 Vulpix  Fire
  (37, 37, 1, 10, NULL, NULL, NULL, NULL, 38, 41, 40, NULL, NULL, 65, 65),

  -- 0038 Ninetales  Fire
  (38, 38, 1, 10, NULL, NULL, NULL, NULL, 73, 76, 75, NULL, NULL, 100, 100),

  -- 0039 Jigglypuff  Normal
  (39, 39, 1, 1, NULL, NULL, NULL, NULL, 115, 45, 20, NULL, NULL, 20, 25),

  -- 0040 Wigglytuff  Normal
  (40, 40, 1, 1, NULL, NULL, NULL, NULL, 140, 70, 45, NULL, NULL, 45, 50),

  -- 0041 Zubat  Poison/Flying
  (41, 41, 1, 4, 3, NULL, NULL, NULL, 40, 45, 35, NULL, NULL, 55, 40),

  -- 0042 Golbat  Poison/Flying
  (42, 42, 1, 4, 3, NULL, NULL, NULL, 75, 80, 70, NULL, NULL, 90, 75),

  -- 0043 Oddish  Grass/Poison
  (43, 43, 1, 12, 4, NULL, NULL, NULL, 45, 50, 55, NULL, NULL, 30, 75),

  -- 0044 Gloom  Grass/Poison
  (44, 44, 1, 12, 4, NULL, NULL, NULL, 60, 65, 70, NULL, NULL, 40, 85),

  -- 0045 Vileplume  Grass/Poison
  (45, 45, 1, 12, 4, NULL, NULL, NULL, 75, 80, 85, NULL, NULL, 50, 100),

  -- 0046 Paras  Bug/Grass
  (46, 46, 1, 7, 12, NULL, NULL, NULL, 35, 70, 55, NULL, NULL, 25, 55),

  -- 0047 Parasect  Bug/Grass
  (47, 47, 1, 7, 12, NULL, NULL, NULL, 60, 95, 80, NULL, NULL, 30, 80),

  -- 0048 Venonat  Bug/Poison
  (48, 48, 1, 7, 4, NULL, NULL, NULL, 60, 55, 50, NULL, NULL, 45, 40),

  -- 0049 Venomoth  Bug/Poison
  (49, 49, 1, 7, 4, NULL, NULL, NULL, 70, 65, 60, NULL, NULL, 90, 90),

  -- 0050 Diglett  Ground
  (50, 50, 1, 5, NULL, NULL, NULL, NULL, 10, 55, 25, NULL, NULL, 95, 45),

  -- 0051 Dugtrio  Ground
  (51, 51, 1, 5, NULL, NULL, NULL, NULL, 35, 80, 50, NULL, NULL, 120, 70),

  -- 0052 Meowth  Normal
  (52, 52, 1, 1, NULL, NULL, NULL, NULL, 40, 45, 35, NULL, NULL, 90, 40),

  -- 0053 Persian  Normal
  (53, 53, 1, 1, NULL, NULL, NULL, NULL, 65, 70, 60, NULL, NULL, 115, 65),

  -- 0054 Psyduck  Water
  (54, 54, 1, 11, NULL, NULL, NULL, NULL, 50, 52, 48, NULL, NULL, 55, 50),

  -- 0055 Golduck  Water
  (55, 55, 1, 11, NULL, NULL, NULL, NULL, 80, 82, 78, NULL, NULL, 85, 80),

  -- 0056 Mankey  Fighting
  (56, 56, 1, 2, NULL, NULL, NULL, NULL, 40, 80, 35, NULL, NULL, 70, 35),

  -- 0057 Primeape  Fighting
  (57, 57, 1, 2, NULL, NULL, NULL, NULL, 65, 105, 60, NULL, NULL, 95, 60),

  -- 0058 Growlithe  Fire
  (58, 58, 1, 10, NULL, NULL, NULL, NULL, 55, 70, 45, NULL, NULL, 60, 50),

  -- 0059 Arcanine  Fire
  (59, 59, 1, 10, NULL, NULL, NULL, NULL, 90, 110, 80, NULL, NULL, 95, 80),

  -- 0060 Poliwag  Water
  (60, 60, 1, 11, NULL, NULL, NULL, NULL, 40, 50, 40, NULL, NULL, 90, 40),

  -- 0061 Poliwhirl  Water
  (61, 61, 1, 11, NULL, NULL, NULL, NULL, 65, 65, 65, NULL, NULL, 90, 50),

  -- 0062 Poliwrath  Water/Fighting
  (62, 62, 1, 11, 2, NULL, NULL, NULL, 90, 85, 95, NULL, NULL, 70, 70),

  -- 0063 Abra  Psychic
  (63, 63, 1, 14, NULL, NULL, NULL, NULL, 25, 20, 15, NULL, NULL, 90, 105),

  -- 0064 Kadabra  Psychic
  (64, 64, 1, 14, NULL, NULL, NULL, NULL, 40, 35, 30, NULL, NULL, 105, 120),

  -- 0065 Alakazam  Psychic
  (65, 65, 1, 14, NULL, NULL, NULL, NULL, 55, 50, 45, NULL, NULL, 120, 135),

  -- 0066 Machop  Fighting
  (66, 66, 1, 2, NULL, NULL, NULL, NULL, 70, 80, 50, NULL, NULL, 35, 35),

  -- 0067 Machoke  Fighting
  (67, 67, 1, 2, NULL, NULL, NULL, NULL, 80, 100, 70, NULL, NULL, 45, 50),

  -- 0068 Machamp  Fighting
  (68, 68, 1, 2, NULL, NULL, NULL, NULL, 90, 130, 80, NULL, NULL, 55, 65),

  -- 0069 Bellsprout  Grass/Poison
  (69, 69, 1, 12, 4, NULL, NULL, NULL, 50, 75, 35, NULL, NULL, 40, 70),

  -- 0070 Weepinbell  Grass/Poison
  (70, 70, 1, 12, 4, NULL, NULL, NULL, 65, 90, 50, NULL, NULL, 55, 85),

  -- 0071 Victreebel  Grass/Poison
  (71, 71, 1, 12, 4, NULL, NULL, NULL, 80, 105, 65, NULL, NULL, 70, 100),

  -- 0072 Tentacool  Water/Poison
  (72, 72, 1, 11, 4, NULL, NULL, NULL, 40, 40, 35, NULL, NULL, 70, 100),

  -- 0073 Tentacruel  Water/Poison
  (73, 73, 1, 11, 4, NULL, NULL, NULL, 80, 70, 65, NULL, NULL, 100, 120),

  -- 0074 Geodude  Rock/Ground
  (74, 74, 1, 6, 5, NULL, NULL, NULL, 40, 80, 100, NULL, NULL, 20, 30),

  -- 0075 Graveler  Rock/Ground
  (75, 75, 1, 6, 5, NULL, NULL, NULL, 55, 95, 115, NULL, NULL, 35, 45),

  -- 0076 Golem  Rock/Ground
  (76, 76, 1, 6, 5, NULL, NULL, NULL, 80, 110, 130, NULL, NULL, 45, 55),

  -- 0077 Ponyta  Fire
  (77, 77, 1, 10, NULL, NULL, NULL, NULL, 50, 85, 55, NULL, NULL, 90, 65),

  -- 0078 Rapidash  Fire
  (78, 78, 1, 10, NULL, NULL, NULL, NULL, 65, 100, 70, NULL, NULL, 105, 80),

  -- 0079 Slowpoke  Water/Psychic
  (79, 79, 1, 11, 14, NULL, NULL, NULL, 90, 65, 65, NULL, NULL, 15, 40),

  -- 0080 Slowbro  Water/Psychic
  (80, 80, 1, 11, 14, NULL, NULL, NULL, 95, 75, 110, NULL, NULL, 30, 80),

  -- 0081 Magnemite  Electric
  (81, 81, 1, 13, NULL, NULL, NULL, NULL, 25, 35, 70, NULL, NULL, 45, 95),

  -- 0082 Magneton  Electric
  (82, 82, 1, 13, NULL, NULL, NULL, NULL, 50, 60, 95, NULL, NULL, 70, 120),

  -- 0083 Farfetch'd  Normal/Flying
  (83, 83, 1, 1, 3, NULL, NULL, NULL, 52, 65, 55, NULL, NULL, 60, 58),

  -- 0084 Doduo  Normal/Flying
  (84, 84, 1, 1, 3, NULL, NULL, NULL, 35, 85, 45, NULL, NULL, 75, 35),

  -- 0085 Dodrio  Normal/Flying
  (85, 85, 1, 1, 3, NULL, NULL, NULL, 60, 110, 70, NULL, NULL, 100, 60),

  -- 0086 Seel  Water
  (86, 86, 1, 11, NULL, NULL, NULL, NULL, 65, 45, 55, NULL, NULL, 45, 70),

  -- 0087 Dewgong  Water/Ice
  (87, 87, 1, 11, 15, NULL, NULL, NULL, 90, 70, 80, NULL, NULL, 70, 95),

  -- 0088 Grimer  Poison
  (88, 88, 1, 4, NULL, NULL, NULL, NULL, 80, 80, 50, NULL, NULL, 25, 40),

  -- 0089 Muk  Poison
  (89, 89, 1, 4, NULL, NULL, NULL, NULL, 105, 105, 75, NULL, NULL, 50, 65),

  -- 0090 Shellder  Water
  (90, 90, 1, 11, NULL, NULL, NULL, NULL, 30, 65, 100, NULL, NULL, 40, 45),

  -- 0091 Cloyster  Water/Ice
  (91, 91, 1, 11, 15, NULL, NULL, NULL, 50, 95, 180, NULL, NULL, 70, 85),

  -- 0092 Gastly  Ghost/Poison
  (92, 92, 1, 8, 4, NULL, NULL, NULL, 30, 35, 30, NULL, NULL, 80, 100),

  -- 0093 Haunter  Ghost/Poison
  (93, 93, 1, 8, 4, NULL, NULL, NULL, 45, 50, 45, NULL, NULL, 95, 115),

  -- 0094 Gengar  Ghost/Poison
  (94, 94, 1, 8, 4, NULL, NULL, NULL, 60, 65, 60, NULL, NULL, 110, 130),

  -- 0095 Onix  Rock/Ground
  (95, 95, 1, 6, 5, NULL, NULL, NULL, 35, 45, 160, NULL, NULL, 70, 30),

  -- 0096 Drowzee  Psychic
  (96, 96, 1, 14, NULL, NULL, NULL, NULL, 60, 48, 45, NULL, NULL, 42, 90),

  -- 0097 Hypno  Psychic
  (97, 97, 1, 14, NULL, NULL, NULL, NULL, 85, 73, 70, NULL, NULL, 67, 115),

  -- 0098 Krabby  Water
  (98, 98, 1, 11, NULL, NULL, NULL, NULL, 30, 105, 90, NULL, NULL, 50, 25),

  -- 0099 Kingler  Water
  (99, 99, 1, 11, NULL, NULL, NULL, NULL, 55, 130, 115, NULL, NULL, 75, 50),

  -- 0100 Voltorb  Electric
  (100, 100, 1, 13, NULL, NULL, NULL, NULL, 40, 30, 50, NULL, NULL, 100, 55),

  -- 0101 Electrode  Electric
  (101, 101, 1, 13, NULL, NULL, NULL, NULL, 60, 50, 70, NULL, NULL, 140, 80),

  -- 0102 Exeggcute  Grass/Psychic
  (102, 102, 1, 12, 14, NULL, NULL, NULL, 60, 40, 80, NULL, NULL, 40, 60),

  -- 0103 Exeggutor  Grass/Psychic
  (103, 103, 1, 12, 14, NULL, NULL, NULL, 95, 95, 85, NULL, NULL, 55, 125),

  -- 0104 Cubone  Ground
  (104, 104, 1, 5, NULL, NULL, NULL, NULL, 50, 50, 95, NULL, NULL, 35, 40),

  -- 0105 Marowak  Ground
  (105, 105, 1, 5, NULL, NULL, NULL, NULL, 60, 80, 110, NULL, NULL, 45, 50),

  -- 0106 Hitmonlee  Fighting
  (106, 106, 1, 2, NULL, NULL, NULL, NULL, 50, 120, 53, NULL, NULL, 87, 35),

  -- 0107 Hitmonchan  Fighting
  (107, 107, 1, 2, NULL, NULL, NULL, NULL, 50, 105, 79, NULL, NULL, 76, 35),

  -- 0108 Lickitung  Normal
  (108, 108, 1, 1, NULL, NULL, NULL, NULL, 90, 55, 75, NULL, NULL, 30, 60),

  -- 0109 Koffing  Poison
  (109, 109, 1, 4, NULL, NULL, NULL, NULL, 40, 65, 95, NULL, NULL, 35, 60),

  -- 0110 Weezing  Poison
  (110, 110, 1, 4, NULL, NULL, NULL, NULL, 65, 90, 120, NULL, NULL, 60, 85),

  -- 0111 Rhyhorn  Ground/Rock
  (111, 111, 1, 5, 6, NULL, NULL, NULL, 80, 85, 95, NULL, NULL, 25, 30),

  -- 0112 Rhydon  Ground/Rock
  (112, 112, 1, 5, 6, NULL, NULL, NULL, 105, 130, 120, NULL, NULL, 40, 45),

  -- 0113 Chansey  Normal
  (113, 113, 1, 1, NULL, NULL, NULL, NULL, 250, 5, 5, NULL, NULL, 50, 105),

  -- 0114 Tangela  Grass
  (114, 114, 1, 12, NULL, NULL, NULL, NULL, 65, 55, 115, NULL, NULL, 60, 100),

  -- 0115 Kangaskhan  Normal
  (115, 115, 1, 1, NULL, NULL, NULL, NULL, 105, 95, 80, NULL, NULL, 90, 40),

  -- 0116 Horsea  Water
  (116, 116, 1, 11, NULL, NULL, NULL, NULL, 30, 40, 70, NULL, NULL, 60, 70),

  -- 0117 Seadra  Water
  (117, 117, 1, 11, NULL, NULL, NULL, NULL, 55, 65, 95, NULL, NULL, 85, 95),

  -- 0118 Goldeen  Water
  (118, 118, 1, 11, NULL, NULL, NULL, NULL, 45, 67, 60, NULL, NULL, 63, 50),

  -- 0119 Seaking  Water
  (119, 119, 1, 11, NULL, NULL, NULL, NULL, 80, 92, 65, NULL, NULL, 68, 80),

  -- 0120 Staryu  Water
  (120, 120, 1, 11, NULL, NULL, NULL, NULL, 30, 45, 55, NULL, NULL, 85, 70),

  -- 0121 Starmie  Water/Psychic
  (121, 121, 1, 11, 14, NULL, NULL, NULL, 60, 75, 85, NULL, NULL, 115, 100),

  -- 0122 Mr. Mime  Psychic
  (122, 122, 1, 14, NULL, NULL, NULL, NULL, 40, 45, 65, NULL, NULL, 90, 100),

  -- 0123 Scyther  Bug/Flying
  (123, 123, 1, 7, 3, NULL, NULL, NULL, 70, 110, 80, NULL, NULL, 105, 55),

  -- 0124 Jynx  Ice/Psychic
  (124, 124, 1, 15, 14, NULL, NULL, NULL, 65, 50, 35, NULL, NULL, 95, 95),

  -- 0125 Electabuzz  Electric
  (125, 125, 1, 13, NULL, NULL, NULL, NULL, 65, 83, 57, NULL, NULL, 105, 85),

  -- 0126 Magmar  Fire
  (126, 126, 1, 10, NULL, NULL, NULL, NULL, 65, 95, 57, NULL, NULL, 93, 85),

  -- 0127 Pinsir  Bug
  (127, 127, 1, 7, NULL, NULL, NULL, NULL, 65, 125, 100, NULL, NULL, 85, 55),

  -- 0128 Tauros  Normal
  (128, 128, 1, 1, NULL, NULL, NULL, NULL, 75, 100, 95, NULL, NULL, 110, 70),

  -- 0129 Magikarp  Water
  (129, 129, 1, 11, NULL, NULL, NULL, NULL, 20, 10, 55, NULL, NULL, 80, 20),

  -- 0130 Gyarados  Water/Flying
  (130, 130, 1, 11, 3, NULL, NULL, NULL, 95, 125, 79, NULL, NULL, 81, 100),

  -- 0131 Lapras  Water/Ice
  (131, 131, 1, 11, 15, NULL, NULL, NULL, 130, 85, 80, NULL, NULL, 60, 95),

  -- 0132 Ditto  Normal
  (132, 132, 1, 1, NULL, NULL, NULL, NULL, 48, 48, 48, NULL, NULL, 48, 48),

  -- 0133 Eevee  Normal
  (133, 133, 1, 1, NULL, NULL, NULL, NULL, 55, 55, 50, NULL, NULL, 55, 65),

  -- 0134 Vaporeon  Water
  (134, 134, 1, 11, NULL, NULL, NULL, NULL, 130, 65, 60, NULL, NULL, 65, 110),

  -- 0135 Jolteon  Electric
  (135, 135, 1, 13, NULL, NULL, NULL, NULL, 65, 65, 60, NULL, NULL, 130, 110),

  -- 0136 Flareon  Fire
  (136, 136, 1, 10, NULL, NULL, NULL, NULL, 65, 130, 60, NULL, NULL, 65, 110),

  -- 0137 Porygon  Normal
  (137, 137, 1, 1, NULL, NULL, NULL, NULL, 65, 60, 70, NULL, NULL, 40, 75),

  -- 0138 Omanyte  Rock/Water
  (138, 138, 1, 6, 11, NULL, NULL, NULL, 35, 40, 100, NULL, NULL, 35, 90),

  -- 0139 Omastar  Rock/Water
  (139, 139, 1, 6, 11, NULL, NULL, NULL, 70, 60, 125, NULL, NULL, 55, 115),

  -- 0140 Kabuto  Rock/Water
  (140, 140, 1, 6, 11, NULL, NULL, NULL, 30, 80, 90, NULL, NULL, 55, 45),

  -- 0141 Kabutops  Rock/Water
  (141, 141, 1, 6, 11, NULL, NULL, NULL, 60, 115, 105, NULL, NULL, 80, 70),

  -- 0142 Aerodactyl  Rock/Flying
  (142, 142, 1, 6, 3, NULL, NULL, NULL, 80, 105, 65, NULL, NULL, 130, 60),

  -- 0143 Snorlax  Normal
  (143, 143, 1, 1, NULL, NULL, NULL, NULL, 160, 110, 65, NULL, NULL, 30, 65),

  -- 0144 Articuno  Ice/Flying
  (144, 144, 1, 15, 3, NULL, NULL, NULL, 90, 85, 100, NULL, NULL, 85, 125),

  -- 0145 Zapdos  Electric/Flying
  (145, 145, 1, 13, 3, NULL, NULL, NULL, 90, 90, 85, NULL, NULL, 100, 125),

  -- 0146 Moltres  Fire/Flying
  (146, 146, 1, 10, 3, NULL, NULL, NULL, 90, 100, 90, NULL, NULL, 90, 125),

  -- 0147 Dratini  Dragon
  (147, 147, 1, 16, NULL, NULL, NULL, NULL, 41, 64, 45, NULL, NULL, 50, 50),

  -- 0148 Dragonair  Dragon
  (148, 148, 1, 16, NULL, NULL, NULL, NULL, 61, 84, 65, NULL, NULL, 70, 70),

  -- 0149 Dragonite  Dragon/Flying
  (149, 149, 1, 16, 3, NULL, NULL, NULL, 91, 134, 95, NULL, NULL, 80, 100),

  -- 0150 Mewtwo  Psychic
  (150, 150, 1, 14, NULL, NULL, NULL, NULL, 106, 110, 90, NULL, NULL, 130, 154),

  -- 0151 Mew  Psychic
  (151, 151, 1, 14, NULL, NULL, NULL, NULL, 100, 100, 100, NULL, NULL, 100, 100);