-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Diamond / Pearl Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Diamond / Pearl Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Barry and Cyrus battles: the pret pokediamond trainer data, cross-checked with Bulbapedia, Serebii and PokéWiki.
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
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 66),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (80003, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 390, 39000, 9),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (80003, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 393, 39300, 9),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (80003, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 387, 38700, 9),
  -- Barry (chose Turtwig), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Turtwig), Cobble Badge 2: Buizel Lv. 20
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 20),
  -- Barry (chose Turtwig), Cobble Badge 3: Roselia Lv. 20
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 315, 31500, 20),
  -- Barry (chose Turtwig), Cobble Badge 4: Monferno Lv. 21
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 391, 39100, 21),
  -- Barry (chose Chimchar), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Chimchar), Cobble Badge 2: Roselia Lv. 20
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 20),
  -- Barry (chose Chimchar), Cobble Badge 3: Ponyta Lv. 20
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 77, 7700, 20),
  -- Barry (chose Chimchar), Cobble Badge 4: Prinplup Lv. 21
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 394, 39400, 21),
  -- Barry (chose Piplup), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 19),
  -- Barry (chose Piplup), Cobble Badge 2: Buizel Lv. 20
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 20),
  -- Barry (chose Piplup), Cobble Badge 3: Ponyta Lv. 20
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 77, 7700, 20),
  -- Barry (chose Piplup), Cobble Badge 4: Grotle Lv. 21
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 388, 38800, 21),
  -- Barry (chose Turtwig), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 25
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 25),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 25
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 315, 31500, 25),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 28
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 391, 39100, 28),
  -- Barry (chose Chimchar), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 25
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 25),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 25
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 77, 7700, 25),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 28
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 394, 39400, 28),
  -- Barry (chose Piplup), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 26),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 25
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 25),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 25
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 77, 7700, 25),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 28
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 388, 38800, 28),
  -- Barry (chose Turtwig), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 397, 39700, 31),
  -- Barry (chose Turtwig), Mine Badge 2: Buizel Lv. 32
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 32),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 30),
  -- Barry (chose Turtwig), Mine Badge 4: Roselia Lv. 32
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 315, 31500, 32),
  -- Barry (chose Turtwig), Mine Badge 5: Monferno Lv. 35
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 391, 39100, 35),
  -- Barry (chose Chimchar), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 397, 39700, 31),
  -- Barry (chose Chimchar), Mine Badge 2: Roselia Lv. 32
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 32),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 30),
  -- Barry (chose Chimchar), Mine Badge 4: Ponyta Lv. 32
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 77, 7700, 32),
  -- Barry (chose Chimchar), Mine Badge 5: Prinplup Lv. 35
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 394, 39400, 35),
  -- Barry (chose Piplup), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 397, 39700, 31),
  -- Barry (chose Piplup), Mine Badge 2: Buizel Lv. 32
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 32),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 30),
  -- Barry (chose Piplup), Mine Badge 4: Ponyta Lv. 32
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 77, 7700, 32),
  -- Barry (chose Piplup), Mine Badge 5: Grotle Lv. 35
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 388, 38800, 35),
  -- Cyrus, Team Galactic HQ 1: Murkrow Lv. 40
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 1, 198, 19800, 40),
  -- Cyrus, Team Galactic HQ 2: Golbat Lv. 40
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 40),
  -- Cyrus, Team Galactic HQ 3: Sneasel Lv. 43
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 3, 215, 21500, 43),
  -- Cyrus, Spear Pillar 1: Honchkrow Lv. 45
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 1, 430, 43000, 45),
  -- Cyrus, Spear Pillar 2: Crobat Lv. 46
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 46),
  -- Cyrus, Spear Pillar 3: Gyarados Lv. 45
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 45),
  -- Cyrus, Spear Pillar 4: Weavile Lv. 48
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 4, 461, 46100, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 49
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 419, 41900, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 50),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 49
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 407, 40700, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 143, 14300, 51),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 53
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 6, 392, 39200, 53),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 49
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 407, 40700, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 50),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 49
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 78, 7800, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 143, 14300, 51),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 53
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 6, 395, 39500, 53),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 49
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 419, 41900, 49),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 50),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 49
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 78, 7800, 49),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 143, 14300, 51),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 53
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 6, 389, 38900, 53),
  -- Barry (chose Turtwig), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Turtwig), Fight Area 2: Floatzel Lv. 59
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Turtwig), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Turtwig), Fight Area 4: Roserade Lv. 59
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 407, 40700, 59),
  -- Barry (chose Turtwig), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Turtwig), Fight Area 6: Infernape Lv. 64
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 6, 392, 39200, 64),
  -- Barry (chose Chimchar), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Chimchar), Fight Area 2: Roserade Lv. 59
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 407, 40700, 59),
  -- Barry (chose Chimchar), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Chimchar), Fight Area 4: Rapidash Lv. 59
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Chimchar), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Chimchar), Fight Area 6: Empoleon Lv. 64
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 6, 395, 39500, 64),
  -- Barry (chose Piplup), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 398, 39800, 58),
  -- Barry (chose Piplup), Fight Area 2: Floatzel Lv. 59
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Piplup), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 60),
  -- Barry (chose Piplup), Fight Area 4: Rapidash Lv. 59
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Piplup), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 143, 14300, 60),
  -- Barry (chose Piplup), Fight Area 6: Torterra Lv. 64
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 6, 389, 38900, 64);
