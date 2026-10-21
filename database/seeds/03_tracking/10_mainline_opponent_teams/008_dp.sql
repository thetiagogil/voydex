-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Diamond / Pearl Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Diamond / Pearl Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Scope: Pokémon Diamond / Pearl Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Diamond / Pearl opponent uses in each Story battle, by
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
  -- Roark 1: Geodude Lv. 12
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Roark 2: Onix Lv. 12
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Roark 3: Cranidos Lv. 14
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14),
  -- Gardenia 1: Cherubi Lv. 19
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 1, 420, 42000, 19),
  -- Gardenia 2: Turtwig Lv. 19
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 2, 387, 38700, 19),
  -- Gardenia 3: Roserade Lv. 22
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22),
  -- Maylene 1: Meditite Lv. 27
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 27),
  -- Maylene 2: Machoke Lv. 27
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 27),
  -- Maylene 3: Lucario Lv. 30
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 30),
  -- Crasher Wake 1: Gyarados Lv. 27
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 27),
  -- Crasher Wake 2: Quagsire Lv. 27
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 27),
  -- Crasher Wake 3: Floatzel Lv. 30
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 30),
  -- Fantina 1: Drifblim Lv. 32
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 1, 426, 42600, 32),
  -- Fantina 2: Gengar Lv. 34
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 34),
  -- Fantina 3: Mismagius Lv. 36
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 36),
  -- Byron 1: Bronzor Lv. 36
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 1, 436, 43600, 36),
  -- Byron 2: Steelix Lv. 36
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 36),
  -- Byron 3: Bastiodon Lv. 39
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 39),
  -- Candice 1: Snover Lv. 38
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 1, 459, 45900, 38),
  -- Candice 2: Sneasel Lv. 38
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 38),
  -- Candice 3: Medicham Lv. 40
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 40),
  -- Candice 4: Abomasnow Lv. 42
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 4, 460, 46000, 42),
  -- Volkner 1: Raichu Lv. 46
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 46),
  -- Volkner 2: Ambipom Lv. 47
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 2, 424, 42400, 47),
  -- Volkner 3: Octillery Lv. 47
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 3, 224, 22400, 47),
  -- Volkner 4: Luxray Lv. 49
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 4, 405, 40500, 49),
  -- Aaron 1: Dustox Lv. 53
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 1, 269, 26900, 53),
  -- Aaron 2: Beautifly Lv. 53
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 2, 267, 26700, 53),
  -- Aaron 3: Vespiquen Lv. 54
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 54),
  -- Aaron 4: Heracross Lv. 54
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 54),
  -- Aaron 5: Drapion Lv. 57
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 57),
  -- Bertha 1: Quagsire Lv. 55
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 1, 195, 19500, 55),
  -- Bertha 2: Sudowoodo Lv. 56
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 2, 185, 18500, 56),
  -- Bertha 3: Golem Lv. 56
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 3, 76, 7600, 56),
  -- Bertha 4: Whiscash Lv. 55
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 55),
  -- Bertha 5: Hippowdon Lv. 59
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 5, 450, 45000, 59),
  -- Flint 1: Rapidash Lv. 58
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 1, 78, 7800, 58),
  -- Flint 2: Steelix Lv. 57
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 57),
  -- Flint 3: Drifblim Lv. 58
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 3, 426, 42600, 58),
  -- Flint 4: Lopunny Lv. 57
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 4, 428, 42800, 57),
  -- Flint 5: Infernape Lv. 61
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 5, 392, 39200, 61),
  -- Lucian 1: Mr. Mime Lv. 59
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 59),
  -- Lucian 2: Girafarig Lv. 59
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 2, 203, 20300, 59),
  -- Lucian 3: Medicham Lv. 60
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 60),
  -- Lucian 4: Alakazam Lv. 60
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 60),
  -- Lucian 5: Bronzong Lv. 63
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 5, 437, 43700, 63),
  -- Cynthia 1: Spiritomb Lv. 61
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 61),
  -- Cynthia 2: Roserade Lv. 60
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 60),
  -- Cynthia 3: Gastrodon Lv. 60
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 3, 423, 42300, 60),
  -- Cynthia 4: Lucario Lv. 63
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 63),
  -- Cynthia 5: Milotic Lv. 63
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 63),
  -- Cynthia 6: Garchomp Lv. 66
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 66);
