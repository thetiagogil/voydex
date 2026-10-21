-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Ultra Sun / Ultra Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hau, Gladion, Guzma and Lusamine battles: Bulbapedia, cross-checked with Serebii and Pokébip.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Scope: Pokémon Ultra Sun / Ultra Moon Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Ultra Sun / Ultra Moon opponent uses in each Story battle, by
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
  level
) VALUES
  -- Ilima (Ultra Sun) 1: Gumshoos Lv. 12
  (160003, 16001, 16, 27, NULL, NULL, NULL, NULL, 1, 735, 73500, 12),
  -- Ilima (Ultra Sun) 2: Yungoos Lv. 11
  (160003, 16001, 16, 27, NULL, NULL, NULL, NULL, 2, 734, 73400, 11),
  -- Ilima (Ultra Moon) 1: Alolan Raticate Lv. 12
  (160003, 16001, 16, 28, NULL, NULL, NULL, NULL, 1, 20, 2001, 12),
  -- Ilima (Ultra Moon) 2: Alolan Rattata Lv. 11
  (160003, 16001, 16, 28, NULL, NULL, NULL, NULL, 2, 19, 1901, 11),
  -- Hala 1: Machop Lv. 15
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 15),
  -- Hala 2: Makuhita Lv. 15
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 15),
  -- Hala 3: Crabrawler Lv. 16
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 3, 739, 73900, 16),
  -- Lana 1: Araquanid Lv. 20
  (160005, 16003, 16, NULL, NULL, NULL, NULL, NULL, 1, 752, 75200, 20),
  -- Lana 2: Masquerain Lv. 18
  (160005, 16003, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 18),
  -- Lana 3: Dewpider Lv. 18
  (160005, 16003, 16, NULL, NULL, NULL, NULL, NULL, 3, 751, 75100, 18),
  -- Kiawe 1: Alolan Marowak Lv. 22
  (160006, 16004, 16, NULL, NULL, NULL, NULL, NULL, 1, 105, 10501, 22),
  -- Kiawe 2: Salazzle Lv. 20
  (160006, 16004, 16, NULL, NULL, NULL, NULL, NULL, 2, 758, 75800, 20),
  -- Mallow 1: Lurantis Lv. 24
  (160007, 16005, 16, NULL, NULL, NULL, NULL, NULL, 1, 754, 75400, 24),
  -- Mallow 2: Kecleon Lv. 22
  (160007, 16005, 16, NULL, NULL, NULL, NULL, NULL, 2, 352, 35200, 22),
  -- Mallow 3: Comfey Lv. 22
  (160007, 16005, 16, NULL, NULL, NULL, NULL, NULL, 3, 764, 76400, 22),
  -- Olivia 1: Anorith Lv. 27
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 1, 347, 34700, 27),
  -- Olivia 2: Lileep Lv. 27
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 2, 345, 34500, 27),
  -- Olivia 3: Lycanroc (Midnight) Lv. 28
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 3, 745, 74501, 28),
  -- Sophocles 1: Togedemaru Lv. 33
  (160009, 16007, 16, NULL, NULL, NULL, NULL, NULL, 1, 777, 77700, 33),
  -- Sophocles 2: Skarmory Lv. 32
  (160009, 16007, 16, NULL, NULL, NULL, NULL, NULL, 2, 227, 22700, 32),
  -- Sophocles 3: Dedenne Lv. 31
  (160009, 16007, 16, NULL, NULL, NULL, NULL, NULL, 3, 702, 70200, 31),
  -- Acerola 1: Mimikyu Lv. 35
  (160010, 16008, 16, NULL, NULL, NULL, NULL, NULL, 1, 778, 77800, 35),
  -- Acerola 2: Banette Lv. 32
  (160010, 16008, 16, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 32),
  -- Acerola 3: Jellicent Lv. 33
  (160010, 16008, 16, NULL, NULL, NULL, NULL, NULL, 3, 593, 59300, 33),
  -- Nanu 1: Sableye Lv. 43
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 43),
  -- Nanu 2: Krokorok Lv. 43
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 2, 552, 55200, 43),
  -- Nanu 3: Alolan Persian Lv. 44
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 44),
  -- Mina 1: Ribombee Lv. 55
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 1, 743, 74300, 55),
  -- Mina 2: Blissey Lv. 53
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 2, 242, 24200, 53),
  -- Mina 3: Pelipper Lv. 52
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 3, 279, 27900, 52),
  -- Hapu 1: Golurk Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 1, 623, 62300, 53),
  -- Hapu 2: Gastrodon Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 2, 423, 42300, 53),
  -- Hapu 3: Flygon Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 53),
  -- Hapu 4: Mudsdale Lv. 54
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 4, 750, 75000, 54),
  -- Ultra Necrozma 1: Necrozma Lv. 60
  (160015, 16012, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 60),
  -- Molayne 1: Klefki Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 1, 707, 70700, 56),
  -- Molayne 2: Bisharp Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 2, 625, 62500, 56),
  -- Molayne 3: Magnezone Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 3, 462, 46200, 56),
  -- Molayne 4: Metagross Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 4, 376, 37600, 56),
  -- Molayne 5: Alolan Dugtrio Lv. 57
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 5, 51, 5101, 57),
  -- Olivia 1: Armaldo Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 1, 348, 34800, 56),
  -- Olivia 2: Cradily Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 2, 346, 34600, 56),
  -- Olivia 3: Gigalith Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 3, 526, 52600, 56),
  -- Olivia 4: Probopass Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 4, 476, 47600, 56),
  -- Olivia 5: Lycanroc (Midnight) Lv. 57
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 5, 745, 74501, 57),
  -- Acerola 1: Banette Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 1, 354, 35400, 56),
  -- Acerola 2: Drifblim Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 56),
  -- Acerola 3: Dhelmise Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 3, 781, 78100, 56),
  -- Acerola 4: Froslass Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 56),
  -- Acerola 5: Palossand Lv. 57
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 5, 770, 77000, 57),
  -- Kahili 1: Braviary Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 1, 628, 62800, 56),
  -- Kahili 2: Hawlucha Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 56),
  -- Kahili 3: Oricorio Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 3, 741, 74100, 56),
  -- Kahili 4: Mandibuzz Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 4, 630, 63000, 56),
  -- Kahili 5: Toucannon Lv. 57
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 5, 733, 73300, 57),
  -- Hau (chose Rowlet) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 26, 2601, 59),
  -- Hau (chose Rowlet) 2: Flareon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 136, 13600, 58),
  -- Hau (chose Rowlet) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 128, 12800, 58),
  -- Hau (chose Rowlet) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 715, 71500, 58),
  -- Hau (chose Rowlet) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 5, 740, 74000, 59),
  -- Hau (chose Rowlet) 6: Primarina Lv. 60
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 6, 730, 73000, 60),
  -- Hau (chose Litten) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 1, 26, 2601, 59),
  -- Hau (chose Litten) 2: Vaporeon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 2, 134, 13400, 58),
  -- Hau (chose Litten) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 3, 128, 12800, 58),
  -- Hau (chose Litten) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 4, 715, 71500, 58),
  -- Hau (chose Litten) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 5, 740, 74000, 59),
  -- Hau (chose Litten) 6: Decidueye Lv. 60
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 6, 724, 72400, 60),
  -- Hau (chose Popplio) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 26, 2601, 59),
  -- Hau (chose Popplio) 2: Leafeon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 470, 47000, 58),
  -- Hau (chose Popplio) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 128, 12800, 58),
  -- Hau (chose Popplio) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 715, 71500, 58),
  -- Hau (chose Popplio) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 5, 740, 74000, 59),
  -- Hau (chose Popplio) 6: Incineroar Lv. 60
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 6, 727, 72700, 60),
  -- Giovanni 1: Dugtrio Lv. 68
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 1, 51, 5100, 68),
  -- Giovanni 2: Nidoking Lv. 68
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 2, 34, 3400, 68),
  -- Giovanni 3: Nidoqueen Lv. 68
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 68),
  -- Giovanni 4: Rhyperior Lv. 68
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 4, 464, 46400, 68),
  -- Giovanni 5: Mewtwo Lv. 70
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 5, 150, 15000, 70),
  -- Hau (chose Rowlet), Choose Starter 1: Popplio Lv. 5
  (160001, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 728, 72800, 5),
  -- Hau (chose Litten), Choose Starter 1: Rowlet Lv. 5
  (160001, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 722, 72200, 5),
  -- Hau (chose Popplio), Choose Starter 1: Litten Lv. 5
  (160001, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 725, 72500, 5),
  -- Hau (chose Rowlet), Receive Pokedex 1: Pichu Lv. 6
  (160002, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Rowlet), Receive Pokedex 2: Popplio Lv. 7
  (160002, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 728, 72800, 7),
  -- Hau (chose Litten), Receive Pokedex 1: Pichu Lv. 6
  (160002, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Litten), Receive Pokedex 2: Rowlet Lv. 7
  (160002, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 722, 72200, 7),
  -- Hau (chose Popplio), Receive Pokedex 1: Pichu Lv. 6
  (160002, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Popplio), Receive Pokedex 2: Litten Lv. 7
  (160002, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 725, 72500, 7),
  -- Hau (chose Rowlet), Grand Trial Hala 1: Popplio Lv. 13
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 728, 72800, 13),
  -- Hau (chose Rowlet), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 714, 71400, 11),
  -- Hau (chose Rowlet), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 25, 2500, 12),
  -- Hau (chose Litten), Grand Trial Hala 1: Rowlet Lv. 13
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 722, 72200, 13),
  -- Hau (chose Litten), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 714, 71400, 11),
  -- Hau (chose Litten), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 25, 2500, 12),
  -- Hau (chose Popplio), Grand Trial Hala 1: Litten Lv. 13
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 725, 72500, 13),
  -- Hau (chose Popplio), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 714, 71400, 11),
  -- Hau (chose Popplio), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 25, 2500, 12),
  -- Hau (chose Rowlet), Lana Trial 1: Brionne Lv. 16
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 16),
  -- Hau (chose Rowlet), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 25, 2500, 15),
  -- Hau (chose Rowlet), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 714, 71400, 14),
  -- Hau (chose Rowlet), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 133, 13300, 14),
  -- Hau (chose Litten), Lana Trial 1: Dartrix Lv. 16
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 16),
  -- Hau (chose Litten), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 25, 2500, 15),
  -- Hau (chose Litten), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 714, 71400, 14),
  -- Hau (chose Litten), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 4, 133, 13300, 14),
  -- Hau (chose Popplio), Lana Trial 1: Torracat Lv. 16
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 16),
  -- Hau (chose Popplio), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 25, 2500, 15),
  -- Hau (chose Popplio), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 714, 71400, 14),
  -- Hau (chose Popplio), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 133, 13300, 14),
  -- Gladion, Lana Trial 1: Zorua Lv. 17
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 1, 570, 57000, 17),
  -- Gladion, Lana Trial 2: Type: Null Lv. 18
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 2, 772, 77200, 18),
  -- Gladion, Lana Trial 3: Zubat Lv. 17
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 3, 41, 4100, 17),
  -- Hau & Gladion (chose Rowlet), Kiawe Trial 1: Brionne Lv. 20
  (160006, 16021, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 20),
  -- Hau & Gladion (chose Rowlet), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 772, 77200, 20),
  -- Hau & Gladion (chose Litten), Kiawe Trial 1: Dartrix Lv. 20
  (160006, 16021, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 20),
  -- Hau & Gladion (chose Litten), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'litten', NULL, NULL, 2, 772, 77200, 20),
  -- Hau & Gladion (chose Popplio), Kiawe Trial 1: Torracat Lv. 20
  (160006, 16021, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 20),
  -- Hau & Gladion (chose Popplio), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 772, 77200, 20),
  -- Hau (chose Rowlet), Sophocles Trial 1: Brionne Lv. 30
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 30),
  -- Hau (chose Rowlet), Sophocles Trial 2: Flareon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 136, 13600, 28),
  -- Hau (chose Rowlet), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 714, 71400, 28),
  -- Hau (chose Rowlet), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 128, 12800, 28),
  -- Hau (chose Rowlet), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 5, 26, 2601, 29),
  -- Hau (chose Litten), Sophocles Trial 1: Dartrix Lv. 30
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 30),
  -- Hau (chose Litten), Sophocles Trial 2: Vaporeon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 134, 13400, 28),
  -- Hau (chose Litten), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 714, 71400, 28),
  -- Hau (chose Litten), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 4, 128, 12800, 28),
  -- Hau (chose Litten), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 5, 26, 2601, 29),
  -- Hau (chose Popplio), Sophocles Trial 1: Torracat Lv. 30
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 30),
  -- Hau (chose Popplio), Sophocles Trial 2: Leafeon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 470, 47000, 28),
  -- Hau (chose Popplio), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 714, 71400, 28),
  -- Hau (chose Popplio), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 128, 12800, 28),
  -- Hau (chose Popplio), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 5, 26, 2601, 29),
  -- Guzma, Sophocles Trial 1: Golisopod Lv. 34
  (160009, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 34),
  -- Guzma, Sophocles Trial 2: Masquerain Lv. 34
  (160009, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 34),
  -- Guzma, Grand Trial Nanu 1: Golisopod Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 41),
  -- Guzma, Grand Trial Nanu 2: Masquerain Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 41),
  -- Guzma, Grand Trial Nanu 3: Pinsir Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 3, 127, 12700, 41),
  -- Gladion, Grand Trial Nanu 1: Golbat Lv. 42
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 42),
  -- Gladion, Grand Trial Nanu 2: Zoroark Lv. 42
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 2, 571, 57100, 42),
  -- Gladion, Grand Trial Nanu 3: Type: Null Lv. 43
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 3, 772, 77200, 43),
  -- Guzma, Aether Paradise 1: Golisopod Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 45),
  -- Guzma, Aether Paradise 2: Masquerain Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 45),
  -- Guzma, Aether Paradise 3: Pinsir Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 3, 127, 12700, 45),
  -- Guzma, Aether Paradise 4: Vikavolt Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 4, 738, 73800, 45),
  -- Lusamine, Aether Paradise 1: Clefable Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 47),
  -- Lusamine, Aether Paradise 2: Lilligant Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 47),
  -- Lusamine, Aether Paradise 3: Lopunny Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 3, 428, 42800, 47),
  -- Lusamine, Aether Paradise 4: Milotic Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 47),
  -- Lusamine, Aether Paradise 5: Bewear Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 47),
  -- Gladion (chose Rowlet), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 169, 16900, 53),
  -- Gladion (chose Rowlet), Elite Four Molayne 2: Zoroark Lv. 53
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 571, 57100, 53),
  -- Gladion (chose Rowlet), Elite Four Molayne 3: Silvally (Fire) Lv. 55
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 773, 77309, 55),
  -- Gladion (chose Rowlet), Elite Four Molayne 4: Lucario Lv. 53
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 448, 44800, 53),
  -- Gladion (chose Litten), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 1, 169, 16900, 53),
  -- Gladion (chose Litten), Elite Four Molayne 2: Zoroark Lv. 53
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 2, 571, 57100, 53),
  -- Gladion (chose Litten), Elite Four Molayne 3: Silvally (Water) Lv. 55
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 3, 773, 77310, 55),
  -- Gladion (chose Litten), Elite Four Molayne 4: Lucario Lv. 55
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 4, 448, 44800, 55),
  -- Gladion (chose Popplio), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 169, 16900, 53),
  -- Gladion (chose Popplio), Elite Four Molayne 2: Zoroark Lv. 53
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 571, 57100, 53),
  -- Gladion (chose Popplio), Elite Four Molayne 3: Silvally (Grass) Lv. 55
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 773, 77311, 55),
  -- Gladion (chose Popplio), Elite Four Molayne 4: Lucario Lv. 53
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 448, 44800, 53),
  -- Nihilego, Sophocles Trial 1: Nihilego Lv. 27
  (160009, 16024, 16, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 27),
  -- Necrozma, Ultra Necrozma 1: Necrozma (Dusk Mane) Lv. 50
  (160015, 16025, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80001, 50),
  -- Necrozma, Ultra Necrozma 1: Necrozma (Dawn Wings) Lv. 50
  (160015, 16026, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80002, 50),
  -- Solgaleo, Mahalo Trail 1: Solgaleo Lv. 60
  (160024, 16027, 16, NULL, NULL, NULL, NULL, NULL, 1, 791, 79100, 60),
  -- Lunala, Mahalo Trail 1: Lunala Lv. 60
  (160024, 16028, 16, NULL, NULL, NULL, NULL, NULL, 1, 792, 79200, 60),
  -- Necrozma, Mount Lanakila Crater 1: Necrozma Lv. 65
  (160025, 16029, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 65),
  -- Tapu Koko, Ruins of Conflict 1: Tapu Koko Lv. 60
  (160026, 16030, 16, NULL, NULL, NULL, NULL, NULL, 1, 785, 78500, 60),
  -- Tapu Lele, Ruins of Life 1: Tapu Lele Lv. 60
  (160027, 16031, 16, NULL, NULL, NULL, NULL, NULL, 1, 786, 78600, 60),
  -- Tapu Bulu, Ruins of Abundance 1: Tapu Bulu Lv. 60
  (160028, 16032, 16, NULL, NULL, NULL, NULL, NULL, 1, 787, 78700, 60),
  -- Tapu Fini, Ruins of Hope 1: Tapu Fini Lv. 60
  (160029, 16033, 16, NULL, NULL, NULL, NULL, NULL, 1, 788, 78800, 60),
  -- Zygarde, Resolution Cave 1: Zygarde Lv. 60
  (160030, 16034, 16, NULL, NULL, NULL, NULL, NULL, 1, 718, 71800, 60),
  -- Blacephalon, Poni Grove 1: Blacephalon Lv. 60
  (160031, 16035, 16, NULL, NULL, NULL, NULL, NULL, 1, 806, 80600, 60),
  -- Stakataka, Poni Grove 1: Stakataka Lv. 60
  (160031, 16036, 16, NULL, NULL, NULL, NULL, NULL, 1, 805, 80500, 60);
