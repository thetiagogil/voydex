-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Platinum Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Platinum Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Barry and Cyrus battles: the pret pokeplatinum trainer data and map scripts, cross-checked with Bulbapedia, Serebii and PokéWiki.
-- Legendary encounters: Serebii, cross-checked with Pokémon Database and the pret disassemblies.
-- Held items: the pret pokeplatinum disassembly's trainer data; wild Pokémon here hold nothing in their species data.
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
  level,
  held_item_id
) VALUES
  -- Roark 1: Geodude Lv. 12
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL),
  -- Roark 2: Onix Lv. 12
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12, NULL),
  -- Roark 3: Cranidos Lv. 14
  (90003, 9001, 9, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14, NULL),
  -- Gardenia 1: Turtwig Lv. 20
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 1, 387, 38700, 20, NULL),
  -- Gardenia 2: Cherrim Lv. 20
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 2, 421, 42100, 20, NULL),
  -- Gardenia 3: Roserade Lv. 22, holds Sitrus Berry
  (90004, 9002, 9, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22, 187),
  -- Fantina 1: Duskull Lv. 24
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 1, 355, 35500, 24, NULL),
  -- Fantina 2: Haunter Lv. 24
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 24, NULL),
  -- Fantina 3: Mismagius Lv. 26, holds Sitrus Berry
  (90005, 9003, 9, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 26, 187),
  -- Maylene 1: Meditite Lv. 28
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 28, NULL),
  -- Maylene 2: Machoke Lv. 29
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 29, NULL),
  -- Maylene 3: Lucario Lv. 32
  (90006, 9004, 9, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 32, NULL),
  -- Crasher Wake 1: Gyarados Lv. 33
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 33, NULL),
  -- Crasher Wake 2: Quagsire Lv. 34
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 34, NULL),
  -- Crasher Wake 3: Floatzel Lv. 37, holds Sitrus Berry
  (90007, 9005, 9, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 37, 187),
  -- Byron 1: Magneton Lv. 37
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 1, 82, 8200, 37, NULL),
  -- Byron 2: Steelix Lv. 38
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 38, NULL),
  -- Byron 3: Bastiodon Lv. 41, holds Sitrus Berry
  (90008, 9006, 9, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 41, 187),
  -- Candice 1: Sneasel Lv. 40
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 40, NULL),
  -- Candice 2: Piloswine Lv. 40
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 2, 221, 22100, 40, NULL),
  -- Candice 3: Abomasnow Lv. 42
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 3, 460, 46000, 42, NULL),
  -- Candice 4: Froslass Lv. 44, holds Sitrus Berry
  (90009, 9007, 9, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 44, 187),
  -- Volkner 1: Jolteon Lv. 46
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 1, 135, 13500, 46, NULL),
  -- Volkner 2: Raichu Lv. 46
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 2, 26, 2600, 46, NULL),
  -- Volkner 3: Luxray Lv. 48
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 3, 405, 40500, 48, NULL),
  -- Volkner 4: Electivire Lv. 50, holds Sitrus Berry
  (90010, 9008, 9, NULL, NULL, NULL, NULL, NULL, 4, 466, 46600, 50, 187),
  -- Aaron 1: Yanmega Lv. 49
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 1, 469, 46900, 49, NULL),
  -- Aaron 2: Scizor Lv. 49
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 2, 212, 21200, 49, NULL),
  -- Aaron 3: Vespiquen Lv. 50
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 50, NULL),
  -- Aaron 4: Heracross Lv. 51
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 51, NULL),
  -- Aaron 5: Drapion Lv. 53, holds Sitrus Berry
  (90011, 9009, 9, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 53, 187),
  -- Bertha 1: Whiscash Lv. 50
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 1, 340, 34000, 50, NULL),
  -- Bertha 2: Gliscor Lv. 53
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 2, 472, 47200, 53, NULL),
  -- Bertha 3: Hippowdon Lv. 52
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 3, 450, 45000, 52, NULL),
  -- Bertha 4: Golem Lv. 52
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 4, 76, 7600, 52, NULL),
  -- Bertha 5: Rhyperior Lv. 55, holds Sitrus Berry
  (90012, 9010, 9, NULL, NULL, NULL, NULL, NULL, 5, 464, 46400, 55, 187),
  -- Flint 1: Houndoom Lv. 52
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 52, NULL),
  -- Flint 2: Flareon Lv. 55
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 2, 136, 13600, 55, NULL),
  -- Flint 3: Rapidash Lv. 53
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 53, NULL),
  -- Flint 4: Infernape Lv. 55
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 4, 392, 39200, 55, NULL),
  -- Flint 5: Magmortar Lv. 57, holds Sitrus Berry
  (90013, 9011, 9, NULL, NULL, NULL, NULL, NULL, 5, 467, 46700, 57, 187),
  -- Lucian 1: Mr. Mime Lv. 53
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 53, NULL),
  -- Lucian 2: Espeon Lv. 55
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 2, 196, 19600, 55, NULL),
  -- Lucian 3: Bronzong Lv. 54
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 3, 437, 43700, 54, NULL),
  -- Lucian 4: Alakazam Lv. 56
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 56, NULL),
  -- Lucian 5: Gallade Lv. 59, holds Sitrus Berry
  (90014, 9012, 9, NULL, NULL, NULL, NULL, NULL, 5, 475, 47500, 59, 187),
  -- Cynthia 1: Spiritomb Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 58, NULL),
  -- Cynthia 2: Roserade Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 58, NULL),
  -- Cynthia 3: Togekiss Lv. 60
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 60, NULL),
  -- Cynthia 4: Lucario Lv. 60
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 60, NULL),
  -- Cynthia 5: Milotic Lv. 58
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 58, NULL),
  -- Cynthia 6: Garchomp Lv. 62, holds Sitrus Berry
  (90015, 9013, 9, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 62, 187),
  -- Barry (chose Turtwig), Choose Starter 1: Chimchar Lv. 5
  (90001, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 390, 39000, 5, NULL),
  -- Barry (chose Chimchar), Choose Starter 1: Piplup Lv. 5
  (90001, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 393, 39300, 5, NULL),
  -- Barry (chose Piplup), Choose Starter 1: Turtwig Lv. 5
  (90001, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 387, 38700, 5, NULL),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (90003, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 390, 39000, 9, NULL),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (90003, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 393, 39300, 9, NULL),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (90003, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (90003, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 387, 38700, 9, NULL),
  -- Barry (chose Turtwig), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 397, 39700, 25, NULL),
  -- Barry (chose Turtwig), Relic Badge 2: Buizel Lv. 23
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 418, 41800, 23, NULL),
  -- Barry (chose Turtwig), Relic Badge 3: Roselia Lv. 23
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 315, 31500, 23, NULL),
  -- Barry (chose Turtwig), Relic Badge 4: Monferno Lv. 27
  (90005, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 391, 39100, 27, NULL),
  -- Barry (chose Chimchar), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 397, 39700, 25, NULL),
  -- Barry (chose Chimchar), Relic Badge 2: Roselia Lv. 23
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 315, 31500, 23, NULL),
  -- Barry (chose Chimchar), Relic Badge 3: Ponyta Lv. 23
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 77, 7700, 23, NULL),
  -- Barry (chose Chimchar), Relic Badge 4: Prinplup Lv. 27
  (90005, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 394, 39400, 27, NULL),
  -- Barry (chose Piplup), Relic Badge 1: Staravia Lv. 25
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 397, 39700, 25, NULL),
  -- Barry (chose Piplup), Relic Badge 2: Buizel Lv. 23
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 418, 41800, 23, NULL),
  -- Barry (chose Piplup), Relic Badge 3: Ponyta Lv. 23
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 77, 7700, 23, NULL),
  -- Barry (chose Piplup), Relic Badge 4: Grotle Lv. 27
  (90005, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 388, 38800, 27, NULL),
  -- Barry (chose Turtwig), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 397, 39700, 34, NULL),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 32
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 418, 41800, 32, NULL),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 32
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 315, 31500, 32, NULL),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 36
  (90007, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 391, 39100, 36, NULL),
  -- Barry (chose Chimchar), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 397, 39700, 34, NULL),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 32
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 315, 31500, 32, NULL),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 32
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 77, 7700, 32, NULL),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 36
  (90007, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 394, 39400, 36, NULL),
  -- Barry (chose Piplup), Fen Badge 1: Staravia Lv. 34
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 397, 39700, 34, NULL),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 32
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 418, 41800, 32, NULL),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 32
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 77, 7700, 32, NULL),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 36
  (90007, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 388, 38800, 36, NULL),
  -- Cyrus, Celestic Town 1: Sneasel Lv. 34
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 34, NULL),
  -- Cyrus, Celestic Town 2: Golbat Lv. 34
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 34, NULL),
  -- Cyrus, Celestic Town 3: Murkrow Lv. 36, holds Sitrus Berry
  (90017, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 198, 19800, 36, 187),
  -- Barry (chose Turtwig), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 36, NULL),
  -- Barry (chose Turtwig), Mine Badge 2: Floatzel Lv. 35
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 35, NULL),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 37, NULL),
  -- Barry (chose Turtwig), Mine Badge 4: Roserade Lv. 35
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 35, NULL),
  -- Barry (chose Turtwig), Mine Badge 5: Infernape Lv. 38
  (90008, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 392, 39200, 38, NULL),
  -- Barry (chose Chimchar), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 36, NULL),
  -- Barry (chose Chimchar), Mine Badge 2: Roserade Lv. 35
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 35, NULL),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 37, NULL),
  -- Barry (chose Chimchar), Mine Badge 4: Rapidash Lv. 35
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 35, NULL),
  -- Barry (chose Chimchar), Mine Badge 5: Empoleon Lv. 38
  (90008, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 395, 39500, 38, NULL),
  -- Barry (chose Piplup), Mine Badge 1: Staraptor Lv. 36
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 36, NULL),
  -- Barry (chose Piplup), Mine Badge 2: Floatzel Lv. 35
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 35, NULL),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 37
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 37, NULL),
  -- Barry (chose Piplup), Mine Badge 4: Rapidash Lv. 35
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 35, NULL),
  -- Barry (chose Piplup), Mine Badge 5: Torterra Lv. 38
  (90008, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 389, 38900, 38, NULL),
  -- Cyrus, Team Galactic HQ 1: Sneasel Lv. 44
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 215, 21500, 44, NULL),
  -- Cyrus, Team Galactic HQ 2: Crobat Lv. 44
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 44, NULL),
  -- Cyrus, Team Galactic HQ 3: Honchkrow Lv. 46, holds Sitrus Berry
  (90018, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 430, 43000, 46, 187),
  -- Cyrus, Distortion World 1: Houndoom Lv. 45
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 45, NULL),
  -- Cyrus, Distortion World 2: Honchkrow Lv. 47
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 2, 430, 43000, 47, NULL),
  -- Cyrus, Distortion World 3: Crobat Lv. 46
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 46, NULL),
  -- Cyrus, Distortion World 4: Gyarados Lv. 46
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 46, NULL),
  -- Cyrus, Distortion World 5: Weavile Lv. 48, holds Sitrus Berry
  (90019, 9015, 9, NULL, NULL, NULL, NULL, NULL, 5, 461, 46100, 48, 187),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 47
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 47, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 48, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 47
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 47, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 143, 14300, 49, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 51
  (90011, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 6, 392, 39200, 51, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 47
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 47, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 48, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 47
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 47, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 143, 14300, 49, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 51
  (90011, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 6, 395, 39500, 51, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 48
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 48, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 47
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 47, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 48
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 48, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 47
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 47, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 49
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 143, 14300, 49, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 51
  (90011, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 6, 389, 38900, 51, NULL),
  -- Barry (chose Turtwig), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 1, 398, 39800, 61, NULL),
  -- Barry (chose Turtwig), Stark Mountain 2: Floatzel Lv. 59
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 2, 419, 41900, 59, NULL),
  -- Barry (chose Turtwig), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 3, 214, 21400, 61, NULL),
  -- Barry (chose Turtwig), Stark Mountain 4: Roserade Lv. 59
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 4, 407, 40700, 59, NULL),
  -- Barry (chose Turtwig), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 5, 143, 14300, 63, NULL),
  -- Barry (chose Turtwig), Stark Mountain 6: Infernape Lv. 65, holds Sitrus Berry
  (90020, 9014, 9, NULL, 90001, 'turtwig', NULL, NULL, 6, 392, 39200, 65, 187),
  -- Barry (chose Chimchar), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 1, 398, 39800, 61, NULL),
  -- Barry (chose Chimchar), Stark Mountain 2: Roserade Lv. 59
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 2, 407, 40700, 59, NULL),
  -- Barry (chose Chimchar), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 3, 214, 21400, 61, NULL),
  -- Barry (chose Chimchar), Stark Mountain 4: Rapidash Lv. 59
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 4, 78, 7800, 59, NULL),
  -- Barry (chose Chimchar), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 5, 143, 14300, 63, NULL),
  -- Barry (chose Chimchar), Stark Mountain 6: Empoleon Lv. 65, holds Sitrus Berry
  (90020, 9014, 9, NULL, 90001, 'chimchar', NULL, NULL, 6, 395, 39500, 65, 187),
  -- Barry (chose Piplup), Stark Mountain 1: Staraptor Lv. 61
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 1, 398, 39800, 61, NULL),
  -- Barry (chose Piplup), Stark Mountain 2: Floatzel Lv. 59
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 2, 419, 41900, 59, NULL),
  -- Barry (chose Piplup), Stark Mountain 3: Heracross Lv. 61
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 3, 214, 21400, 61, NULL),
  -- Barry (chose Piplup), Stark Mountain 4: Rapidash Lv. 59
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 4, 78, 7800, 59, NULL),
  -- Barry (chose Piplup), Stark Mountain 5: Snorlax Lv. 63
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 5, 143, 14300, 63, NULL),
  -- Barry (chose Piplup), Stark Mountain 6: Torterra Lv. 65, holds Sitrus Berry
  (90020, 9014, 9, NULL, 90001, 'piplup', NULL, NULL, 6, 389, 38900, 65, 187),
  -- Giratina, Distortion World 1: Giratina (Origin) Lv. 47
  (90019, 9016, 9, NULL, NULL, NULL, NULL, NULL, 1, 487, 48701, 47, NULL),
  -- Uxie, Lake Guardians 1: Uxie Lv. 50
  (90021, 9017, 9, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 50, NULL),
  -- Azelf, Lake Guardians 1: Azelf Lv. 50
  (90021, 9018, 9, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 50, NULL),
  -- Mesprit, Lake Guardians 1: Mesprit Lv. 50
  (90021, 9019, 9, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 50, NULL),
  -- Heatran, Stark Mountain 1: Heatran Lv. 50
  (90020, 9020, 9, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 50, NULL),
  -- Cresselia, Roaming Cresselia 1: Cresselia Lv. 50
  (90022, 9021, 9, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 50, NULL),
  -- Regigigas, Snowpoint Temple 1: Regigigas Lv. 1
  (90023, 9022, 9, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 1, NULL),
  -- Dialga, Spear Pillar 1: Dialga Lv. 70
  (90024, 9023, 9, NULL, NULL, NULL, NULL, NULL, 1, 483, 48300, 70, NULL),
  -- Palkia, Spear Pillar 1: Palkia Lv. 70
  (90024, 9024, 9, NULL, NULL, NULL, NULL, NULL, 1, 484, 48400, 70, NULL),
  -- Articuno, Roaming Articuno 1: Articuno Lv. 60
  (90025, 9025, 9, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 60, NULL),
  -- Zapdos, Roaming Zapdos 1: Zapdos Lv. 60
  (90026, 9026, 9, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 60, NULL),
  -- Moltres, Roaming Moltres 1: Moltres Lv. 60
  (90027, 9027, 9, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 60, NULL);
