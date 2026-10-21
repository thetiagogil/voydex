-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Scarlet / Violet Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Scarlet / Violet Gym Leaders and Elite Four page.
-- Scope: Pokémon Scarlet / Violet first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Scarlet / Violet opponent uses the first time you battle them, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
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
  level
) VALUES
  -- Katy 1: Nymble Lv. 14
  (23001, 23, NULL, NULL, NULL, NULL, NULL, 1, 919, 91900, 14),
  -- Katy 2: Tarountula Lv. 14
  (23001, 23, NULL, NULL, NULL, NULL, NULL, 2, 917, 91700, 14),
  -- Katy 3: Teddiursa Lv. 15
  (23001, 23, NULL, NULL, NULL, NULL, NULL, 3, 216, 21600, 15),
  -- Brassius 1: Petilil Lv. 16
  (23002, 23, NULL, NULL, NULL, NULL, NULL, 1, 548, 54800, 16),
  -- Brassius 2: Smoliv Lv. 16
  (23002, 23, NULL, NULL, NULL, NULL, NULL, 2, 928, 92800, 16),
  -- Brassius 3: Sudowoodo Lv. 17
  (23002, 23, NULL, NULL, NULL, NULL, NULL, 3, 185, 18500, 17),
  -- Iono 1: Wattrel Lv. 23
  (23003, 23, NULL, NULL, NULL, NULL, NULL, 1, 940, 94000, 23),
  -- Iono 2: Bellibolt Lv. 23
  (23003, 23, NULL, NULL, NULL, NULL, NULL, 2, 939, 93900, 23),
  -- Iono 3: Luxio Lv. 23
  (23003, 23, NULL, NULL, NULL, NULL, NULL, 3, 404, 40400, 23),
  -- Iono 4: Mismagius Lv. 24
  (23003, 23, NULL, NULL, NULL, NULL, NULL, 4, 429, 42900, 24),
  -- Kofu 1: Veluza Lv. 29
  (23004, 23, NULL, NULL, NULL, NULL, NULL, 1, 976, 97600, 29),
  -- Kofu 2: Wugtrio Lv. 29
  (23004, 23, NULL, NULL, NULL, NULL, NULL, 2, 961, 96100, 29),
  -- Kofu 3: Crabominable Lv. 30
  (23004, 23, NULL, NULL, NULL, NULL, NULL, 3, 740, 74000, 30),
  -- Larry 1: Komala Lv. 35
  (23005, 23, NULL, NULL, NULL, NULL, NULL, 1, 775, 77500, 35),
  -- Larry 2: Dudunsparce Lv. 35
  (23005, 23, NULL, NULL, NULL, NULL, NULL, 2, 982, 98200, 35),
  -- Larry 3: Staraptor Lv. 36
  (23005, 23, NULL, NULL, NULL, NULL, NULL, 3, 398, 39800, 36),
  -- Ryme 1: Banette Lv. 41
  (23006, 23, NULL, NULL, NULL, NULL, NULL, 1, 354, 35400, 41),
  -- Ryme 2: Mimikyu Lv. 41
  (23006, 23, NULL, NULL, NULL, NULL, NULL, 2, 778, 77800, 41),
  -- Ryme 3: Houndstone Lv. 41
  (23006, 23, NULL, NULL, NULL, NULL, NULL, 3, 972, 97200, 41),
  -- Ryme 4: Toxtricity (Low Key) Lv. 42
  (23006, 23, NULL, NULL, NULL, NULL, NULL, 4, 849, 84901, 42),
  -- Tulip 1: Farigiraf Lv. 44
  (23007, 23, NULL, NULL, NULL, NULL, NULL, 1, 981, 98100, 44),
  -- Tulip 2: Gardevoir Lv. 44
  (23007, 23, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 44),
  -- Tulip 3: Espathra Lv. 44
  (23007, 23, NULL, NULL, NULL, NULL, NULL, 3, 956, 95600, 44),
  -- Tulip 4: Florges Lv. 45
  (23007, 23, NULL, NULL, NULL, NULL, NULL, 4, 671, 67100, 45),
  -- Grusha 1: Frosmoth Lv. 47
  (23008, 23, NULL, NULL, NULL, NULL, NULL, 1, 873, 87300, 47),
  -- Grusha 2: Beartic Lv. 47
  (23008, 23, NULL, NULL, NULL, NULL, NULL, 2, 614, 61400, 47),
  -- Grusha 3: Cetitan Lv. 47
  (23008, 23, NULL, NULL, NULL, NULL, NULL, 3, 975, 97500, 47),
  -- Grusha 4: Altaria Lv. 48
  (23008, 23, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 48),
  -- Rika 1: Whiscash Lv. 57
  (23009, 23, NULL, NULL, NULL, NULL, NULL, 1, 340, 34000, 57),
  -- Rika 2: Camerupt Lv. 57
  (23009, 23, NULL, NULL, NULL, NULL, NULL, 2, 323, 32300, 57),
  -- Rika 3: Donphan Lv. 57
  (23009, 23, NULL, NULL, NULL, NULL, NULL, 3, 232, 23200, 57),
  -- Rika 4: Dugtrio Lv. 57
  (23009, 23, NULL, NULL, NULL, NULL, NULL, 4, 51, 5100, 57),
  -- Rika 5: Clodsire Lv. 58
  (23009, 23, NULL, NULL, NULL, NULL, NULL, 5, 980, 98000, 58),
  -- Poppy 1: Copperajah Lv. 58
  (23010, 23, NULL, NULL, NULL, NULL, NULL, 1, 879, 87900, 58),
  -- Poppy 2: Magnezone Lv. 58
  (23010, 23, NULL, NULL, NULL, NULL, NULL, 2, 462, 46200, 58),
  -- Poppy 3: Bronzong Lv. 58
  (23010, 23, NULL, NULL, NULL, NULL, NULL, 3, 437, 43700, 58),
  -- Poppy 4: Corviknight Lv. 58
  (23010, 23, NULL, NULL, NULL, NULL, NULL, 4, 823, 82300, 58),
  -- Poppy 5: Tinkaton Lv. 59
  (23010, 23, NULL, NULL, NULL, NULL, NULL, 5, 959, 95900, 59),
  -- Larry 1: Tropius Lv. 59
  (23011, 23, NULL, NULL, NULL, NULL, NULL, 1, 357, 35700, 59),
  -- Larry 2: Oricorio (Pom-Pom) Lv. 59
  (23011, 23, NULL, NULL, NULL, NULL, NULL, 2, 741, 74101, 59),
  -- Larry 3: Altaria Lv. 59
  (23011, 23, NULL, NULL, NULL, NULL, NULL, 3, 334, 33400, 59),
  -- Larry 4: Staraptor Lv. 59
  (23011, 23, NULL, NULL, NULL, NULL, NULL, 4, 398, 39800, 59),
  -- Larry 5: Flamigo Lv. 60
  (23011, 23, NULL, NULL, NULL, NULL, NULL, 5, 973, 97300, 60),
  -- Hassel 1: Noivern Lv. 60
  (23012, 23, NULL, NULL, NULL, NULL, NULL, 1, 715, 71500, 60),
  -- Hassel 2: Haxorus Lv. 60
  (23012, 23, NULL, NULL, NULL, NULL, NULL, 2, 612, 61200, 60),
  -- Hassel 3: Dragalge Lv. 60
  (23012, 23, NULL, NULL, NULL, NULL, NULL, 3, 691, 69100, 60),
  -- Hassel 4: Flapple Lv. 60
  (23012, 23, NULL, NULL, NULL, NULL, NULL, 4, 841, 84100, 60),
  -- Hassel 5: Baxcalibur Lv. 61
  (23012, 23, NULL, NULL, NULL, NULL, NULL, 5, 998, 99800, 61),
  -- Geeta 1: Espathra Lv. 61
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 1, 956, 95600, 61),
  -- Geeta 2: Gogoat Lv. 61
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 2, 673, 67300, 61),
  -- Geeta 3: Veluza Lv. 61
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 3, 976, 97600, 61),
  -- Geeta 4: Avalugg Lv. 61
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 4, 713, 71300, 61),
  -- Geeta 5: Kingambit Lv. 61
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 5, 983, 98300, 61),
  -- Geeta 6: Glimmora Lv. 62
  (23013, 23, NULL, NULL, NULL, NULL, NULL, 6, 970, 97000, 62),
  -- Nemona (chose Sprigatito) 1: Lycanroc Lv. 65
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 745, 74500, 65),
  -- Nemona (chose Sprigatito) 2: Goodra Lv. 65
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 706, 70600, 65),
  -- Nemona (chose Sprigatito) 3: Dudunsparce (Three-Segment) Lv. 65
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 982, 98201, 65),
  -- Nemona (chose Sprigatito) 4: Orthworm Lv. 65
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 968, 96800, 65),
  -- Nemona (chose Sprigatito) 5: Pawmot Lv. 65
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 5, 923, 92300, 65),
  -- Nemona (chose Sprigatito) 6: Quaquaval Lv. 66
  (23014, 23, NULL, 230001, 'sprigatito', NULL, NULL, 6, 914, 91400, 66),
  -- Nemona (chose Fuecoco) 1: Lycanroc Lv. 65
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 745, 74500, 65),
  -- Nemona (chose Fuecoco) 2: Goodra Lv. 65
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 706, 70600, 65),
  -- Nemona (chose Fuecoco) 3: Dudunsparce (Three-Segment) Lv. 65
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 982, 98201, 65),
  -- Nemona (chose Fuecoco) 4: Orthworm Lv. 65
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 968, 96800, 65),
  -- Nemona (chose Fuecoco) 5: Pawmot Lv. 65
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 5, 923, 92300, 65),
  -- Nemona (chose Fuecoco) 6: Meowscarada Lv. 66
  (23014, 23, NULL, 230001, 'fuecoco', NULL, NULL, 6, 908, 90800, 66),
  -- Nemona (chose Quaxly) 1: Lycanroc Lv. 65
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 745, 74500, 65),
  -- Nemona (chose Quaxly) 2: Goodra Lv. 65
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 706, 70600, 65),
  -- Nemona (chose Quaxly) 3: Dudunsparce (Three-Segment) Lv. 65
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 982, 98201, 65),
  -- Nemona (chose Quaxly) 4: Orthworm Lv. 65
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 968, 96800, 65),
  -- Nemona (chose Quaxly) 5: Pawmot Lv. 65
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 5, 923, 92300, 65),
  -- Nemona (chose Quaxly) 6: Skeledirge Lv. 66
  (23014, 23, NULL, 230001, 'quaxly', NULL, NULL, 6, 911, 91100, 66),
  -- Giacomo 1: Pawniard Lv. 21
  (23015, 23, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 21),
  -- Mela 1: Torkoal Lv. 27
  (23016, 23, NULL, NULL, NULL, NULL, NULL, 1, 324, 32400, 27),
  -- Atticus 1: Skuntank Lv. 32
  (23017, 23, NULL, NULL, NULL, NULL, NULL, 1, 435, 43500, 32),
  -- Atticus 2: Muk Lv. 32
  (23017, 23, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 32),
  -- Atticus 3: Revavroom Lv. 33
  (23017, 23, NULL, NULL, NULL, NULL, NULL, 3, 966, 96600, 33),
  -- Ortega 1: Azumarill Lv. 50
  (23018, 23, NULL, NULL, NULL, NULL, NULL, 1, 184, 18400, 50),
  -- Ortega 2: Wigglytuff Lv. 50
  (23018, 23, NULL, NULL, NULL, NULL, NULL, 2, 40, 4000, 50),
  -- Ortega 3: Dachsbun Lv. 51
  (23018, 23, NULL, NULL, NULL, NULL, NULL, 3, 927, 92700, 51),
  -- Eri 1: Toxicroak Lv. 55
  (23019, 23, NULL, NULL, NULL, NULL, NULL, 1, 454, 45400, 55),
  -- Eri 2: Passimian Lv. 55
  (23019, 23, NULL, NULL, NULL, NULL, NULL, 2, 766, 76600, 55),
  -- Eri 3: Lucario Lv. 55
  (23019, 23, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 55),
  -- Eri 4: Annihilape Lv. 56
  (23019, 23, NULL, NULL, NULL, NULL, NULL, 4, 979, 97900, 56),
  -- Clavell (chose Sprigatito) 1: Oranguru Lv. 60
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 1, 765, 76500, 60),
  -- Clavell (chose Sprigatito) 2: Abomasnow Lv. 60
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 2, 460, 46000, 60),
  -- Clavell (chose Sprigatito) 3: Polteageist Lv. 60
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 3, 855, 85500, 60),
  -- Clavell (chose Sprigatito) 4: Amoonguss Lv. 60
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 4, 591, 59100, 60),
  -- Clavell (chose Sprigatito) 5: Gyarados Lv. 60
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 5, 130, 13000, 60),
  -- Clavell (chose Sprigatito) 6: Skeledirge Lv. 61
  (23020, 23, NULL, 230001, 'sprigatito', NULL, NULL, 6, 911, 91100, 61),
  -- Clavell (chose Fuecoco) 1: Oranguru Lv. 60
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 1, 765, 76500, 60),
  -- Clavell (chose Fuecoco) 2: Abomasnow Lv. 60
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 2, 460, 46000, 60),
  -- Clavell (chose Fuecoco) 3: Polteageist Lv. 60
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 3, 855, 85500, 60),
  -- Clavell (chose Fuecoco) 4: Houndoom Lv. 60
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 4, 229, 22900, 60),
  -- Clavell (chose Fuecoco) 5: Amoonguss Lv. 60
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 5, 591, 59100, 60),
  -- Clavell (chose Fuecoco) 6: Quaquaval Lv. 61
  (23020, 23, NULL, 230001, 'fuecoco', NULL, NULL, 6, 914, 91400, 61),
  -- Clavell (chose Quaxly) 1: Oranguru Lv. 60
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 1, 765, 76500, 60),
  -- Clavell (chose Quaxly) 2: Abomasnow Lv. 60
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 2, 460, 46000, 60),
  -- Clavell (chose Quaxly) 3: Polteageist Lv. 60
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 3, 855, 85500, 60),
  -- Clavell (chose Quaxly) 4: Gyarados Lv. 60
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 4, 130, 13000, 60),
  -- Clavell (chose Quaxly) 5: Houndoom Lv. 60
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 5, 229, 22900, 60),
  -- Clavell (chose Quaxly) 6: Meowscarada Lv. 61
  (23020, 23, NULL, 230001, 'quaxly', NULL, NULL, 6, 908, 90800, 61),
  -- Penny 1: Umbreon Lv. 62
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 1, 197, 19700, 62),
  -- Penny 2: Vaporeon Lv. 62
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 2, 134, 13400, 62),
  -- Penny 3: Jolteon Lv. 62
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 3, 135, 13500, 62),
  -- Penny 4: Flareon Lv. 62
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 4, 136, 13600, 62),
  -- Penny 5: Leafeon Lv. 62
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 5, 470, 47000, 62),
  -- Penny 6: Sylveon Lv. 63
  (23021, 23, NULL, NULL, NULL, NULL, NULL, 6, 700, 70000, 63),
  -- Stony Cliff Titan 1: Klawf Lv. 16
  (23022, 23, NULL, NULL, NULL, NULL, NULL, 1, 950, 95000, 16),
  -- Open Sky Titan 1: Bombirdier Lv. 20
  (23023, 23, NULL, NULL, NULL, NULL, NULL, 1, 962, 96200, 20),
  -- Lurking Steel Titan 1: Orthworm Lv. 29
  (23024, 23, NULL, NULL, NULL, NULL, NULL, 1, 968, 96800, 29),
  -- Quaking Earth Titan (Scarlet) 1: Great Tusk Lv. 45
  (23025, 23, 36, NULL, NULL, NULL, NULL, 1, 984, 98400, 45),
  -- Quaking Earth Titan (Violet) 1: Iron Treads Lv. 45
  (23025, 23, 37, NULL, NULL, NULL, NULL, 1, 990, 99000, 45),
  -- False Dragon Titan 1: Dondozo Lv. 56
  (23026, 23, NULL, NULL, NULL, NULL, NULL, 1, 977, 97700, 56),
  -- False Dragon Titan 2: Tatsugiri Lv. 57
  (23026, 23, NULL, NULL, NULL, NULL, NULL, 2, 978, 97800, 57),
  -- Arven 1: Greedent Lv. 58
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 58),
  -- Arven 2: Cloyster Lv. 59
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 59),
  -- Arven 3: Scovillain Lv. 60
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 3, 952, 95200, 60),
  -- Arven 4: Toedscruel Lv. 61
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 4, 949, 94900, 61),
  -- Arven 5: Garganacl Lv. 62
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 5, 934, 93400, 62),
  -- Arven 6: Mabosstiff Lv. 63
  (23027, 23, NULL, NULL, NULL, NULL, NULL, 6, 943, 94300, 63),
  -- AI Professor (Scarlet) 1: Slither Wing Lv. 66
  (23028, 23, 36, NULL, NULL, NULL, NULL, 1, 988, 98800, 66),
  -- AI Professor (Scarlet) 2: Scream Tail Lv. 66
  (23028, 23, 36, NULL, NULL, NULL, NULL, 2, 985, 98500, 66),
  -- AI Professor (Scarlet) 3: Brute Bonnet Lv. 66
  (23028, 23, 36, NULL, NULL, NULL, NULL, 3, 986, 98600, 66),
  -- AI Professor (Scarlet) 4: Flutter Mane Lv. 66
  (23028, 23, 36, NULL, NULL, NULL, NULL, 4, 987, 98700, 66),
  -- AI Professor (Scarlet) 5: Sandy Shocks Lv. 66
  (23028, 23, 36, NULL, NULL, NULL, NULL, 5, 989, 98900, 66),
  -- AI Professor (Scarlet) 6: Roaring Moon Lv. 67
  (23028, 23, 36, NULL, NULL, NULL, NULL, 6, 1005, 100500, 67),
  -- AI Professor (Violet) 1: Iron Moth Lv. 66
  (23028, 23, 37, NULL, NULL, NULL, NULL, 1, 994, 99400, 66),
  -- AI Professor (Violet) 2: Iron Bundle Lv. 66
  (23028, 23, 37, NULL, NULL, NULL, NULL, 2, 991, 99100, 66),
  -- AI Professor (Violet) 3: Iron Hands Lv. 66
  (23028, 23, 37, NULL, NULL, NULL, NULL, 3, 992, 99200, 66),
  -- AI Professor (Violet) 4: Iron Jugulis Lv. 66
  (23028, 23, 37, NULL, NULL, NULL, NULL, 4, 993, 99300, 66),
  -- AI Professor (Violet) 5: Iron Thorns Lv. 66
  (23028, 23, 37, NULL, NULL, NULL, NULL, 5, 995, 99500, 66),
  -- AI Professor (Violet) 6: Iron Valiant Lv. 67
  (23028, 23, 37, NULL, NULL, NULL, NULL, 6, 1006, 100600, 67);
