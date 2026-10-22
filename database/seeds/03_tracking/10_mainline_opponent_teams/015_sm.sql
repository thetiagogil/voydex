-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sun / Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hau, Gladion, Guzma and Lusamine battles: Bulbapedia, cross-checked with Serebii and Pokébip.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Totem trials: cross-checked with Bulbapedia trial pages; allies follow the order the totem calls them.
-- Ilima's ally is Lv. 11 per Serebii and Pokémon GO Hub; Bulbapedia says Lv. 10. Lv. 11 is used.
-- Battle forms: Totem Wishiwashi is Lv. 20, so Schooling puts it in its School Form.
-- Scope: Pokémon Sun / Moon Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Sun / Moon opponent uses in each Story battle, by
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
  -- Ilima (Sun) 1: Gumshoos Lv. 12
  (150003, 15001, 15, 25, NULL, NULL, NULL, NULL, 1, 735, 73500, 12),
  -- Ilima (Sun) 2: Yungoos Lv. 11
  (150003, 15001, 15, 25, NULL, NULL, NULL, NULL, 2, 734, 73400, 11),
  -- Ilima (Moon) 1: Alolan Raticate Lv. 12
  (150003, 15001, 15, 26, NULL, NULL, NULL, NULL, 1, 20, 2001, 12),
  -- Ilima (Moon) 2: Alolan Rattata Lv. 11
  (150003, 15001, 15, 26, NULL, NULL, NULL, NULL, 2, 19, 1901, 11),
  -- Hala 1: Mankey Lv. 14
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 1, 56, 5600, 14),
  -- Hala 2: Makuhita Lv. 14
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 14),
  -- Hala 3: Crabrawler Lv. 15
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 3, 739, 73900, 15),
  -- Lana 1: Wishiwashi (School Form) Lv. 20
  (150005, 15003, 15, NULL, NULL, NULL, NULL, NULL, 1, 746, 74601, 20),
  -- Lana 2: Wishiwashi Lv. 18
  (150005, 15003, 15, NULL, NULL, NULL, NULL, NULL, 2, 746, 74600, 18),
  -- Lana 3: Alomomola Lv. 18
  (150005, 15003, 15, NULL, NULL, NULL, NULL, NULL, 3, 594, 59400, 18),
  -- Kiawe 1: Salazzle Lv. 22
  (150006, 15004, 15, NULL, NULL, NULL, NULL, NULL, 1, 758, 75800, 22),
  -- Kiawe 2: Salandit Lv. 20
  (150006, 15004, 15, NULL, NULL, NULL, NULL, NULL, 2, 757, 75700, 20),
  -- Mallow 1: Lurantis Lv. 24
  (150007, 15005, 15, NULL, NULL, NULL, NULL, NULL, 1, 754, 75400, 24),
  -- Mallow 2: Trumbeak Lv. 22
  (150007, 15005, 15, NULL, NULL, NULL, NULL, NULL, 2, 732, 73200, 22),
  -- Mallow 3: Castform Lv. 22
  (150007, 15005, 15, NULL, NULL, NULL, NULL, NULL, 3, 351, 35100, 22),
  -- Olivia 1: Nosepass Lv. 26
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 1, 299, 29900, 26),
  -- Olivia 2: Boldore Lv. 26
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 2, 525, 52500, 26),
  -- Olivia 3: Lycanroc (Midnight) Lv. 27
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 3, 745, 74501, 27),
  -- Sophocles 1: Vikavolt Lv. 29
  (150009, 15007, 15, NULL, NULL, NULL, NULL, NULL, 1, 738, 73800, 29),
  -- Sophocles 2: Charjabug Lv. 27
  (150009, 15007, 15, NULL, NULL, NULL, NULL, NULL, 2, 737, 73700, 27),
  -- Acerola 1: Mimikyu Lv. 33
  (150010, 15008, 15, NULL, NULL, NULL, NULL, NULL, 1, 778, 77800, 33),
  -- Acerola 2: Haunter Lv. 27
  (150010, 15008, 15, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 27),
  -- Acerola 3: Gengar Lv. 27
  (150010, 15008, 15, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 27),
  -- Nanu 1: Sableye Lv. 38
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 38),
  -- Nanu 2: Krokorok Lv. 38
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 2, 552, 55200, 38),
  -- Nanu 3: Alolan Persian Lv. 39
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 39),
  -- Hapu 1: Alolan Dugtrio Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 1, 51, 5101, 47),
  -- Hapu 2: Gastrodon Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 2, 423, 42300, 47),
  -- Hapu 3: Flygon Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 47),
  -- Hapu 4: Mudsdale Lv. 48
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 4, 750, 75000, 48),
  -- Hala 1: Hariyama Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 1, 297, 29700, 54),
  -- Hala 2: Primeape Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 2, 57, 5700, 54),
  -- Hala 3: Bewear Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 3, 760, 76000, 54),
  -- Hala 4: Poliwrath Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 4, 62, 6200, 54),
  -- Hala 5: Crabominable Lv. 55
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 5, 740, 74000, 55),
  -- Olivia 1: Relicanth Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 1, 369, 36900, 54),
  -- Olivia 2: Carbink Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 2, 703, 70300, 54),
  -- Olivia 3: Alolan Golem Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 3, 76, 7601, 54),
  -- Olivia 4: Probopass Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 4, 476, 47600, 54),
  -- Olivia 5: Lycanroc (Midnight) Lv. 55
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 5, 745, 74501, 55),
  -- Acerola 1: Sableye Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 54),
  -- Acerola 2: Drifblim Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 54),
  -- Acerola 3: Dhelmise Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 3, 781, 78100, 54),
  -- Acerola 4: Froslass Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 54),
  -- Acerola 5: Palossand Lv. 55
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 5, 770, 77000, 55),
  -- Kahili 1: Skarmory Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 54),
  -- Kahili 2: Crobat Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 54),
  -- Kahili 3: Oricorio Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 3, 741, 74100, 54),
  -- Kahili 4: Mandibuzz Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 4, 630, 63000, 54),
  -- Kahili 5: Toucannon Lv. 55
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 5, 733, 73300, 55),
  -- Professor Kukui (chose Rowlet) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Rowlet) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Rowlet) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Rowlet) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Rowlet) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Rowlet) 6: Incineroar Lv. 58
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 6, 727, 72700, 58),
  -- Professor Kukui (chose Litten) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Litten) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Litten) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Litten) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Litten) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Litten) 6: Primarina Lv. 58
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 6, 730, 73000, 58),
  -- Professor Kukui (chose Popplio) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 745, 74500, 57),
  -- Professor Kukui (chose Popplio) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 38, 3801, 56),
  -- Professor Kukui (chose Popplio) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 628, 62800, 56),
  -- Professor Kukui (chose Popplio) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 462, 46200, 56),
  -- Professor Kukui (chose Popplio) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 5, 143, 14300, 56),
  -- Professor Kukui (chose Popplio) 6: Decidueye Lv. 58
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 6, 724, 72400, 58),
  -- Hau (chose Rowlet), Choose Starter 1: Popplio Lv. 5
  (150001, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 728, 72800, 5),
  -- Hau (chose Litten), Choose Starter 1: Rowlet Lv. 5
  (150001, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 722, 72200, 5),
  -- Hau (chose Popplio), Choose Starter 1: Litten Lv. 5
  (150001, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 725, 72500, 5),
  -- Hau (chose Rowlet), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Rowlet), Receive Pokedex 2: Popplio Lv. 7
  (150002, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 728, 72800, 7),
  -- Hau (chose Litten), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Litten), Receive Pokedex 2: Rowlet Lv. 7
  (150002, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 722, 72200, 7),
  -- Hau (chose Popplio), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 172, 17200, 6),
  -- Hau (chose Popplio), Receive Pokedex 2: Litten Lv. 7
  (150002, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 725, 72500, 7),
  -- Hau (chose Rowlet), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 25, 2500, 13),
  -- Hau (chose Rowlet), Grand Trial Hala 2: Popplio Lv. 14
  (150004, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 728, 72800, 14),
  -- Hau (chose Litten), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 25, 2500, 13),
  -- Hau (chose Litten), Grand Trial Hala 2: Rowlet Lv. 14
  (150004, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 722, 72200, 14),
  -- Hau (chose Popplio), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 25, 2500, 13),
  -- Hau (chose Popplio), Grand Trial Hala 2: Litten Lv. 14
  (150004, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 725, 72500, 14),
  -- Hau (chose Rowlet), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 25, 2500, 16),
  -- Hau (chose Rowlet), Lana Trial 2: Brionne Lv. 17
  (150005, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 729, 72900, 17),
  -- Hau (chose Litten), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 25, 2500, 16),
  -- Hau (chose Litten), Lana Trial 2: Dartrix Lv. 17
  (150005, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 723, 72300, 17),
  -- Hau (chose Popplio), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 25, 2500, 16),
  -- Hau (chose Popplio), Lana Trial 2: Torracat Lv. 17
  (150005, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 726, 72600, 17),
  -- Gladion, Lana Trial 1: Zubat Lv. 17
  (150005, 15017, 15, NULL, NULL, NULL, NULL, NULL, 1, 41, 4100, 17),
  -- Gladion, Lana Trial 2: Type: Null Lv. 18
  (150005, 15017, 15, NULL, NULL, NULL, NULL, NULL, 2, 772, 77200, 18),
  -- Hau & Gladion (chose Rowlet), Kiawe Trial 1: Brionne Lv. 19
  (150006, 15018, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 729, 72900, 19),
  -- Hau & Gladion (chose Rowlet), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 772, 77200, 19),
  -- Hau & Gladion (chose Litten), Kiawe Trial 1: Dartrix Lv. 19
  (150006, 15018, 15, NULL, 150001, 'litten', NULL, NULL, 1, 723, 72300, 19),
  -- Hau & Gladion (chose Litten), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'litten', NULL, NULL, 2, 772, 77200, 19),
  -- Hau & Gladion (chose Popplio), Kiawe Trial 1: Torracat Lv. 19
  (150006, 15018, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 726, 72600, 19),
  -- Hau & Gladion (chose Popplio), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 772, 77200, 19),
  -- Hau (chose Rowlet), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 26, 2601, 28),
  -- Hau (chose Rowlet), Sophocles Trial 2: Flareon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 136, 13600, 28),
  -- Hau (chose Rowlet), Sophocles Trial 3: Brionne Lv. 29
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 729, 72900, 29),
  -- Hau (chose Litten), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 26, 2601, 28),
  -- Hau (chose Litten), Sophocles Trial 2: Vaporeon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 134, 13400, 28),
  -- Hau (chose Litten), Sophocles Trial 3: Dartrix Lv. 29
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 3, 723, 72300, 29),
  -- Hau (chose Popplio), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 26, 2601, 28),
  -- Hau (chose Popplio), Sophocles Trial 2: Leafeon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 470, 47000, 28),
  -- Hau (chose Popplio), Sophocles Trial 3: Torracat Lv. 29
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 726, 72600, 29),
  -- Guzma, Sophocles Trial 1: Golisopod Lv. 31
  (150009, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 31),
  -- Guzma, Sophocles Trial 2: Ariados Lv. 30
  (150009, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 30),
  -- Guzma, Grand Trial Nanu 1: Golisopod Lv. 37
  (150011, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 37),
  -- Guzma, Grand Trial Nanu 2: Ariados Lv. 36
  (150011, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 36),
  -- Gladion, Grand Trial Nanu 1: Golbat Lv. 37
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 37),
  -- Gladion, Grand Trial Nanu 2: Sneasel Lv. 37
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 37),
  -- Gladion, Grand Trial Nanu 3: Type: Null Lv. 38
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 3, 772, 77200, 38),
  -- Guzma, Aether Paradise 1: Golisopod Lv. 41
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 41),
  -- Guzma, Aether Paradise 2: Ariados Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 40),
  -- Guzma, Aether Paradise 3: Masquerain Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 3, 284, 28400, 40),
  -- Guzma, Aether Paradise 4: Pinsir Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 4, 127, 12700, 40),
  -- Lusamine, Aether Paradise 1: Clefable Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 41),
  -- Lusamine, Aether Paradise 2: Lilligant Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 41),
  -- Lusamine, Aether Paradise 3: Mismagius Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 41),
  -- Lusamine, Aether Paradise 4: Milotic Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 41),
  -- Lusamine, Aether Paradise 5: Bewear Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 41),
  -- Lusamine, Ultra Space 1: Clefable Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 50),
  -- Lusamine, Ultra Space 2: Lilligant Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 50),
  -- Lusamine, Ultra Space 3: Mismagius Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 50),
  -- Lusamine, Ultra Space 4: Milotic Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 50),
  -- Lusamine, Ultra Space 5: Bewear Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 50),
  -- Gladion (chose Rowlet), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 169, 16900, 52),
  -- Gladion (chose Rowlet), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 461, 46100, 52),
  -- Gladion (chose Rowlet), Elite Four Hala 3: Lucario Lv. 52
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 448, 44800, 52),
  -- Gladion (chose Rowlet), Elite Four Hala 4: Silvally (Fire) Lv. 53
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 773, 77309, 53),
  -- Gladion (chose Litten), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 1, 169, 16900, 52),
  -- Gladion (chose Litten), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 2, 461, 46100, 52),
  -- Gladion (chose Litten), Elite Four Hala 3: Lucario Lv. 52
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 3, 448, 44800, 52),
  -- Gladion (chose Litten), Elite Four Hala 4: Silvally (Water) Lv. 53
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 4, 773, 77310, 53),
  -- Gladion (chose Popplio), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 169, 16900, 52),
  -- Gladion (chose Popplio), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 461, 46100, 52),
  -- Gladion (chose Popplio), Elite Four Hala 3: Lucario Lv. 52
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 448, 44800, 52),
  -- Gladion (chose Popplio), Elite Four Hala 4: Silvally (Grass) Lv. 53
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 773, 77311, 53),
  -- Hau (chose Rowlet), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 26, 2601, 53),
  -- Hau (chose Rowlet), Elite Four Hala 2: Flareon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 136, 13600, 53),
  -- Hau (chose Rowlet), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 775, 77500, 53),
  -- Hau (chose Rowlet), Elite Four Hala 4: Primarina Lv. 54
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 730, 73000, 54),
  -- Hau (chose Litten), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 26, 2601, 53),
  -- Hau (chose Litten), Elite Four Hala 2: Vaporeon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 134, 13400, 53),
  -- Hau (chose Litten), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 3, 775, 77500, 53),
  -- Hau (chose Litten), Elite Four Hala 4: Decidueye Lv. 54
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 4, 724, 72400, 54),
  -- Hau (chose Popplio), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 26, 2601, 53),
  -- Hau (chose Popplio), Elite Four Hala 2: Leafeon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 470, 47000, 53),
  -- Hau (chose Popplio), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 775, 77500, 53),
  -- Hau (chose Popplio), Elite Four Hala 4: Incineroar Lv. 54
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 727, 72700, 54),
  -- Nihilego, Sophocles Trial 1: Nihilego Lv. 27
  (150009, 15021, 15, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 27),
  -- Solgaleo, Ultra Space 1: Solgaleo Lv. 55
  (150022, 15022, 15, NULL, NULL, NULL, NULL, NULL, 1, 791, 79100, 55),
  -- Lunala, Ultra Space 1: Lunala Lv. 55
  (150022, 15023, 15, NULL, NULL, NULL, NULL, NULL, 1, 792, 79200, 55),
  -- Tapu Koko, Hall of Fame 1: Tapu Koko Lv. 60
  (150019, 15024, 15, NULL, NULL, NULL, NULL, NULL, 1, 785, 78500, 60),
  -- Nihilego, Ultra Beast Missions 1: Nihilego Lv. 55
  (150020, 15021, 15, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 55),
  -- Buzzwole, Ultra Beast Missions 1: Buzzwole Lv. 65
  (150020, 15025, 15, NULL, NULL, NULL, NULL, NULL, 1, 794, 79400, 65),
  -- Pheromosa, Ultra Beast Missions 1: Pheromosa Lv. 60
  (150020, 15026, 15, NULL, NULL, NULL, NULL, NULL, 1, 795, 79500, 60),
  -- Xurkitree, Ultra Beast Missions 1: Xurkitree Lv. 65
  (150020, 15027, 15, NULL, NULL, NULL, NULL, NULL, 1, 796, 79600, 65),
  -- Kartana, Ultra Beast Missions 1: Kartana Lv. 60
  (150020, 15028, 15, NULL, NULL, NULL, NULL, NULL, 1, 798, 79800, 60),
  -- Celesteela, Ultra Beast Missions 1: Celesteela Lv. 65
  (150020, 15029, 15, NULL, NULL, NULL, NULL, NULL, 1, 797, 79700, 65),
  -- Guzzlord, Ultra Beast Missions 1: Guzzlord Lv. 70
  (150020, 15030, 15, NULL, NULL, NULL, NULL, NULL, 1, 799, 79900, 70),
  -- Tapu Lele, Ruins of Life 1: Tapu Lele Lv. 60
  (150023, 15031, 15, NULL, NULL, NULL, NULL, NULL, 1, 786, 78600, 60),
  -- Tapu Bulu, Ruins of Abundance 1: Tapu Bulu Lv. 60
  (150024, 15032, 15, NULL, NULL, NULL, NULL, NULL, 1, 787, 78700, 60),
  -- Tapu Fini, Ruins of Hope 1: Tapu Fini Lv. 60
  (150025, 15033, 15, NULL, NULL, NULL, NULL, NULL, 1, 788, 78800, 60),
  -- Necrozma, Ten Carat Hill 1: Necrozma Lv. 75
  (150026, 15034, 15, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 75);
