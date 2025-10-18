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
  (1, 1, 2, 12, 4, NULL, NULL, NULL, 45, 49, 49, 65, 65, 45, NULL),

  -- 0002 Ivysaur  Grass/Poison
  (2, 2, 2, 12, 4, NULL, NULL, NULL, 60, 62, 63, 80, 80, 60, NULL),

  -- 0003 Venusaur  Grass/Poison
  (3, 3, 2, 12, 4, NULL, NULL, NULL, 80, 82, 83, 100, 100, 80, NULL),

  -- 0004 Charmander  Fire
  (4, 4, 2, 10, NULL, NULL, NULL, NULL, 39, 52, 43, 60, 50, 65, NULL),

  -- 0005 Charmeleon  Fire
  (5, 5, 2, 10, NULL, NULL, NULL, NULL, 58, 64, 58, 80, 65, 80, NULL),

  -- 0006 Charizard  Fire/Flying
  (6, 6, 2, 10, 3, NULL, NULL, NULL, 78, 84, 78, 109, 85, 100, NULL),

  -- 0007 Squirtle  Water
  (7, 7, 2, 11, NULL, NULL, NULL, NULL, 44, 48, 65, 50, 64, 43, NULL),

  -- 0008 Wartortle  Water
  (8, 8, 2, 11, NULL, NULL, NULL, NULL, 59, 63, 80, 65, 80, 58, NULL),

  -- 0009 Blastoise  Water
  (9, 9, 2, 11, NULL, NULL, NULL, NULL, 79, 83, 100, 85, 105, 78, NULL),

  -- 0010 Caterpie  Bug
  (10, 10, 2, 7, NULL, NULL, NULL, NULL, 45, 30, 35, 20, 20, 45, NULL),

  -- 0011 Metapod  Bug
  (11, 11, 2, 7, NULL, NULL, NULL, NULL, 50, 20, 55, 25, 25, 30, NULL),

  -- 0012 Butterfree  Bug/Flying
  (12, 12, 2, 7, 3, NULL, NULL, NULL, 60, 45, 50, 80, 80, 70, NULL),

  -- 0013 Weedle  Bug/Poison
  (13, 13, 2, 7, 4, NULL, NULL, NULL, 40, 35, 30, 20, 20, 50, NULL),

  -- 0014 Kakuna  Bug/Poison
  (14, 14, 2, 7, 4, NULL, NULL, NULL, 45, 25, 50, 25, 25, 35, NULL),

  -- 0015 Beedrill  Bug/Poison
  (15, 15, 2, 7, 4, NULL, NULL, NULL, 65, 80, 40, 45, 80, 75, NULL),

  -- 0016 Pidgey  Normal/Flying
  (16, 16, 2, 1, 3, NULL, NULL, NULL, 40, 45, 40, 35, 35, 56, NULL),

  -- 0017 Pidgeotto  Normal/Flying
  (17, 17, 2, 1, 3, NULL, NULL, NULL, 63, 60, 55, 50, 50, 71, NULL),

  -- 0018 Pidgeot  Normal/Flying
  (18, 18, 2, 1, 3, NULL, NULL, NULL, 83, 80, 75, 70, 70, 91, NULL),

  -- 0019 Rattata  Normal
  (19, 19, 2, 1, NULL, NULL, NULL, NULL, 30, 56, 35, 25, 35, 72, NULL),

  -- 0020 Raticate  Normal
  (20, 20, 2, 1, NULL, NULL, NULL, NULL, 55, 81, 60, 50, 70, 97, NULL),

  -- 0021 Spearow  Normal/Flying
  (21, 21, 2, 1, 3, NULL, NULL, NULL, 40, 60, 30, 31, 31, 70, NULL),

  -- 0022 Fearow  Normal/Flying
  (22, 22, 2, 1, 3, NULL, NULL, NULL, 65, 90, 65, 61, 61, 100, NULL),

  -- 0023 Ekans  Poison
  (23, 23, 2, 4, NULL, NULL, NULL, NULL, 35, 60, 44, 40, 54, 55, NULL),

  -- 0024 Arbok  Poison
  (24, 24, 2, 4, NULL, NULL, NULL, NULL, 60, 85, 69, 65, 79, 80, NULL),

  -- 0025 Pikachu  Electric
  (25, 25, 2, 13, NULL, NULL, NULL, NULL, 35, 55, 30, 50, 40, 90, NULL),

  -- 0026 Raichu  Electric
  (26, 26, 2, 13, NULL, NULL, NULL, NULL, 60, 90, 55, 90, 80, 100, NULL),

  -- 0027 Sandshrew  Ground
  (27, 27, 2, 5, NULL, NULL, NULL, NULL, 50, 75, 85, 20, 30, 40, NULL),

  -- 0028 Sandslash  Ground
  (28, 28, 2, 5, NULL, NULL, NULL, NULL, 75, 100, 110, 45, 55, 65, NULL),

  -- 0029 Nidoran♀  Poison
  (29, 29, 2, 4, NULL, NULL, NULL, NULL, 55, 47, 52, 40, 40, 41, NULL),

  -- 0030 Nidorina  Poison
  (30, 30, 2, 4, NULL, NULL, NULL, NULL, 70, 62, 67, 55, 55, 56, NULL),

  -- 0031 Nidoqueen  Poison/Ground
  (31, 31, 2, 4, 5, NULL, NULL, NULL, 90, 82, 87, 75, 85, 76, NULL),

  -- 0032 Nidoran♂  Poison
  (32, 32, 2, 4, NULL, NULL, NULL, NULL, 46, 57, 40, 40, 40, 50, NULL),

  -- 0033 Nidorino  Poison
  (33, 33, 2, 4, NULL, NULL, NULL, NULL, 61, 72, 57, 55, 55, 65, NULL),

  -- 0034 Nidoking  Poison/Ground
  (34, 34, 2, 4, 5, NULL, NULL, NULL, 81, 92, 77, 85, 75, 85, NULL),

  -- 0035 Clefairy  Normal
  (35, 35, 2, 1, NULL, NULL, NULL, NULL, 70, 45, 48, 60, 65, 35, NULL),

  -- 0036 Clefable  Normal
  (36, 36, 2, 1, NULL, NULL, NULL, NULL, 95, 70, 73, 85, 90, 60, NULL),

  -- 0037 Vulpix  Fire
  (37, 37, 2, 10, NULL, NULL, NULL, NULL, 38, 41, 40, 50, 65, 65, NULL),

  -- 0038 Ninetales  Fire
  (38, 38, 2, 10, NULL, NULL, NULL, NULL, 73, 76, 75, 81, 100, 100, NULL),

  -- 0039 Jigglypuff  Normal
  (39, 39, 2, 1, NULL, NULL, NULL, NULL, 115, 45, 20, 45, 25, 20, NULL),

  -- 0040 Wigglytuff  Normal
  (40, 40, 2, 1, NULL, NULL, NULL, NULL, 140, 70, 45, 75, 50, 45, NULL),

  -- 0041 Zubat  Poison/Flying
  (41, 41, 2, 4, 3, NULL, NULL, NULL, 40, 45, 35, 30, 40, 55, NULL),

  -- 0042 Golbat  Poison/Flying
  (42, 42, 2, 4, 3, NULL, NULL, NULL, 75, 80, 70, 65, 75, 90, NULL),

  -- 0043 Oddish  Grass/Poison
  (43, 43, 2, 12, 4, NULL, NULL, NULL, 45, 50, 55, 75, 65, 30, NULL),

  -- 0044 Gloom  Grass/Poison
  (44, 44, 2, 12, 4, NULL, NULL, NULL, 60, 65, 70, 85, 75, 40, NULL),

  -- 0045 Vileplume  Grass/Poison
  (45, 45, 2, 12, 4, NULL, NULL, NULL, 75, 80, 85, 100, 90, 50, NULL),

  -- 0046 Paras  Bug/Grass
  (46, 46, 2, 7, 12, NULL, NULL, NULL, 35, 70, 55, 45, 55, 25, NULL),

  -- 0047 Parasect  Bug/Grass
  (47, 47, 2, 7, 12, NULL, NULL, NULL, 60, 95, 80, 60, 80, 30, NULL),

  -- 0048 Venonat  Bug/Poison
  (48, 48, 2, 7, 4, NULL, NULL, NULL, 60, 55, 50, 40, 55, 45, NULL),

  -- 0049 Venomoth  Bug/Poison
  (49, 49, 2, 7, 4, NULL, NULL, NULL, 70, 65, 60, 90, 75, 90, NULL),

  -- 0050 Diglett  Ground
  (50, 50, 2, 5, NULL, NULL, NULL, NULL, 10, 55, 25, 35, 45, 95, NULL),

  -- 0051 Dugtrio  Ground
  (51, 51, 2, 5, NULL, NULL, NULL, NULL, 35, 80, 50, 50, 70, 120, NULL),

  -- 0052 Meowth  Normal
  (52, 52, 2, 1, NULL, NULL, NULL, NULL, 40, 45, 35, 40, 40, 90, NULL),

  -- 0053 Persian  Normal
  (53, 53, 2, 1, NULL, NULL, NULL, NULL, 65, 70, 60, 65, 65, 115, NULL),

  -- 0054 Psyduck  Water
  (54, 54, 2, 11, NULL, NULL, NULL, NULL, 50, 52, 48, 65, 50, 55, NULL),

  -- 0055 Golduck  Water
  (55, 55, 2, 11, NULL, NULL, NULL, NULL, 80, 82, 78, 95, 80, 85, NULL),

  -- 0056 Mankey  Fighting
  (56, 56, 2, 2, NULL, NULL, NULL, NULL, 40, 80, 35, 35, 45, 70, NULL),

  -- 0057 Primeape  Fighting
  (57, 57, 2, 2, NULL, NULL, NULL, NULL, 65, 105, 60, 60, 70, 95, NULL),

  -- 0058 Growlithe  Fire
  (58, 58, 2, 10, NULL, NULL, NULL, NULL, 55, 70, 45, 70, 50, 60, NULL),

  -- 0059 Arcanine  Fire
  (59, 59, 2, 10, NULL, NULL, NULL, NULL, 90, 110, 80, 100, 80, 95, NULL),

  -- 0060 Poliwag  Water
  (60, 60, 2, 11, NULL, NULL, NULL, NULL, 40, 50, 40, 40, 40, 90, NULL),

  -- 0061 Poliwhirl  Water
  (61, 61, 2, 11, NULL, NULL, NULL, NULL, 65, 65, 65, 50, 50, 90, NULL),

  -- 0062 Poliwrath  Water/Fighting
  (62, 62, 2, 11, 2, NULL, NULL, NULL, 90, 85, 95, 70, 90, 70, NULL),

  -- 0063 Abra  Psychic
  (63, 63, 2, 14, NULL, NULL, NULL, NULL, 25, 20, 15, 105, 55, 90, NULL),

  -- 0064 Kadabra  Psychic
  (64, 64, 2, 14, NULL, NULL, NULL, NULL, 40, 35, 30, 120, 70, 105, NULL),

  -- 0065 Alakazam  Psychic
  (65, 65, 2, 14, NULL, NULL, NULL, NULL, 55, 50, 45, 135, 85, 120, NULL),

  -- 0066 Machop  Fighting
  (66, 66, 2, 2, NULL, NULL, NULL, NULL, 70, 80, 50, 35, 35, 35, NULL),

  -- 0067 Machoke  Fighting
  (67, 67, 2, 2, NULL, NULL, NULL, NULL, 80, 100, 70, 50, 60, 45, NULL),

  -- 0068 Machamp  Fighting
  (68, 68, 2, 2, NULL, NULL, NULL, NULL, 90, 130, 80, 65, 85, 55, NULL),

  -- 0069 Bellsprout  Grass/Poison
  (69, 69, 2, 12, 4, NULL, NULL, NULL, 50, 75, 35, 70, 30, 40, NULL),

  -- 0070 Weepinbell  Grass/Poison
  (70, 70, 2, 12, 4, NULL, NULL, NULL, 65, 90, 50, 85, 45, 55, NULL),

  -- 0071 Victreebel  Grass/Poison
  (71, 71, 2, 12, 4, NULL, NULL, NULL, 80, 105, 65, 100, 60, 70, NULL),

  -- 0072 Tentacool  Water/Poison
  (72, 72, 2, 11, 4, NULL, NULL, NULL, 40, 40, 35, 50, 100, 70, NULL),

  -- 0073 Tentacruel  Water/Poison
  (73, 73, 2, 11, 4, NULL, NULL, NULL, 80, 70, 65, 80, 120, 100, NULL),

  -- 0074 Geodude  Rock/Ground
  (74, 74, 2, 6, 5, NULL, NULL, NULL, 40, 80, 100, 30, 30, 20, NULL),

  -- 0075 Graveler  Rock/Ground
  (75, 75, 2, 6, 5, NULL, NULL, NULL, 55, 95, 115, 45, 45, 35, NULL),

  -- 0076 Golem  Rock/Ground
  (76, 76, 2, 6, 5, NULL, NULL, NULL, 80, 110, 130, 55, 65, 45, NULL),

  -- 0077 Ponyta  Fire
  (77, 77, 2, 10, NULL, NULL, NULL, NULL, 50, 85, 55, 65, 65, 90, NULL),

  -- 0078 Rapidash  Fire
  (78, 78, 2, 10, NULL, NULL, NULL, NULL, 65, 100, 70, 80, 80, 105, NULL),

  -- 0079 Slowpoke  Water/Psychic
  (79, 79, 2, 11, 14, NULL, NULL, NULL, 90, 65, 65, 40, 40, 15, NULL),

  -- 0080 Slowbro  Water/Psychic
  (80, 80, 2, 11, 14, NULL, NULL, NULL, 95, 75, 110, 100, 80, 30, NULL),

  -- 0081 Magnemite  Electric/Steel
  (81, 81, 2, 13, 9, NULL, NULL, NULL, 25, 35, 70, 95, 55, 45, NULL),

  -- 0082 Magneton  Electric/Steel
  (82, 82, 2, 13, 9, NULL, NULL, NULL, 50, 60, 95, 120, 70, 70, NULL),

  -- 0083 Farfetch'd  Normal/Flying
  (83, 83, 2, 1, 3, NULL, NULL, NULL, 52, 65, 55, 58, 62, 60, NULL),

  -- 0084 Doduo  Normal/Flying
  (84, 84, 2, 1, 3, NULL, NULL, NULL, 35, 85, 45, 35, 35, 75, NULL),

  -- 0085 Dodrio  Normal/Flying
  (85, 85, 2, 1, 3, NULL, NULL, NULL, 60, 110, 70, 60, 60, 100, NULL),

  -- 0086 Seel  Water
  (86, 86, 2, 11, NULL, NULL, NULL, NULL, 65, 45, 55, 45, 70, 45, NULL),

  -- 0087 Dewgong  Water/Ice
  (87, 87, 2, 11, 15, NULL, NULL, NULL, 90, 70, 80, 70, 95, 70, NULL),

  -- 0088 Grimer  Poison
  (88, 88, 2, 4, NULL, NULL, NULL, NULL, 80, 80, 50, 40, 50, 25, NULL),

  -- 0089 Muk  Poison
  (89, 89, 2, 4, NULL, NULL, NULL, NULL, 105, 105, 75, 65, 100, 50, NULL),

  -- 0090 Shellder  Water
  (90, 90, 2, 11, NULL, NULL, NULL, NULL, 30, 65, 100, 45, 25, 40, NULL),

  -- 0091 Cloyster  Water/Ice
  (91, 91, 2, 11, 15, NULL, NULL, NULL, 50, 95, 180, 85, 45, 70, NULL),

  -- 0092 Gastly  Ghost/Poison
  (92, 92, 2, 8, 4, NULL, NULL, NULL, 30, 35, 30, 100, 35, 80, NULL),

  -- 0093 Haunter  Ghost/Poison
  (93, 93, 2, 8, 4, NULL, NULL, NULL, 45, 50, 45, 115, 55, 95, NULL),

  -- 0094 Gengar  Ghost/Poison
  (94, 94, 2, 8, 4, NULL, NULL, NULL, 60, 65, 60, 130, 75, 110, NULL),

  -- 0095 Onix  Rock/Ground
  (95, 95, 2, 6, 5, NULL, NULL, NULL, 35, 45, 160, 30, 45, 70, NULL),

  -- 0096 Drowzee  Psychic
  (96, 96, 2, 14, NULL, NULL, NULL, NULL, 60, 48, 45, 43, 90, 42, NULL),

  -- 0097 Hypno  Psychic
  (97, 97, 2, 14, NULL, NULL, NULL, NULL, 85, 73, 70, 73, 115, 67, NULL),

  -- 0098 Krabby  Water
  (98, 98, 2, 11, NULL, NULL, NULL, NULL, 30, 105, 90, 25, 25, 50, NULL),

  -- 0099 Kingler  Water
  (99, 99, 2, 11, NULL, NULL, NULL, NULL, 55, 130, 115, 50, 50, 75, NULL),

  -- 0100 Voltorb  Electric
  (100, 100, 2, 13, NULL, NULL, NULL, NULL, 40, 30, 50, 55, 55, 100, NULL),

  -- 0101 Electrode  Electric
  (101, 101, 2, 13, NULL, NULL, NULL, NULL, 60, 50, 70, 80, 80, 140, NULL),

  -- 0102 Exeggcute  Grass/Psychic
  (102, 102, 2, 12, 14, NULL, NULL, NULL, 60, 40, 80, 60, 45, 40, NULL),

  -- 0103 Exeggutor  Grass/Psychic
  (103, 103, 2, 12, 14, NULL, NULL, NULL, 95, 95, 85, 125, 65, 55, NULL),

  -- 0104 Cubone  Ground
  (104, 104, 2, 5, NULL, NULL, NULL, NULL, 50, 50, 95, 40, 50, 35, NULL),

  -- 0105 Marowak  Ground
  (105, 105, 2, 5, NULL, NULL, NULL, NULL, 60, 80, 110, 50, 80, 45, NULL),

  -- 0106 Hitmonlee  Fighting
  (106, 106, 2, 2, NULL, NULL, NULL, NULL, 50, 120, 53, 35, 110, 87, NULL),

  -- 0107 Hitmonchan  Fighting
  (107, 107, 2, 2, NULL, NULL, NULL, NULL, 50, 105, 79, 35, 110, 76, NULL),

  -- 0108 Lickitung  Normal
  (108, 108, 2, 1, NULL, NULL, NULL, NULL, 90, 55, 75, 60, 75, 30, NULL),

  -- 0109 Koffing  Poison
  (109, 109, 2, 4, NULL, NULL, NULL, NULL, 40, 65, 95, 60, 45, 35, NULL),

  -- 0110 Weezing  Poison
  (110, 110, 2, 4, NULL, NULL, NULL, NULL, 65, 90, 120, 85, 70, 60, NULL),

  -- 0111 Rhyhorn  Ground/Rock
  (111, 111, 2, 5, 6, NULL, NULL, NULL, 80, 85, 95, 30, 30, 25, NULL),

  -- 0112 Rhydon  Ground/Rock
  (112, 112, 2, 5, 6, NULL, NULL, NULL, 105, 130, 120, 45, 45, 40, NULL),

  -- 0113 Chansey  Normal
  (113, 113, 2, 1, NULL, NULL, NULL, NULL, 250, 5, 5, 35, 105, 50, NULL),

  -- 0114 Tangela  Grass
  (114, 114, 2, 12, NULL, NULL, NULL, NULL, 65, 55, 115, 100, 40, 60, NULL),

  -- 0115 Kangaskhan  Normal
  (115, 115, 2, 1, NULL, NULL, NULL, NULL, 105, 95, 80, 40, 80, 90, NULL),

  -- 0116 Horsea  Water
  (116, 116, 2, 11, NULL, NULL, NULL, NULL, 30, 40, 70, 70, 25, 60, NULL),

  -- 0117 Seadra  Water
  (117, 117, 2, 11, NULL, NULL, NULL, NULL, 55, 65, 95, 95, 45, 85, NULL),

  -- 0118 Goldeen  Water
  (118, 118, 2, 11, NULL, NULL, NULL, NULL, 45, 67, 60, 35, 50, 63, NULL),

  -- 0119 Seaking  Water
  (119, 119, 2, 11, NULL, NULL, NULL, NULL, 80, 92, 65, 65, 80, 68, NULL),

  -- 0120 Staryu  Water
  (120, 120, 2, 11, NULL, NULL, NULL, NULL, 30, 45, 55, 70, 55, 85, NULL),

  -- 0121 Starmie  Water/Psychic
  (121, 121, 2, 11, 14, NULL, NULL, NULL, 60, 75, 85, 100, 85, 115, NULL),

  -- 0122 Mr. Mime  Psychic
  (122, 122, 2, 14, NULL, NULL, NULL, NULL, 40, 45, 65, 100, 120, 90, NULL),

  -- 0123 Scyther  Bug/Flying
  (123, 123, 2, 7, 3, NULL, NULL, NULL, 70, 110, 80, 55, 80, 105, NULL),

  -- 0124 Jynx  Ice/Psychic
  (124, 124, 2, 15, 14, NULL, NULL, NULL, 65, 50, 35, 115, 95, 95, NULL),

  -- 0125 Electabuzz  Electric
  (125, 125, 2, 13, NULL, NULL, NULL, NULL, 65, 83, 57, 95, 85, 105, NULL),

  -- 0126 Magmar  Fire
  (126, 126, 2, 10, NULL, NULL, NULL, NULL, 65, 95, 57, 100, 85, 93, NULL),

  -- 0127 Pinsir  Bug
  (127, 127, 2, 7, NULL, NULL, NULL, NULL, 65, 125, 100, 55, 70, 85, NULL),

  -- 0128 Tauros  Normal
  (128, 128, 2, 1, NULL, NULL, NULL, NULL, 75, 100, 95, 40, 70, 110, NULL),

  -- 0129 Magikarp  Water
  (129, 129, 2, 11, NULL, NULL, NULL, NULL, 20, 10, 55, 15, 20, 80, NULL),

  -- 0130 Gyarados  Water/Flying
  (130, 130, 2, 11, 3, NULL, NULL, NULL, 95, 125, 79, 60, 100, 81, NULL),

  -- 0131 Lapras  Water/Ice
  (131, 131, 2, 11, 15, NULL, NULL, NULL, 130, 85, 80, 85, 95, 60, NULL),

  -- 0132 Ditto  Normal
  (132, 132, 2, 1, NULL, NULL, NULL, NULL, 48, 48, 48, 48, 48, 48, NULL),

  -- 0133 Eevee  Normal
  (133, 133, 2, 1, NULL, NULL, NULL, NULL, 55, 55, 50, 45, 65, 55, NULL),

  -- 0134 Vaporeon  Water
  (134, 134, 2, 11, NULL, NULL, NULL, NULL, 130, 65, 60, 110, 95, 65, NULL),

  -- 0135 Jolteon  Electric
  (135, 135, 2, 13, NULL, NULL, NULL, NULL, 65, 65, 60, 110, 95, 130, NULL),

  -- 0136 Flareon  Fire
  (136, 136, 2, 10, NULL, NULL, NULL, NULL, 65, 130, 60, 95, 110, 65, NULL),

  -- 0137 Porygon  Normal
  (137, 137, 2, 1, NULL, NULL, NULL, NULL, 65, 60, 70, 85, 75, 40, NULL),

  -- 0138 Omanyte  Rock/Water
  (138, 138, 2, 6, 11, NULL, NULL, NULL, 35, 40, 100, 90, 55, 35, NULL),

  -- 0139 Omastar  Rock/Water
  (139, 139, 2, 6, 11, NULL, NULL, NULL, 70, 60, 125, 115, 70, 55, NULL),

  -- 0140 Kabuto  Rock/Water
  (140, 140, 2, 6, 11, NULL, NULL, NULL, 30, 80, 90, 55, 45, 55, NULL),

  -- 0141 Kabutops  Rock/Water
  (141, 141, 2, 6, 11, NULL, NULL, NULL, 60, 115, 105, 65, 70, 80, NULL),

  -- 0142 Aerodactyl  Rock/Flying
  (142, 142, 2, 6, 3, NULL, NULL, NULL, 80, 105, 65, 60, 75, 130, NULL),

  -- 0143 Snorlax  Normal
  (143, 143, 2, 1, NULL, NULL, NULL, NULL, 160, 110, 65, 65, 110, 30, NULL),

  -- 0144 Articuno  Ice/Flying
  (144, 144, 2, 15, 3, NULL, NULL, NULL, 90, 85, 100, 95, 125, 85, NULL),

  -- 0145 Zapdos  Electric/Flying
  (145, 145, 2, 13, 3, NULL, NULL, NULL, 90, 90, 85, 125, 90, 100, NULL),

  -- 0146 Moltres  Fire/Flying
  (146, 146, 2, 10, 3, NULL, NULL, NULL, 90, 100, 90, 125, 85, 90, NULL),

  -- 0147 Dratini  Dragon
  (147, 147, 2, 16, NULL, NULL, NULL, NULL, 41, 64, 45, 50, 50, 50, NULL),

  -- 0148 Dragonair  Dragon
  (148, 148, 2, 16, NULL, NULL, NULL, NULL, 61, 84, 65, 70, 70, 70, NULL),

  -- 0149 Dragonite  Dragon/Flying
  (149, 149, 2, 16, 3, NULL, NULL, NULL, 91, 134, 95, 100, 100, 80, NULL),

  -- 0150 Mewtwo  Psychic
  (150, 150, 2, 14, NULL, NULL, NULL, NULL, 106, 110, 90, 154, 90, 130, NULL),

  -- 0151 Mew  Psychic
  (151, 151, 2, 14, NULL, NULL, NULL, NULL, 100, 100, 100, 100, 100, 100, NULL),

  -- 0152 Chikorita  Grass
  (152, 152, 2, 12, NULL, NULL, NULL, NULL, 45, 49, 65, 49, 65, 45, NULL),

  -- 0153 Bayleef  Grass
  (153, 153, 2, 12, NULL, NULL, NULL, NULL, 60, 62, 80, 63, 80, 60, NULL),

  -- 0154 Meganium  Grass
  (154, 154, 2, 12, NULL, NULL, NULL, NULL, 80, 82, 100, 83, 100, 80, NULL),

  -- 0155 Cyndaquil  Fire
  (155, 155, 2, 10, NULL, NULL, NULL, NULL, 39, 52, 43, 60, 50, 65, NULL),

  -- 0156 Quilava  Fire
  (156, 156, 2, 10, NULL, NULL, NULL, NULL, 58, 64, 58, 80, 65, 80, NULL),

  -- 0157 Typhlosion  Fire
  (157, 157, 2, 10, NULL, NULL, NULL, NULL, 78, 84, 78, 109, 85, 100, NULL),

  -- 0158 Totodile  Water
  (158, 158, 2, 11, NULL, NULL, NULL, NULL, 50, 65, 64, 44, 48, 43, NULL),

  -- 0159 Croconaw  Water
  (159, 159, 2, 11, NULL, NULL, NULL, NULL, 65, 80, 80, 59, 63, 58, NULL),

  -- 0160 Feraligatr  Water
  (160, 160, 2, 11, NULL, NULL, NULL, NULL, 85, 105, 100, 79, 83, 78, NULL),

  -- 0161 Sentret  Normal
  (161, 161, 2, 1, NULL, NULL, NULL, NULL, 35, 46, 34, 35, 45, 20, NULL),

  -- 0162 Furret  Normal
  (162, 162, 2, 1, NULL, NULL, NULL, NULL, 85, 76, 64, 45, 55, 90, NULL),

  -- 0163 Hoothoot  Normal/Flying
  (163, 163, 2, 1, 3, NULL, NULL, NULL, 60, 30, 30, 36, 56, 50, NULL),

  -- 0164 Noctowl  Normal/Flying
  (164, 164, 2, 1, 3, NULL, NULL, NULL, 100, 50, 50, 76, 96, 70, NULL),

  -- 0165 Ledyba  Bug/Flying
  (165, 165, 2, 7, 3, NULL, NULL, NULL, 40, 20, 30, 40, 80, 55, NULL),

  -- 0166 Ledian  Bug/Flying
  (166, 166, 2, 7, 3, NULL, NULL, NULL, 55, 35, 50, 55, 110, 85, NULL),

  -- 0167 Spinarak  Bug/Poison
  (167, 167, 2, 7, 4, NULL, NULL, NULL, 40, 60, 40, 40, 40, 30, NULL),

  -- 0168 Ariados  Bug/Poison
  (168, 168, 2, 7, 4, NULL, NULL, NULL, 70, 90, 70, 60, 60, 40, NULL),

  -- 0169 Crobat  Poison/Flying
  (169, 169, 2, 4, 3, NULL, NULL, NULL, 85, 90, 80, 70, 80, 130, NULL),

  -- 0170 Chinchou  Water/Electric
  (170, 170, 2, 11, 13, NULL, NULL, NULL, 75, 38, 38, 56, 56, 67, NULL),

  -- 0171 Lanturn  Water/Electric
  (171, 171, 2, 11, 13, NULL, NULL, NULL, 125, 58, 58, 76, 76, 67, NULL),

  -- 0172 Pichu  Electric
  (172, 172, 2, 13, NULL, NULL, NULL, NULL, 20, 40, 15, 35, 35, 60, NULL),

  -- 0173 Cleffa  Normal
  (173, 173, 2, 1, NULL, NULL, NULL, NULL, 50, 25, 28, 45, 55, 15, NULL),

  -- 0174 Igglybuff  Normal
  (174, 174, 2, 1, NULL, NULL, NULL, NULL, 90, 30, 15, 40, 20, 15, NULL),

  -- 0175 Togepi  Normal
  (175, 175, 2, 1, NULL, NULL, NULL, NULL, 35, 20, 65, 40, 65, 20, NULL),

  -- 0176 Togetic  Normal/Flying
  (176, 176, 2, 1, 3, NULL, NULL, NULL, 55, 40, 85, 80, 105, 40, NULL),

  -- 0177 Natu  Psychic/Flying
  (177, 177, 2, 14, 3, NULL, NULL, NULL, 40, 50, 45, 70, 45, 70, NULL),

  -- 0178 Xatu  Psychic/Flying
  (178, 178, 2, 14, 3, NULL, NULL, NULL, 65, 75, 70, 95, 70, 95, NULL),

  -- 0179 Mareep  Electric
  (179, 179, 2, 13, NULL, NULL, NULL, NULL, 55, 40, 40, 65, 45, 35, NULL),

  -- 0180 Flaaffy  Electric
  (180, 180, 2, 13, NULL, NULL, NULL, NULL, 70, 55, 55, 80, 60, 45, NULL),

  -- 0181 Ampharos  Electric
  (181, 181, 2, 13, NULL, NULL, NULL, NULL, 90, 75, 75, 115, 90, 55, NULL),

  -- 0182 Bellossom  Grass
  (182, 182, 2, 12, NULL, NULL, NULL, NULL, 75, 80, 85, 90, 100, 50, NULL),

  -- 0183 Marill  Water
  (183, 183, 2, 11, NULL, NULL, NULL, NULL, 70, 20, 50, 20, 50, 40, NULL),

  -- 0184 Azumarill  Water
  (184, 184, 2, 11, NULL, NULL, NULL, NULL, 100, 50, 80, 50, 80, 50, NULL),

  -- 0185 Sudowoodo  Rock
  (185, 185, 2, 6, NULL, NULL, NULL, NULL, 70, 100, 115, 30, 65, 30, NULL),

  -- 0186 Politoed  Water
  (186, 186, 2, 11, NULL, NULL, NULL, NULL, 90, 75, 75, 90, 100, 70, NULL),

  -- 0187 Hoppip  Grass/Flying
  (187, 187, 2, 12, 3, NULL, NULL, NULL, 35, 35, 40, 35, 55, 50, NULL),

  -- 0188 Skiploom  Grass/Flying
  (188, 188, 2, 12, 3, NULL, NULL, NULL, 55, 45, 50, 45, 65, 80, NULL),

  -- 0189 Jumpluff  Grass/Flying
  (189, 189, 2, 12, 3, NULL, NULL, NULL, 75, 55, 70, 55, 85, 110, NULL),

  -- 0190 Aipom  Normal
  (190, 190, 2, 1, NULL, NULL, NULL, NULL, 55, 70, 55, 40, 55, 85, NULL),

  -- 0191 Sunkern  Grass
  (191, 191, 2, 12, NULL, NULL, NULL, NULL, 30, 30, 30, 30, 30, 30, NULL),

  -- 0192 Sunflora  Grass
  (192, 192, 2, 12, NULL, NULL, NULL, NULL, 75, 75, 55, 105, 85, 30, NULL),

  -- 0193 Yanma  Bug/Flying
  (193, 193, 2, 7, 3, NULL, NULL, NULL, 65, 65, 45, 75, 45, 95, NULL),

  -- 0194 Wooper  Water/Ground
  (194, 194, 2, 11, 5, NULL, NULL, NULL, 55, 45, 45, 25, 25, 15, NULL),

  -- 0195 Quagsire  Water/Ground
  (195, 195, 2, 11, 5, NULL, NULL, NULL, 95, 85, 85, 65, 65, 35, NULL),

  -- 0196 Espeon  Psychic
  (196, 196, 2, 14, NULL, NULL, NULL, NULL, 65, 65, 60, 130, 95, 110, NULL),

  -- 0197 Umbreon  Dark
  (197, 197, 2, 17, NULL, NULL, NULL, NULL, 95, 65, 110, 60, 130, 65, NULL),

  -- 0198 Murkrow  Dark/Flying
  (198, 198, 2, 17, 3, NULL, NULL, NULL, 60, 85, 42, 85, 42, 91, NULL),

  -- 0199 Slowking  Water/Psychic
  (199, 199, 2, 11, 14, NULL, NULL, NULL, 95, 75, 80, 100, 110, 30, NULL),

  -- 0200 Misdreavus  Ghost
  (200, 200, 2, 8, NULL, NULL, NULL, NULL, 60, 60, 60, 85, 85, 85, NULL),

  -- 0201 Unown  Psychic
  (201, 201, 2, 14, NULL, NULL, NULL, NULL, 48, 72, 48, 72, 48, 48, NULL),

  -- 0202 Wobbuffet  Psychic
  (202, 202, 2, 14, NULL, NULL, NULL, NULL, 190, 33, 58, 33, 58, 33, NULL),

  -- 0203 Girafarig  Normal/Psychic
  (203, 203, 2, 1, 14, NULL, NULL, NULL, 70, 80, 65, 90, 65, 85, NULL),

  -- 0204 Pineco  Bug
  (204, 204, 2, 7, NULL, NULL, NULL, NULL, 50, 65, 90, 35, 35, 15, NULL),

  -- 0205 Forretress  Bug/Steel
  (205, 205, 2, 7, 9, NULL, NULL, NULL, 75, 90, 140, 60, 60, 40, NULL),

  -- 0206 Dunsparce  Normal
  (206, 206, 2, 1, NULL, NULL, NULL, NULL, 100, 70, 70, 65, 65, 45, NULL),

  -- 0207 Gligar  Ground/Flying
  (207, 207, 2, 5, 3, NULL, NULL, NULL, 65, 75, 105, 35, 65, 85, NULL),

  -- 0208 Steelix  Steel/Ground
  (208, 208, 2, 9, 5, NULL, NULL, NULL, 75, 85, 200, 55, 65, 30, NULL),

  -- 0209 Snubbull  Normal
  (209, 209, 2, 1, NULL, NULL, NULL, NULL, 60, 80, 50, 40, 40, 30, NULL),

  -- 0210 Granbull  Normal
  (210, 210, 2, 1, NULL, NULL, NULL, NULL, 90, 120, 75, 60, 60, 45, NULL),

  -- 0211 Qwilfish  Water/Poison
  (211, 211, 2, 11, 4, NULL, NULL, NULL, 65, 95, 75, 55, 55, 85, NULL),

  -- 0212 Scizor  Bug/Steel
  (212, 212, 2, 7, 9, NULL, NULL, NULL, 70, 130, 100, 55, 80, 65, NULL),

  -- 0213 Shuckle  Bug/Rock
  (213, 213, 2, 7, 6, NULL, NULL, NULL, 20, 10, 230, 10, 230, 5, NULL),

  -- 0214 Heracross  Bug/Fighting
  (214, 214, 2, 7, 2, NULL, NULL, NULL, 80, 125, 75, 40, 95, 85, NULL),

  -- 0215 Sneasel  Dark/Ice
  (215, 215, 2, 17, 15, NULL, NULL, NULL, 55, 95, 55, 35, 75, 115, NULL),

  -- 0216 Teddiursa  Normal
  (216, 216, 2, 1, NULL, NULL, NULL, NULL, 60, 80, 50, 50, 50, 40, NULL),

  -- 0217 Ursaring  Normal
  (217, 217, 2, 1, NULL, NULL, NULL, NULL, 90, 130, 75, 75, 75, 55, NULL),

  -- 0218 Slugma  Fire
  (218, 218, 2, 10, NULL, NULL, NULL, NULL, 40, 40, 40, 70, 40, 20, NULL),

  -- 0219 Magcargo  Fire/Rock
  (219, 219, 2, 10, 6, NULL, NULL, NULL, 50, 50, 120, 80, 80, 30, NULL),

  -- 0220 Swinub  Ice/Ground
  (220, 220, 2, 15, 5, NULL, NULL, NULL, 50, 50, 40, 30, 30, 50, NULL),

  -- 0221 Piloswine  Ice/Ground
  (221, 221, 2, 15, 5, NULL, NULL, NULL, 100, 100, 80, 60, 60, 50, NULL),

  -- 0222 Corsola  Water/Rock
  (222, 222, 2, 11, 6, NULL, NULL, NULL, 55, 55, 85, 65, 85, 35, NULL),

  -- 0223 Remoraid  Water
  (223, 223, 2, 11, NULL, NULL, NULL, NULL, 35, 65, 35, 65, 35, 65, NULL),

  -- 0224 Octillery  Water
  (224, 224, 2, 11, NULL, NULL, NULL, NULL, 75, 105, 75, 105, 75, 45, NULL),

  -- 0225 Delibird  Ice/Flying
  (225, 225, 2, 15, 3, NULL, NULL, NULL, 45, 55, 45, 65, 45, 75, NULL),

  -- 0226 Mantine  Water/Flying
  (226, 226, 2, 11, 3, NULL, NULL, NULL, 65, 40, 70, 80, 140, 70, NULL),

  -- 0227 Skarmory  Steel/Flying
  (227, 227, 2, 9, 3, NULL, NULL, NULL, 65, 80, 140, 40, 70, 70, NULL),

  -- 0228 Houndour  Dark/Fire
  (228, 228, 2, 17, 10, NULL, NULL, NULL, 45, 60, 30, 80, 50, 65, NULL),

  -- 0229 Houndoom  Dark/Fire
  (229, 229, 2, 17, 10, NULL, NULL, NULL, 75, 90, 50, 110, 80, 95, NULL),

  -- 0230 Kingdra  Water/Dragon
  (230, 230, 2, 11, 16, NULL, NULL, NULL, 75, 95, 95, 95, 95, 85, NULL),

  -- 0231 Phanpy  Ground
  (231, 231, 2, 5, NULL, NULL, NULL, NULL, 90, 60, 60, 40, 40, 40, NULL),

  -- 0232 Donphan  Ground
  (232, 232, 2, 5, NULL, NULL, NULL, NULL, 90, 120, 120, 60, 60, 50, NULL),

  -- 0233 Porygon2  Normal
  (233, 233, 2, 1, NULL, NULL, NULL, NULL, 85, 80, 90, 105, 95, 60, NULL),

  -- 0234 Stantler  Normal
  (234, 234, 2, 1, NULL, NULL, NULL, NULL, 73, 95, 62, 85, 65, 85, NULL),

  -- 0235 Smeargle  Normal
  (235, 235, 2, 1, NULL, NULL, NULL, NULL, 55, 20, 35, 20, 45, 75, NULL),

  -- 0236 Tyrogue  Fighting
  (236, 236, 2, 2, NULL, NULL, NULL, NULL, 35, 35, 35, 35, 35, 35, NULL),

  -- 0237 Hitmontop  Fighting
  (237, 237, 2, 2, NULL, NULL, NULL, NULL, 50, 95, 95, 35, 110, 70, NULL),

  -- 0238 Smoochum  Ice/Psychic
  (238, 238, 2, 15, 14, NULL, NULL, NULL, 45, 30, 15, 85, 65, 65, NULL),

  -- 0239 Elekid  Electric
  (239, 239, 2, 13, NULL, NULL, NULL, NULL, 45, 63, 37, 65, 55, 95, NULL),

  -- 0240 Magby  Fire
  (240, 240, 2, 10, NULL, NULL, NULL, NULL, 45, 75, 37, 70, 55, 83, NULL),

  -- 0241 Miltank  Normal
  (241, 241, 2, 1, NULL, NULL, NULL, NULL, 95, 80, 105, 40, 70, 100, NULL),

  -- 0242 Blissey  Normal
  (242, 242, 2, 1, NULL, NULL, NULL, NULL, 255, 10, 10, 75, 135, 55, NULL),

  -- 0243 Raikou  Electric
  (243, 243, 2, 13, NULL, NULL, NULL, NULL, 90, 85, 75, 115, 100, 115, NULL),

  -- 0244 Entei  Fire
  (244, 244, 2, 10, NULL, NULL, NULL, NULL, 115, 115, 85, 90, 75, 100, NULL),

  -- 0245 Suicune  Water
  (245, 245, 2, 11, NULL, NULL, NULL, NULL, 100, 75, 115, 90, 115, 85, NULL),

  -- 0246 Larvitar  Rock/Ground
  (246, 246, 2, 6, 5, NULL, NULL, NULL, 50, 64, 50, 45, 50, 41, NULL),

  -- 0247 Pupitar  Rock/Ground
  (247, 247, 2, 6, 5, NULL, NULL, NULL, 70, 84, 70, 65, 70, 51, NULL),

  -- 0248 Tyranitar  Rock/Dark
  (248, 248, 2, 6, 17, NULL, NULL, NULL, 100, 134, 110, 95, 100, 61, NULL),

  -- 0249 Lugia  Psychic/Flying
  (249, 249, 2, 14, 3, NULL, NULL, NULL, 106, 90, 130, 90, 154, 110, NULL),

  -- 0250 Ho-Oh  Fire/Flying
  (250, 250, 2, 10, 3, NULL, NULL, NULL, 106, 130, 90, 110, 154, 90, NULL),

  -- 0251 Celebi  Psychic/Grass
  (251, 251, 2, 14, 12, NULL, NULL, NULL, 100, 100, 100, 100, 100, 100, NULL);