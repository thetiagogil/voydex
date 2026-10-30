-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Ultra Sun / Ultra Moon Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hau, Gladion, Guzma and Lusamine battles: Bulbapedia, cross-checked with Serebii and Pokébip.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Totem trials, Ultra Necrozma and Giovanni: cross-checked with Bulbapedia; totem allies follow the order the totem calls them.
-- Ilima's bonus trial and Totem Kommo-o: Bulbapedia, cross-checked with Serebii.
-- Totem allies follow Bulbapedia where Serebii differs: Ilima's ally is Lv. 10 (#115 audit).
-- Ilima's own battle, Plumeria, Faba, the Ultra Recon Squad, Mina's trial captains, the Masked Royal's Rockruff and the Rainbow Rocket bosses: Bulbapedia, cross-checked with Serebii.
-- Lysandre's Gyarados Mega Evolves, so it is stored as Mega Gyarados.
-- Battle forms: the Megalo Tower battle is against Ultra Necrozma itself.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Totems and their allies: Bulbapedia trial pages; each totem holds one item, its allies hold nothing.
-- Wild Pokémon here hold nothing in their game data.
-- Dulse and Soliera's first two battles (Seaward Cave, Paniola Ranch): Bulbapedia's
-- trainer pages, with Serebii as the second reading.
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Ilima [rowlet] 1: Yungoos Lv. 10
  (160003, 16001, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 734, 73400, 10, NULL, NULL, FALSE),
  -- Ilima [rowlet] 2: Smeargle Lv. 11
  (160003, 16001, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 235, 23500, 11, NULL, NULL, FALSE),
  -- Ilima [litten] 1: Yungoos Lv. 10
  (160003, 16001, 16, NULL, 160001, 'litten', NULL, NULL, 1, 734, 73400, 10, NULL, NULL, FALSE),
  -- Ilima [litten] 2: Smeargle Lv. 11
  (160003, 16001, 16, NULL, 160001, 'litten', NULL, NULL, 2, 235, 23500, 11, NULL, NULL, FALSE),
  -- Ilima [popplio] 1: Yungoos Lv. 10
  (160003, 16001, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 734, 73400, 10, NULL, NULL, FALSE),
  -- Ilima [popplio] 2: Smeargle Lv. 11
  (160003, 16001, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 235, 23500, 11, NULL, NULL, FALSE),
  -- Totem Gumshoos (Ultra Sun) 1: Gumshoos Lv. 12, holds Pecha Berry
  (160003, 16038, 16, NULL, NULL, NULL, NULL, NULL, 1, 735, 73500, 12, 180, NULL, FALSE),
  -- Totem Gumshoos (Ultra Sun) 2: Yungoos Lv. 10
  (160003, 16038, 16, NULL, NULL, NULL, NULL, NULL, 2, 734, 73400, 10, NULL, NULL, FALSE),
  -- Totem Raticate (Ultra Moon) 1: Alolan Raticate Lv. 12, holds Pecha Berry
  (160003, 16039, 16, NULL, NULL, NULL, NULL, NULL, 1, 20, 2001, 12, 180, NULL, FALSE),
  -- Totem Raticate (Ultra Moon) 2: Alolan Rattata Lv. 10
  (160003, 16039, 16, NULL, NULL, NULL, NULL, NULL, 2, 19, 1901, 10, NULL, NULL, FALSE),
  -- Hala 1: Machop Lv. 15
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 15, NULL, NULL, FALSE),
  -- Hala 2: Makuhita Lv. 15
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 15, NULL, NULL, FALSE),
  -- Hala 3: Crabrawler Lv. 16, holds Fightinium Z
  (160004, 16002, 16, NULL, NULL, NULL, NULL, NULL, 3, 739, 73900, 16, 28, NULL, FALSE),
  -- Totem Araquanid 1: Araquanid Lv. 20, holds Wacan Berry
  (160005, 16040, 16, NULL, NULL, NULL, NULL, NULL, 1, 752, 75200, 20, 215, NULL, FALSE),
  -- Totem Araquanid 2: Dewpider Lv. 18
  (160005, 16040, 16, NULL, NULL, NULL, NULL, NULL, 2, 751, 75100, 18, NULL, NULL, FALSE),
  -- Totem Araquanid 3: Masquerain Lv. 18
  (160005, 16040, 16, NULL, NULL, NULL, NULL, NULL, 3, 284, 28400, 18, NULL, NULL, FALSE),
  -- Totem Marowak 1: Alolan Marowak Lv. 22, holds Thick Club
  (160006, 16041, 16, NULL, NULL, NULL, NULL, NULL, 1, 105, 10501, 22, 368, NULL, FALSE),
  -- Totem Marowak 2: Salazzle Lv. 20
  (160006, 16041, 16, NULL, NULL, NULL, NULL, NULL, 2, 758, 75800, 20, NULL, NULL, FALSE),
  -- Totem Lurantis 1: Lurantis Lv. 24, holds Power Herb
  (160007, 16042, 16, NULL, NULL, NULL, NULL, NULL, 1, 754, 75400, 24, 413, NULL, FALSE),
  -- Totem Lurantis 2: Kecleon Lv. 22
  (160007, 16042, 16, NULL, NULL, NULL, NULL, NULL, 2, 352, 35200, 22, NULL, NULL, FALSE),
  -- Totem Lurantis 3: Comfey Lv. 22
  (160007, 16042, 16, NULL, NULL, NULL, NULL, NULL, 3, 764, 76400, 22, NULL, NULL, FALSE),
  -- Plumeria (Akala Outskirts) 1: Golbat Lv. 26
  (160008, 16049, 16, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 26, NULL, NULL, FALSE),
  -- Plumeria (Akala Outskirts) 2: Salandit Lv. 27
  (160008, 16049, 16, NULL, NULL, NULL, NULL, NULL, 2, 757, 75700, 27, NULL, NULL, FALSE),
  -- Olivia 1: Anorith Lv. 27
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 1, 347, 34700, 27, NULL, NULL, FALSE),
  -- Olivia 2: Lileep Lv. 27
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 2, 345, 34500, 27, NULL, NULL, FALSE),
  -- Olivia 3: Lycanroc (Midnight) Lv. 28, holds Rockium Z
  (160008, 16006, 16, NULL, NULL, NULL, NULL, NULL, 3, 745, 74501, 28, 34, NULL, FALSE),
  -- Totem Togedemaru 1: Togedemaru Lv. 33, holds Sitrus Berry
  (160009, 16043, 16, NULL, NULL, NULL, NULL, NULL, 1, 777, 77700, 33, 187, NULL, FALSE),
  -- Totem Togedemaru 2: Skarmory Lv. 32
  (160009, 16043, 16, NULL, NULL, NULL, NULL, NULL, 2, 227, 22700, 32, NULL, NULL, FALSE),
  -- Totem Togedemaru 3: Dedenne Lv. 31
  (160009, 16043, 16, NULL, NULL, NULL, NULL, NULL, 3, 702, 70200, 31, NULL, NULL, FALSE),
  -- Totem Mimikyu 1: Mimikyu Lv. 35, holds Lum Berry
  (160010, 16044, 16, NULL, NULL, NULL, NULL, NULL, 1, 778, 77800, 35, 186, NULL, FALSE),
  -- Totem Mimikyu 2: Banette Lv. 32
  (160010, 16044, 16, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 32, NULL, NULL, FALSE),
  -- Totem Mimikyu 3: Jellicent Lv. 33
  (160010, 16044, 16, NULL, NULL, NULL, NULL, NULL, 3, 593, 59300, 33, NULL, NULL, FALSE),
  -- Plumeria (Route 15) 1: Golbat Lv. 37
  (160011, 16049, 16, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 37, NULL, NULL, FALSE),
  -- Plumeria (Route 15) 2: Salazzle Lv. 38
  (160011, 16049, 16, NULL, NULL, NULL, NULL, NULL, 2, 758, 75800, 38, NULL, NULL, FALSE),
  -- Nanu 1: Sableye Lv. 43
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 43, NULL, NULL, FALSE),
  -- Nanu 2: Krokorok Lv. 43
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 2, 552, 55200, 43, NULL, NULL, FALSE),
  -- Nanu 3: Alolan Persian Lv. 44, holds Darkinium Z
  (160011, 16009, 16, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 44, 37, NULL, FALSE),
  -- Mina 1: Mawile Lv. 51
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 51, NULL, NULL, FALSE),
  -- Mina 2: Granbull Lv. 51
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 2, 210, 21000, 51, NULL, NULL, FALSE),
  -- Mina 3: Ribombee Lv. 51, holds Fairium Z
  (160012, 16010, 16, NULL, NULL, NULL, NULL, NULL, 3, 743, 74300, 51, 39, NULL, FALSE),
  -- Ilima (Mina's trial) 1: Gumshoos Lv. 51
  (160012, 16001, 16, NULL, NULL, NULL, NULL, NULL, 1, 735, 73500, 51, NULL, NULL, FALSE),
  -- Ilima (Mina's trial) 2: Smeargle Lv. 51
  (160012, 16001, 16, NULL, NULL, NULL, NULL, NULL, 2, 235, 23500, 51, NULL, NULL, FALSE),
  -- Ilima (Mina's trial) 3: Komala Lv. 51, holds Normalium Z
  (160012, 16001, 16, NULL, NULL, NULL, NULL, NULL, 3, 775, 77500, 51, 245, NULL, FALSE),
  -- Mallow (Mina's trial, Ultra Sun) 1: Trevenant Lv. 51
  (160012, 16005, 16, NULL, NULL, NULL, NULL, NULL, 1, 709, 70900, 51, NULL, NULL, FALSE),
  -- Mallow (Mina's trial, Ultra Sun) 2: Shiinotic Lv. 51
  (160012, 16005, 16, NULL, NULL, NULL, NULL, NULL, 2, 756, 75600, 51, NULL, NULL, FALSE),
  -- Mallow (Mina's trial, Ultra Sun) 3: Tsareena Lv. 51, holds Grassium Z
  (160012, 16005, 16, NULL, NULL, NULL, NULL, NULL, 3, 763, 76300, 51, 26, NULL, FALSE),
  -- Lana (Mina's trial, Ultra Moon) 1: Lanturn Lv. 51
  (160012, 16003, 16, NULL, NULL, NULL, NULL, NULL, 1, 171, 17100, 51, NULL, NULL, FALSE),
  -- Lana (Mina's trial, Ultra Moon) 2: Cloyster Lv. 51
  (160012, 16003, 16, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 51, NULL, NULL, FALSE),
  -- Lana (Mina's trial, Ultra Moon) 3: Araquanid Lv. 51, holds Waterium Z
  (160012, 16003, 16, NULL, NULL, NULL, NULL, NULL, 3, 752, 75200, 51, 24, NULL, FALSE),
  -- Kiawe (Mina's trial) 1: Arcanine Lv. 51
  (160012, 16004, 16, NULL, NULL, NULL, NULL, NULL, 1, 59, 5900, 51, NULL, NULL, FALSE),
  -- Kiawe (Mina's trial) 2: Talonflame Lv. 51
  (160012, 16004, 16, NULL, NULL, NULL, NULL, NULL, 2, 663, 66300, 51, NULL, NULL, FALSE),
  -- Kiawe (Mina's trial) 3: Alolan Marowak Lv. 51, holds Firium Z
  (160012, 16004, 16, NULL, NULL, NULL, NULL, NULL, 3, 105, 10501, 51, 23, NULL, FALSE),
  -- Sophocles (Mina's trial, Ultra Sun) 1: Togedemaru Lv. 51
  (160012, 16007, 16, NULL, NULL, NULL, NULL, NULL, 1, 777, 77700, 51, NULL, NULL, FALSE),
  -- Sophocles (Mina's trial, Ultra Sun) 2: Magnezone Lv. 51
  (160012, 16007, 16, NULL, NULL, NULL, NULL, NULL, 2, 462, 46200, 51, NULL, NULL, FALSE),
  -- Sophocles (Mina's trial, Ultra Sun) 3: Alolan Golem Lv. 51, holds Electrium Z
  (160012, 16007, 16, NULL, NULL, NULL, NULL, NULL, 3, 76, 7601, 51, 25, NULL, FALSE),
  -- Nanu (Mina's trial, Ultra Moon) 1: Sableye Lv. 52
  (160012, 16052, 16, NULL, NULL, NULL, NULL, NULL, 1, 302, 30200, 52, NULL, NULL, FALSE),
  -- Nanu (Mina's trial, Ultra Moon) 2: Absol Lv. 52
  (160012, 16052, 16, NULL, NULL, NULL, NULL, NULL, 2, 359, 35900, 52, NULL, NULL, FALSE),
  -- Nanu (Mina's trial, Ultra Moon) 3: Alolan Persian Lv. 53, holds Darkinium Z
  (160012, 16052, 16, NULL, NULL, NULL, NULL, NULL, 3, 53, 5301, 53, 37, NULL, FALSE),
  -- Totem Ribombee 1: Ribombee Lv. 55, holds Occa Berry
  (160012, 16045, 16, NULL, NULL, NULL, NULL, NULL, 1, 743, 74300, 55, 213, NULL, FALSE),
  -- Totem Ribombee 2: Pelipper Lv. 52
  (160012, 16045, 16, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 52, NULL, NULL, FALSE),
  -- Totem Ribombee 3: Blissey Lv. 53
  (160012, 16045, 16, NULL, NULL, NULL, NULL, NULL, 3, 242, 24200, 53, NULL, NULL, FALSE),
  -- Dulse (Vast Poni Canyon) 1: Poipole Lv. 49
  (160013, 16050, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 49, NULL, NULL, FALSE),
  -- Soliera (Vast Poni Canyon) 1: Poipole Lv. 49
  (160013, 16051, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 49, NULL, NULL, FALSE),
  -- Totem Kommo-o 1: Kommo-o Lv. 49, holds Roseli Berry
  (160013, 16037, 16, NULL, NULL, NULL, NULL, NULL, 1, 784, 78400, 49, 242, NULL, FALSE),
  -- Totem Kommo-o 2: Noivern Lv. 48
  (160013, 16037, 16, NULL, NULL, NULL, NULL, NULL, 2, 715, 71500, 48, NULL, NULL, FALSE),
  -- Totem Kommo-o 3: Scizor Lv. 46
  (160013, 16037, 16, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 46, NULL, NULL, FALSE),
  -- Hapu 1: Golurk Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 1, 623, 62300, 53, NULL, NULL, FALSE),
  -- Hapu 2: Gastrodon (East Sea) Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 2, 423, 42301, 53, NULL, NULL, FALSE),
  -- Hapu 3: Flygon Lv. 53
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 53, NULL, NULL, FALSE),
  -- Hapu 4: Mudsdale Lv. 54, holds Groundium Z
  (160014, 16011, 16, NULL, NULL, NULL, NULL, NULL, 4, 750, 75000, 54, 30, NULL, FALSE),
  -- Ultra Necrozma 1: Ultra Necrozma Lv. 60
  (160015, 16012, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80003, 60, NULL, NULL, FALSE),
  -- Molayne 1: Klefki Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 1, 707, 70700, 56, NULL, NULL, FALSE),
  -- Molayne 2: Bisharp Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 2, 625, 62500, 56, NULL, NULL, FALSE),
  -- Molayne 3: Magnezone Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 3, 462, 46200, 56, NULL, NULL, FALSE),
  -- Molayne 4: Metagross Lv. 56
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 4, 376, 37600, 56, NULL, NULL, FALSE),
  -- Molayne 5: Alolan Dugtrio Lv. 57, holds Steelium Z
  (160016, 16013, 16, NULL, NULL, NULL, NULL, NULL, 5, 51, 5101, 57, 38, NULL, FALSE),
  -- Olivia 1: Armaldo Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 1, 348, 34800, 56, NULL, NULL, FALSE),
  -- Olivia 2: Cradily Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 2, 346, 34600, 56, NULL, NULL, FALSE),
  -- Olivia 3: Gigalith Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 3, 526, 52600, 56, NULL, NULL, FALSE),
  -- Olivia 4: Probopass Lv. 56
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 4, 476, 47600, 56, NULL, NULL, FALSE),
  -- Olivia 5: Lycanroc (Midnight) Lv. 57, holds Rockium Z
  (160017, 16014, 16, NULL, NULL, NULL, NULL, NULL, 5, 745, 74501, 57, 34, NULL, FALSE),
  -- Acerola 1: Banette Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 1, 354, 35400, 56, NULL, NULL, FALSE),
  -- Acerola 2: Drifblim Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 56, NULL, NULL, FALSE),
  -- Acerola 3: Dhelmise Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 3, 781, 78100, 56, NULL, NULL, FALSE),
  -- Acerola 4: Froslass Lv. 56
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 56, NULL, NULL, FALSE),
  -- Acerola 5: Palossand Lv. 57, holds Ghostium Z
  (160018, 16015, 16, NULL, NULL, NULL, NULL, NULL, 5, 770, 77000, 57, 35, NULL, FALSE),
  -- Kahili 1: Braviary Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 1, 628, 62800, 56, NULL, NULL, FALSE),
  -- Kahili 2: Hawlucha Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 56, NULL, NULL, FALSE),
  -- Kahili 3: Oricorio Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 3, 741, 74100, 56, NULL, NULL, FALSE),
  -- Kahili 4: Mandibuzz Lv. 56
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 4, 630, 63000, 56, NULL, NULL, FALSE),
  -- Kahili 5: Toucannon Lv. 57, holds Flyinium Z
  (160019, 16016, 16, NULL, NULL, NULL, NULL, NULL, 5, 733, 73300, 57, 31, NULL, FALSE),
  -- Hau (chose Rowlet) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 26, 2601, 59, NULL, NULL, FALSE),
  -- Hau (chose Rowlet) 2: Flareon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 136, 13600, 58, NULL, NULL, FALSE),
  -- Hau (chose Rowlet) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 128, 12800, 58, NULL, NULL, FALSE),
  -- Hau (chose Rowlet) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 715, 71500, 58, NULL, NULL, FALSE),
  -- Hau (chose Rowlet) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 5, 740, 74000, 59, NULL, NULL, FALSE),
  -- Hau (chose Rowlet) 6: Primarina Lv. 60, holds Waterium Z
  (160020, 16017, 16, NULL, 160001, 'rowlet', NULL, NULL, 6, 730, 73000, 60, 24, NULL, FALSE),
  -- Hau (chose Litten) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 1, 26, 2601, 59, NULL, NULL, FALSE),
  -- Hau (chose Litten) 2: Vaporeon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 2, 134, 13400, 58, NULL, NULL, FALSE),
  -- Hau (chose Litten) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 3, 128, 12800, 58, NULL, NULL, FALSE),
  -- Hau (chose Litten) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 4, 715, 71500, 58, NULL, NULL, FALSE),
  -- Hau (chose Litten) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 5, 740, 74000, 59, NULL, NULL, FALSE),
  -- Hau (chose Litten) 6: Decidueye Lv. 60, holds Grassium Z
  (160020, 16017, 16, NULL, 160001, 'litten', NULL, NULL, 6, 724, 72400, 60, 26, NULL, FALSE),
  -- Hau (chose Popplio) 1: Alolan Raichu Lv. 59
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 26, 2601, 59, NULL, NULL, FALSE),
  -- Hau (chose Popplio) 2: Leafeon Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 470, 47000, 58, NULL, NULL, FALSE),
  -- Hau (chose Popplio) 3: Tauros Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 128, 12800, 58, NULL, NULL, FALSE),
  -- Hau (chose Popplio) 4: Noivern Lv. 58
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 715, 71500, 58, NULL, NULL, FALSE),
  -- Hau (chose Popplio) 5: Crabominable Lv. 59
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 5, 740, 74000, 59, NULL, NULL, FALSE),
  -- Hau (chose Popplio) 6: Incineroar Lv. 60, holds Firium Z
  (160020, 16017, 16, NULL, 160001, 'popplio', NULL, NULL, 6, 727, 72700, 60, 23, NULL, FALSE),
  -- Faba (Episode RR) 1: Claydol Lv. 63
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 1, 344, 34400, 63, NULL, NULL, FALSE),
  -- Faba (Episode RR) 2: Bruxish Lv. 63
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 2, 779, 77900, 63, NULL, NULL, FALSE),
  -- Faba (Episode RR) 3: Hypno Lv. 63
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 3, 97, 9700, 63, NULL, NULL, FALSE),
  -- Faba (Episode RR) 4: Granbull Lv. 61
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 4, 210, 21000, 61, NULL, NULL, FALSE),
  -- Faba (Episode RR) 5: Scrafty Lv. 61
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 5, 560, 56000, 61, NULL, NULL, FALSE),
  -- Faba (Episode RR) 6: Shiinotic Lv. 61
  (160022, 16048, 16, NULL, NULL, NULL, NULL, NULL, 6, 756, 75600, 61, NULL, NULL, FALSE),
  -- Archie 1: Mightyena Lv. 64
  (160022, 16053, 16, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 64, NULL, NULL, FALSE),
  -- Archie 2: Crobat Lv. 64
  (160022, 16053, 16, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 64, NULL, NULL, FALSE),
  -- Archie 3: Muk Lv. 64
  (160022, 16053, 16, NULL, NULL, NULL, NULL, NULL, 3, 89, 8900, 64, NULL, NULL, FALSE),
  -- Archie 4: Sharpedo Lv. 64
  (160022, 16053, 16, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 64, NULL, NULL, FALSE),
  -- Archie 5: Kyogre Lv. 66
  (160022, 16053, 16, NULL, NULL, NULL, NULL, NULL, 5, 382, 38200, 66, NULL, NULL, FALSE),
  -- Maxie 1: Mightyena Lv. 64
  (160022, 16054, 16, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 64, NULL, NULL, FALSE),
  -- Maxie 2: Crobat Lv. 64
  (160022, 16054, 16, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 64, NULL, NULL, FALSE),
  -- Maxie 3: Weezing Lv. 64
  (160022, 16054, 16, NULL, NULL, NULL, NULL, NULL, 3, 110, 11000, 64, NULL, NULL, FALSE),
  -- Maxie 4: Camerupt Lv. 64
  (160022, 16054, 16, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 64, NULL, NULL, FALSE),
  -- Maxie 5: Groudon Lv. 66
  (160022, 16054, 16, NULL, NULL, NULL, NULL, NULL, 5, 383, 38300, 66, NULL, NULL, FALSE),
  -- Cyrus (Ultra Sun) 1: Houndoom Lv. 65
  (160022, 16055, 16, 27, NULL, NULL, NULL, NULL, 1, 229, 22900, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Sun) 2: Honchkrow Lv. 65
  (160022, 16055, 16, 27, NULL, NULL, NULL, NULL, 2, 430, 43000, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Sun) 3: Crobat Lv. 65
  (160022, 16055, 16, 27, NULL, NULL, NULL, NULL, 3, 169, 16900, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Sun) 4: Weavile Lv. 65
  (160022, 16055, 16, 27, NULL, NULL, NULL, NULL, 4, 461, 46100, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Sun) 5: Dialga Lv. 67
  (160022, 16055, 16, 27, NULL, NULL, NULL, NULL, 5, 483, 48300, 67, NULL, NULL, FALSE),
  -- Cyrus (Ultra Moon) 1: Houndoom Lv. 65
  (160022, 16055, 16, 28, NULL, NULL, NULL, NULL, 1, 229, 22900, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Moon) 2: Honchkrow Lv. 65
  (160022, 16055, 16, 28, NULL, NULL, NULL, NULL, 2, 430, 43000, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Moon) 3: Crobat Lv. 65
  (160022, 16055, 16, 28, NULL, NULL, NULL, NULL, 3, 169, 16900, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Moon) 4: Weavile Lv. 65
  (160022, 16055, 16, 28, NULL, NULL, NULL, NULL, 4, 461, 46100, 65, NULL, NULL, FALSE),
  -- Cyrus (Ultra Moon) 5: Palkia Lv. 67
  (160022, 16055, 16, 28, NULL, NULL, NULL, NULL, 5, 484, 48400, 67, NULL, NULL, FALSE),
  -- Lysandre (Ultra Sun) 1: Mienshao Lv. 65
  (160022, 16056, 16, 27, NULL, NULL, NULL, NULL, 1, 620, 62000, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Sun) 2: Honchkrow Lv. 65
  (160022, 16056, 16, 27, NULL, NULL, NULL, NULL, 2, 430, 43000, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Sun) 3: Pyroar Lv. 65
  (160022, 16056, 16, 27, NULL, NULL, NULL, NULL, 3, 668, 66800, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Sun) 4: Mega Gyarados Lv. 65, holds Gyaradosite
  (160022, 16056, 16, 27, NULL, NULL, NULL, NULL, 4, 130, 13001, 65, 274, NULL, FALSE),
  -- Lysandre (Ultra Sun) 5: Xerneas Lv. 67
  (160022, 16056, 16, 27, NULL, NULL, NULL, NULL, 5, 716, 71600, 67, NULL, NULL, FALSE),
  -- Lysandre (Ultra Moon) 1: Mienshao Lv. 65
  (160022, 16056, 16, 28, NULL, NULL, NULL, NULL, 1, 620, 62000, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Moon) 2: Honchkrow Lv. 65
  (160022, 16056, 16, 28, NULL, NULL, NULL, NULL, 2, 430, 43000, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Moon) 3: Pyroar Lv. 65
  (160022, 16056, 16, 28, NULL, NULL, NULL, NULL, 3, 668, 66800, 65, NULL, NULL, FALSE),
  -- Lysandre (Ultra Moon) 4: Mega Gyarados Lv. 65, holds Gyaradosite
  (160022, 16056, 16, 28, NULL, NULL, NULL, NULL, 4, 130, 13001, 65, 274, NULL, FALSE),
  -- Lysandre (Ultra Moon) 5: Yveltal Lv. 67
  (160022, 16056, 16, 28, NULL, NULL, NULL, NULL, 5, 717, 71700, 67, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Sun) 1: Cofagrigus Lv. 66
  (160022, 16057, 16, 27, NULL, NULL, NULL, NULL, 1, 563, 56300, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Sun) 2: Bouffalant Lv. 66
  (160022, 16057, 16, 27, NULL, NULL, NULL, NULL, 2, 626, 62600, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Sun) 3: Bisharp Lv. 66
  (160022, 16057, 16, 27, NULL, NULL, NULL, NULL, 3, 625, 62500, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Sun) 4: Hydreigon Lv. 66
  (160022, 16057, 16, 27, NULL, NULL, NULL, NULL, 4, 635, 63500, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Sun) 5: Zekrom Lv. 68
  (160022, 16057, 16, 27, NULL, NULL, NULL, NULL, 5, 644, 64400, 68, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Moon) 1: Cofagrigus Lv. 66
  (160022, 16057, 16, 28, NULL, NULL, NULL, NULL, 1, 563, 56300, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Moon) 2: Bouffalant Lv. 66
  (160022, 16057, 16, 28, NULL, NULL, NULL, NULL, 2, 626, 62600, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Moon) 3: Bisharp Lv. 66
  (160022, 16057, 16, 28, NULL, NULL, NULL, NULL, 3, 625, 62500, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Moon) 4: Hydreigon Lv. 66
  (160022, 16057, 16, 28, NULL, NULL, NULL, NULL, 4, 635, 63500, 66, NULL, NULL, FALSE),
  -- Ghetsis (Ultra Moon) 5: Reshiram Lv. 68
  (160022, 16057, 16, 28, NULL, NULL, NULL, NULL, 5, 643, 64300, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Sun) 1: Dugtrio Lv. 68, holds Smooth Rock
  (160022, 16018, 16, 27, NULL, NULL, NULL, NULL, 1, 51, 5100, 68, 426, NULL, FALSE),
  -- Giovanni (Ultra Sun) 2: Nidoking Lv. 68
  (160022, 16018, 16, 27, NULL, NULL, NULL, NULL, 2, 34, 3400, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Sun) 3: Nidoqueen Lv. 68
  (160022, 16018, 16, 27, NULL, NULL, NULL, NULL, 3, 31, 3100, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Sun) 4: Rhyperior Lv. 68
  (160022, 16018, 16, 27, NULL, NULL, NULL, NULL, 4, 464, 46400, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Sun) 5: Mega Mewtwo X Lv. 70, holds Mewtwonite X
  (160022, 16018, 16, 27, NULL, NULL, NULL, NULL, 5, 150, 15001, 70, 276, NULL, FALSE),
  -- Giovanni (Ultra Moon) 1: Dugtrio Lv. 68, holds Smooth Rock
  (160022, 16018, 16, 28, NULL, NULL, NULL, NULL, 1, 51, 5100, 68, 426, NULL, FALSE),
  -- Giovanni (Ultra Moon) 2: Nidoking Lv. 68
  (160022, 16018, 16, 28, NULL, NULL, NULL, NULL, 2, 34, 3400, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Moon) 3: Nidoqueen Lv. 68
  (160022, 16018, 16, 28, NULL, NULL, NULL, NULL, 3, 31, 3100, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Moon) 4: Rhyperior Lv. 68
  (160022, 16018, 16, 28, NULL, NULL, NULL, NULL, 4, 464, 46400, 68, NULL, NULL, FALSE),
  -- Giovanni (Ultra Moon) 5: Mega Mewtwo Y Lv. 70, holds Mewtwonite Y
  (160022, 16018, 16, 28, NULL, NULL, NULL, NULL, 5, 150, 15002, 70, 277, NULL, FALSE),
  -- Hau (chose Rowlet), Choose Starter 1: Popplio Lv. 5
  (160001, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 728, 72800, 5, NULL, NULL, FALSE),
  -- Hau (chose Litten), Choose Starter 1: Rowlet Lv. 5
  (160001, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 722, 72200, 5, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Choose Starter 1: Litten Lv. 5
  (160001, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 725, 72500, 5, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Receive Pokedex 1: Pichu Lv. 6
  (160033, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Receive Pokedex 2: Popplio Lv. 7
  (160033, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 728, 72800, 7, NULL, NULL, FALSE),
  -- Hau (chose Litten), Receive Pokedex 1: Pichu Lv. 6
  (160033, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Litten), Receive Pokedex 2: Rowlet Lv. 7
  (160033, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 722, 72200, 7, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Receive Pokedex 1: Pichu Lv. 6
  (160033, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 172, 17200, 6, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Receive Pokedex 2: Litten Lv. 7
  (160033, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 725, 72500, 7, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Grand Trial Hala 1: Popplio Lv. 13, holds Sitrus Berry
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 728, 72800, 13, 187, NULL, FALSE),
  -- Hau (chose Rowlet), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 714, 71400, 11, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 25, 2500, 12, NULL, NULL, FALSE),
  -- Hau (chose Litten), Grand Trial Hala 1: Rowlet Lv. 13, holds Sitrus Berry
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 722, 72200, 13, 187, NULL, FALSE),
  -- Hau (chose Litten), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 714, 71400, 11, NULL, NULL, FALSE),
  -- Hau (chose Litten), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 25, 2500, 12, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Grand Trial Hala 1: Litten Lv. 13, holds Sitrus Berry
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 725, 72500, 13, 187, NULL, FALSE),
  -- Hau (chose Popplio), Grand Trial Hala 2: Noibat Lv. 11
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 714, 71400, 11, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Grand Trial Hala 3: Pikachu Lv. 12
  (160004, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 25, 2500, 12, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 1: Brionne Lv. 16, holds Normalium Z
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 16, 245, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 25, 2500, 15, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 714, 71400, 14, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 133, 13300, 14, NULL, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 1: Dartrix Lv. 16, holds Normalium Z
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 16, 245, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 25, 2500, 15, NULL, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 714, 71400, 14, NULL, NULL, FALSE),
  -- Hau (chose Litten), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 4, 133, 13300, 14, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 1: Torracat Lv. 16, holds Normalium Z
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 16, 245, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 2: Pikachu Lv. 15
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 25, 2500, 15, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 3: Noibat Lv. 14
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 714, 71400, 14, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Lana Trial 4: Eevee Lv. 14
  (160005, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 133, 13300, 14, NULL, NULL, FALSE),
  -- Gladion, Lana Trial 1: Zorua Lv. 17
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 1, 570, 57000, 17, NULL, NULL, FALSE),
  -- Gladion, Lana Trial 2: Type: Null Lv. 18
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 2, 772, 77200, 18, NULL, NULL, FALSE),
  -- Gladion, Lana Trial 3: Zubat Lv. 17
  (160005, 16020, 16, NULL, NULL, NULL, NULL, NULL, 3, 41, 4100, 17, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Rowlet), Kiawe Trial 1: Brionne Lv. 20, holds Normalium Z
  (160006, 16021, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 20, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Rowlet), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 772, 77200, 20, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [rowlet] 3: Rockruff Lv. 20
  (160006, 16021, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 744, 74400, 20, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Litten), Kiawe Trial 1: Dartrix Lv. 20, holds Normalium Z
  (160006, 16021, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 20, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Litten), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'litten', NULL, NULL, 2, 772, 77200, 20, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [litten] 3: Rockruff Lv. 20
  (160006, 16021, 16, NULL, 160001, 'litten', NULL, NULL, 3, 744, 74400, 20, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Popplio), Kiawe Trial 1: Torracat Lv. 20, holds Normalium Z
  (160006, 16021, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 20, 245, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal (chose Popplio), Kiawe Trial 2: Type: Null Lv. 20
  (160006, 16021, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 772, 77200, 20, NULL, NULL, FALSE),
  -- Hau, Gladion & the Masked Royal [popplio] 3: Rockruff Lv. 20
  (160006, 16021, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 744, 74400, 20, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 1: Brionne Lv. 30, holds Waterium Z
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 729, 72900, 30, 24, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 2: Flareon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 136, 13600, 28, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 714, 71400, 28, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 128, 12800, 28, NULL, NULL, FALSE),
  -- Hau (chose Rowlet), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'rowlet', NULL, NULL, 5, 26, 2601, 29, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 1: Dartrix Lv. 30, holds Grassium Z
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 1, 723, 72300, 30, 26, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 2: Vaporeon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 2, 134, 13400, 28, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 3, 714, 71400, 28, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 4, 128, 12800, 28, NULL, NULL, FALSE),
  -- Hau (chose Litten), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'litten', NULL, NULL, 5, 26, 2601, 29, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 1: Torracat Lv. 30, holds Firium Z
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 726, 72600, 30, 23, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 2: Leafeon Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 470, 47000, 28, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 3: Noibat Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 714, 71400, 28, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 4: Tauros Lv. 28
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 128, 12800, 28, NULL, NULL, FALSE),
  -- Hau (chose Popplio), Sophocles Trial 5: Alolan Raichu Lv. 29
  (160009, 16019, 16, NULL, 160001, 'popplio', NULL, NULL, 5, 26, 2601, 29, NULL, NULL, FALSE),
  -- Guzma, Sophocles Trial 1: Golisopod Lv. 34
  (160009, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 34, NULL, NULL, FALSE),
  -- Guzma, Sophocles Trial 2: Masquerain Lv. 34
  (160009, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 34, NULL, NULL, FALSE),
  -- Guzma, Grand Trial Nanu 1: Golisopod Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 41, NULL, NULL, FALSE),
  -- Guzma, Grand Trial Nanu 2: Masquerain Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 41, NULL, NULL, FALSE),
  -- Guzma, Grand Trial Nanu 3: Pinsir Lv. 41
  (160011, 16022, 16, NULL, NULL, NULL, NULL, NULL, 3, 127, 12700, 41, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 1: Golbat Lv. 42
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 42, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 2: Zoroark Lv. 42
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 2, 571, 57100, 42, NULL, NULL, FALSE),
  -- Gladion, Grand Trial Nanu 3: Type: Null Lv. 43
  (160011, 16020, 16, NULL, NULL, NULL, NULL, NULL, 3, 772, 77200, 43, NULL, NULL, FALSE),
  -- Faba (entrance) 1: Hypno Lv. 43
  (160023, 16046, 16, NULL, NULL, NULL, NULL, NULL, 1, 97, 9700, 43, NULL, NULL, FALSE),
  -- Faba (labs) 1: Claydol Lv. 44
  (160023, 16047, 16, NULL, NULL, NULL, NULL, NULL, 1, 344, 34400, 44, NULL, NULL, FALSE),
  -- Faba (labs) 2: Bruxish Lv. 44
  (160023, 16047, 16, NULL, NULL, NULL, NULL, NULL, 2, 779, 77900, 44, NULL, NULL, FALSE),
  -- Faba (labs) 3: Hypno Lv. 45
  (160023, 16047, 16, NULL, NULL, NULL, NULL, NULL, 3, 97, 9700, 45, NULL, NULL, FALSE),
  -- Faba (labs) 4: Ledian Lv. 42
  (160023, 16047, 16, NULL, NULL, NULL, NULL, NULL, 4, 166, 16600, 42, NULL, NULL, FALSE),
  -- Faba (labs) 5: Pupitar Lv. 42
  (160023, 16047, 16, NULL, NULL, NULL, NULL, NULL, 5, 247, 24700, 42, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 1: Golisopod Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 45, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 2: Masquerain Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 2, 284, 28400, 45, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 3: Pinsir Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 3, 127, 12700, 45, NULL, NULL, FALSE),
  -- Guzma, Aether Paradise 4: Vikavolt Lv. 45
  (160023, 16022, 16, NULL, NULL, NULL, NULL, NULL, 4, 738, 73800, 45, NULL, NULL, FALSE),
  -- Dulse (Aether Paradise) 1: Poipole Lv. 47
  (160023, 16050, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 47, NULL, NULL, FALSE),
  -- Soliera (Aether Paradise) 1: Poipole Lv. 47
  (160023, 16051, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 47, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 1: Clefable Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 47, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 2: Lilligant Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 2, 549, 54900, 47, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 3: Lopunny Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 3, 428, 42800, 47, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 4: Milotic Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 47, NULL, NULL, FALSE),
  -- Lusamine, Aether Paradise 5: Bewear Lv. 47
  (160023, 16023, 16, NULL, NULL, NULL, NULL, NULL, 5, 760, 76000, 47, NULL, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 1, 169, 16900, 53, NULL, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Molayne 2: Zoroark Lv. 53, holds Darkinium Z
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 2, 571, 57100, 53, 37, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Molayne 3: Silvally (Fire) Lv. 55, holds Fire Memory
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 3, 773, 77309, 55, 40, NULL, FALSE),
  -- Gladion (chose Rowlet), Elite Four Molayne 4: Lucario Lv. 53
  (160016, 16020, 16, NULL, 160001, 'rowlet', NULL, NULL, 4, 448, 44800, 53, NULL, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 1, 169, 16900, 53, NULL, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Molayne 2: Zoroark Lv. 53, holds Darkinium Z
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 2, 571, 57100, 53, 37, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Molayne 3: Silvally (Water) Lv. 55, holds Water Memory
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 3, 773, 77310, 55, 41, NULL, FALSE),
  -- Gladion (chose Litten), Elite Four Molayne 4: Lucario Lv. 55
  (160016, 16020, 16, NULL, 160001, 'litten', NULL, NULL, 4, 448, 44800, 55, NULL, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Molayne 1: Crobat Lv. 53
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 1, 169, 16900, 53, NULL, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Molayne 2: Zoroark Lv. 53, holds Darkinium Z
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 2, 571, 57100, 53, 37, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Molayne 3: Silvally (Grass) Lv. 55, holds Grass Memory
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 3, 773, 77311, 55, 43, NULL, FALSE),
  -- Gladion (chose Popplio), Elite Four Molayne 4: Lucario Lv. 53
  (160016, 16020, 16, NULL, 160001, 'popplio', NULL, NULL, 4, 448, 44800, 53, NULL, NULL, FALSE),
  -- Nihilego, Sophocles Trial 1: Nihilego Lv. 27
  (160009, 16024, 16, NULL, NULL, NULL, NULL, NULL, 1, 793, 79300, 27, NULL, NULL, FALSE),
  -- Necrozma, Ultra Necrozma 1: Necrozma (Dusk Mane) Lv. 50
  (160015, 16025, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80001, 50, NULL, NULL, FALSE),
  -- Necrozma, Ultra Necrozma 1: Necrozma (Dawn Wings) Lv. 50
  (160015, 16026, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80002, 50, NULL, NULL, FALSE),
  -- Solgaleo, Mahalo Trail 1: Solgaleo Lv. 60
  (160024, 16027, 16, NULL, NULL, NULL, NULL, NULL, 1, 791, 79100, 60, NULL, NULL, FALSE),
  -- Lunala, Mahalo Trail 1: Lunala Lv. 60
  (160024, 16028, 16, NULL, NULL, NULL, NULL, NULL, 1, 792, 79200, 60, NULL, NULL, FALSE),
  -- Necrozma, Mount Lanakila Crater 1: Necrozma Lv. 65, holds Ultranecrozium Z
  (160025, 16029, 16, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 65, 262, NULL, FALSE),
  -- Tapu Koko, Ruins of Conflict 1: Tapu Koko Lv. 60
  (160026, 16030, 16, NULL, NULL, NULL, NULL, NULL, 1, 785, 78500, 60, NULL, NULL, FALSE),
  -- Tapu Lele, Ruins of Life 1: Tapu Lele Lv. 60
  (160027, 16031, 16, NULL, NULL, NULL, NULL, NULL, 1, 786, 78600, 60, NULL, NULL, FALSE),
  -- Tapu Bulu, Ruins of Abundance 1: Tapu Bulu Lv. 60
  (160028, 16032, 16, NULL, NULL, NULL, NULL, NULL, 1, 787, 78700, 60, NULL, NULL, FALSE),
  -- Tapu Fini, Ruins of Hope 1: Tapu Fini Lv. 60
  (160029, 16033, 16, NULL, NULL, NULL, NULL, NULL, 1, 788, 78800, 60, NULL, NULL, FALSE),
  -- Zygarde, Resolution Cave 1: Zygarde Lv. 60
  (160030, 16034, 16, NULL, NULL, NULL, NULL, NULL, 1, 718, 71800, 60, NULL, NULL, FALSE),
  -- Blacephalon, Poni Grove 1: Blacephalon Lv. 60
  (160031, 16035, 16, NULL, NULL, NULL, NULL, NULL, 1, 806, 80600, 60, NULL, NULL, FALSE),
  -- Stakataka, Poni Grove 1: Stakataka Lv. 60
  (160031, 16036, 16, NULL, NULL, NULL, NULL, NULL, 1, 805, 80500, 60, NULL, NULL, FALSE),
  -- Totem Gumshoos, Ilima Bonus Trial (Ultra Sun) 1: Gumshoos Lv. 60, holds Chople Berry
  (160032, 16038, 16, NULL, NULL, NULL, NULL, NULL, 1, 735, 73500, 60, 218, NULL, FALSE),
  -- Totem Gumshoos, Ilima Bonus Trial (Ultra Sun) 2: Yungoos Lv. 58
  (160032, 16038, 16, NULL, NULL, NULL, NULL, NULL, 2, 734, 73400, 58, NULL, NULL, FALSE),
  -- Totem Raticate, Ilima Bonus Trial (Ultra Moon) 1: Alolan Raticate Lv. 60, holds Chople Berry
  (160032, 16039, 16, NULL, NULL, NULL, NULL, NULL, 1, 20, 2001, 60, 218, NULL, FALSE),
  -- Totem Raticate, Ilima Bonus Trial (Ultra Moon) 2: Alolan Rattata Lv. 58
  (160032, 16039, 16, NULL, NULL, NULL, NULL, NULL, 2, 19, 1901, 58, NULL, NULL, FALSE),
  -- Dulse, Seaward Cave 1: Furfrou Lv. 13
  (160004, 16050, 16, NULL, NULL, NULL, NULL, NULL, 1, 676, 67600, 13, NULL, NULL, FALSE),
  -- Soliera, Seaward Cave 1: Furfrou Lv. 13
  (160004, 16051, 16, NULL, NULL, NULL, NULL, NULL, 1, 676, 67600, 13, NULL, NULL, FALSE),
  -- Dulse, Paniola Ranch 1: Poipole Lv. 20
  (160005, 16050, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 20, NULL, NULL, FALSE),
  -- Soliera, Paniola Ranch 1: Poipole Lv. 20
  (160005, 16051, 16, NULL, NULL, NULL, NULL, NULL, 1, 803, 80300, 20, NULL, NULL, FALSE);
