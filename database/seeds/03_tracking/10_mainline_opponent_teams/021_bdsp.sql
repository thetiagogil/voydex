-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Brilliant Diamond / Shining Pearl Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Brilliant Diamond / Shining Pearl Gym Leaders and Elite Four page.
-- Barry and Cyrus battles: Serebii, cross-checked with PokéWiki and Bulbapedia.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Brilliant Diamond / Shining Pearl opponent uses in each Story battle, by
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
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Roark 2: Onix Lv. 12
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Roark 3: Cranidos Lv. 14
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14),
  -- Gardenia 1: Cherubi Lv. 19
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 1, 420, 42000, 19),
  -- Gardenia 2: Turtwig Lv. 19
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 2, 387, 38700, 19),
  -- Gardenia 3: Roserade Lv. 22
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22),
  -- Maylene 1: Meditite Lv. 27
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 27),
  -- Maylene 2: Machoke Lv. 27
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 27),
  -- Maylene 3: Lucario Lv. 30
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 30),
  -- Crasher Wake 1: Gyarados Lv. 27
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 27),
  -- Crasher Wake 2: Quagsire Lv. 27
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 27),
  -- Crasher Wake 3: Floatzel Lv. 30
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 30),
  -- Fantina 1: Drifblim Lv. 32
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 1, 426, 42600, 32),
  -- Fantina 2: Gengar Lv. 34
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 34),
  -- Fantina 3: Mismagius Lv. 36
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 36),
  -- Byron 1: Bronzor Lv. 36
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 1, 436, 43600, 36),
  -- Byron 2: Steelix Lv. 36
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 36),
  -- Byron 3: Bastiodon Lv. 39
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 39),
  -- Candice 1: Snover Lv. 38
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 1, 459, 45900, 38),
  -- Candice 2: Sneasel Lv. 38
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 38),
  -- Candice 3: Medicham Lv. 40
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 40),
  -- Candice 4: Abomasnow Lv. 42
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 4, 460, 46000, 42),
  -- Volkner 1: Raichu Lv. 46
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 46),
  -- Volkner 2: Ambipom Lv. 47
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 2, 424, 42400, 47),
  -- Volkner 3: Octillery Lv. 47
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 3, 224, 22400, 47),
  -- Volkner 4: Luxray Lv. 49
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 4, 405, 40500, 49),
  -- Aaron 1: Dustox Lv. 53
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 1, 269, 26900, 53),
  -- Aaron 2: Beautifly Lv. 53
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 2, 267, 26700, 53),
  -- Aaron 3: Vespiquen Lv. 54
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 54),
  -- Aaron 4: Heracross Lv. 54
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 54),
  -- Aaron 5: Drapion Lv. 57
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 57),
  -- Bertha 1: Quagsire Lv. 55
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 1, 195, 19500, 55),
  -- Bertha 2: Sudowoodo Lv. 56
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 2, 185, 18500, 56),
  -- Bertha 3: Golem Lv. 56
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 3, 76, 7600, 56),
  -- Bertha 4: Whiscash Lv. 55
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 55),
  -- Bertha 5: Hippowdon Lv. 59
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 5, 450, 45000, 59),
  -- Flint 1: Rapidash Lv. 58
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 1, 78, 7800, 58),
  -- Flint 2: Steelix Lv. 57
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 57),
  -- Flint 3: Drifblim Lv. 58
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 3, 426, 42600, 58),
  -- Flint 4: Lopunny Lv. 57
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 4, 428, 42800, 57),
  -- Flint 5: Infernape Lv. 61
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 5, 392, 39200, 61),
  -- Lucian 1: Mr. Mime Lv. 59
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 59),
  -- Lucian 2: Girafarig Lv. 59
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 2, 203, 20300, 59),
  -- Lucian 3: Medicham Lv. 60
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 60),
  -- Lucian 4: Alakazam Lv. 60
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 60),
  -- Lucian 5: Bronzong Lv. 63
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 5, 437, 43700, 63),
  -- Cynthia 1: Spiritomb Lv. 61
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 61),
  -- Cynthia 2: Roserade Lv. 60
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 60),
  -- Cynthia 3: Gastrodon Lv. 60
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 3, 423, 42300, 60),
  -- Cynthia 4: Lucario Lv. 63
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 63),
  -- Cynthia 5: Milotic Lv. 63
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 63),
  -- Cynthia 6: Garchomp Lv. 66
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 66),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (210003, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 390, 39000, 9),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (210003, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 393, 39300, 9),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (210003, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 387, 38700, 9),
  -- Barry (chose Turtwig), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Turtwig), Cobble Badge 2: Buizel Lv. 20
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 20),
  -- Barry (chose Turtwig), Cobble Badge 3: Roselia Lv. 20
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 315, 31500, 20),
  -- Barry (chose Turtwig), Cobble Badge 4: Monferno Lv. 21
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 391, 39100, 21),
  -- Barry (chose Chimchar), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Chimchar), Cobble Badge 2: Roselia Lv. 20
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 20),
  -- Barry (chose Chimchar), Cobble Badge 3: Ponyta Lv. 20
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 77, 7700, 20),
  -- Barry (chose Chimchar), Cobble Badge 4: Prinplup Lv. 21
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 394, 39400, 21),
  -- Barry (chose Piplup), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Piplup), Cobble Badge 2: Buizel Lv. 20
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 20),
  -- Barry (chose Piplup), Cobble Badge 3: Ponyta Lv. 20
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 77, 7700, 20),
  -- Barry (chose Piplup), Cobble Badge 4: Grotle Lv. 21
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 388, 38800, 21),
  -- Barry (chose Turtwig), Fen Badge 1: Starly Lv. 26
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 26
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 26),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 27
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 315, 31500, 27),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 31
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 391, 39100, 31),
  -- Barry (chose Chimchar), Fen Badge 1: Starly Lv. 26
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 26
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 26),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 27
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 77, 7700, 27),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 31
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 394, 39400, 31),
  -- Barry (chose Piplup), Fen Badge 1: Starly Lv. 26
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 26
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 26),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 27
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 77, 7700, 27),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 31
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 388, 38800, 31),
  -- Barry (chose Turtwig), Mine Badge 1: Staravia Lv. 32
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 397, 39700, 32),
  -- Barry (chose Turtwig), Mine Badge 2: Buizel Lv. 33
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 33),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 32),
  -- Barry (chose Turtwig), Mine Badge 4: Roselia Lv. 34
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 315, 31500, 34),
  -- Barry (chose Turtwig), Mine Badge 5: Monferno Lv. 37
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 391, 39100, 37),
  -- Barry (chose Chimchar), Mine Badge 1: Staravia Lv. 32
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 397, 39700, 32),
  -- Barry (chose Chimchar), Mine Badge 2: Roselia Lv. 33
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 33),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 32),
  -- Barry (chose Chimchar), Mine Badge 4: Ponyta Lv. 34
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 77, 7700, 34),
  -- Barry (chose Chimchar), Mine Badge 5: Prinplup Lv. 37
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 394, 39400, 37),
  -- Barry (chose Piplup), Mine Badge 1: Staravia Lv. 32
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 397, 39700, 32),
  -- Barry (chose Piplup), Mine Badge 2: Buizel Lv. 33
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 33),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 32),
  -- Barry (chose Piplup), Mine Badge 4: Ponyta Lv. 34
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 77, 7700, 34),
  -- Barry (chose Piplup), Mine Badge 5: Grotle Lv. 37
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 388, 38800, 37),
  -- Cyrus, Team Galactic HQ 1: Murkrow Lv. 40
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 1, 198, 19800, 40),
  -- Cyrus, Team Galactic HQ 2: Golbat Lv. 40
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 40),
  -- Cyrus, Team Galactic HQ 3: Sneasel Lv. 43
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 3, 215, 21500, 43),
  -- Cyrus, Spear Pillar 1: Honchkrow Lv. 45
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 1, 430, 43000, 45),
  -- Cyrus, Spear Pillar 2: Crobat Lv. 46
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 46),
  -- Cyrus, Spear Pillar 3: Gyarados Lv. 45
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 45),
  -- Cyrus, Spear Pillar 4: Weavile Lv. 48
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 4, 461, 46100, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 49
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 398, 39800, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 49
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 419, 41900, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 51),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 49
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 407, 40700, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 143, 14300, 52),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 55
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 6, 392, 39200, 55),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 49
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 398, 39800, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 49
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 407, 40700, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 51),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 49
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 78, 7800, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 143, 14300, 52),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 55
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 6, 395, 39500, 55),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 49
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 398, 39800, 49),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 49
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 419, 41900, 49),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 51),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 49
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 78, 7800, 49),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 143, 14300, 52),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 55
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 6, 389, 38900, 55),
  -- Barry (chose Turtwig), Fight Area 1: Staraptor Lv. 58
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Turtwig), Fight Area 2: Floatzel Lv. 59
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Turtwig), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Turtwig), Fight Area 4: Roserade Lv. 59
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 407, 40700, 59),
  -- Barry (chose Turtwig), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Turtwig), Fight Area 6: Infernape Lv. 64
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 6, 392, 39200, 64),
  -- Barry (chose Chimchar), Fight Area 1: Staraptor Lv. 58
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Chimchar), Fight Area 2: Roserade Lv. 59
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 407, 40700, 59),
  -- Barry (chose Chimchar), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Chimchar), Fight Area 4: Rapidash Lv. 59
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Chimchar), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Chimchar), Fight Area 6: Empoleon Lv. 64
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 6, 395, 39500, 64),
  -- Barry (chose Piplup), Fight Area 1: Staraptor Lv. 58
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Piplup), Fight Area 2: Floatzel Lv. 59
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Piplup), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Piplup), Fight Area 4: Rapidash Lv. 59
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Piplup), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Piplup), Fight Area 6: Torterra Lv. 64
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 6, 389, 38900, 64),
  -- Dialga, Spear Pillar 1: Dialga Lv. 47
  (210019, 21016, 21, NULL, NULL, NULL, NULL, NULL, 1, 483, 48300, 47),
  -- Palkia, Spear Pillar 1: Palkia Lv. 47
  (210019, 21017, 21, NULL, NULL, NULL, NULL, NULL, 1, 484, 48400, 47),
  -- Uxie, Lake Guardians 1: Uxie Lv. 50
  (210021, 21018, 21, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 50),
  -- Azelf, Lake Guardians 1: Azelf Lv. 50
  (210021, 21019, 21, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 50),
  -- Mesprit, Lake Guardians 1: Mesprit Lv. 50
  (210021, 21020, 21, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 50),
  -- Giratina, Turnback Cave 1: Giratina Lv. 70
  (210022, 21021, 21, NULL, NULL, NULL, NULL, NULL, 1, 487, 48700, 70),
  -- Cresselia, Roaming Cresselia 1: Cresselia Lv. 50
  (210023, 21022, 21, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 50),
  -- Heatran, Stark Mountain 1: Heatran Lv. 70
  (210024, 21023, 21, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 70),
  -- Regigigas, Snowpoint Temple 1: Regigigas Lv. 70
  (210025, 21024, 21, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 70),
  -- Regirock, Ramanas Park 1: Regirock Lv. 70
  (210017, 21025, 21, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 70),
  -- Regice, Ramanas Park 1: Regice Lv. 70
  (210017, 21026, 21, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 70),
  -- Registeel, Ramanas Park 1: Registeel Lv. 70
  (210017, 21027, 21, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 70),
  -- Raikou, Ramanas Park 1: Raikou Lv. 70
  (210017, 21028, 21, NULL, NULL, NULL, NULL, NULL, 1, 243, 24300, 70),
  -- Entei, Ramanas Park 1: Entei Lv. 70
  (210017, 21029, 21, NULL, NULL, NULL, NULL, NULL, 1, 244, 24400, 70),
  -- Suicune, Ramanas Park 1: Suicune Lv. 70
  (210017, 21030, 21, NULL, NULL, NULL, NULL, NULL, 1, 245, 24500, 70),
  -- Articuno, Ramanas Park 1: Articuno Lv. 70
  (210017, 21031, 21, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 70),
  -- Zapdos, Ramanas Park 1: Zapdos Lv. 70
  (210017, 21032, 21, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 70),
  -- Moltres, Ramanas Park 1: Moltres Lv. 70
  (210017, 21033, 21, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 70),
  -- Latias, Ramanas Park 1: Latias Lv. 70
  (210017, 21034, 21, NULL, NULL, NULL, NULL, NULL, 1, 380, 38000, 70),
  -- Latios, Ramanas Park 1: Latios Lv. 70
  (210017, 21035, 21, NULL, NULL, NULL, NULL, NULL, 1, 381, 38100, 70),
  -- Ho-Oh, Ramanas Park 1: Ho-Oh Lv. 70
  (210017, 21036, 21, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 70),
  -- Lugia, Ramanas Park 1: Lugia Lv. 70
  (210017, 21037, 21, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 70),
  -- Kyogre, Ramanas Park 1: Kyogre Lv. 70
  (210017, 21038, 21, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 70),
  -- Groudon, Ramanas Park 1: Groudon Lv. 70
  (210017, 21039, 21, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 70),
  -- Rayquaza, Ramanas Park 1: Rayquaza Lv. 70
  (210017, 21040, 21, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70),
  -- Mewtwo, Ramanas Park 1: Mewtwo Lv. 70
  (210017, 21041, 21, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70),
  -- Giratina, Ramanas Park 1: Giratina (Origin) Lv. 100
  (210017, 21021, 21, NULL, NULL, NULL, NULL, NULL, 1, 487, 48701, 100);
