-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Brilliant Diamond / Shining Pearl Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Brilliant Diamond / Shining Pearl Gym Leaders and Elite Four page.
-- Barry and Cyrus battles: Serebii, cross-checked with PokéWiki and Bulbapedia.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Barry's Roserade before the Elite Four (chose Chimchar) holds a Big Root per Bulbapedia (PokéWiki gives a Black Sludge).
-- Wild Pokémon here hold nothing in their game data.
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
  level,
  held_item_id
) VALUES
  -- Roark 1: Geodude Lv. 12
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL),
  -- Roark 2: Onix Lv. 12
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12, NULL),
  -- Roark 3: Cranidos Lv. 14
  (210003, 21001, 21, NULL, NULL, NULL, NULL, NULL, 3, 408, 40800, 14, NULL),
  -- Gardenia 1: Cherubi Lv. 19
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 1, 420, 42000, 19, NULL),
  -- Gardenia 2: Turtwig Lv. 19, holds Miracle Seed
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 2, 387, 38700, 19, 317),
  -- Gardenia 3: Roserade Lv. 22, holds Sitrus Berry
  (210004, 21002, 21, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 22, 187),
  -- Maylene 1: Meditite Lv. 27, holds Light Clay
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 1, 307, 30700, 27, 405),
  -- Maylene 2: Machoke Lv. 27, holds Expert Belt
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 27, 391),
  -- Maylene 3: Lucario Lv. 30, holds Big Root
  (210005, 21003, 21, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 30, 375),
  -- Crasher Wake 1: Gyarados Lv. 27, holds Wide Lens
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 27, 435),
  -- Crasher Wake 2: Quagsire Lv. 27, holds Damp Rock
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 27, 386),
  -- Crasher Wake 3: Floatzel Lv. 30, holds Sitrus Berry
  (210006, 21004, 21, NULL, NULL, NULL, NULL, NULL, 3, 419, 41900, 30, 187),
  -- Fantina 1: Drifblim Lv. 32, holds Zoom Lens
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 1, 426, 42600, 32, 437),
  -- Fantina 2: Gengar Lv. 34, holds Colbur Berry
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 34, 227),
  -- Fantina 3: Mismagius Lv. 36, holds Expert Belt
  (210007, 21005, 21, NULL, NULL, NULL, NULL, NULL, 3, 429, 42900, 36, 391),
  -- Byron 1: Bronzor Lv. 36
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 1, 436, 43600, 36, NULL),
  -- Byron 2: Steelix Lv. 36, holds Soft Sand
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 36, 326),
  -- Byron 3: Bastiodon Lv. 39, holds Sitrus Berry
  (210008, 21006, 21, NULL, NULL, NULL, NULL, NULL, 3, 411, 41100, 39, 187),
  -- Candice 1: Snover Lv. 38, holds Icy Rock
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 1, 459, 45900, 38, 400),
  -- Candice 2: Sneasel Lv. 38, holds Chople Berry
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 38, 218),
  -- Candice 3: Medicham Lv. 40, holds Expert Belt
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 40, 391),
  -- Candice 4: Abomasnow Lv. 42, holds Sitrus Berry
  (210009, 21007, 21, NULL, NULL, NULL, NULL, NULL, 4, 460, 46000, 42, 187),
  -- Volkner 1: Raichu Lv. 46, holds Shuca Berry
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 46, 220),
  -- Volkner 2: Ambipom Lv. 47, holds Chople Berry
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 2, 424, 42400, 47, 218),
  -- Volkner 3: Octillery Lv. 47, holds Expert Belt
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 3, 224, 22400, 47, 391),
  -- Volkner 4: Luxray Lv. 49, holds Sitrus Berry
  (210010, 21008, 21, NULL, NULL, NULL, NULL, NULL, 4, 405, 40500, 49, 187),
  -- Aaron 1: Dustox Lv. 53, holds Black Sludge
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 1, 269, 26900, 53, 377),
  -- Aaron 2: Beautifly Lv. 53, holds Wise Glasses
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 2, 267, 26700, 53, 436),
  -- Aaron 3: Vespiquen Lv. 54, holds Sitrus Berry
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 3, 416, 41600, 54, 187),
  -- Aaron 4: Heracross Lv. 54, holds Flame Orb
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 4, 214, 21400, 54, 392),
  -- Aaron 5: Drapion Lv. 57, holds Scope Lens
  (210011, 21009, 21, NULL, NULL, NULL, NULL, NULL, 5, 452, 45200, 57, 423),
  -- Bertha 1: Quagsire Lv. 55, holds Leftovers
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 1, 195, 19500, 55, 403),
  -- Bertha 2: Sudowoodo Lv. 56, holds Sitrus Berry
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 2, 185, 18500, 56, 187),
  -- Bertha 3: Golem Lv. 56, holds Soft Sand
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 3, 76, 7600, 56, 326),
  -- Bertha 4: Whiscash Lv. 55, holds Rindo Berry
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 55, 216),
  -- Bertha 5: Hippowdon Lv. 59, holds Chesto Berry
  (210012, 21010, 21, NULL, NULL, NULL, NULL, NULL, 5, 450, 45000, 59, 179),
  -- Flint 1: Rapidash Lv. 58, holds Wide Lens
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 1, 78, 7800, 58, 435),
  -- Flint 2: Steelix Lv. 57, holds Life Orb
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 2, 208, 20800, 57, 404),
  -- Flint 3: Drifblim Lv. 58, holds Sitrus Berry
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 3, 426, 42600, 58, 187),
  -- Flint 4: Lopunny Lv. 57, holds Leftovers
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 4, 428, 42800, 57, 403),
  -- Flint 5: Infernape Lv. 61, holds Focus Sash
  (210013, 21011, 21, NULL, NULL, NULL, NULL, NULL, 5, 392, 39200, 61, 395),
  -- Lucian 1: Mr. Mime Lv. 59, holds Light Clay
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 59, 405),
  -- Lucian 2: Girafarig Lv. 59, holds Mental Herb
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 2, 203, 20300, 59, 408),
  -- Lucian 3: Medicham Lv. 60, holds Muscle Band
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 3, 308, 30800, 60, 412),
  -- Lucian 4: Alakazam Lv. 60, holds Life Orb
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 60, 404),
  -- Lucian 5: Bronzong Lv. 63, holds Sitrus Berry
  (210014, 21012, 21, NULL, NULL, NULL, NULL, NULL, 5, 437, 43700, 63, 187),
  -- Cynthia 1: Spiritomb Lv. 61, holds Sitrus Berry
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 61, 187),
  -- Cynthia 2: Roserade Lv. 60, holds Expert Belt
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 60, 391),
  -- Cynthia 3: Gastrodon Lv. 60, holds Leftovers
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 3, 423, 42300, 60, 403),
  -- Cynthia 4: Lucario Lv. 63, holds Wise Glasses
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 4, 448, 44800, 63, 436),
  -- Cynthia 5: Milotic Lv. 63, holds Flame Orb
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 63, 392),
  -- Cynthia 6: Garchomp Lv. 66, holds Yache Berry
  (210015, 21013, 21, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 66, 217),
  -- Barry (chose Turtwig), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Turtwig), Coal Badge 2: Chimchar Lv. 9
  (210003, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 390, 39000, 9, NULL),
  -- Barry (chose Chimchar), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Chimchar), Coal Badge 2: Piplup Lv. 9
  (210003, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 393, 39300, 9, NULL),
  -- Barry (chose Piplup), Coal Badge 1: Starly Lv. 7
  (210003, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 7, NULL),
  -- Barry (chose Piplup), Coal Badge 2: Turtwig Lv. 9
  (210003, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 387, 38700, 9, NULL),
  -- Barry (chose Turtwig), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Turtwig), Cobble Badge 2: Buizel Lv. 20
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 20, NULL),
  -- Barry (chose Turtwig), Cobble Badge 3: Roselia Lv. 20
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 315, 31500, 20, NULL),
  -- Barry (chose Turtwig), Cobble Badge 4: Monferno Lv. 21
  (210005, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 391, 39100, 21, NULL),
  -- Barry (chose Chimchar), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Chimchar), Cobble Badge 2: Roselia Lv. 20
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 20, NULL),
  -- Barry (chose Chimchar), Cobble Badge 3: Ponyta Lv. 20
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 77, 7700, 20, NULL),
  -- Barry (chose Chimchar), Cobble Badge 4: Prinplup Lv. 21
  (210005, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 394, 39400, 21, NULL),
  -- Barry (chose Piplup), Cobble Badge 1: Starly Lv. 19
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 19, NULL),
  -- Barry (chose Piplup), Cobble Badge 2: Buizel Lv. 20
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 20, NULL),
  -- Barry (chose Piplup), Cobble Badge 3: Ponyta Lv. 20
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 77, 7700, 20, NULL),
  -- Barry (chose Piplup), Cobble Badge 4: Grotle Lv. 21
  (210005, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 388, 38800, 21, NULL),
  -- Barry (chose Turtwig), Fen Badge 1: Starly Lv. 26, holds Quick Claw
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 396, 39600, 26, 417),
  -- Barry (chose Turtwig), Fen Badge 2: Buizel Lv. 26, holds Sea Incense
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 26, 347),
  -- Barry (chose Turtwig), Fen Badge 3: Roselia Lv. 27, holds Miracle Seed
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 315, 31500, 27, 317),
  -- Barry (chose Turtwig), Fen Badge 4: Monferno Lv. 31, holds Shell Bell
  (210006, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 391, 39100, 31, 425),
  -- Barry (chose Chimchar), Fen Badge 1: Starly Lv. 26, holds Quick Claw
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 396, 39600, 26, 417),
  -- Barry (chose Chimchar), Fen Badge 2: Roselia Lv. 26, holds Miracle Seed
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 26, 317),
  -- Barry (chose Chimchar), Fen Badge 3: Ponyta Lv. 27, holds Shell Bell
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 77, 7700, 27, 425),
  -- Barry (chose Chimchar), Fen Badge 4: Prinplup Lv. 31, holds Sea Incense
  (210006, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 394, 39400, 31, 347),
  -- Barry (chose Piplup), Fen Badge 1: Starly Lv. 26, holds Quick Claw
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 396, 39600, 26, 417),
  -- Barry (chose Piplup), Fen Badge 2: Buizel Lv. 26, holds Sea Incense
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 26, 347),
  -- Barry (chose Piplup), Fen Badge 3: Ponyta Lv. 27, holds Shell Bell
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 77, 7700, 27, 425),
  -- Barry (chose Piplup), Fen Badge 4: Grotle Lv. 31, holds Miracle Seed
  (210006, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 388, 38800, 31, 317),
  -- Barry (chose Turtwig), Mine Badge 1: Staravia Lv. 32, holds Quick Claw
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 397, 39700, 32, 417),
  -- Barry (chose Turtwig), Mine Badge 2: Buizel Lv. 33, holds Sea Incense
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 418, 41800, 33, 347),
  -- Barry (chose Turtwig), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 32, NULL),
  -- Barry (chose Turtwig), Mine Badge 4: Roselia Lv. 34, holds Big Root
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 315, 31500, 34, 375),
  -- Barry (chose Turtwig), Mine Badge 5: Monferno Lv. 37, holds Shell Bell
  (210008, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 391, 39100, 37, 425),
  -- Barry (chose Chimchar), Mine Badge 1: Staravia Lv. 32, holds Quick Claw
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 397, 39700, 32, 417),
  -- Barry (chose Chimchar), Mine Badge 2: Roselia Lv. 33, holds Big Root
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 315, 31500, 33, 375),
  -- Barry (chose Chimchar), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 32, NULL),
  -- Barry (chose Chimchar), Mine Badge 4: Ponyta Lv. 34, holds Shell Bell
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 77, 7700, 34, 425),
  -- Barry (chose Chimchar), Mine Badge 5: Prinplup Lv. 37, holds Sea Incense
  (210008, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 394, 39400, 37, 347),
  -- Barry (chose Piplup), Mine Badge 1: Staravia Lv. 32, holds Quick Claw
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 397, 39700, 32, 417),
  -- Barry (chose Piplup), Mine Badge 2: Buizel Lv. 33, holds Sea Incense
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 418, 41800, 33, 347),
  -- Barry (chose Piplup), Mine Badge 3: Heracross Lv. 32
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 32, NULL),
  -- Barry (chose Piplup), Mine Badge 4: Ponyta Lv. 34, holds Shell Bell
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 77, 7700, 34, 425),
  -- Barry (chose Piplup), Mine Badge 5: Grotle Lv. 37, holds Big Root
  (210008, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 388, 38800, 37, 375),
  -- Cyrus, Team Galactic HQ 1: Murkrow Lv. 40
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 1, 198, 19800, 40, NULL),
  -- Cyrus, Team Galactic HQ 2: Golbat Lv. 40
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 40, NULL),
  -- Cyrus, Team Galactic HQ 3: Sneasel Lv. 43, holds Sitrus Berry
  (210018, 21015, 21, NULL, NULL, NULL, NULL, NULL, 3, 215, 21500, 43, 187),
  -- Cyrus, Spear Pillar 1: Honchkrow Lv. 45, holds Scope Lens
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 1, 430, 43000, 45, 423),
  -- Cyrus, Spear Pillar 2: Crobat Lv. 46, holds Quick Claw
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 46, 417),
  -- Cyrus, Spear Pillar 3: Gyarados Lv. 45, holds Wacan Berry
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 45, 215),
  -- Cyrus, Spear Pillar 4: Weavile Lv. 48, holds Chople Berry
  (210019, 21015, 21, NULL, NULL, NULL, NULL, NULL, 4, 461, 46100, 48, 218),
  -- Barry (chose Turtwig), Elite Four Aaron 1: Staraptor Lv. 49, holds Focus Sash
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 398, 39800, 49, 395),
  -- Barry (chose Turtwig), Elite Four Aaron 2: Floatzel Lv. 49, holds Quick Claw
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 419, 41900, 49, 417),
  -- Barry (chose Turtwig), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 51, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 4: Roserade Lv. 49, holds Big Root
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 407, 40700, 49, 375),
  -- Barry (chose Turtwig), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 143, 14300, 52, NULL),
  -- Barry (chose Turtwig), Elite Four Aaron 6: Infernape Lv. 55, holds Expert Belt
  (210011, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 6, 392, 39200, 55, 391),
  -- Barry (chose Chimchar), Elite Four Aaron 1: Staraptor Lv. 49, holds Focus Sash
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 398, 39800, 49, 395),
  -- Barry (chose Chimchar), Elite Four Aaron 2: Roserade Lv. 49, holds Big Root
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 407, 40700, 49, 375),
  -- Barry (chose Chimchar), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 51, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 4: Rapidash Lv. 49, holds Expert Belt
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 78, 7800, 49, 391),
  -- Barry (chose Chimchar), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 143, 14300, 52, NULL),
  -- Barry (chose Chimchar), Elite Four Aaron 6: Empoleon Lv. 55, holds Quick Claw
  (210011, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 6, 395, 39500, 55, 417),
  -- Barry (chose Piplup), Elite Four Aaron 1: Staraptor Lv. 49, holds Focus Sash
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 398, 39800, 49, 395),
  -- Barry (chose Piplup), Elite Four Aaron 2: Floatzel Lv. 49, holds Quick Claw
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 419, 41900, 49, 417),
  -- Barry (chose Piplup), Elite Four Aaron 3: Heracross Lv. 51
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 51, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 4: Rapidash Lv. 49, holds Expert Belt
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 78, 7800, 49, 391),
  -- Barry (chose Piplup), Elite Four Aaron 5: Snorlax Lv. 52
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 143, 14300, 52, NULL),
  -- Barry (chose Piplup), Elite Four Aaron 6: Torterra Lv. 55, holds Leftovers
  (210011, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 6, 389, 38900, 55, 403),
  -- Barry (chose Turtwig), Fight Area 1: Staraptor Lv. 58, holds Focus Sash
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 398, 39800, 58, 395),
  -- Barry (chose Turtwig), Fight Area 2: Floatzel Lv. 59, holds Quick Claw
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 419, 41900, 59, 417),
  -- Barry (chose Turtwig), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Turtwig), Fight Area 4: Roserade Lv. 59, holds Black Sludge
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 407, 40700, 59, 377),
  -- Barry (chose Turtwig), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Turtwig), Fight Area 6: Infernape Lv. 64, holds Expert Belt
  (210020, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 6, 392, 39200, 64, 391),
  -- Barry (chose Chimchar), Fight Area 1: Staraptor Lv. 58, holds Focus Sash
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 398, 39800, 58, 395),
  -- Barry (chose Chimchar), Fight Area 2: Roserade Lv. 59, holds Black Sludge
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 407, 40700, 59, 377),
  -- Barry (chose Chimchar), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Chimchar), Fight Area 4: Rapidash Lv. 59, holds Expert Belt
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 78, 7800, 59, 391),
  -- Barry (chose Chimchar), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Chimchar), Fight Area 6: Empoleon Lv. 64, holds Quick Claw
  (210020, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 6, 395, 39500, 64, 417),
  -- Barry (chose Piplup), Fight Area 1: Staraptor Lv. 58, holds Focus Sash
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 398, 39800, 58, 395),
  -- Barry (chose Piplup), Fight Area 2: Floatzel Lv. 59, holds Quick Claw
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 419, 41900, 59, 417),
  -- Barry (chose Piplup), Fight Area 3: Heracross Lv. 60
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 214, 21400, 60, NULL),
  -- Barry (chose Piplup), Fight Area 4: Rapidash Lv. 59, holds Expert Belt
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 78, 7800, 59, 391),
  -- Barry (chose Piplup), Fight Area 5: Snorlax Lv. 60
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 143, 14300, 60, NULL),
  -- Barry (chose Piplup), Fight Area 6: Torterra Lv. 64, holds Leftovers
  (210020, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 6, 389, 38900, 64, 403),
  -- Dialga, Spear Pillar 1: Dialga Lv. 47
  (210019, 21016, 21, NULL, NULL, NULL, NULL, NULL, 1, 483, 48300, 47, NULL),
  -- Palkia, Spear Pillar 1: Palkia Lv. 47
  (210019, 21017, 21, NULL, NULL, NULL, NULL, NULL, 1, 484, 48400, 47, NULL),
  -- Uxie, Lake Guardians 1: Uxie Lv. 50
  (210021, 21018, 21, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 50, NULL),
  -- Azelf, Lake Guardians 1: Azelf Lv. 50
  (210021, 21019, 21, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 50, NULL),
  -- Mesprit, Lake Guardians 1: Mesprit Lv. 50
  (210021, 21020, 21, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 50, NULL),
  -- Giratina, Turnback Cave 1: Giratina Lv. 70
  (210022, 21021, 21, NULL, NULL, NULL, NULL, NULL, 1, 487, 48700, 70, NULL),
  -- Cresselia, Roaming Cresselia 1: Cresselia Lv. 50
  (210023, 21022, 21, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 50, NULL),
  -- Heatran, Stark Mountain 1: Heatran Lv. 70
  (210024, 21023, 21, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 70, NULL),
  -- Regigigas, Snowpoint Temple 1: Regigigas Lv. 70
  (210025, 21024, 21, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 70, NULL),
  -- Regirock, Ramanas Park 1: Regirock Lv. 70
  (210017, 21025, 21, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 70, NULL),
  -- Regice, Ramanas Park 1: Regice Lv. 70
  (210017, 21026, 21, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 70, NULL),
  -- Registeel, Ramanas Park 1: Registeel Lv. 70
  (210017, 21027, 21, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 70, NULL),
  -- Raikou, Ramanas Park 1: Raikou Lv. 70
  (210017, 21028, 21, NULL, NULL, NULL, NULL, NULL, 1, 243, 24300, 70, NULL),
  -- Entei, Ramanas Park 1: Entei Lv. 70
  (210017, 21029, 21, NULL, NULL, NULL, NULL, NULL, 1, 244, 24400, 70, NULL),
  -- Suicune, Ramanas Park 1: Suicune Lv. 70
  (210017, 21030, 21, NULL, NULL, NULL, NULL, NULL, 1, 245, 24500, 70, NULL),
  -- Articuno, Ramanas Park 1: Articuno Lv. 70
  (210017, 21031, 21, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 70, NULL),
  -- Zapdos, Ramanas Park 1: Zapdos Lv. 70
  (210017, 21032, 21, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 70, NULL),
  -- Moltres, Ramanas Park 1: Moltres Lv. 70
  (210017, 21033, 21, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 70, NULL),
  -- Latias, Ramanas Park 1: Latias Lv. 70
  (210017, 21034, 21, NULL, NULL, NULL, NULL, NULL, 1, 380, 38000, 70, NULL),
  -- Latios, Ramanas Park 1: Latios Lv. 70
  (210017, 21035, 21, NULL, NULL, NULL, NULL, NULL, 1, 381, 38100, 70, NULL),
  -- Ho-Oh, Ramanas Park 1: Ho-Oh Lv. 70
  (210017, 21036, 21, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 70, NULL),
  -- Lugia, Ramanas Park 1: Lugia Lv. 70
  (210017, 21037, 21, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 70, NULL),
  -- Kyogre, Ramanas Park 1: Kyogre Lv. 70
  (210017, 21038, 21, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 70, NULL),
  -- Groudon, Ramanas Park 1: Groudon Lv. 70
  (210017, 21039, 21, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 70, NULL),
  -- Rayquaza, Ramanas Park 1: Rayquaza Lv. 70
  (210017, 21040, 21, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70, NULL),
  -- Mewtwo, Ramanas Park 1: Mewtwo Lv. 70
  (210017, 21041, 21, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70, NULL),
  -- Giratina, Ramanas Park 1: Giratina (Origin) Lv. 100
  (210017, 21021, 21, NULL, NULL, NULL, NULL, NULL, 1, 487, 48701, 100, NULL);
