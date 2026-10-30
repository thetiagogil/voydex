-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Black / White Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Black / White Gym Leaders and Elite Four page.
-- Cheren's slot order: the Pokémon Black ROM trainer data, matching Serebii and PKMN.NET.
-- Cheren, Bianca and N battles: Bulbapedia, cross-checked with Serebii, PokéWiki and the Japanese Pokémon Wiki.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Wild Pokémon here hold nothing in their game data.
-- Scope: Pokémon Black / White Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Black / White opponent uses in each Story battle, by
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
  held_item_id
) VALUES
  -- Cilan / Chili / Cress (chose Snivy) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 506, 50600, 12, NULL),
  -- Cilan / Chili / Cress (chose Snivy) 2: Pansear Lv. 14
  (110003, 11001, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 513, 51300, 14, NULL),
  -- Cilan / Chili / Cress (chose Tepig) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 506, 50600, 12, NULL),
  -- Cilan / Chili / Cress (chose Tepig) 2: Panpour Lv. 14
  (110003, 11001, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 515, 51500, 14, NULL),
  -- Cilan / Chili / Cress (chose Oshawott) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 506, 50600, 12, NULL),
  -- Cilan / Chili / Cress (chose Oshawott) 2: Pansage Lv. 14
  (110003, 11001, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 511, 51100, 14, NULL),
  -- Lenora 1: Herdier Lv. 18
  (110004, 11002, 11, NULL, NULL, NULL, NULL, NULL, 1, 507, 50700, 18, NULL),
  -- Lenora 2: Watchog Lv. 20
  (110004, 11002, 11, NULL, NULL, NULL, NULL, NULL, 2, 505, 50500, 20, NULL),
  -- Burgh 1: Whirlipede Lv. 21
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 1, 544, 54400, 21, NULL),
  -- Burgh 2: Dwebble Lv. 21
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 2, 557, 55700, 21, NULL),
  -- Burgh 3: Leavanny Lv. 23
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 3, 542, 54200, 23, NULL),
  -- Elesa 1: Emolga Lv. 25
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 25, NULL),
  -- Elesa 2: Emolga Lv. 25
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 2, 587, 58700, 25, NULL),
  -- Elesa 3: Zebstrika Lv. 27
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 3, 523, 52300, 27, NULL),
  -- Clay 1: Krokorok Lv. 29
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 1, 552, 55200, 29, NULL),
  -- Clay 2: Palpitoad Lv. 29
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 2, 536, 53600, 29, NULL),
  -- Clay 3: Excadrill Lv. 31
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 3, 530, 53000, 31, NULL),
  -- Skyla 1: Swoobat Lv. 33
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 1, 528, 52800, 33, NULL),
  -- Skyla 2: Unfezant Lv. 33
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 2, 521, 52100, 33, NULL),
  -- Skyla 3: Swanna Lv. 35
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 3, 581, 58100, 35, NULL),
  -- Brycen 1: Vanillish Lv. 37
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 1, 583, 58300, 37, NULL),
  -- Brycen 2: Cryogonal Lv. 37
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 37, NULL),
  -- Brycen 3: Beartic Lv. 39
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 3, 614, 61400, 39, NULL),
  -- Drayden / Iris (Black) 1: Fraxure Lv. 41
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 1, 611, 61100, 41, NULL),
  -- Drayden / Iris (Black) 2: Druddigon Lv. 41
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 2, 621, 62100, 41, NULL),
  -- Drayden / Iris (Black) 3: Haxorus Lv. 43
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 3, 612, 61200, 43, NULL),
  -- Drayden / Iris (White) 1: Fraxure Lv. 41
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 1, 611, 61100, 41, NULL),
  -- Drayden / Iris (White) 2: Druddigon Lv. 41
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 2, 621, 62100, 41, NULL),
  -- Drayden / Iris (White) 3: Haxorus Lv. 43
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 3, 612, 61200, 43, NULL),
  -- Shauntal 1: Cofagrigus Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 48, NULL),
  -- Shauntal 2: Jellicent Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 2, 593, 59300, 48, NULL),
  -- Shauntal 3: Golurk Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 3, 623, 62300, 48, NULL),
  -- Shauntal 4: Chandelure Lv. 50
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 4, 609, 60900, 50, NULL),
  -- Grimsley 1: Scrafty Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 1, 560, 56000, 48, NULL),
  -- Grimsley 2: Liepard Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 2, 510, 51000, 48, NULL),
  -- Grimsley 3: Krookodile Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 48, NULL),
  -- Grimsley 4: Bisharp Lv. 50
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 50, NULL),
  -- Caitlin 1: Reuniclus Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 1, 579, 57900, 48, NULL),
  -- Caitlin 2: Musharna Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 2, 518, 51800, 48, NULL),
  -- Caitlin 3: Sigilyph Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 48, NULL),
  -- Caitlin 4: Gothitelle Lv. 50
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 4, 576, 57600, 50, NULL),
  -- Marshal 1: Throh Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 1, 538, 53800, 48, NULL),
  -- Marshal 2: Sawk Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 2, 539, 53900, 48, NULL),
  -- Marshal 3: Conkeldurr Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 3, 534, 53400, 48, NULL),
  -- Marshal 4: Mienshao Lv. 50
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 4, 620, 62000, 50, NULL),
  -- N (Black) 1: Zekrom Lv. 52
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 1, 644, 64400, 52, NULL),
  -- N (Black) 2: Carracosta Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 2, 565, 56500, 50, NULL),
  -- N (Black) 3: Vanilluxe Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 3, 584, 58400, 50, NULL),
  -- N (Black) 4: Archeops Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 4, 567, 56700, 50, NULL),
  -- N (Black) 5: Zoroark Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 5, 571, 57100, 50, NULL),
  -- N (Black) 6: Klinklang Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 6, 601, 60100, 50, NULL),
  -- N (White) 1: Reshiram Lv. 52
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 1, 643, 64300, 52, NULL),
  -- N (White) 2: Carracosta Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 2, 565, 56500, 50, NULL),
  -- N (White) 3: Vanilluxe Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 3, 584, 58400, 50, NULL),
  -- N (White) 4: Archeops Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 4, 567, 56700, 50, NULL),
  -- N (White) 5: Zoroark Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 5, 571, 57100, 50, NULL),
  -- N (White) 6: Klinklang Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 6, 601, 60100, 50, NULL),
  -- Ghetsis 1: Cofagrigus Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 52, NULL),
  -- Ghetsis 2: Bouffalant Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 2, 626, 62600, 52, NULL),
  -- Ghetsis 3: Seismitoad Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 3, 537, 53700, 52, NULL),
  -- Ghetsis 4: Bisharp Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 52, NULL),
  -- Ghetsis 5: Eelektross Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 5, 604, 60400, 52, NULL),
  -- Ghetsis 6: Hydreigon Lv. 54
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 6, 635, 63500, 54, NULL),
  -- Alder 1: Accelgor Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 1, 617, 61700, 75, NULL),
  -- Alder 2: Bouffalant Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 2, 626, 62600, 75, NULL),
  -- Alder 3: Druddigon Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 3, 621, 62100, 75, NULL),
  -- Alder 4: Vanilluxe Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 4, 584, 58400, 75, NULL),
  -- Alder 5: Escavalier Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 5, 589, 58900, 75, NULL),
  -- Alder 6: Volcarona Lv. 77
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 6, 637, 63700, 77, NULL),
  -- Bianca (chose Snivy), Choose Starter 1: Oshawott Lv. 5
  (110001, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 501, 50100, 5, NULL),
  -- Bianca (chose Tepig), Choose Starter 1: Snivy Lv. 5
  (110001, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 495, 49500, 5, NULL),
  -- Bianca (chose Oshawott), Choose Starter 1: Tepig Lv. 5
  (110001, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 498, 49800, 5, NULL),
  -- Cheren (chose Snivy), Choose Starter 1: Tepig Lv. 5
  (110001, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 498, 49800, 5, NULL),
  -- Cheren (chose Tepig), Choose Starter 1: Oshawott Lv. 5
  (110001, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 501, 50100, 5, NULL),
  -- Cheren (chose Oshawott), Choose Starter 1: Snivy Lv. 5
  (110001, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 495, 49500, 5, NULL),
  -- N, Trio Badge 1: Purrloin Lv. 7
  (110003, 11013, 11, NULL, NULL, NULL, NULL, NULL, 1, 509, 50900, 7, NULL),
  -- Bianca (chose Snivy), Trio Badge 1: Lillipup Lv. 6
  (110003, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 506, 50600, 6, NULL),
  -- Bianca (chose Snivy), Trio Badge 2: Oshawott Lv. 7
  (110003, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 501, 50100, 7, NULL),
  -- Bianca (chose Tepig), Trio Badge 1: Lillipup Lv. 6
  (110003, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 506, 50600, 6, NULL),
  -- Bianca (chose Tepig), Trio Badge 2: Snivy Lv. 7
  (110003, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 495, 49500, 7, NULL),
  -- Bianca (chose Oshawott), Trio Badge 1: Lillipup Lv. 6
  (110003, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 506, 50600, 6, NULL),
  -- Bianca (chose Oshawott), Trio Badge 2: Tepig Lv. 7
  (110003, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 498, 49800, 7, NULL),
  -- Cheren (chose Snivy), Trio Badge 1: Tepig Lv. 8, holds Oran Berry
  (110003, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 498, 49800, 8, 184),
  -- Cheren (chose Snivy), Trio Badge 2: Purrloin Lv. 8
  (110003, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 509, 50900, 8, NULL),
  -- Cheren (chose Tepig), Trio Badge 1: Oshawott Lv. 8, holds Oran Berry
  (110003, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 501, 50100, 8, 184),
  -- Cheren (chose Tepig), Trio Badge 2: Purrloin Lv. 8
  (110003, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 509, 50900, 8, NULL),
  -- Cheren (chose Oshawott), Trio Badge 1: Snivy Lv. 8, holds Oran Berry
  (110003, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 495, 49500, 8, 184),
  -- Cheren (chose Oshawott), Trio Badge 2: Purrloin Lv. 8
  (110003, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 509, 50900, 8, NULL),
  -- Cheren (chose Snivy), Basic Badge 1: Tepig Lv. 14, holds Oran Berry
  (110004, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 498, 49800, 14, 184),
  -- Cheren (chose Snivy), Basic Badge 2: Purrloin Lv. 12
  (110004, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 509, 50900, 12, NULL),
  -- Cheren (chose Tepig), Basic Badge 1: Oshawott Lv. 14, holds Oran Berry
  (110004, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 501, 50100, 14, 184),
  -- Cheren (chose Tepig), Basic Badge 2: Purrloin Lv. 12
  (110004, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 509, 50900, 12, NULL),
  -- Cheren (chose Oshawott), Basic Badge 1: Snivy Lv. 14, holds Oran Berry
  (110004, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 495, 49500, 14, 184),
  -- Cheren (chose Oshawott), Basic Badge 2: Purrloin Lv. 12
  (110004, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 509, 50900, 12, NULL),
  -- N, Basic Badge 1: Pidove Lv. 13
  (110004, 11013, 11, NULL, NULL, NULL, NULL, NULL, 1, 519, 51900, 13, NULL),
  -- N, Basic Badge 2: Timburr Lv. 13
  (110004, 11013, 11, NULL, NULL, NULL, NULL, NULL, 2, 532, 53200, 13, NULL),
  -- N, Basic Badge 3: Tympole Lv. 13
  (110004, 11013, 11, NULL, NULL, NULL, NULL, NULL, 3, 535, 53500, 13, NULL),
  -- Bianca (chose Snivy), Bolt Badge 1: Herdier Lv. 18
  (110006, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 507, 50700, 18, NULL),
  -- Bianca (chose Snivy), Bolt Badge 2: Pansear Lv. 18
  (110006, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 513, 51300, 18, NULL),
  -- Bianca (chose Snivy), Bolt Badge 3: Munna Lv. 18
  (110006, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 517, 51700, 18, NULL),
  -- Bianca (chose Snivy), Bolt Badge 4: Dewott Lv. 20
  (110006, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 502, 50200, 20, NULL),
  -- Bianca (chose Tepig), Bolt Badge 1: Herdier Lv. 18
  (110006, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 507, 50700, 18, NULL),
  -- Bianca (chose Tepig), Bolt Badge 2: Panpour Lv. 18
  (110006, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 515, 51500, 18, NULL),
  -- Bianca (chose Tepig), Bolt Badge 3: Munna Lv. 18
  (110006, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 517, 51700, 18, NULL),
  -- Bianca (chose Tepig), Bolt Badge 4: Servine Lv. 20
  (110006, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 496, 49600, 20, NULL),
  -- Bianca (chose Oshawott), Bolt Badge 1: Herdier Lv. 18
  (110006, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 507, 50700, 18, NULL),
  -- Bianca (chose Oshawott), Bolt Badge 2: Pansage Lv. 18
  (110006, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 511, 51100, 18, NULL),
  -- Bianca (chose Oshawott), Bolt Badge 3: Munna Lv. 18
  (110006, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 517, 51700, 18, NULL),
  -- Bianca (chose Oshawott), Bolt Badge 4: Pignite Lv. 20
  (110006, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 499, 49900, 20, NULL),
  -- Cheren (chose Snivy), Bolt Badge 1: Pidove Lv. 20
  (110006, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 519, 51900, 20, NULL),
  -- Cheren (chose Snivy), Bolt Badge 2: Liepard Lv. 20
  (110006, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 510, 51000, 20, NULL),
  -- Cheren (chose Snivy), Bolt Badge 3: Pansage Lv. 20
  (110006, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 511, 51100, 20, NULL),
  -- Cheren (chose Snivy), Bolt Badge 4: Pignite Lv. 22, holds Sitrus Berry
  (110006, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 499, 49900, 22, 187),
  -- Cheren (chose Tepig), Bolt Badge 1: Pidove Lv. 20
  (110006, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 519, 51900, 20, NULL),
  -- Cheren (chose Tepig), Bolt Badge 2: Liepard Lv. 20
  (110006, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 510, 51000, 20, NULL),
  -- Cheren (chose Tepig), Bolt Badge 3: Pansear Lv. 20
  (110006, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 513, 51300, 20, NULL),
  -- Cheren (chose Tepig), Bolt Badge 4: Dewott Lv. 22, holds Sitrus Berry
  (110006, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 502, 50200, 22, 187),
  -- Cheren (chose Oshawott), Bolt Badge 1: Pidove Lv. 20
  (110006, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 519, 51900, 20, NULL),
  -- Cheren (chose Oshawott), Bolt Badge 2: Liepard Lv. 20
  (110006, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 510, 51000, 20, NULL),
  -- Cheren (chose Oshawott), Bolt Badge 3: Panpour Lv. 20
  (110006, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 515, 51500, 20, NULL),
  -- Cheren (chose Oshawott), Bolt Badge 4: Servine Lv. 22, holds Sitrus Berry
  (110006, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 496, 49600, 22, 187),
  -- N, Bolt Badge 1: Sandile Lv. 22
  (110006, 11013, 11, NULL, NULL, NULL, NULL, NULL, 1, 551, 55100, 22, NULL),
  -- N, Bolt Badge 2: Scraggy Lv. 22
  (110006, 11013, 11, NULL, NULL, NULL, NULL, NULL, 2, 559, 55900, 22, NULL),
  -- N, Bolt Badge 3: Darumaka Lv. 22
  (110006, 11013, 11, NULL, NULL, NULL, NULL, NULL, 3, 554, 55400, 22, NULL),
  -- N, Bolt Badge 4: Sigilyph Lv. 22
  (110006, 11013, 11, NULL, NULL, NULL, NULL, NULL, 4, 561, 56100, 22, NULL),
  -- Cheren (chose Snivy), Quake Badge 1: Liepard Lv. 24
  (110007, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 510, 51000, 24, NULL),
  -- Cheren (chose Snivy), Quake Badge 2: Pansage Lv. 24, holds Miracle Seed
  (110007, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 511, 51100, 24, 317),
  -- Cheren (chose Snivy), Quake Badge 3: Tranquill Lv. 24
  (110007, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 520, 52000, 24, NULL),
  -- Cheren (chose Snivy), Quake Badge 4: Pignite Lv. 26, holds Sitrus Berry
  (110007, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 499, 49900, 26, 187),
  -- Cheren (chose Tepig), Quake Badge 1: Liepard Lv. 24
  (110007, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 510, 51000, 24, NULL),
  -- Cheren (chose Tepig), Quake Badge 2: Pansear Lv. 24, holds Charcoal
  (110007, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 513, 51300, 24, 312),
  -- Cheren (chose Tepig), Quake Badge 3: Tranquill Lv. 24
  (110007, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 520, 52000, 24, NULL),
  -- Cheren (chose Tepig), Quake Badge 4: Dewott Lv. 26, holds Sitrus Berry
  (110007, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 502, 50200, 26, 187),
  -- Cheren (chose Oshawott), Quake Badge 1: Liepard Lv. 24
  (110007, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 510, 51000, 24, NULL),
  -- Cheren (chose Oshawott), Quake Badge 2: Panpour Lv. 24, holds Mystic Water
  (110007, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 515, 51500, 24, 318),
  -- Cheren (chose Oshawott), Quake Badge 3: Tranquill Lv. 24
  (110007, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 520, 52000, 24, NULL),
  -- Cheren (chose Oshawott), Quake Badge 4: Servine Lv. 26, holds Sitrus Berry
  (110007, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 496, 49600, 26, 187),
  -- Bianca (chose Snivy), Jet Badge 1: Herdier Lv. 26
  (110007, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 507, 50700, 26, NULL),
  -- Bianca (chose Snivy), Jet Badge 2: Pansear Lv. 26
  (110007, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 513, 51300, 26, NULL),
  -- Bianca (chose Snivy), Jet Badge 3: Musharna Lv. 26
  (110007, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 518, 51800, 26, NULL),
  -- Bianca (chose Snivy), Jet Badge 4: Dewott Lv. 28
  (110007, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 502, 50200, 28, NULL),
  -- Bianca (chose Tepig), Jet Badge 1: Herdier Lv. 26
  (110007, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 507, 50700, 26, NULL),
  -- Bianca (chose Tepig), Jet Badge 2: Panpour Lv. 26
  (110007, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 515, 51500, 26, NULL),
  -- Bianca (chose Tepig), Jet Badge 3: Musharna Lv. 26
  (110007, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 518, 51800, 26, NULL),
  -- Bianca (chose Tepig), Jet Badge 4: Servine Lv. 28
  (110007, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 496, 49600, 28, NULL),
  -- Bianca (chose Oshawott), Jet Badge 1: Herdier Lv. 26
  (110007, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 507, 50700, 26, NULL),
  -- Bianca (chose Oshawott), Jet Badge 2: Pansage Lv. 26
  (110007, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 511, 51100, 26, NULL),
  -- Bianca (chose Oshawott), Jet Badge 3: Musharna Lv. 26
  (110007, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 518, 51800, 26, NULL),
  -- Bianca (chose Oshawott), Jet Badge 4: Pignite Lv. 28
  (110007, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 499, 49900, 28, NULL),
  -- N, Jet Badge 1: Boldore Lv. 28
  (110008, 11013, 11, NULL, NULL, NULL, NULL, NULL, 1, 525, 52500, 28, NULL),
  -- N, Jet Badge 2: Ferroseed Lv. 28
  (110008, 11013, 11, NULL, NULL, NULL, NULL, NULL, 2, 597, 59700, 28, NULL),
  -- N, Jet Badge 3: Joltik Lv. 28
  (110008, 11013, 11, NULL, NULL, NULL, NULL, NULL, 3, 595, 59500, 28, NULL),
  -- N, Jet Badge 4: Klink Lv. 28
  (110008, 11013, 11, NULL, NULL, NULL, NULL, NULL, 4, 599, 59900, 28, NULL),
  -- Cheren (chose Snivy), Freeze Badge 1: Unfezant Lv. 33, holds Scope Lens
  (110009, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 521, 52100, 33, 423),
  -- Cheren (chose Snivy), Freeze Badge 2: Liepard Lv. 33, holds Sitrus Berry
  (110009, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 510, 51000, 33, 187),
  -- Cheren (chose Snivy), Freeze Badge 3: Simisage Lv. 33, holds Miracle Seed
  (110009, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 512, 51200, 33, 317),
  -- Cheren (chose Snivy), Freeze Badge 4: Pignite Lv. 35, holds Leftovers
  (110009, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 499, 49900, 35, 403),
  -- Cheren (chose Tepig), Freeze Badge 1: Unfezant Lv. 33, holds Scope Lens
  (110009, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 521, 52100, 33, 423),
  -- Cheren (chose Tepig), Freeze Badge 2: Liepard Lv. 33, holds Sitrus Berry
  (110009, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 510, 51000, 33, 187),
  -- Cheren (chose Tepig), Freeze Badge 3: Simisear Lv. 33, holds Charcoal
  (110009, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 514, 51400, 33, 312),
  -- Cheren (chose Tepig), Freeze Badge 4: Dewott Lv. 35, holds Leftovers
  (110009, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 502, 50200, 35, 403),
  -- Cheren (chose Oshawott), Freeze Badge 1: Unfezant Lv. 33, holds Scope Lens
  (110009, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 521, 52100, 33, 423),
  -- Cheren (chose Oshawott), Freeze Badge 2: Liepard Lv. 33, holds Sitrus Berry
  (110009, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 510, 51000, 33, 187),
  -- Cheren (chose Oshawott), Freeze Badge 3: Simipour Lv. 33, holds Mystic Water
  (110009, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 516, 51600, 33, 318),
  -- Cheren (chose Oshawott), Freeze Badge 4: Servine Lv. 35, holds Leftovers
  (110009, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 496, 49600, 35, 403),
  -- Bianca (chose Snivy), Legend Badge 1: Stoutland Lv. 38
  (110010, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 508, 50800, 38, NULL),
  -- Bianca (chose Snivy), Legend Badge 2: Simisear Lv. 38
  (110010, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 514, 51400, 38, NULL),
  -- Bianca (chose Snivy), Legend Badge 3: Musharna Lv. 38
  (110010, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 518, 51800, 38, NULL),
  -- Bianca (chose Snivy), Legend Badge 4: Samurott Lv. 40
  (110010, 11016, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 503, 50300, 40, NULL),
  -- Bianca (chose Tepig), Legend Badge 1: Stoutland Lv. 38
  (110010, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 508, 50800, 38, NULL),
  -- Bianca (chose Tepig), Legend Badge 2: Simipour Lv. 38
  (110010, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 516, 51600, 38, NULL),
  -- Bianca (chose Tepig), Legend Badge 3: Musharna Lv. 38
  (110010, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 518, 51800, 38, NULL),
  -- Bianca (chose Tepig), Legend Badge 4: Serperior Lv. 40
  (110010, 11016, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 497, 49700, 40, NULL),
  -- Bianca (chose Oshawott), Legend Badge 1: Stoutland Lv. 38
  (110010, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 508, 50800, 38, NULL),
  -- Bianca (chose Oshawott), Legend Badge 2: Simisage Lv. 38
  (110010, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 512, 51200, 38, NULL),
  -- Bianca (chose Oshawott), Legend Badge 3: Musharna Lv. 38
  (110010, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 518, 51800, 38, NULL),
  -- Bianca (chose Oshawott), Legend Badge 4: Emboar Lv. 40
  (110010, 11016, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 500, 50000, 40, NULL),
  -- Cheren (chose Snivy), Legend Badge 1: Unfezant Lv. 43, holds Scope Lens
  (110011, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 521, 52100, 43, 423),
  -- Cheren (chose Snivy), Legend Badge 2: Liepard Lv. 43, holds Sitrus Berry
  (110011, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 510, 51000, 43, 187),
  -- Cheren (chose Snivy), Legend Badge 3: Simisage Lv. 43, holds Miracle Seed
  (110011, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 3, 512, 51200, 43, 317),
  -- Cheren (chose Snivy), Legend Badge 4: Emboar Lv. 45, holds Leftovers
  (110011, 11017, 11, NULL, 110001, 'snivy', NULL, NULL, 4, 500, 50000, 45, 403),
  -- Cheren (chose Tepig), Legend Badge 1: Unfezant Lv. 43, holds Scope Lens
  (110011, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 521, 52100, 43, 423),
  -- Cheren (chose Tepig), Legend Badge 2: Liepard Lv. 43, holds Sitrus Berry
  (110011, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 510, 51000, 43, 187),
  -- Cheren (chose Tepig), Legend Badge 3: Simisear Lv. 43, holds Charcoal
  (110011, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 3, 514, 51400, 43, 312),
  -- Cheren (chose Tepig), Legend Badge 4: Samurott Lv. 45, holds Leftovers
  (110011, 11017, 11, NULL, 110001, 'tepig', NULL, NULL, 4, 503, 50300, 45, 403),
  -- Cheren (chose Oshawott), Legend Badge 1: Unfezant Lv. 43, holds Scope Lens
  (110011, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 521, 52100, 43, 423),
  -- Cheren (chose Oshawott), Legend Badge 2: Liepard Lv. 43, holds Sitrus Berry
  (110011, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 510, 51000, 43, 187),
  -- Cheren (chose Oshawott), Legend Badge 3: Simipour Lv. 43, holds Mystic Water
  (110011, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 3, 516, 51600, 43, 318),
  -- Cheren (chose Oshawott), Legend Badge 4: Serperior Lv. 45, holds Leftovers
  (110011, 11017, 11, NULL, 110001, 'oshawott', NULL, NULL, 4, 497, 49700, 45, 403),
  -- Reshiram, Battle N 1: Reshiram Lv. 50
  (110015, 11018, 11, NULL, NULL, NULL, NULL, NULL, 1, 643, 64300, 50, NULL),
  -- Zekrom, Battle N 1: Zekrom Lv. 50
  (110015, 11019, 11, NULL, NULL, NULL, NULL, NULL, 1, 644, 64400, 50, NULL),
  -- Cobalion, Swords of Justice 1: Cobalion Lv. 42
  (110019, 11020, 11, NULL, NULL, NULL, NULL, NULL, 1, 638, 63800, 42, NULL),
  -- Terrakion, Swords of Justice 1: Terrakion Lv. 42
  (110019, 11021, 11, NULL, NULL, NULL, NULL, NULL, 1, 639, 63900, 42, NULL),
  -- Virizion, Swords of Justice 1: Virizion Lv. 42
  (110019, 11022, 11, NULL, NULL, NULL, NULL, NULL, 1, 640, 64000, 42, NULL),
  -- Tornadus, Roaming Tornadus or Thundurus 1: Tornadus Lv. 40
  (110020, 11023, 11, NULL, NULL, NULL, NULL, NULL, 1, 641, 64100, 40, NULL),
  -- Thundurus, Roaming Tornadus or Thundurus 1: Thundurus Lv. 40
  (110020, 11024, 11, NULL, NULL, NULL, NULL, NULL, 1, 642, 64200, 40, NULL),
  -- Kyurem, Giant Chasm 1: Kyurem Lv. 75
  (110021, 11025, 11, NULL, NULL, NULL, NULL, NULL, 1, 646, 64600, 75, NULL),
  -- Landorus, Abundant Shrine 1: Landorus Lv. 70
  (110022, 11026, 11, NULL, NULL, NULL, NULL, NULL, 1, 645, 64500, 70, NULL);
