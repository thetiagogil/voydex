-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Diamond / Pearl Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Diamond / Pearl Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Barry and Cyrus battles: the pret pokediamond trainer data, cross-checked with Bulbapedia, Serebii and PokéWiki.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Held items: the pret pokediamond disassembly's trainer data; wild Pokémon here hold nothing in their species data.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokediamond trainer data
-- (parties, set moves, held items), cross-checked with Bulbapedia's trainer pages.
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
  level,
  held_item_id
) VALUES
  -- Roark 1: Geodude Lv. 12
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL),
  -- Roark 2: Onix Lv. 12
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12, NULL),
  -- Roark 3: Cranidos Lv. 14
  (80003, 8001, 8, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14, NULL),
  -- Gardenia 1: Cherubi Lv. 19
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 1, 420, 42000, 19, NULL),
  -- Gardenia 2: Turtwig Lv. 19
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 2, 387, 38700, 19, NULL),
  -- Gardenia 3: Roserade Lv. 22, holds Sitrus Berry
  (80004, 8002, 8, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22, 187),
  -- Maylene 1: Meditite Lv. 27
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 27, NULL),
  -- Maylene 2: Machoke Lv. 27
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 27, NULL),
  -- Maylene 3: Lucario Lv. 30, holds Sitrus Berry
  (80005, 8003, 8, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 30, 187),
  -- Crasher Wake 1: Gyarados Lv. 27
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 27, NULL),
  -- Crasher Wake 2: Quagsire Lv. 27
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 27, NULL),
  -- Crasher Wake 3: Floatzel Lv. 30, holds Sitrus Berry
  (80006, 8004, 8, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 30, 187),
  -- Fantina 1: Drifblim Lv. 32
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 1, 426, 42600, 32, NULL),
  -- Fantina 2: Gengar Lv. 34
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 34, NULL),
  -- Fantina 3: Mismagius Lv. 36, holds Sitrus Berry
  (80007, 8005, 8, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 36, 187),
  -- Byron 1: Bronzor Lv. 36
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 1, 436, 43600, 36, NULL),
  -- Byron 2: Steelix Lv. 36
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 36, NULL),
  -- Byron 3: Bastiodon Lv. 39, holds Chesto Berry
  (80008, 8006, 8, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 39, 179),
  -- Candice 1: Snover Lv. 38
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 1, 459, 45900, 38, NULL),
  -- Candice 2: Sneasel Lv. 38
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 38, NULL),
  -- Candice 3: Medicham Lv. 40
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 40, NULL),
  -- Candice 4: Abomasnow Lv. 42, holds Sitrus Berry
  (80009, 8007, 8, NULL, NULL, NULL, NULL, NULL, 4, 460, 46000, 42, 187),
  -- Volkner 1: Raichu Lv. 46
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 46, NULL),
  -- Volkner 2: Ambipom Lv. 47
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 2, 424, 42400, 47, NULL),
  -- Volkner 3: Octillery Lv. 47
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 3, 224, 22400, 47, NULL),
  -- Volkner 4: Luxray Lv. 49, holds Sitrus Berry
  (80010, 8008, 8, NULL, NULL, NULL, NULL, NULL, 4, 405, 40500, 49, 187),
  -- Aaron 1: Dustox Lv. 53
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 1, 269, 26900, 53, NULL),
  -- Aaron 2: Beautifly Lv. 53
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 2, 267, 26700, 53, NULL),
  -- Aaron 3: Vespiquen Lv. 54
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 54, NULL),
  -- Aaron 4: Heracross Lv. 54
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 54, NULL),
  -- Aaron 5: Drapion Lv. 57, holds Sitrus Berry
  (80011, 8009, 8, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 57, 187),
  -- Bertha 1: Quagsire Lv. 55
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 1, 195, 19500, 55, NULL),
  -- Bertha 2: Sudowoodo Lv. 56
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 2, 185, 18500, 56, NULL),
  -- Bertha 3: Golem Lv. 56
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 3, 76, 7600, 56, NULL),
  -- Bertha 4: Whiscash Lv. 55
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 55, NULL),
  -- Bertha 5: Hippowdon Lv. 59, holds Sitrus Berry
  (80012, 8010, 8, NULL, NULL, NULL, NULL, NULL, 5, 450, 45000, 59, 187),
  -- Flint 1: Rapidash Lv. 58
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 1, 78, 7800, 58, NULL),
  -- Flint 2: Steelix Lv. 57
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 57, NULL),
  -- Flint 3: Drifblim Lv. 58
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 3, 426, 42600, 58, NULL),
  -- Flint 4: Lopunny Lv. 57
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 4, 428, 42800, 57, NULL),
  -- Flint 5: Infernape Lv. 61, holds Sitrus Berry
  (80013, 8011, 8, NULL, NULL, NULL, NULL, NULL, 5, 392, 39200, 61, 187),
  -- Lucian 1: Mr. Mime Lv. 59
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 59, NULL),
  -- Lucian 2: Girafarig Lv. 59
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 2, 203, 20300, 59, NULL),
  -- Lucian 3: Medicham Lv. 60
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 60, NULL),
  -- Lucian 4: Alakazam Lv. 60
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 60, NULL),
  -- Lucian 5: Bronzong Lv. 63, holds Sitrus Berry
  (80014, 8012, 8, NULL, NULL, NULL, NULL, NULL, 5, 437, 43700, 63, 187),
  -- Cynthia 1: Spiritomb Lv. 61
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 61, NULL),
  -- Cynthia 2: Roserade Lv. 60
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 60, NULL),
  -- Cynthia 3: Gastrodon Lv. 60
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 3, 423, 42300, 60, NULL),
  -- Cynthia 4: Lucario Lv. 63
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 63, NULL),
  -- Cynthia 5: Milotic Lv. 63
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 63, NULL),
  -- Cynthia 6: Garchomp Lv. 66, holds Sitrus Berry
  (80015, 8013, 8, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 66, 187),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (80003, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 390, 39000, 9, NULL),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (80003, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 393, 39300, 9, NULL),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (80003, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (80003, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 387, 38700, 9, NULL),
  -- Barry (chose Turtwig), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Turtwig), Cobble Badge 2: Buizel Lv. 20
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 20, NULL),
  -- Barry (chose Turtwig), Cobble Badge 3: Roselia Lv. 20
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 315, 31500, 20, NULL),
  -- Barry (chose Turtwig), Cobble Badge 4: Monferno Lv. 21
  (80005, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 391, 39100, 21, NULL),
  -- Barry (chose Chimchar), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Chimchar), Cobble Badge 2: Roselia Lv. 20
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 20, NULL),
  -- Barry (chose Chimchar), Cobble Badge 3: Ponyta Lv. 20
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 77, 7700, 20, NULL),
  -- Barry (chose Chimchar), Cobble Badge 4: Prinplup Lv. 21
  (80005, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 394, 39400, 21, NULL),
  -- Barry (chose Piplup), Cobble Badge 1: Starly Lv. 19
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Piplup), Cobble Badge 2: Buizel Lv. 20
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 20, NULL),
  -- Barry (chose Piplup), Cobble Badge 3: Ponyta Lv. 20
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 77, 7700, 20, NULL),
  -- Barry (chose Piplup), Cobble Badge 4: Grotle Lv. 21
  (80005, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 388, 38800, 21, NULL),
  -- Barry (chose Turtwig), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 396, 39600, 26, NULL),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 25
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 25, NULL),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 25
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 315, 31500, 25, NULL),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 28
  (80006, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 391, 39100, 28, NULL),
  -- Barry (chose Chimchar), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 396, 39600, 26, NULL),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 25
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 25, NULL),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 25
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 77, 7700, 25, NULL),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 28
  (80006, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 394, 39400, 28, NULL),
  -- Barry (chose Piplup), Fen Badge 1: Starly Lv. 26
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 396, 39600, 26, NULL),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 25
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 25, NULL),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 25
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 77, 7700, 25, NULL),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 28
  (80006, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 388, 38800, 28, NULL),
  -- Barry (chose Turtwig), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 397, 39700, 31, NULL),
  -- Barry (chose Turtwig), Mine Badge 2: Buizel Lv. 32
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 418, 41800, 32, NULL),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 30, NULL),
  -- Barry (chose Turtwig), Mine Badge 4: Roselia Lv. 32
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 315, 31500, 32, NULL),
  -- Barry (chose Turtwig), Mine Badge 5: Monferno Lv. 35
  (80008, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 391, 39100, 35, NULL),
  -- Barry (chose Chimchar), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 397, 39700, 31, NULL),
  -- Barry (chose Chimchar), Mine Badge 2: Roselia Lv. 32
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 315, 31500, 32, NULL),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 30, NULL),
  -- Barry (chose Chimchar), Mine Badge 4: Ponyta Lv. 32
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 77, 7700, 32, NULL),
  -- Barry (chose Chimchar), Mine Badge 5: Prinplup Lv. 35
  (80008, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 394, 39400, 35, NULL),
  -- Barry (chose Piplup), Mine Badge 1: Staravia Lv. 31
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 397, 39700, 31, NULL),
  -- Barry (chose Piplup), Mine Badge 2: Buizel Lv. 32
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 418, 41800, 32, NULL),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 30
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 30, NULL),
  -- Barry (chose Piplup), Mine Badge 4: Ponyta Lv. 32
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 77, 7700, 32, NULL),
  -- Barry (chose Piplup), Mine Badge 5: Grotle Lv. 35
  (80008, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 388, 38800, 35, NULL),
  -- Cyrus, Team Galactic HQ 1: Murkrow Lv. 40
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 1, 198, 19800, 40, NULL),
  -- Cyrus, Team Galactic HQ 2: Golbat Lv. 40
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 40, NULL),
  -- Cyrus, Team Galactic HQ 3: Sneasel Lv. 43, holds Sitrus Berry
  (80017, 8015, 8, NULL, NULL, NULL, NULL, NULL, 3, 215, 21500, 43, 187),
  -- Cyrus, Spear Pillar 1: Honchkrow Lv. 45
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 1, 430, 43000, 45, NULL),
  -- Cyrus, Spear Pillar 2: Crobat Lv. 46
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 46, NULL),
  -- Cyrus, Spear Pillar 3: Gyarados Lv. 45
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 45, NULL),
  -- Cyrus, Spear Pillar 4: Weavile Lv. 48, holds Sitrus Berry
  (80018, 8015, 8, NULL, NULL, NULL, NULL, NULL, 4, 461, 46100, 48, 187),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 49
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 419, 41900, 49, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 50, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 49
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 407, 40700, 49, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 143, 14300, 51, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 53
  (80011, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 6, 392, 39200, 53, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 49
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 407, 40700, 49, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 50, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 49
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 78, 7800, 49, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 143, 14300, 51, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 53
  (80011, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 6, 395, 39500, 53, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 48
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 49
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 419, 41900, 49, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 50
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 50, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 49
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 78, 7800, 49, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 51
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 143, 14300, 51, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 53
  (80011, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 6, 389, 38900, 53, NULL),
  -- Barry (chose Turtwig), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 1, 398, 39800, 58, NULL),
  -- Barry (chose Turtwig), Fight Area 2: Floatzel Lv. 59
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 2, 419, 41900, 59, NULL),
  -- Barry (chose Turtwig), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Turtwig), Fight Area 4: Roserade Lv. 59
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 4, 407, 40700, 59, NULL),
  -- Barry (chose Turtwig), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Turtwig), Fight Area 6: Infernape Lv. 64
  (80019, 8014, 8, NULL, 80001, 'turtwig', NULL, NULL, 6, 392, 39200, 64, NULL),
  -- Barry (chose Chimchar), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 1, 398, 39800, 58, NULL),
  -- Barry (chose Chimchar), Fight Area 2: Roserade Lv. 59
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 2, 407, 40700, 59, NULL),
  -- Barry (chose Chimchar), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Chimchar), Fight Area 4: Rapidash Lv. 59
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 4, 78, 7800, 59, NULL),
  -- Barry (chose Chimchar), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Chimchar), Fight Area 6: Empoleon Lv. 64
  (80019, 8014, 8, NULL, 80001, 'chimchar', NULL, NULL, 6, 395, 39500, 64, NULL),
  -- Barry (chose Piplup), Fight Area 1: Staraptor Lv. 58
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 1, 398, 39800, 58, NULL),
  -- Barry (chose Piplup), Fight Area 2: Floatzel Lv. 59
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 2, 419, 41900, 59, NULL),
  -- Barry (chose Piplup), Fight Area 3: Heracross Lv. 60
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Piplup), Fight Area 4: Rapidash Lv. 59
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 4, 78, 7800, 59, NULL),
  -- Barry (chose Piplup), Fight Area 5: Snorlax Lv. 60
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Piplup), Fight Area 6: Torterra Lv. 64
  (80019, 8014, 8, NULL, 80001, 'piplup', NULL, NULL, 6, 389, 38900, 64, NULL),
  -- Dialga, Spear Pillar 1: Dialga Lv. 47
  (80018, 8016, 8, NULL, NULL, NULL, NULL, NULL, 1, 483, 48300, 47, NULL),
  -- Palkia, Spear Pillar 1: Palkia Lv. 47
  (80018, 8017, 8, NULL, NULL, NULL, NULL, NULL, 1, 484, 48400, 47, NULL),
  -- Uxie, Lake Guardians 1: Uxie Lv. 50
  (80020, 8018, 8, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 50, NULL),
  -- Azelf, Lake Guardians 1: Azelf Lv. 50
  (80020, 8019, 8, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 50, NULL),
  -- Mesprit, Lake Guardians 1: Mesprit Lv. 50
  (80020, 8020, 8, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 50, NULL),
  -- Giratina, Turnback Cave 1: Giratina Lv. 70
  (80021, 8021, 8, NULL, NULL, NULL, NULL, NULL, 1, 487, 48700, 70, NULL),
  -- Cresselia, Roaming Cresselia 1: Cresselia Lv. 50
  (80022, 8022, 8, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 50, NULL),
  -- Regigigas, Snowpoint Temple 1: Regigigas Lv. 70
  (80023, 8023, 8, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 70, NULL),
  -- Heatran, Stark Mountain 1: Heatran Lv. 70
  (80024, 8024, 8, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 70, NULL),
  -- Mars, Valley Windworks 1: Zubat Lv. 14
  (80004, 8025, 8, NULL, NULL, NULL, NULL, NULL, 1, 41, 4100, 14, NULL),
  -- Mars, Valley Windworks 2: Purugly Lv. 16, holds Oran Berry
  (80004, 8025, 8, NULL, NULL, NULL, NULL, NULL, 2, 432, 43200, 16, 184),
  -- Jupiter, Team Galactic Eterna Building 1: Zubat Lv. 18
  (80004, 8026, 8, NULL, NULL, NULL, NULL, NULL, 1, 41, 4100, 18, NULL),
  -- Jupiter, Team Galactic Eterna Building 2: Skuntank Lv. 20, holds Sitrus Berry
  (80004, 8026, 8, NULL, NULL, NULL, NULL, NULL, 2, 435, 43500, 20, 187),
  -- Saturn, Lake Valor 1: Kadabra Lv. 35
  (80009, 8027, 8, NULL, NULL, NULL, NULL, NULL, 1, 64, 6400, 35, NULL),
  -- Saturn, Lake Valor 2: Bronzor Lv. 35
  (80009, 8027, 8, NULL, NULL, NULL, NULL, NULL, 2, 436, 43600, 35, NULL),
  -- Saturn, Lake Valor 3: Toxicroak Lv. 37, holds Sitrus Berry
  (80009, 8027, 8, NULL, NULL, NULL, NULL, NULL, 3, 454, 45400, 37, 187),
  -- Mars, Lake Verity 1: Golbat Lv. 37
  (80009, 8025, 8, NULL, NULL, NULL, NULL, NULL, 1, 42, 4200, 37, NULL),
  -- Mars, Lake Verity 2: Bronzor Lv. 37
  (80009, 8025, 8, NULL, NULL, NULL, NULL, NULL, 2, 436, 43600, 37, NULL),
  -- Mars, Lake Verity 3: Purugly Lv. 39, holds Sitrus Berry
  (80009, 8025, 8, NULL, NULL, NULL, NULL, NULL, 3, 432, 43200, 39, 187),
  -- Saturn, Team Galactic HQ 1: Kadabra Lv. 38
  (80017, 8027, 8, NULL, NULL, NULL, NULL, NULL, 1, 64, 6400, 38, NULL),
  -- Saturn, Team Galactic HQ 2: Bronzor Lv. 38
  (80017, 8027, 8, NULL, NULL, NULL, NULL, NULL, 2, 436, 43600, 38, NULL),
  -- Saturn, Team Galactic HQ 3: Toxicroak Lv. 40, holds Sitrus Berry
  (80017, 8027, 8, NULL, NULL, NULL, NULL, NULL, 3, 454, 45400, 40, 187),
  -- Mars & Jupiter, Spear Pillar 1: Bronzor Lv. 41
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 1, 436, 43600, 41, NULL),
  -- Mars & Jupiter, Spear Pillar 2: Golbat Lv. 42
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 42, NULL),
  -- Mars & Jupiter, Spear Pillar 3: Purugly Lv. 45, holds Sitrus Berry
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 3, 432, 43200, 45, 187),
  -- Mars & Jupiter, Spear Pillar 4: Bronzor Lv. 41
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 4, 436, 43600, 41, NULL),
  -- Mars & Jupiter, Spear Pillar 5: Golbat Lv. 41
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 5, 42, 4200, 41, NULL),
  -- Mars & Jupiter, Spear Pillar 6: Skuntank Lv. 46, holds Sitrus Berry
  (80018, 8028, 8, NULL, NULL, NULL, NULL, NULL, 6, 435, 43500, 46, 187);
