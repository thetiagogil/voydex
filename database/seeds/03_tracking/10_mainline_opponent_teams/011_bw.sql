-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Black / White Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Black / White Gym Leaders and Elite Four page.
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
  level
) VALUES
  -- Cilan / Chili / Cress (chose Snivy) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'snivy', NULL, NULL, 1, 506, 50600, 12),
  -- Cilan / Chili / Cress (chose Snivy) 2: Pansear Lv. 14
  (110003, 11001, 11, NULL, 110001, 'snivy', NULL, NULL, 2, 513, 51300, 14),
  -- Cilan / Chili / Cress (chose Tepig) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'tepig', NULL, NULL, 1, 506, 50600, 12),
  -- Cilan / Chili / Cress (chose Tepig) 2: Panpour Lv. 14
  (110003, 11001, 11, NULL, 110001, 'tepig', NULL, NULL, 2, 515, 51500, 14),
  -- Cilan / Chili / Cress (chose Oshawott) 1: Lillipup Lv. 12
  (110003, 11001, 11, NULL, 110001, 'oshawott', NULL, NULL, 1, 506, 50600, 12),
  -- Cilan / Chili / Cress (chose Oshawott) 2: Pansage Lv. 14
  (110003, 11001, 11, NULL, 110001, 'oshawott', NULL, NULL, 2, 511, 51100, 14),
  -- Lenora 1: Herdier Lv. 18
  (110004, 11002, 11, NULL, NULL, NULL, NULL, NULL, 1, 507, 50700, 18),
  -- Lenora 2: Watchog Lv. 20
  (110004, 11002, 11, NULL, NULL, NULL, NULL, NULL, 2, 505, 50500, 20),
  -- Burgh 1: Whirlipede Lv. 21
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 1, 544, 54400, 21),
  -- Burgh 2: Dwebble Lv. 21
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 2, 557, 55700, 21),
  -- Burgh 3: Leavanny Lv. 23
  (110005, 11003, 11, NULL, NULL, NULL, NULL, NULL, 3, 542, 54200, 23),
  -- Elesa 1: Emolga Lv. 25
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 25),
  -- Elesa 2: Emolga Lv. 25
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 2, 587, 58700, 25),
  -- Elesa 3: Zebstrika Lv. 27
  (110006, 11004, 11, NULL, NULL, NULL, NULL, NULL, 3, 523, 52300, 27),
  -- Clay 1: Krokorok Lv. 29
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 1, 552, 55200, 29),
  -- Clay 2: Palpitoad Lv. 29
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 2, 536, 53600, 29),
  -- Clay 3: Excadrill Lv. 31
  (110007, 11005, 11, NULL, NULL, NULL, NULL, NULL, 3, 530, 53000, 31),
  -- Skyla 1: Swoobat Lv. 33
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 1, 528, 52800, 33),
  -- Skyla 2: Unfezant Lv. 33
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 2, 521, 52100, 33),
  -- Skyla 3: Swanna Lv. 35
  (110008, 11006, 11, NULL, NULL, NULL, NULL, NULL, 3, 581, 58100, 35),
  -- Brycen 1: Vanillish Lv. 37
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 1, 583, 58300, 37),
  -- Brycen 2: Cryogonal Lv. 37
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 37),
  -- Brycen 3: Beartic Lv. 39
  (110009, 11007, 11, NULL, NULL, NULL, NULL, NULL, 3, 614, 61400, 39),
  -- Drayden / Iris (Black) 1: Fraxure Lv. 41
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 1, 611, 61100, 41),
  -- Drayden / Iris (Black) 2: Druddigon Lv. 41
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 2, 621, 62100, 41),
  -- Drayden / Iris (Black) 3: Haxorus Lv. 43
  (110010, 11008, 11, 17, NULL, NULL, NULL, NULL, 3, 612, 61200, 43),
  -- Drayden / Iris (White) 1: Fraxure Lv. 41
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 1, 611, 61100, 41),
  -- Drayden / Iris (White) 2: Druddigon Lv. 41
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 2, 621, 62100, 41),
  -- Drayden / Iris (White) 3: Haxorus Lv. 43
  (110010, 11008, 11, 18, NULL, NULL, NULL, NULL, 3, 612, 61200, 43),
  -- Shauntal 1: Cofagrigus Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 48),
  -- Shauntal 2: Jellicent Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 2, 593, 59300, 48),
  -- Shauntal 3: Golurk Lv. 48
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 3, 623, 62300, 48),
  -- Shauntal 4: Chandelure Lv. 50
  (110011, 11009, 11, NULL, NULL, NULL, NULL, NULL, 4, 609, 60900, 50),
  -- Grimsley 1: Scrafty Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 1, 560, 56000, 48),
  -- Grimsley 2: Liepard Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 2, 510, 51000, 48),
  -- Grimsley 3: Krookodile Lv. 48
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 48),
  -- Grimsley 4: Bisharp Lv. 50
  (110012, 11010, 11, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 50),
  -- Caitlin 1: Reuniclus Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 1, 579, 57900, 48),
  -- Caitlin 2: Musharna Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 2, 518, 51800, 48),
  -- Caitlin 3: Sigilyph Lv. 48
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 48),
  -- Caitlin 4: Gothitelle Lv. 50
  (110013, 11011, 11, NULL, NULL, NULL, NULL, NULL, 4, 576, 57600, 50),
  -- Marshal 1: Throh Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 1, 538, 53800, 48),
  -- Marshal 2: Sawk Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 2, 539, 53900, 48),
  -- Marshal 3: Conkeldurr Lv. 48
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 3, 534, 53400, 48),
  -- Marshal 4: Mienshao Lv. 50
  (110014, 11012, 11, NULL, NULL, NULL, NULL, NULL, 4, 620, 62000, 50),
  -- N (Black) 1: Zekrom Lv. 52
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 1, 644, 64400, 52),
  -- N (Black) 2: Carracosta Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 2, 565, 56500, 50),
  -- N (Black) 3: Vanilluxe Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 3, 584, 58400, 50),
  -- N (Black) 4: Archeops Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 4, 567, 56700, 50),
  -- N (Black) 5: Zoroark Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 5, 571, 57100, 50),
  -- N (Black) 6: Klinklang Lv. 50
  (110015, 11013, 11, 17, NULL, NULL, NULL, NULL, 6, 601, 60100, 50),
  -- N (White) 1: Reshiram Lv. 52
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 1, 643, 64300, 52),
  -- N (White) 2: Carracosta Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 2, 565, 56500, 50),
  -- N (White) 3: Vanilluxe Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 3, 584, 58400, 50),
  -- N (White) 4: Archeops Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 4, 567, 56700, 50),
  -- N (White) 5: Zoroark Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 5, 571, 57100, 50),
  -- N (White) 6: Klinklang Lv. 50
  (110015, 11013, 11, 18, NULL, NULL, NULL, NULL, 6, 601, 60100, 50),
  -- Ghetsis 1: Cofagrigus Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 52),
  -- Ghetsis 2: Bouffalant Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 2, 626, 62600, 52),
  -- Ghetsis 3: Seismitoad Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 3, 537, 53700, 52),
  -- Ghetsis 4: Bisharp Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 52),
  -- Ghetsis 5: Eelektross Lv. 52
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 5, 604, 60400, 52),
  -- Ghetsis 6: Hydreigon Lv. 54
  (110016, 11014, 11, NULL, NULL, NULL, NULL, NULL, 6, 635, 63500, 54),
  -- Alder 1: Accelgor Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 1, 617, 61700, 75),
  -- Alder 2: Bouffalant Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 2, 626, 62600, 75),
  -- Alder 3: Druddigon Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 3, 621, 62100, 75),
  -- Alder 4: Vanilluxe Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 4, 584, 58400, 75),
  -- Alder 5: Escavalier Lv. 75
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 5, 589, 58900, 75),
  -- Alder 6: Volcarona Lv. 77
  (110017, 11015, 11, NULL, NULL, NULL, NULL, NULL, 6, 637, 63700, 77);
