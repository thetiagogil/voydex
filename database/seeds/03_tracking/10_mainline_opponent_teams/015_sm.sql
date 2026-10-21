-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sun / Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon Sun / Moon first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Sun / Moon opponent uses the first time you battle them, by
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
  -- Ilima (Sun) 1: Gumshoos Lv. 12
  (15001, 15, 25, NULL, NULL, NULL, NULL, 1, 735, 73500, 12),
  -- Ilima (Sun) 2: Yungoos Lv. 11
  (15001, 15, 25, NULL, NULL, NULL, NULL, 2, 734, 73400, 11),
  -- Ilima (Moon) 1: Alolan Raticate Lv. 12
  (15001, 15, 26, NULL, NULL, NULL, NULL, 1, 20, 2001, 12),
  -- Ilima (Moon) 2: Alolan Rattata Lv. 11
  (15001, 15, 26, NULL, NULL, NULL, NULL, 2, 19, 1901, 11),
  -- Hala 1: Mankey Lv. 14
  (15002, 15, NULL, NULL, NULL, NULL, NULL, 1, 56, 5600, 14),
  -- Hala 2: Makuhita Lv. 14
  (15002, 15, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 14),
  -- Hala 3: Crabrawler Lv. 15
  (15002, 15, NULL, NULL, NULL, NULL, NULL, 3, 739, 73900, 15),
  -- Lana 1: Wishiwashi Lv. 20
  (15003, 15, NULL, NULL, NULL, NULL, NULL, 1, 746, 74600, 20),
  -- Lana 2: Alomomola Lv. 18
  (15003, 15, NULL, NULL, NULL, NULL, NULL, 2, 594, 59400, 18),
  -- Lana 3: Wishiwashi Lv. 18
  (15003, 15, NULL, NULL, NULL, NULL, NULL, 3, 746, 74600, 18),
  -- Kiawe 1: Salazzle Lv. 22
  (15004, 15, NULL, NULL, NULL, NULL, NULL, 1, 758, 75800, 22),
  -- Kiawe 2: Salandit Lv. 20
  (15004, 15, NULL, NULL, NULL, NULL, NULL, 2, 757, 75700, 20),
  -- Mallow 1: Lurantis Lv. 24
  (15005, 15, NULL, NULL, NULL, NULL, NULL, 1, 754, 75400, 24),
  -- Mallow 2: Castform Lv. 22
  (15005, 15, NULL, NULL, NULL, NULL, NULL, 2, 351, 35100, 22),
  -- Mallow 3: Trumbeak Lv. 22
  (15005, 15, NULL, NULL, NULL, NULL, NULL, 3, 732, 73200, 22),
  -- Olivia 1: Nosepass Lv. 26
  (15006, 15, NULL, NULL, NULL, NULL, NULL, 1, 299, 29900, 26),
  -- Olivia 2: Boldore Lv. 26
  (15006, 15, NULL, NULL, NULL, NULL, NULL, 2, 525, 52500, 26),
  -- Olivia 3: Lycanroc (Midnight) Lv. 27
  (15006, 15, NULL, NULL, NULL, NULL, NULL, 3, 745, 74501, 27),
  -- Sophocles 1: Vikavolt Lv. 29
  (15007, 15, NULL, NULL, NULL, NULL, NULL, 1, 738, 73800, 29),
  -- Sophocles 2: Charjabug Lv. 27
  (15007, 15, NULL, NULL, NULL, NULL, NULL, 2, 737, 73700, 27),
  -- Acerola 1: Mimikyu Lv. 33
  (15008, 15, NULL, NULL, NULL, NULL, NULL, 1, 778, 77800, 33),
  -- Acerola 2: Haunter Lv. 27
  (15008, 15, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 27),
  -- Acerola 3: Gengar Lv. 27
  (15008, 15, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 27),
  -- Nanu 1: Sableye Lv. 38
  (15009, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 38),
  -- Nanu 2: Krokorok Lv. 38
  (15009, 15, NULL, NULL, NULL, NULL, NULL, 2, 552, 55200, 38),
  -- Nanu 3: Alolan Persian Lv. 39
  (15009, 15, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 39),
  -- Hapu 1: Alolan Dugtrio Lv. 47
  (15010, 15, NULL, NULL, NULL, NULL, NULL, 1, 51, 5101, 47),
  -- Hapu 2: Gastrodon Lv. 47
  (15010, 15, NULL, NULL, NULL, NULL, NULL, 2, 423, 42300, 47),
  -- Hapu 3: Flygon Lv. 47
  (15010, 15, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 47),
  -- Hapu 4: Mudsdale Lv. 48
  (15010, 15, NULL, NULL, NULL, NULL, NULL, 4, 750, 75000, 48),
  -- Hala 1: Hariyama Lv. 54
  (15011, 15, NULL, NULL, NULL, NULL, NULL, 1, 297, 29700, 54),
  -- Hala 2: Primeape Lv. 54
  (15011, 15, NULL, NULL, NULL, NULL, NULL, 2, 57, 5700, 54),
  -- Hala 3: Bewear Lv. 54
  (15011, 15, NULL, NULL, NULL, NULL, NULL, 3, 760, 76000, 54),
  -- Hala 4: Poliwrath Lv. 54
  (15011, 15, NULL, NULL, NULL, NULL, NULL, 4, 62, 6200, 54),
  -- Hala 5: Crabominable Lv. 55
  (15011, 15, NULL, NULL, NULL, NULL, NULL, 5, 740, 74000, 55),
  -- Olivia 1: Relicanth Lv. 54
  (15012, 15, NULL, NULL, NULL, NULL, NULL, 1, 369, 36900, 54),
  -- Olivia 2: Carbink Lv. 54
  (15012, 15, NULL, NULL, NULL, NULL, NULL, 2, 703, 70300, 54),
  -- Olivia 3: Alolan Golem Lv. 54
  (15012, 15, NULL, NULL, NULL, NULL, NULL, 3, 76, 7601, 54),
  -- Olivia 4: Probopass Lv. 54
  (15012, 15, NULL, NULL, NULL, NULL, NULL, 4, 476, 47600, 54),
  -- Olivia 5: Lycanroc (Midnight) Lv. 55
  (15012, 15, NULL, NULL, NULL, NULL, NULL, 5, 745, 74501, 55),
  -- Acerola 1: Sableye Lv. 54
  (15013, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 54),
  -- Acerola 2: Drifblim Lv. 54
  (15013, 15, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 54),
  -- Acerola 3: Dhelmise Lv. 54
  (15013, 15, NULL, NULL, NULL, NULL, NULL, 3, 781, 78100, 54),
  -- Acerola 4: Froslass Lv. 54
  (15013, 15, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 54),
  -- Acerola 5: Palossand Lv. 55
  (15013, 15, NULL, NULL, NULL, NULL, NULL, 5, 770, 77000, 55),
  -- Kahili 1: Skarmory Lv. 54
  (15014, 15, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 54),
  -- Kahili 2: Crobat Lv. 54
  (15014, 15, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 54),
  -- Kahili 3: Oricorio Lv. 54
  (15014, 15, NULL, NULL, NULL, NULL, NULL, 3, 741, 74100, 54),
  -- Kahili 4: Mandibuzz Lv. 54
  (15014, 15, NULL, NULL, NULL, NULL, NULL, 4, 630, 63000, 54),
  -- Kahili 5: Toucannon Lv. 55
  (15014, 15, NULL, NULL, NULL, NULL, NULL, 5, 733, 73300, 55),
  -- Professor Kukui (chose Rowlet) 1: Lycanroc Lv. 57
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Rowlet) 2: Alolan Ninetales Lv. 56
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Rowlet) 3: Braviary Lv. 56
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Rowlet) 4: Magnezone Lv. 56
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Rowlet) 5: Snorlax Lv. 56
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Rowlet) 6: Incineroar Lv. 58
  (15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 6, 727, 72700, 58),
  -- Professor Kukui (chose Litten) 1: Lycanroc Lv. 57
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Litten) 2: Alolan Ninetales Lv. 56
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Litten) 3: Braviary Lv. 56
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Litten) 4: Magnezone Lv. 56
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Litten) 5: Snorlax Lv. 56
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Litten) 6: Primarina Lv. 58
  (15015, 15, NULL, 150001, 'litten', NULL, NULL, 6, 730, 73000, 58),
  -- Professor Kukui (chose Popplio) 1: Lycanroc Lv. 57
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Popplio) 2: Alolan Ninetales Lv. 56
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Popplio) 3: Braviary Lv. 56
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Popplio) 4: Magnezone Lv. 56
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Popplio) 5: Snorlax Lv. 56
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Popplio) 6: Decidueye Lv. 58
  (15015, 15, NULL, 150001, 'popplio', NULL, NULL, 6, 724, 72400, 58);
