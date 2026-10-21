-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Ultra Sun / Ultra Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
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
  (160022, 16018, 16, NULL, NULL, NULL, NULL, NULL, 5, 150, 15000, 70);
