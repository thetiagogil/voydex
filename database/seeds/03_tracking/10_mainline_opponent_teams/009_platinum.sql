-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Platinum Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Platinum Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Barry and Cyrus battles: the pret pokeplatinum trainer data and map scripts, cross-checked with Bulbapedia, Serebii and PokéWiki.
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
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 62),
  -- Barry (chose Turtwig), Choose Starter 1: Chimchar Lv. 5
  (90001, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 390, 39000, 5),
  -- Barry (chose Chimchar), Choose Starter 1: Piplup Lv. 5
  (90001, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 393, 39300, 5),
  -- Barry (chose Piplup), Choose Starter 1: Turtwig Lv. 5
  (90001, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 387, 38700, 5),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (90003, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 390, 39000, 9),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (90003, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 393, 39300, 9),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 396, 39600, 7),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (90003, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 387, 38700, 9),
  -- Barry (chose Turtwig), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 397, 39700, 25),
  -- Barry (chose Turtwig), Relic Badge 2: Buizel Lv. 23
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 418, 41800, 23),
  -- Barry (chose Turtwig), Relic Badge 3: Roselia Lv. 23
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 315, 31500, 23),
  -- Barry (chose Turtwig), Relic Badge 4: Monferno Lv. 27
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 391, 39100, 27),
  -- Barry (chose Chimchar), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 397, 39700, 25),
  -- Barry (chose Chimchar), Relic Badge 2: Roselia Lv. 23
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 315, 31500, 23),
  -- Barry (chose Chimchar), Relic Badge 3: Ponyta Lv. 23
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 77, 7700, 23),
  -- Barry (chose Chimchar), Relic Badge 4: Prinplup Lv. 27
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 394, 39400, 27),
  -- Barry (chose Piplup), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 397, 39700, 25),
  -- Barry (chose Piplup), Relic Badge 2: Buizel Lv. 23
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 418, 41800, 23),
  -- Barry (chose Piplup), Relic Badge 3: Ponyta Lv. 23
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 77, 7700, 23),
  -- Barry (chose Piplup), Relic Badge 4: Grotle Lv. 27
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 388, 38800, 27),
  -- Barry (chose Turtwig), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 397, 39700, 34),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 32
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 418, 41800, 32),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 32
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 315, 31500, 32),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 36
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 391, 39100, 36),
  -- Barry (chose Chimchar), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 397, 39700, 34),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 32
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 315, 31500, 32),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 32
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 77, 7700, 32),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 36
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 394, 39400, 36),
  -- Barry (chose Piplup), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 397, 39700, 34),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 32
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 418, 41800, 32),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 32
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 77, 7700, 32),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 36
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 388, 38800, 36),
  -- Cyrus, Celestic Town 1: Sneasel Lv. 34
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 34),
  -- Cyrus, Celestic Town 2: Golbat Lv. 34
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 34),
  -- Cyrus, Celestic Town 3: Murkrow Lv. 36
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 198, 19800, 36),
  -- Barry (chose Turtwig), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 36),
  -- Barry (chose Turtwig), Mine Badge 2: Floatzel Lv. 35
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 35),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 37),
  -- Barry (chose Turtwig), Mine Badge 4: Roserade Lv. 35
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 35),
  -- Barry (chose Turtwig), Mine Badge 5: Infernape Lv. 38
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 392, 39200, 38),
  -- Barry (chose Chimchar), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 36),
  -- Barry (chose Chimchar), Mine Badge 2: Roserade Lv. 35
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 35),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 37),
  -- Barry (chose Chimchar), Mine Badge 4: Rapidash Lv. 35
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 35),
  -- Barry (chose Chimchar), Mine Badge 5: Empoleon Lv. 38
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 395, 39500, 38),
  -- Barry (chose Piplup), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 36),
  -- Barry (chose Piplup), Mine Badge 2: Floatzel Lv. 35
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 35),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 37),
  -- Barry (chose Piplup), Mine Badge 4: Rapidash Lv. 35
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 35),
  -- Barry (chose Piplup), Mine Badge 5: Torterra Lv. 38
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 389, 38900, 38),
  -- Cyrus, Team Galactic HQ 1: Sneasel Lv. 44
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 44),
  -- Cyrus, Team Galactic HQ 2: Crobat Lv. 44
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 44),
  -- Cyrus, Team Galactic HQ 3: Honchkrow Lv. 46
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 430, 43000, 46),
  -- Cyrus, Distortion World 1: Houndoom Lv. 45
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 45),
  -- Cyrus, Distortion World 2: Honchkrow Lv. 47
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 430, 43000, 47),
  -- Cyrus, Distortion World 3: Crobat Lv. 46
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 46),
  -- Cyrus, Distortion World 4: Gyarados Lv. 46
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 46),
  -- Cyrus, Distortion World 5: Weavile Lv. 48
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 5, 461, 46100, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 47
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 47),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 48),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 47
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 47),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 143, 14300, 49),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 51
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 6, 392, 39200, 51),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 47
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 47),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 48),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 47
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 47),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 143, 14300, 49),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 51
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 6, 395, 39500, 51),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 48),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 47
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 47),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 48),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 47
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 47),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 143, 14300, 49),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 51
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 6, 389, 38900, 51),
  -- Barry (chose Turtwig), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 61),
  -- Barry (chose Turtwig), Stark Mountain 2: Floatzel Lv. 59
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Turtwig), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 61),
  -- Barry (chose Turtwig), Stark Mountain 4: Roserade Lv. 59
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 59),
  -- Barry (chose Turtwig), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 143, 14300, 63),
  -- Barry (chose Turtwig), Stark Mountain 6: Infernape Lv. 65
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 6, 392, 39200, 65),
  -- Barry (chose Chimchar), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 61),
  -- Barry (chose Chimchar), Stark Mountain 2: Roserade Lv. 59
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 59),
  -- Barry (chose Chimchar), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 61),
  -- Barry (chose Chimchar), Stark Mountain 4: Rapidash Lv. 59
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Chimchar), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 143, 14300, 63),
  -- Barry (chose Chimchar), Stark Mountain 6: Empoleon Lv. 65
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 6, 395, 39500, 65),
  -- Barry (chose Piplup), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 61),
  -- Barry (chose Piplup), Stark Mountain 2: Floatzel Lv. 59
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 59),
  -- Barry (chose Piplup), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 61),
  -- Barry (chose Piplup), Stark Mountain 4: Rapidash Lv. 59
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 59),
  -- Barry (chose Piplup), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 143, 14300, 63),
  -- Barry (chose Piplup), Stark Mountain 6: Torterra Lv. 65
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 6, 389, 38900, 65);
