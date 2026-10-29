-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sun / Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hau, Gladion, Guzma and Lusamine battles: Bulbapedia, cross-checked with Serebii and Pokébip.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Totem trials: cross-checked with Bulbapedia trial pages; allies follow the order the totem calls them.
-- Totem allies follow Bulbapedia where Serebii differs: Ilima's ally is Lv. 10 and Totem Vikavolt calls two Charjabug Lv. 28 (#115 audit).
-- Ilima's own battle, Molayne, Plumeria, Faba and the Masked Royal's Rockruff: Bulbapedia, cross-checked with Serebii.
-- Battle forms: Totem Wishiwashi is Lv. 20, so Schooling puts it in its School Form.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Totems and their allies: Bulbapedia trial pages; each totem holds one item, its allies hold nothing.
-- Wild Pokémon here hold nothing in their game data.
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Ilima [rowlet] 1: Yungoos Lv. 9
  (150003, 15001, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 734, 73400, 9, NULL, NULL, FALSE),
  -- Ilima [rowlet] 2: Smeargle Lv. 10
  (150003, 15001, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 235, 23500, 10, NULL, NULL, FALSE),
  -- Ilima [litten] 1: Yungoos Lv. 9
  (150003, 15001, 15, NULL, 150001, 'litten', NULL, NULL, 1, 734, 73400, 9, NULL, NULL, FALSE),
  -- Ilima [litten] 2: Smeargle Lv. 10
  (150003, 15001, 15, NULL, 150001, 'litten', NULL, NULL, 2, 235, 23500, 10, NULL, NULL, FALSE),
  -- Ilima [popplio] 1: Yungoos Lv. 9
  (150003, 15001, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 734, 73400, 9, NULL, NULL, FALSE),
  -- Ilima [popplio] 2: Smeargle Lv. 10
  (150003, 15001, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 235, 23500, 10, NULL, NULL, FALSE),
  -- Totem Gumshoos (Sun) 1: Gumshoos Lv. 12, holds Pecha Berry
  (150003, 15036, 15, NULL, NULL, NULL, NULL, NULL, 1, 735, 73500, 12, 180, NULL, FALSE),
  -- Totem Gumshoos (Sun) 2: Yungoos Lv. 10
  (150003, 15036, 15, NULL, NULL, NULL, NULL, NULL, 2, 734, 73400, 10, NULL, NULL, FALSE),
  -- Totem Raticate (Moon) 1: Alolan Raticate Lv. 12, holds Pecha Berry
  (150003, 15037, 15, NULL, NULL, NULL, NULL, NULL, 1, 20, 2001, 12, 180, NULL, FALSE),
  -- Totem Raticate (Moon) 2: Alolan Rattata Lv. 10
  (150003, 15037, 15, NULL, NULL, NULL, NULL, NULL, 2, 19, 1901, 10, NULL, NULL, FALSE),
  -- Hala 1: Mankey Lv. 14
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 1, 56, 5600, 14, NULL, NULL, FALSE),
  -- Hala 2: Makuhita Lv. 14
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 14, NULL, NULL, FALSE),
  -- Hala 3: Crabrawler Lv. 15, holds Fightinium Z
  (150004, 15002, 15, NULL, NULL, NULL, NULL, NULL, 3, 739, 73900, 15, 28, NULL, FALSE),
  -- Totem Wishiwashi 1: Wishiwashi (School Form) Lv. 20, holds Sitrus Berry
  (150005, 15038, 15, NULL, NULL, NULL, NULL, NULL, 1, 746, 74601, 20, 187, NULL, FALSE),
  -- Totem Wishiwashi 2: Wishiwashi Lv. 18
  (150005, 15038, 15, NULL, NULL, NULL, NULL, NULL, 2, 746, 74600, 18, NULL, NULL, FALSE),
  -- Totem Wishiwashi 3: Alomomola Lv. 18
  (150005, 15038, 15, NULL, NULL, NULL, NULL, NULL, 3, 594, 59400, 18, NULL, NULL, FALSE),
  -- Totem Salazzle 1: Salazzle Lv. 22, holds Petaya Berry
  (150006, 15039, 15, NULL, NULL, NULL, NULL, NULL, 1, 758, 75800, 22, 233, NULL, FALSE),
  -- Totem Salazzle 2: Salandit Lv. 20
  (150006, 15039, 15, NULL, NULL, NULL, NULL, NULL, 2, 757, 75700, 20, NULL, NULL, FALSE),
  -- Totem Lurantis 1: Lurantis Lv. 24, holds Power Herb
  (150007, 15040, 15, NULL, NULL, NULL, NULL, NULL, 1, 754, 75400, 24, 413, NULL, FALSE),
  -- Totem Lurantis 2: Trumbeak Lv. 22
  (150007, 15040, 15, NULL, NULL, NULL, NULL, NULL, 2, 732, 73200, 22, NULL, NULL, FALSE),
  -- Totem Lurantis 3: Castform Lv. 22
  (150007, 15040, 15, NULL, NULL, NULL, NULL, NULL, 3, 351, 35100, 22, NULL, NULL, FALSE),
  -- Plumeria (Akala Outskirts) 1: Golbat Lv. 25
  (150008, 15044, 15, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 25, NULL, NULL, FALSE),
  -- Plumeria (Akala Outskirts) 2: Salandit Lv. 26
  (150008, 15044, 15, NULL, NULL, NULL, NULL, NULL, 2, 757, 75700, 26, NULL, NULL, FALSE),
  -- Olivia 1: Nosepass Lv. 26
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 1, 299, 29900, 26, NULL, NULL, FALSE),
  -- Olivia 2: Boldore Lv. 26
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 2, 525, 52500, 26, NULL, NULL, FALSE),
  -- Olivia 3: Lycanroc (Midnight) Lv. 27, holds Rockium Z
  (150008, 15006, 15, NULL, NULL, NULL, NULL, NULL, 3, 745, 74501, 27, 34, NULL, FALSE),
  -- Molayne 1: Skarmory Lv. 29
  (150009, 15045, 15, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 29, NULL, NULL, FALSE),
  -- Molayne 2: Metang Lv. 29
  (150009, 15045, 15, NULL, NULL, NULL, NULL, NULL, 2, 375, 37500, 29, NULL, NULL, FALSE),
  -- Molayne 3: Alolan Dugtrio Lv. 30
  (150009, 15045, 15, NULL, NULL, NULL, NULL, NULL, 3, 51, 5101, 30, NULL, NULL, FALSE),
  -- Totem Vikavolt 1: Vikavolt Lv. 29, holds Occa Berry
  (150009, 15041, 15, NULL, NULL, NULL, NULL, NULL, 1, 738, 73800, 29, 213, NULL, FALSE),
  -- Totem Vikavolt 2: Charjabug Lv. 28
  (150009, 15041, 15, NULL, NULL, NULL, NULL, NULL, 2, 737, 73700, 28, NULL, NULL, FALSE),
  -- Totem Vikavolt 3: Charjabug Lv. 28
  (150009, 15041, 15, NULL, NULL, NULL, NULL, NULL, 3, 737, 73700, 28, NULL, NULL, FALSE),
  -- Totem Mimikyu 1: Mimikyu Lv. 33, holds Lum Berry
  (150010, 15042, 15, NULL, NULL, NULL, NULL, NULL, 1, 778, 77800, 33, 186, NULL, FALSE),
  -- Totem Mimikyu 2: Haunter Lv. 27
  (150010, 15042, 15, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 27, NULL, NULL, FALSE),
  -- Totem Mimikyu 3: Gengar Lv. 27
  (150010, 15042, 15, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 27, NULL, NULL, FALSE),
  -- Plumeria (Route 15) 1: Golbat Lv. 34
  (150011, 15044, 15, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 34, NULL, NULL, FALSE),
  -- Plumeria (Route 15) 2: Salazzle Lv. 35
  (150011, 15044, 15, NULL, NULL, NULL, NULL, NULL, 2, 758, 75800, 35, NULL, NULL, FALSE),
  -- Nanu 1: Sableye Lv. 38
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 38, NULL, NULL, FALSE),
  -- Nanu 2: Krokorok Lv. 38
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 2, 552, 55200, 38, NULL, NULL, FALSE),
  -- Nanu 3: Alolan Persian Lv. 39, holds Darkinium Z
  (150011, 15009, 15, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 39, 37, NULL, FALSE),
  -- Totem Kommo-o 1: Kommo-o Lv. 45, holds Mental Herb
  (150012, 15035, 15, NULL, NULL, NULL, NULL, NULL, 1, 784, 78400, 45, 408, NULL, FALSE),
  -- Totem Kommo-o 2: Hakamo-o Lv. 32
  (150012, 15035, 15, NULL, NULL, NULL, NULL, NULL, 2, 783, 78300, 32, NULL, NULL, FALSE),
  -- Totem Kommo-o 3: Scizor Lv. 32
  (150012, 15035, 15, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 32, NULL, NULL, FALSE),
  -- Hapu 1: Alolan Dugtrio Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 1, 51, 5101, 47, NULL, NULL, FALSE),
  -- Hapu 2: Gastrodon (East Sea) Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 2, 423, 42301, 47, NULL, NULL, FALSE),
  -- Hapu 3: Flygon Lv. 47
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 47, NULL, NULL, FALSE),
  -- Hapu 4: Mudsdale Lv. 48, holds Groundium Z
  (150013, 15010, 15, NULL, NULL, NULL, NULL, NULL, 4, 750, 75000, 48, 30, NULL, FALSE),
  -- Hala 1: Hariyama Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 1, 297, 29700, 54, NULL, NULL, FALSE),
  -- Hala 2: Primeape Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 2, 57, 5700, 54, NULL, NULL, FALSE),
  -- Hala 3: Bewear Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 3, 760, 76000, 54, NULL, NULL, FALSE),
  -- Hala 4: Poliwrath Lv. 54
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 4, 62, 6200, 54, NULL, NULL, FALSE),
  -- Hala 5: Crabominable Lv. 55, holds Fightinium Z
  (150014, 15011, 15, NULL, NULL, NULL, NULL, NULL, 5, 740, 74000, 55, 28, NULL, FALSE),
  -- Olivia 1: Relicanth Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 1, 369, 36900, 54, NULL, NULL, FALSE),
  -- Olivia 2: Carbink Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 2, 703, 70300, 54, NULL, NULL, FALSE),
  -- Olivia 3: Alolan Golem Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 3, 76, 7601, 54, NULL, NULL, FALSE),
  -- Olivia 4: Probopass Lv. 54
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 4, 476, 47600, 54, NULL, NULL, FALSE),
  -- Olivia 5: Lycanroc (Midnight) Lv. 55, holds Rockium Z
  (150015, 15012, 15, NULL, NULL, NULL, NULL, NULL, 5, 745, 74501, 55, 34, NULL, FALSE),
  -- Acerola 1: Sableye Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 54, NULL, NULL, FALSE),
  -- Acerola 2: Drifblim Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 54, NULL, NULL, FALSE),
  -- Acerola 3: Dhelmise Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 3, 781, 78100, 54, NULL, NULL, FALSE),
  -- Acerola 4: Froslass Lv. 54
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 54, NULL, NULL, FALSE),
  -- Acerola 5: Palossand Lv. 55, holds Ghostium Z
  (150016, 15013, 15, NULL, NULL, NULL, NULL, NULL, 5, 770, 77000, 55, 35, NULL, FALSE),
  -- Kahili 1: Skarmory Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 54, NULL, NULL, FALSE),
  -- Kahili 2: Crobat Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 54, NULL, NULL, FALSE),
  -- Kahili 3: Oricorio Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 3, 741, 74100, 54, NULL, NULL, FALSE),
  -- Kahili 4: Mandibuzz Lv. 54
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 4, 630, 63000, 54, NULL, NULL, FALSE),
  -- Kahili 5: Toucannon Lv. 55, holds Flyinium Z
  (150017, 15014, 15, NULL, NULL, NULL, NULL, NULL, 5, 733, 73300, 55, 31, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 745, 74500, 57, NULL, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 38, 3801, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 628, 62800, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 462, 46200, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 5, 143, 14300, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Rowlet) 6: Incineroar Lv. 58, holds Firium Z
  (150018, 15015, 15, NULL, 150001, 'rowlet', NULL, NULL, 6, 727, 72700, 58, 23, NULL, FALSE),
  -- Professor Kukui (chose Litten) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 1, 745, 74500, 57, NULL, NULL, FALSE),
  -- Professor Kukui (chose Litten) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 2, 38, 3801, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Litten) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 3, 628, 62800, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Litten) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 4, 462, 46200, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Litten) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 5, 143, 14300, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Litten) 6: Primarina Lv. 58, holds Waterium Z
  (150018, 15015, 15, NULL, 150001, 'litten', NULL, NULL, 6, 730, 73000, 58, 24, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 1: Lycanroc Lv. 57
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 745, 74500, 57, NULL, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 2: Alolan Ninetales Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 38, 3801, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 3: Braviary Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 628, 62800, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 4: Magnezone Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 462, 46200, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 5: Snorlax Lv. 56
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 5, 143, 14300, 56, NULL, NULL, FALSE),
  -- Professor Kukui (chose Popplio) 6: Decidueye Lv. 58, holds Grassium Z
  (150018, 15015, 15, NULL, 150001, 'popplio', NULL, NULL, 6, 724, 72400, 58, 26, NULL, FALSE),
  -- Hau (chose Rowlet), Choose Starter 1: Popplio Lv. 5
  (150001, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 728, 72800, 5, NULL, NULL, FALSE),
  -- Hau (chose Litten), Choose Starter 1: Rowlet Lv. 5
  (150001, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 722, 72200, 5, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Choose Starter 1: Litten Lv. 5
  (150001, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 725, 72500, 5, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Receive Pokedex 2: Popplio Lv. 7
  (150002, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 728, 72800, 7, NULL, NULL, FALSE),
  -- Hau (chose Litten), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Litten), Receive Pokedex 2: Rowlet Lv. 7
  (150002, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 722, 72200, 7, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Receive Pokedex 1: Pichu Lv. 6
  (150002, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Receive Pokedex 2: Litten Lv. 7
  (150002, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 725, 72500, 7, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 25, 2500, 13, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Grand Trial Hala 2: Popplio Lv. 14
  (150004, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 728, 72800, 14, NULL, NULL, FALSE),
  -- Hau (chose Litten), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 25, 2500, 13, NULL, NULL, FALSE),
  -- Hau (chose Litten), Grand Trial Hala 2: Rowlet Lv. 14
  (150004, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 722, 72200, 14, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Grand Trial Hala 1: Pikachu Lv. 13
  (150004, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 25, 2500, 13, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Grand Trial Hala 2: Litten Lv. 14
  (150004, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 725, 72500, 14, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 25, 2500, 16, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 2: Brionne Lv. 17, holds Normalium Z
  (150005, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 729, 72900, 17, 245, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 25, 2500, 16, NULL, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 2: Dartrix Lv. 17, holds Normalium Z
  (150005, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 723, 72300, 17, 245, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 1: Pikachu Lv. 16
  (150005, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 25, 2500, 16, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 2: Torracat Lv. 17, holds Normalium Z
  (150005, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 726, 72600, 17, 245, NULL, FALSE),
  -- Gladion, Lana Trial 1: Zubat Lv. 17
  (150005, 15017, 15, NULL, NULL, NULL, NULL, NULL, 1, 41, 4100, 17, NULL, NULL, FALSE),
  -- Gladion, Lana Trial 2: Type: Null Lv. 18
  (150005, 15017, 15, NULL, NULL, NULL, NULL, NULL, 2, 772, 77200, 18, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Rowlet), Kiawe Trial 1: Brionne Lv. 19, holds Normalium Z
  (150006, 15018, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 729, 72900, 19, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Rowlet), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 772, 77200, 19, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [rowlet] 3: Rockruff Lv. 19
  (150006, 15018, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 744, 74400, 19, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Litten), Kiawe Trial 1: Dartrix Lv. 19, holds Normalium Z
  (150006, 15018, 15, NULL, 150001, 'litten', NULL, NULL, 1, 723, 72300, 19, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Litten), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'litten', NULL, NULL, 2, 772, 77200, 19, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [litten] 3: Rockruff Lv. 19
  (150006, 15018, 15, NULL, 150001, 'litten', NULL, NULL, 3, 744, 74400, 19, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Popplio), Kiawe Trial 1: Torracat Lv. 19, holds Normalium Z
  (150006, 15018, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 726, 72600, 19, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Popplio), Kiawe Trial 2: Type: Null Lv. 19
  (150006, 15018, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 772, 77200, 19, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [popplio] 3: Rockruff Lv. 19
  (150006, 15018, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 744, 74400, 19, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 26, 2601, 28, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 2: Flareon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 136, 13600, 28, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 3: Brionne Lv. 29, holds Waterium Z
  (150009, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 729, 72900, 29, 24, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 26, 2601, 28, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 2: Vaporeon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 134, 13400, 28, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 3: Dartrix Lv. 29, holds Grassium Z
  (150009, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 3, 723, 72300, 29, 26, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 1: Alolan Raichu Lv. 28
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 26, 2601, 28, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 2: Leafeon Lv. 28
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 470, 47000, 28, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 3: Torracat Lv. 29, holds Firium Z
  (150009, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 726, 72600, 29, 23, NULL, FALSE),
  -- Guzma, Sophocles Trial 1: Golisopod Lv. 31
  (150009, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 31, NULL, NULL, FALSE),
  -- Guzma, Sophocles Trial 2: Ariados Lv. 30
  (150009, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 30, NULL, NULL, FALSE),
  -- Guzma, Grand Trial Nanu 1: Golisopod Lv. 37
  (150011, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 37, NULL, NULL, FALSE),
  -- Guzma, Grand Trial Nanu 2: Ariados Lv. 36
  (150011, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 36, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 1: Golbat Lv. 37
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 37, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 2: Sneasel Lv. 37
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 37, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 3: Type: Null Lv. 38
  (150011, 15017, 15, NULL, NULL, NULL, NULL, NULL, 3, 772, 77200, 38, NULL, NULL, FALSE),
  -- Faba (entrance) 1: Hypno Lv. 39
  (150021, 15043, 15, NULL, NULL, NULL, NULL, NULL, 1, 97, 9700, 39, NULL, NULL, FALSE),
  -- Faba (labs) 1: Slowbro Lv. 39
  (150021, 15046, 15, NULL, NULL, NULL, NULL, NULL, 1, 80, 8000, 39, NULL, NULL, FALSE),
  -- Faba (labs) 2: Bruxish Lv. 39
  (150021, 15046, 15, NULL, NULL, NULL, NULL, NULL, 2, 779, 77900, 39, NULL, NULL, FALSE),
  -- Faba (labs) 3: Hypno Lv. 40
  (150021, 15046, 15, NULL, NULL, NULL, NULL, NULL, 3, 97, 9700, 40, NULL, NULL, FALSE),
  -- Faba (labs) 4: Ledian Lv. 38
  (150021, 15046, 15, NULL, NULL, NULL, NULL, NULL, 4, 166, 16600, 38, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 1: Golisopod Lv. 41
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 41, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 2: Ariados Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 2, 168, 16800, 40, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 3: Masquerain Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 3, 284, 28400, 40, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 4: Pinsir Lv. 40
  (150021, 15019, 15, NULL, NULL, NULL, NULL, NULL, 4, 127, 12700, 40, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 1: Clefable Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 41, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 2: Lilligant Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 41, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 3: Mismagius Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 41, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 4: Milotic Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 41, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 5: Bewear Lv. 41
  (150021, 15020, 15, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 41, NULL, NULL, FALSE),
  -- Lusamine, Ultra Space 1: Clefable Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 50, NULL, NULL, FALSE),
  -- Lusamine, Ultra Space 2: Lilligant Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 50, NULL, NULL, FALSE),
  -- Lusamine, Ultra Space 3: Mismagius Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 50, NULL, NULL, FALSE),
  -- Lusamine, Ultra Space 4: Milotic Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 50, NULL, NULL, FALSE),
  -- Lusamine, Ultra Space 5: Bewear Lv. 50
  (150022, 15020, 15, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 50, NULL, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 169, 16900, 52, NULL, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 461, 46100, 52, NULL, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Hala 3: Lucario Lv. 52, holds Steelium Z
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 448, 44800, 52, 38, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Hala 4: Silvally (Fire) Lv. 53, holds Fire Memory
  (150014, 15017, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 773, 77309, 53, 40, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 1, 169, 16900, 52, NULL, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 2, 461, 46100, 52, NULL, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Hala 3: Lucario Lv. 52, holds Steelium Z
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 3, 448, 44800, 52, 38, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Hala 4: Silvally (Water) Lv. 53, holds Water Memory
  (150014, 15017, 15, NULL, 150001, 'litten', NULL, NULL, 4, 773, 77310, 53, 41, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Hala 1: Crobat Lv. 52
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 169, 16900, 52, NULL, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Hala 2: Weavile Lv. 52
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 461, 46100, 52, NULL, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Hala 3: Lucario Lv. 52, holds Steelium Z
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 448, 44800, 52, 38, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Hala 4: Silvally (Grass) Lv. 53, holds Grass Memory
  (150014, 15017, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 773, 77311, 53, 43, NULL, FALSE),
  -- Hau (chose Rowlet), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 1, 26, 2601, 53, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Elite Four Hala 2: Flareon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 2, 136, 13600, 53, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 3, 775, 77500, 53, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Elite Four Hala 4: Primarina Lv. 54, holds Waterium Z
  (150014, 15016, 15, NULL, 150001, 'rowlet', NULL, NULL, 4, 730, 73000, 54, 24, NULL, FALSE),
  -- Hau (chose Litten), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 1, 26, 2601, 53, NULL, NULL, FALSE),
  -- Hau (chose Litten), Elite Four Hala 2: Vaporeon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 2, 134, 13400, 53, NULL, NULL, FALSE),
  -- Hau (chose Litten), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 3, 775, 77500, 53, NULL, NULL, FALSE),
  -- Hau (chose Litten), Elite Four Hala 4: Decidueye Lv. 54, holds Grassium Z
  (150014, 15016, 15, NULL, 150001, 'litten', NULL, NULL, 4, 724, 72400, 54, 26, NULL, FALSE),
  -- Hau (chose Popplio), Elite Four Hala 1: Alolan Raichu Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 1, 26, 2601, 53, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Elite Four Hala 2: Leafeon Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 2, 470, 47000, 53, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Elite Four Hala 3: Komala Lv. 53
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 3, 775, 77500, 53, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Elite Four Hala 4: Incineroar Lv. 54, holds Firium Z
  (150014, 15016, 15, NULL, 150001, 'popplio', NULL, NULL, 4, 727, 72700, 54, 23, NULL, FALSE),
  -- Nihilego, Sophocles Trial 1: Nihilego Lv. 27
  (150009, 15021, 15, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 27, NULL, NULL, FALSE),
  -- Solgaleo, Ultra Space 1: Solgaleo Lv. 55
  (150022, 15022, 15, NULL, NULL, NULL, NULL, NULL, 1, 791, 79100, 55, NULL, NULL, FALSE),
  -- Lunala, Ultra Space 1: Lunala Lv. 55
  (150022, 15023, 15, NULL, NULL, NULL, NULL, NULL, 1, 792, 79200, 55, NULL, NULL, FALSE),
  -- Tapu Koko, Hall of Fame 1: Tapu Koko Lv. 60
  (150019, 15024, 15, NULL, NULL, NULL, NULL, NULL, 1, 785, 78500, 60, NULL, NULL, FALSE),
  -- Nihilego, Ultra Beast Missions 1: Nihilego Lv. 55
  (150020, 15021, 15, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 55, NULL, NULL, FALSE),
  -- Buzzwole, Ultra Beast Missions 1: Buzzwole Lv. 65
  (150020, 15025, 15, NULL, NULL, NULL, NULL, NULL, 1, 794, 79400, 65, NULL, NULL, FALSE),
  -- Pheromosa, Ultra Beast Missions 1: Pheromosa Lv. 60
  (150020, 15026, 15, NULL, NULL, NULL, NULL, NULL, 1, 795, 79500, 60, NULL, NULL, FALSE),
  -- Xurkitree, Ultra Beast Missions 1: Xurkitree Lv. 65
  (150020, 15027, 15, NULL, NULL, NULL, NULL, NULL, 1, 796, 79600, 65, NULL, NULL, FALSE),
  -- Kartana, Ultra Beast Missions 1: Kartana Lv. 60
  (150020, 15028, 15, NULL, NULL, NULL, NULL, NULL, 1, 798, 79800, 60, NULL, NULL, FALSE),
  -- Celesteela, Ultra Beast Missions 1: Celesteela Lv. 65
  (150020, 15029, 15, NULL, NULL, NULL, NULL, NULL, 1, 797, 79700, 65, NULL, NULL, FALSE),
  -- Guzzlord, Ultra Beast Missions 1: Guzzlord Lv. 70
  (150020, 15030, 15, NULL, NULL, NULL, NULL, NULL, 1, 799, 79900, 70, NULL, NULL, FALSE),
  -- Tapu Lele, Ruins of Life 1: Tapu Lele Lv. 60
  (150023, 15031, 15, NULL, NULL, NULL, NULL, NULL, 1, 786, 78600, 60, NULL, NULL, FALSE),
  -- Tapu Bulu, Ruins of Abundance 1: Tapu Bulu Lv. 60
  (150024, 15032, 15, NULL, NULL, NULL, NULL, NULL, 1, 787, 78700, 60, NULL, NULL, FALSE),
  -- Tapu Fini, Ruins of Hope 1: Tapu Fini Lv. 60
  (150025, 15033, 15, NULL, NULL, NULL, NULL, NULL, 1, 788, 78800, 60, NULL, NULL, FALSE),
  -- Necrozma, Ten Carat Hill 1: Necrozma Lv. 75
  (150026, 15034, 15, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 75, NULL, NULL, FALSE);
