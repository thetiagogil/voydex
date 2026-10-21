-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Black 2 / White 2 Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Black 2 / White 2 Gym Leaders and Elite Four page.
-- Scope: Pokémon Black 2 / White 2 first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Black 2 / White 2 opponent uses the first time you battle them, by
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
  -- Cheren 1: Patrat Lv. 11
  (12001, 12, NULL, NULL, NULL, NULL, NULL, 1, 504, 50400, 11),
  -- Cheren 2: Lillipup Lv. 13
  (12001, 12, NULL, NULL, NULL, NULL, NULL, 2, 506, 50600, 13),
  -- Roxie 1: Koffing Lv. 16
  (12002, 12, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 16),
  -- Roxie 2: Whirlipede Lv. 18
  (12002, 12, NULL, NULL, NULL, NULL, NULL, 2, 544, 54400, 18),
  -- Burgh 1: Swadloon Lv. 22
  (12003, 12, NULL, NULL, NULL, NULL, NULL, 1, 541, 54100, 22),
  -- Burgh 2: Dwebble Lv. 22
  (12003, 12, NULL, NULL, NULL, NULL, NULL, 2, 557, 55700, 22),
  -- Burgh 3: Leavanny Lv. 24
  (12003, 12, NULL, NULL, NULL, NULL, NULL, 3, 542, 54200, 24),
  -- Elesa 1: Emolga Lv. 28
  (12004, 12, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 28),
  -- Elesa 2: Flaaffy Lv. 28
  (12004, 12, NULL, NULL, NULL, NULL, NULL, 2, 180, 18000, 28),
  -- Elesa 3: Zebstrika Lv. 30
  (12004, 12, NULL, NULL, NULL, NULL, NULL, 3, 523, 52300, 30),
  -- Clay 1: Krokorok Lv. 31
  (12005, 12, NULL, NULL, NULL, NULL, NULL, 1, 552, 55200, 31),
  -- Clay 2: Sandslash Lv. 31
  (12005, 12, NULL, NULL, NULL, NULL, NULL, 2, 28, 2800, 31),
  -- Clay 3: Excadrill Lv. 33
  (12005, 12, NULL, NULL, NULL, NULL, NULL, 3, 530, 53000, 33),
  -- Skyla 1: Swoobat Lv. 37
  (12006, 12, NULL, NULL, NULL, NULL, NULL, 1, 528, 52800, 37),
  -- Skyla 2: Skarmory Lv. 37
  (12006, 12, NULL, NULL, NULL, NULL, NULL, 2, 227, 22700, 37),
  -- Skyla 3: Swanna Lv. 39
  (12006, 12, NULL, NULL, NULL, NULL, NULL, 3, 581, 58100, 39),
  -- Drayden 1: Druddigon Lv. 46
  (12007, 12, NULL, NULL, NULL, NULL, NULL, 1, 621, 62100, 46),
  -- Drayden 2: Flygon Lv. 46
  (12007, 12, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 46),
  -- Drayden 3: Haxorus Lv. 48
  (12007, 12, NULL, NULL, NULL, NULL, NULL, 3, 612, 61200, 48),
  -- Marlon 1: Carracosta Lv. 49
  (12008, 12, NULL, NULL, NULL, NULL, NULL, 1, 565, 56500, 49),
  -- Marlon 2: Wailord Lv. 49
  (12008, 12, NULL, NULL, NULL, NULL, NULL, 2, 321, 32100, 49),
  -- Marlon 3: Jellicent Lv. 51
  (12008, 12, NULL, NULL, NULL, NULL, NULL, 3, 593, 59300, 51),
  -- Colress 1: Magneton Lv. 50
  (12009, 12, NULL, NULL, NULL, NULL, NULL, 1, 82, 8200, 50),
  -- Colress 2: Metang Lv. 50
  (12009, 12, NULL, NULL, NULL, NULL, NULL, 2, 375, 37500, 50),
  -- Colress 3: Beheeyem Lv. 50
  (12009, 12, NULL, NULL, NULL, NULL, NULL, 3, 606, 60600, 50),
  -- Colress 4: Magnezone Lv. 50
  (12009, 12, NULL, NULL, NULL, NULL, NULL, 4, 462, 46200, 50),
  -- Colress 5: Klinklang Lv. 52
  (12009, 12, NULL, NULL, NULL, NULL, NULL, 5, 601, 60100, 52),
  -- Ghetsis 1: Cofagrigus Lv. 50
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 50),
  -- Ghetsis 2: Seismitoad Lv. 50
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 2, 537, 53700, 50),
  -- Ghetsis 3: Eelektross Lv. 50
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 3, 604, 60400, 50),
  -- Ghetsis 4: Drapion Lv. 50
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 4, 452, 45200, 50),
  -- Ghetsis 5: Toxicroak Lv. 50
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 5, 454, 45400, 50),
  -- Ghetsis 6: Hydreigon Lv. 52
  (12010, 12, NULL, NULL, NULL, NULL, NULL, 6, 635, 63500, 52),
  -- Shauntal 1: Cofagrigus Lv. 56
  (12011, 12, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 56),
  -- Shauntal 2: Drifblim Lv. 56
  (12011, 12, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 56),
  -- Shauntal 3: Golurk Lv. 56
  (12011, 12, NULL, NULL, NULL, NULL, NULL, 3, 623, 62300, 56),
  -- Shauntal 4: Chandelure Lv. 58
  (12011, 12, NULL, NULL, NULL, NULL, NULL, 4, 609, 60900, 58),
  -- Grimsley 1: Liepard Lv. 56
  (12012, 12, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 56),
  -- Grimsley 2: Scrafty Lv. 56
  (12012, 12, NULL, NULL, NULL, NULL, NULL, 2, 560, 56000, 56),
  -- Grimsley 3: Krookodile Lv. 56
  (12012, 12, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 56),
  -- Grimsley 4: Bisharp Lv. 58
  (12012, 12, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 58),
  -- Caitlin 1: Musharna Lv. 56
  (12013, 12, NULL, NULL, NULL, NULL, NULL, 1, 518, 51800, 56),
  -- Caitlin 2: Reuniclus Lv. 56
  (12013, 12, NULL, NULL, NULL, NULL, NULL, 2, 579, 57900, 56),
  -- Caitlin 3: Sigilyph Lv. 56
  (12013, 12, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 56),
  -- Caitlin 4: Gothitelle Lv. 58
  (12013, 12, NULL, NULL, NULL, NULL, NULL, 4, 576, 57600, 58),
  -- Marshal 1: Throh Lv. 56
  (12014, 12, NULL, NULL, NULL, NULL, NULL, 1, 538, 53800, 56),
  -- Marshal 2: Sawk Lv. 56
  (12014, 12, NULL, NULL, NULL, NULL, NULL, 2, 539, 53900, 56),
  -- Marshal 3: Mienshao Lv. 56
  (12014, 12, NULL, NULL, NULL, NULL, NULL, 3, 620, 62000, 56),
  -- Marshal 4: Conkeldurr Lv. 58
  (12014, 12, NULL, NULL, NULL, NULL, NULL, 4, 534, 53400, 58),
  -- Iris 1: Hydreigon Lv. 57
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 1, 635, 63500, 57),
  -- Iris 2: Druddigon Lv. 57
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 2, 621, 62100, 57),
  -- Iris 3: Archeops Lv. 57
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 3, 567, 56700, 57),
  -- Iris 4: Aggron Lv. 57
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 4, 306, 30600, 57),
  -- Iris 5: Lapras Lv. 57
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 57),
  -- Iris 6: Haxorus Lv. 59
  (12015, 12, NULL, NULL, NULL, NULL, NULL, 6, 612, 61200, 59);
