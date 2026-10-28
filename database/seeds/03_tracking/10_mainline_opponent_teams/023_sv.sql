-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Scarlet / Violet Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Scarlet / Violet Gym Leaders and Elite Four page.
-- Nemona and Arven battles: Bulbapedia, cross-checked with Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Clavell, Titans, Arven and the AI Professors: cross-checked with Bulbapedia.
-- Tulip's Florges: the sources show the default form and name no flower
-- colour, so it is stored as the default form.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Wild Pokémon, Titans and other one-off battles: Bulbapedia names no held item for them, so they hold nothing,
-- except Koraidon's Heat Rock and Miraidon's Terrain Extender after the AI Professor (PokéWiki and Bulbapedia agree).
-- Scope: Pokémon Scarlet / Violet Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Scarlet / Violet opponent uses in each Story battle, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
  milestone_id,
  opponent_id,
  version_group_id,
  game_id,
  decision_milestone_id,
  decision_option_slug,
  variant_slug,
  variant_label,
  slot,
  species_id,
  form_id,
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Katy 1: Nymble Lv. 14
  (230003, 23001, 23, NULL, NULL, NULL, NULL, NULL, 1, 919, 91900, 14, NULL, NULL, FALSE),
  -- Katy 2: Tarountula Lv. 14
  (230003, 23001, 23, NULL, NULL, NULL, NULL, NULL, 2, 917, 91700, 14, NULL, NULL, FALSE),
  -- Katy 3: Teddiursa Lv. 15, Tera Bug
  (230003, 23001, 23, NULL, NULL, NULL, NULL, NULL, 3, 216, 21600, 15, NULL, 12, FALSE),
  -- Brassius 1: Petilil Lv. 16
  (230004, 23002, 23, NULL, NULL, NULL, NULL, NULL, 1, 548, 54800, 16, NULL, NULL, FALSE),
  -- Brassius 2: Smoliv Lv. 16
  (230004, 23002, 23, NULL, NULL, NULL, NULL, NULL, 2, 928, 92800, 16, NULL, NULL, FALSE),
  -- Brassius 3: Sudowoodo Lv. 17, Tera Grass
  (230004, 23002, 23, NULL, NULL, NULL, NULL, NULL, 3, 185, 18500, 17, NULL, 5, FALSE),
  -- Iono 1: Wattrel Lv. 23
  (230005, 23003, 23, NULL, NULL, NULL, NULL, NULL, 1, 940, 94000, 23, NULL, NULL, FALSE),
  -- Iono 2: Bellibolt Lv. 23
  (230005, 23003, 23, NULL, NULL, NULL, NULL, NULL, 2, 939, 93900, 23, NULL, NULL, FALSE),
  -- Iono 3: Luxio Lv. 23
  (230005, 23003, 23, NULL, NULL, NULL, NULL, NULL, 3, 404, 40400, 23, NULL, NULL, FALSE),
  -- Iono 4: Mismagius Lv. 24, Tera Electric
  (230005, 23003, 23, NULL, NULL, NULL, NULL, NULL, 4, 429, 42900, 24, NULL, 4, FALSE),
  -- Kofu 1: Veluza Lv. 29
  (230006, 23004, 23, NULL, NULL, NULL, NULL, NULL, 1, 976, 97600, 29, NULL, NULL, FALSE),
  -- Kofu 2: Wugtrio Lv. 29
  (230006, 23004, 23, NULL, NULL, NULL, NULL, NULL, 2, 961, 96100, 29, NULL, NULL, FALSE),
  -- Kofu 3: Crabominable Lv. 30, Tera Water
  (230006, 23004, 23, NULL, NULL, NULL, NULL, NULL, 3, 740, 74000, 30, NULL, 3, FALSE),
  -- Larry 1: Komala Lv. 35
  (230007, 23005, 23, NULL, NULL, NULL, NULL, NULL, 1, 775, 77500, 35, NULL, NULL, FALSE),
  -- Larry 2: Dudunsparce Lv. 35
  (230007, 23005, 23, NULL, NULL, NULL, NULL, NULL, 2, 982, 98200, 35, NULL, NULL, FALSE),
  -- Larry 3: Staraptor Lv. 36, Tera Normal
  (230007, 23005, 23, NULL, NULL, NULL, NULL, NULL, 3, 398, 39800, 36, NULL, 1, FALSE),
  -- Ryme 1: Banette Lv. 41
  (230008, 23006, 23, NULL, NULL, NULL, NULL, NULL, 1, 354, 35400, 41, NULL, NULL, FALSE),
  -- Ryme 2: Mimikyu Lv. 41
  (230008, 23006, 23, NULL, NULL, NULL, NULL, NULL, 2, 778, 77800, 41, NULL, NULL, FALSE),
  -- Ryme 3: Houndstone Lv. 41
  (230008, 23006, 23, NULL, NULL, NULL, NULL, NULL, 3, 972, 97200, 41, NULL, NULL, FALSE),
  -- Ryme 4: Toxtricity (Low Key) Lv. 42, Tera Ghost
  (230008, 23006, 23, NULL, NULL, NULL, NULL, NULL, 4, 849, 84901, 42, NULL, 14, FALSE),
  -- Tulip 1: Farigiraf Lv. 44
  (230009, 23007, 23, NULL, NULL, NULL, NULL, NULL, 1, 981, 98100, 44, NULL, NULL, FALSE),
  -- Tulip 2: Gardevoir Lv. 44
  (230009, 23007, 23, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 44, NULL, NULL, FALSE),
  -- Tulip 3: Espathra Lv. 44
  (230009, 23007, 23, NULL, NULL, NULL, NULL, NULL, 3, 956, 95600, 44, NULL, NULL, FALSE),
  -- Tulip 4: Florges Lv. 45, Tera Psychic
  (230009, 23007, 23, NULL, NULL, NULL, NULL, NULL, 4, 671, 67100, 45, NULL, 11, FALSE),
  -- Grusha 1: Frosmoth Lv. 47
  (230010, 23008, 23, NULL, NULL, NULL, NULL, NULL, 1, 873, 87300, 47, NULL, NULL, FALSE),
  -- Grusha 2: Beartic Lv. 47
  (230010, 23008, 23, NULL, NULL, NULL, NULL, NULL, 2, 614, 61400, 47, NULL, NULL, FALSE),
  -- Grusha 3: Cetitan Lv. 47
  (230010, 23008, 23, NULL, NULL, NULL, NULL, NULL, 3, 975, 97500, 47, NULL, NULL, FALSE),
  -- Grusha 4: Altaria Lv. 48, Tera Ice
  (230010, 23008, 23, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 48, NULL, 6, FALSE),
  -- Rika 1: Whiscash Lv. 57
  (230011, 23009, 23, NULL, NULL, NULL, NULL, NULL, 1, 340, 34000, 57, NULL, NULL, FALSE),
  -- Rika 2: Camerupt Lv. 57
  (230011, 23009, 23, NULL, NULL, NULL, NULL, NULL, 2, 323, 32300, 57, NULL, NULL, FALSE),
  -- Rika 3: Donphan Lv. 57
  (230011, 23009, 23, NULL, NULL, NULL, NULL, NULL, 3, 232, 23200, 57, NULL, NULL, FALSE),
  -- Rika 4: Dugtrio Lv. 57
  (230011, 23009, 23, NULL, NULL, NULL, NULL, NULL, 4, 51, 5100, 57, NULL, NULL, FALSE),
  -- Rika 5: Clodsire Lv. 58, Tera Ground
  (230011, 23009, 23, NULL, NULL, NULL, NULL, NULL, 5, 980, 98000, 58, NULL, 9, FALSE),
  -- Poppy 1: Copperajah Lv. 58
  (230012, 23010, 23, NULL, NULL, NULL, NULL, NULL, 1, 879, 87900, 58, NULL, NULL, FALSE),
  -- Poppy 2: Magnezone Lv. 58
  (230012, 23010, 23, NULL, NULL, NULL, NULL, NULL, 2, 462, 46200, 58, NULL, NULL, FALSE),
  -- Poppy 3: Bronzong Lv. 58
  (230012, 23010, 23, NULL, NULL, NULL, NULL, NULL, 3, 437, 43700, 58, NULL, NULL, FALSE),
  -- Poppy 4: Corviknight Lv. 58
  (230012, 23010, 23, NULL, NULL, NULL, NULL, NULL, 4, 823, 82300, 58, NULL, NULL, FALSE),
  -- Poppy 5: Tinkaton Lv. 59, Tera Steel
  (230012, 23010, 23, NULL, NULL, NULL, NULL, NULL, 5, 959, 95900, 59, NULL, 17, FALSE),
  -- Larry 1: Tropius Lv. 59
  (230013, 23011, 23, NULL, NULL, NULL, NULL, NULL, 1, 357, 35700, 59, NULL, NULL, FALSE),
  -- Larry 2: Oricorio (Pom-Pom) Lv. 59
  (230013, 23011, 23, NULL, NULL, NULL, NULL, NULL, 2, 741, 74101, 59, NULL, NULL, FALSE),
  -- Larry 3: Altaria Lv. 59
  (230013, 23011, 23, NULL, NULL, NULL, NULL, NULL, 3, 334, 33400, 59, NULL, NULL, FALSE),
  -- Larry 4: Staraptor Lv. 59
  (230013, 23011, 23, NULL, NULL, NULL, NULL, NULL, 4, 398, 39800, 59, NULL, NULL, FALSE),
  -- Larry 5: Flamigo Lv. 60, Tera Flying
  (230013, 23011, 23, NULL, NULL, NULL, NULL, NULL, 5, 973, 97300, 60, NULL, 10, FALSE),
  -- Hassel 1: Noivern Lv. 60
  (230014, 23012, 23, NULL, NULL, NULL, NULL, NULL, 1, 715, 71500, 60, NULL, NULL, FALSE),
  -- Hassel 2: Haxorus Lv. 60
  (230014, 23012, 23, NULL, NULL, NULL, NULL, NULL, 2, 612, 61200, 60, NULL, NULL, FALSE),
  -- Hassel 3: Dragalge Lv. 60
  (230014, 23012, 23, NULL, NULL, NULL, NULL, NULL, 3, 691, 69100, 60, NULL, NULL, FALSE),
  -- Hassel 4: Flapple Lv. 60
  (230014, 23012, 23, NULL, NULL, NULL, NULL, NULL, 4, 841, 84100, 60, NULL, NULL, FALSE),
  -- Hassel 5: Baxcalibur Lv. 61, Tera Dragon
  (230014, 23012, 23, NULL, NULL, NULL, NULL, NULL, 5, 998, 99800, 61, NULL, 15, FALSE),
  -- Geeta 1: Espathra Lv. 61
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 1, 956, 95600, 61, NULL, NULL, FALSE),
  -- Geeta 2: Gogoat Lv. 61
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 2, 673, 67300, 61, NULL, NULL, FALSE),
  -- Geeta 3: Veluza Lv. 61
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 3, 976, 97600, 61, NULL, NULL, FALSE),
  -- Geeta 4: Avalugg Lv. 61
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 4, 713, 71300, 61, NULL, NULL, FALSE),
  -- Geeta 5: Kingambit Lv. 61
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 5, 983, 98300, 61, NULL, NULL, FALSE),
  -- Geeta 6: Glimmora Lv. 62, Tera Rock
  (230015, 23013, 23, NULL, NULL, NULL, NULL, NULL, 6, 970, 97000, 62, NULL, 13, FALSE),
  -- Nemona (chose Sprigatito) 1: Lycanroc Lv. 65
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 745, 74500, 65, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito) 2: Goodra Lv. 65
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 706, 70600, 65, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito) 3: Dudunsparce (Three-Segment) Lv. 65
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 982, 98201, 65, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito) 4: Orthworm Lv. 65
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 968, 96800, 65, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito) 5: Pawmot Lv. 65
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 5, 923, 92300, 65, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito) 6: Quaquaval Lv. 66, Tera Water
  (230016, 23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 6, 914, 91400, 66, NULL, 3, FALSE),
  -- Nemona (chose Fuecoco) 1: Lycanroc Lv. 65
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 745, 74500, 65, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco) 2: Goodra Lv. 65
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 706, 70600, 65, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco) 3: Dudunsparce (Three-Segment) Lv. 65
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 982, 98201, 65, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco) 4: Orthworm Lv. 65
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 968, 96800, 65, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco) 5: Pawmot Lv. 65
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 5, 923, 92300, 65, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco) 6: Meowscarada Lv. 66, Tera Grass
  (230016, 23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 6, 908, 90800, 66, NULL, 5, FALSE),
  -- Nemona (chose Quaxly) 1: Lycanroc Lv. 65
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 745, 74500, 65, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly) 2: Goodra Lv. 65
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 706, 70600, 65, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly) 3: Dudunsparce (Three-Segment) Lv. 65
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 982, 98201, 65, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly) 4: Orthworm Lv. 65
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 968, 96800, 65, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly) 5: Pawmot Lv. 65
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 5, 923, 92300, 65, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly) 6: Skeledirge Lv. 66, Tera Fire
  (230016, 23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 6, 911, 91100, 66, NULL, 2, FALSE),
  -- Giacomo 1: Pawniard Lv. 21
  (230017, 23015, 23, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 21, NULL, NULL, FALSE),
  -- Mela 1: Torkoal Lv. 27
  (230018, 23016, 23, NULL, NULL, NULL, NULL, NULL, 1, 324, 32400, 27, NULL, NULL, FALSE),
  -- Atticus 1: Skuntank Lv. 32
  (230019, 23017, 23, NULL, NULL, NULL, NULL, NULL, 1, 435, 43500, 32, NULL, NULL, FALSE),
  -- Atticus 2: Muk Lv. 32
  (230019, 23017, 23, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 32, NULL, NULL, FALSE),
  -- Atticus 3: Revavroom Lv. 33
  (230019, 23017, 23, NULL, NULL, NULL, NULL, NULL, 3, 966, 96600, 33, NULL, NULL, FALSE),
  -- Ortega 1: Azumarill Lv. 50
  (230020, 23018, 23, NULL, NULL, NULL, NULL, NULL, 1, 184, 18400, 50, NULL, NULL, FALSE),
  -- Ortega 2: Wigglytuff Lv. 50
  (230020, 23018, 23, NULL, NULL, NULL, NULL, NULL, 2, 40, 4000, 50, NULL, NULL, FALSE),
  -- Ortega 3: Dachsbun Lv. 51
  (230020, 23018, 23, NULL, NULL, NULL, NULL, NULL, 3, 927, 92700, 51, NULL, NULL, FALSE),
  -- Eri 1: Toxicroak Lv. 55
  (230021, 23019, 23, NULL, NULL, NULL, NULL, NULL, 1, 454, 45400, 55, NULL, NULL, FALSE),
  -- Eri 2: Passimian Lv. 55
  (230021, 23019, 23, NULL, NULL, NULL, NULL, NULL, 2, 766, 76600, 55, NULL, NULL, FALSE),
  -- Eri 3: Lucario Lv. 55
  (230021, 23019, 23, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 55, NULL, NULL, FALSE),
  -- Eri 4: Annihilape Lv. 56
  (230021, 23019, 23, NULL, NULL, NULL, NULL, NULL, 4, 979, 97900, 56, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 1: Oranguru Lv. 60
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 765, 76500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 2: Abomasnow Lv. 60
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 460, 46000, 60, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 3: Polteageist Lv. 60
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 855, 85500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 4: Amoonguss Lv. 60
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 591, 59100, 60, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 5: Gyarados Lv. 60
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 5, 130, 13000, 60, NULL, NULL, FALSE),
  -- Clavell (chose Sprigatito) 6: Skeledirge Lv. 61, Tera Fire
  (230022, 23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 6, 911, 91100, 61, NULL, 2, FALSE),
  -- Clavell (chose Fuecoco) 1: Oranguru Lv. 60
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 765, 76500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Fuecoco) 2: Abomasnow Lv. 60
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 460, 46000, 60, NULL, NULL, FALSE),
  -- Clavell (chose Fuecoco) 3: Polteageist Lv. 60
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 855, 85500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Fuecoco) 4: Houndoom Lv. 60
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 229, 22900, 60, NULL, NULL, FALSE),
  -- Clavell (chose Fuecoco) 5: Amoonguss Lv. 60
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 5, 591, 59100, 60, NULL, NULL, FALSE),
  -- Clavell (chose Fuecoco) 6: Quaquaval Lv. 61, Tera Water
  (230022, 23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 6, 914, 91400, 61, NULL, 3, FALSE),
  -- Clavell (chose Quaxly) 1: Oranguru Lv. 60
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 765, 76500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Quaxly) 2: Abomasnow Lv. 60
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 460, 46000, 60, NULL, NULL, FALSE),
  -- Clavell (chose Quaxly) 3: Polteageist Lv. 60
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 855, 85500, 60, NULL, NULL, FALSE),
  -- Clavell (chose Quaxly) 4: Gyarados Lv. 60
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 130, 13000, 60, NULL, NULL, FALSE),
  -- Clavell (chose Quaxly) 5: Houndoom Lv. 60
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 5, 229, 22900, 60, NULL, NULL, FALSE),
  -- Clavell (chose Quaxly) 6: Meowscarada Lv. 61, Tera Grass
  (230022, 23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 6, 908, 90800, 61, NULL, 5, FALSE),
  -- Penny 1: Umbreon Lv. 62
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 1, 197, 19700, 62, NULL, NULL, FALSE),
  -- Penny 2: Vaporeon Lv. 62
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 2, 134, 13400, 62, NULL, NULL, FALSE),
  -- Penny 3: Jolteon Lv. 62
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 3, 135, 13500, 62, NULL, NULL, FALSE),
  -- Penny 4: Flareon Lv. 62
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 4, 136, 13600, 62, NULL, NULL, FALSE),
  -- Penny 5: Leafeon Lv. 62
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 5, 470, 47000, 62, NULL, NULL, FALSE),
  -- Penny 6: Sylveon Lv. 63, Tera Fairy
  (230023, 23021, 23, NULL, NULL, NULL, NULL, NULL, 6, 700, 70000, 63, NULL, 18, FALSE),
  -- Stony Cliff Titan 1: Klawf Lv. 16
  (230024, 23022, 23, NULL, NULL, NULL, NULL, NULL, 1, 950, 95000, 16, NULL, NULL, FALSE),
  -- Open Sky Titan 1: Bombirdier Lv. 20
  (230025, 23023, 23, NULL, NULL, NULL, NULL, NULL, 1, 962, 96200, 20, NULL, NULL, FALSE),
  -- Lurking Steel Titan 1: Orthworm Lv. 29
  (230026, 23024, 23, NULL, NULL, NULL, NULL, NULL, 1, 968, 96800, 29, NULL, NULL, FALSE),
  -- Quaking Earth Titan (Scarlet) 1: Great Tusk Lv. 45
  (230027, 23025, 23, 36, NULL, NULL, NULL, NULL, 1, 984, 98400, 45, NULL, NULL, FALSE),
  -- Quaking Earth Titan (Violet) 1: Iron Treads Lv. 45
  (230027, 23025, 23, 37, NULL, NULL, NULL, NULL, 1, 990, 99000, 45, NULL, NULL, FALSE),
  -- False Dragon Titan 1: Dondozo Lv. 56
  (230028, 23026, 23, NULL, NULL, NULL, NULL, NULL, 1, 977, 97700, 56, NULL, NULL, FALSE),
  -- False Dragon Titan 2: Tatsugiri Lv. 57
  (230028, 23026, 23, NULL, NULL, NULL, NULL, NULL, 2, 978, 97800, 57, NULL, NULL, FALSE),
  -- Arven 1: Greedent Lv. 58
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 58, NULL, NULL, FALSE),
  -- Arven 2: Cloyster Lv. 59
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 59, NULL, NULL, FALSE),
  -- Arven 3: Scovillain Lv. 60
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 3, 952, 95200, 60, NULL, NULL, FALSE),
  -- Arven 4: Toedscruel Lv. 61
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 4, 949, 94900, 61, NULL, NULL, FALSE),
  -- Arven 5: Garganacl Lv. 62
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 5, 934, 93400, 62, NULL, NULL, FALSE),
  -- Arven 6: Mabosstiff Lv. 63, Tera Dark
  (230029, 23027, 23, NULL, NULL, NULL, NULL, NULL, 6, 943, 94300, 63, NULL, 16, FALSE),
  -- AI Professor (Scarlet) 1: Slither Wing Lv. 66
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 1, 988, 98800, 66, NULL, NULL, FALSE),
  -- AI Professor (Scarlet) 2: Scream Tail Lv. 66
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 2, 985, 98500, 66, NULL, NULL, FALSE),
  -- AI Professor (Scarlet) 3: Brute Bonnet Lv. 66
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 3, 986, 98600, 66, NULL, NULL, FALSE),
  -- AI Professor (Scarlet) 4: Flutter Mane Lv. 66
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 4, 987, 98700, 66, NULL, NULL, FALSE),
  -- AI Professor (Scarlet) 5: Sandy Shocks Lv. 66
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 5, 989, 98900, 66, NULL, NULL, FALSE),
  -- AI Professor (Scarlet) 6: Roaring Moon Lv. 67, holds Booster Energy
  (230031, 23028, 23, 36, NULL, NULL, NULL, NULL, 6, 1005, 100500, 67, 369, NULL, FALSE),
  -- AI Professor (Violet) 1: Iron Moth Lv. 66
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 1, 994, 99400, 66, NULL, NULL, FALSE),
  -- AI Professor (Violet) 2: Iron Bundle Lv. 66
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 2, 991, 99100, 66, NULL, NULL, FALSE),
  -- AI Professor (Violet) 3: Iron Hands Lv. 66
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 3, 992, 99200, 66, NULL, NULL, FALSE),
  -- AI Professor (Violet) 4: Iron Jugulis Lv. 66
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 4, 993, 99300, 66, NULL, NULL, FALSE),
  -- AI Professor (Violet) 5: Iron Thorns Lv. 66
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 5, 995, 99500, 66, NULL, NULL, FALSE),
  -- AI Professor (Violet) 6: Iron Valiant Lv. 67, holds Booster Energy
  (230031, 23028, 23, 37, NULL, NULL, NULL, NULL, 6, 1006, 100600, 67, 369, NULL, FALSE),
  -- Nemona (chose Sprigatito), Choose Starter 1: Quaxly Lv. 5
  (230001, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 912, 91200, 5, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Choose Starter 1: Sprigatito Lv. 5
  (230001, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 906, 90600, 5, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Choose Starter 1: Fuecoco Lv. 5
  (230001, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 909, 90900, 5, NULL, NULL, FALSE),
  -- Arven, Receive Pokedex 1: Skwovet Lv. 5
  (230002, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 819, 81900, 5, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Receive Pokedex 1: Quaxly Lv. 8
  (230002, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 912, 91200, 8, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Receive Pokedex 2: Pawmi Lv. 9, Tera Electric
  (230002, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 921, 92100, 9, NULL, 4, FALSE),
  -- Nemona (chose Fuecoco), Receive Pokedex 1: Sprigatito Lv. 8
  (230002, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 906, 90600, 8, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Receive Pokedex 2: Pawmi Lv. 9, Tera Electric
  (230002, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 921, 92100, 9, NULL, 4, FALSE),
  -- Nemona (chose Quaxly), Receive Pokedex 1: Fuecoco Lv. 8
  (230002, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 909, 90900, 8, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Receive Pokedex 2: Pawmi Lv. 9, Tera Electric
  (230002, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 921, 92100, 9, NULL, 4, FALSE),
  -- Nemona (chose Sprigatito), Electric Badge 1: Rockruff Lv. 21
  (230005, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 744, 74400, 21, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Electric Badge 2: Pawmi Lv. 21
  (230005, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 921, 92100, 21, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Electric Badge 3: Quaxwell Lv. 22, Tera Water
  (230005, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 913, 91300, 22, NULL, 3, FALSE),
  -- Nemona (chose Fuecoco), Electric Badge 1: Rockruff Lv. 21
  (230005, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 744, 74400, 21, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Electric Badge 2: Pawmi Lv. 21
  (230005, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 921, 92100, 21, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Electric Badge 3: Floragato Lv. 22, Tera Grass
  (230005, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 907, 90700, 22, NULL, 5, FALSE),
  -- Nemona (chose Quaxly), Electric Badge 1: Rockruff Lv. 21
  (230005, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 744, 74400, 21, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Electric Badge 2: Pawmi Lv. 21
  (230005, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 921, 92100, 21, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Electric Badge 3: Crocalor Lv. 22, Tera Fire
  (230005, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 910, 91000, 22, NULL, 2, FALSE),
  -- Nemona (chose Sprigatito), Normal Badge 1: Lycanroc Lv. 36
  (230007, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 745, 74500, 36, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Normal Badge 2: Goomy Lv. 36
  (230007, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 704, 70400, 36, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Normal Badge 3: Pawmo Lv. 36
  (230007, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 922, 92200, 36, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Normal Badge 4: Quaquaval Lv. 37, Tera Water
  (230007, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 914, 91400, 37, NULL, 3, FALSE),
  -- Nemona (chose Fuecoco), Normal Badge 1: Lycanroc Lv. 36
  (230007, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 745, 74500, 36, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Normal Badge 2: Goomy Lv. 36
  (230007, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 704, 70400, 36, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Normal Badge 3: Pawmo Lv. 36
  (230007, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 922, 92200, 36, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Normal Badge 4: Meowscarada Lv. 37, Tera Grass
  (230007, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 908, 90800, 37, NULL, 5, FALSE),
  -- Nemona (chose Quaxly), Normal Badge 1: Lycanroc Lv. 36
  (230007, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 745, 74500, 36, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Normal Badge 2: Goomy Lv. 36
  (230007, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 704, 70400, 36, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Normal Badge 3: Pawmo Lv. 36
  (230007, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 922, 92200, 36, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Normal Badge 4: Skeledirge Lv. 37, Tera Fire
  (230007, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 911, 91100, 37, NULL, 2, FALSE),
  -- Nemona (chose Sprigatito), Psychic Badge 1: Lycanroc Lv. 42
  (230009, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 745, 74500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Psychic Badge 2: Sliggoo Lv. 42
  (230009, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 705, 70500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Psychic Badge 3: Pawmot Lv. 42
  (230009, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 923, 92300, 42, NULL, NULL, FALSE),
  -- Nemona (chose Sprigatito), Psychic Badge 4: Quaquaval Lv. 43, Tera Water
  (230009, 23029, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 914, 91400, 43, NULL, 3, FALSE),
  -- Nemona (chose Fuecoco), Psychic Badge 1: Lycanroc Lv. 42
  (230009, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 745, 74500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Psychic Badge 2: Sliggoo Lv. 42
  (230009, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 705, 70500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Psychic Badge 3: Pawmot Lv. 42
  (230009, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 923, 92300, 42, NULL, NULL, FALSE),
  -- Nemona (chose Fuecoco), Psychic Badge 4: Meowscarada Lv. 43, Tera Grass
  (230009, 23029, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 908, 90800, 43, NULL, 5, FALSE),
  -- Nemona (chose Quaxly), Psychic Badge 1: Lycanroc Lv. 42
  (230009, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 745, 74500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Psychic Badge 2: Sliggoo Lv. 42
  (230009, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 705, 70500, 42, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Psychic Badge 3: Pawmot Lv. 42
  (230009, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 923, 92300, 42, NULL, NULL, FALSE),
  -- Nemona (chose Quaxly), Psychic Badge 4: Skeledirge Lv. 43, Tera Fire
  (230009, 23029, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 911, 91100, 43, NULL, 2, FALSE),
  -- Arven, Academy Ace Tournament 1: Greedent Lv. 67
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 67, NULL, NULL, FALSE),
  -- Arven, Academy Ace Tournament 2: Cloyster Lv. 67
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 67, NULL, NULL, FALSE),
  -- Arven, Academy Ace Tournament 3: Scovillain Lv. 67
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 3, 952, 95200, 67, NULL, NULL, FALSE),
  -- Arven, Academy Ace Tournament 4: Toedscruel Lv. 67
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 4, 949, 94900, 67, NULL, NULL, FALSE),
  -- Arven, Academy Ace Tournament 5: Garganacl Lv. 67
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 5, 934, 93400, 67, NULL, NULL, FALSE),
  -- Arven, Academy Ace Tournament 6: Mabosstiff Lv. 68, Tera Dark
  (230032, 23027, 23, NULL, NULL, NULL, NULL, NULL, 6, 943, 94300, 68, NULL, 16, FALSE),
  -- Koraidon, Defeat AI Professor 1: Koraidon Lv. 72, holds Heat Rock
  (230031, 23030, 23, NULL, NULL, NULL, NULL, NULL, 1, 1007, 100700, 72, 398, NULL, FALSE),
  -- Miraidon, Defeat AI Professor 1: Miraidon Lv. 72, holds Terrain Extender
  (230031, 23031, 23, NULL, NULL, NULL, NULL, NULL, 1, 1008, 100800, 72, 429, NULL, FALSE),
  -- Wo-Chien, Grasswither Shrine 1: Wo-Chien Lv. 60
  (230033, 23032, 23, NULL, NULL, NULL, NULL, NULL, 1, 1001, 100100, 60, NULL, NULL, FALSE),
  -- Chien-Pao, Icerend Shrine 1: Chien-Pao Lv. 60
  (230034, 23033, 23, NULL, NULL, NULL, NULL, NULL, 1, 1002, 100200, 60, NULL, NULL, FALSE),
  -- Ting-Lu, Groundblight Shrine 1: Ting-Lu Lv. 60
  (230035, 23034, 23, NULL, NULL, NULL, NULL, NULL, 1, 1003, 100300, 60, NULL, NULL, FALSE),
  -- Chi-Yu, Firescourge Shrine 1: Chi-Yu Lv. 60
  (230036, 23035, 23, NULL, NULL, NULL, NULL, NULL, 1, 1004, 100400, 60, NULL, NULL, FALSE),
  -- Koraidon, Area Zero Depths 1: Koraidon Lv. 72, holds Heat Rock
  (230037, 23030, 23, NULL, NULL, NULL, NULL, NULL, 1, 1007, 100700, 72, 398, NULL, FALSE),
  -- Miraidon, Area Zero Depths 1: Miraidon Lv. 72, holds Terrain Extender
  (230037, 23031, 23, NULL, NULL, NULL, NULL, NULL, 1, 1008, 100800, 72, 429, NULL, FALSE);
