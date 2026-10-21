-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Platinum Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Platinum Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Scope: Pokémon Platinum Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Platinum opponent uses in each Story battle, by
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
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Roark 2: Onix Lv. 12
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Roark 3: Cranidos Lv. 14
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14),
  -- Gardenia 1: Turtwig Lv. 20
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 1, 387, 38700, 20),
  -- Gardenia 2: Cherrim Lv. 20
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 2, 421, 42100, 20),
  -- Gardenia 3: Roserade Lv. 22
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22),
  -- Fantina 1: Duskull Lv. 24
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 1, 355, 35500, 24),
  -- Fantina 2: Haunter Lv. 24
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 24),
  -- Fantina 3: Mismagius Lv. 26
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 26),
  -- Maylene 1: Meditite Lv. 28
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 28),
  -- Maylene 2: Machoke Lv. 29
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 29),
  -- Maylene 3: Lucario Lv. 32
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 32),
  -- Crasher Wake 1: Gyarados Lv. 33
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 33),
  -- Crasher Wake 2: Quagsire Lv. 34
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 34),
  -- Crasher Wake 3: Floatzel Lv. 37
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 37),
  -- Byron 1: Magneton Lv. 37
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 1, 82, 8200, 37),
  -- Byron 2: Steelix Lv. 38
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 38),
  -- Byron 3: Bastiodon Lv. 41
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 41),
  -- Candice 1: Sneasel Lv. 40
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 40),
  -- Candice 2: Piloswine Lv. 40
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 2, 221, 22100, 40),
  -- Candice 3: Abomasnow Lv. 42
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 3, 460, 46000, 42),
  -- Candice 4: Froslass Lv. 44
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 44),
  -- Volkner 1: Jolteon Lv. 46
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 1, 135, 13500, 46),
  -- Volkner 2: Raichu Lv. 46
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 2, 26, 2600, 46),
  -- Volkner 3: Luxray Lv. 48
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 3, 405, 40500, 48),
  -- Volkner 4: Electivire Lv. 50
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 4, 466, 46600, 50),
  -- Aaron 1: Yanmega Lv. 49
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 1, 469, 46900, 49),
  -- Aaron 2: Scizor Lv. 49
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 2, 212, 21200, 49),
  -- Aaron 3: Vespiquen Lv. 50
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 50),
  -- Aaron 4: Heracross Lv. 51
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 51),
  -- Aaron 5: Drapion Lv. 53
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 53),
  -- Bertha 1: Whiscash Lv. 50
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 1, 340, 34000, 50),
  -- Bertha 2: Gliscor Lv. 53
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 2, 472, 47200, 53),
  -- Bertha 3: Hippowdon Lv. 52
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 3, 450, 45000, 52),
  -- Bertha 4: Golem Lv. 52
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 4, 76, 7600, 52),
  -- Bertha 5: Rhyperior Lv. 55
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 5, 464, 46400, 55),
  -- Flint 1: Houndoom Lv. 52
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 52),
  -- Flint 2: Flareon Lv. 55
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 2, 136, 13600, 55),
  -- Flint 3: Rapidash Lv. 53
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 53),
  -- Flint 4: Infernape Lv. 55
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 4, 392, 39200, 55),
  -- Flint 5: Magmortar Lv. 57
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 5, 467, 46700, 57),
  -- Lucian 1: Mr. Mime Lv. 53
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 53),
  -- Lucian 2: Espeon Lv. 55
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 2, 196, 19600, 55),
  -- Lucian 3: Bronzong Lv. 54
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 3, 437, 43700, 54),
  -- Lucian 4: Alakazam Lv. 56
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 56),
  -- Lucian 5: Gallade Lv. 59
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 5, 475, 47500, 59),
  -- Cynthia 1: Spiritomb Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 58),
  -- Cynthia 2: Roserade Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 58),
  -- Cynthia 3: Togekiss Lv. 60
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 60),
  -- Cynthia 4: Lucario Lv. 60
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 60),
  -- Cynthia 5: Milotic Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 58),
  -- Cynthia 6: Garchomp Lv. 62
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 62);
