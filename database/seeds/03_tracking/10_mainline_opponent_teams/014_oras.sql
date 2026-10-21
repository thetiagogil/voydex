-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Omega Ruby / Alpha Sapphire Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Omega Ruby / Alpha Sapphire Gym Leaders and Elite Four page.
-- Rival, Wally, Maxie and Archie battles: Bulbapedia, cross-checked with Serebii's rival, Wally and Team Aqua / Magma pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Omega Ruby / Alpha Sapphire opponent uses in each Story battle, by
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
  -- Roxanne 1: Geodude Lv. 12
  (140003, 14001, 14, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Roxanne 2: Nosepass Lv. 14
  (140003, 14001, 14, NULL, NULL, NULL, NULL, NULL, 2, 299, 29900, 14),
  -- Brawly 1: Machop Lv. 14
  (140004, 14002, 14, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 14),
  -- Brawly 2: Makuhita Lv. 16
  (140004, 14002, 14, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 16),
  -- Wattson 1: Magnemite Lv. 19
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 19),
  -- Wattson 2: Voltorb Lv. 19
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 2, 100, 10000, 19),
  -- Wattson 3: Magneton Lv. 21
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 21),
  -- Flannery 1: Slugma Lv. 26
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 1, 218, 21800, 26),
  -- Flannery 2: Numel Lv. 26
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 2, 322, 32200, 26),
  -- Flannery 3: Torkoal Lv. 28
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 3, 324, 32400, 28),
  -- Norman 1: Slaking Lv. 28
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 1, 289, 28900, 28),
  -- Norman 2: Vigoroth Lv. 28
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 28),
  -- Norman 3: Slaking Lv. 30
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 3, 289, 28900, 30),
  -- Winona 1: Swellow Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 1, 277, 27700, 33),
  -- Winona 2: Pelipper Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 33),
  -- Winona 3: Skarmory Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 3, 227, 22700, 33),
  -- Winona 4: Altaria Lv. 35
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 35),
  -- Tate & Liza 1: Lunatone Lv. 45
  (140010, 14007, 14, NULL, NULL, NULL, NULL, NULL, 1, 337, 33700, 45),
  -- Tate & Liza 2: Solrock Lv. 45
  (140010, 14007, 14, NULL, NULL, NULL, NULL, NULL, 2, 338, 33800, 45),
  -- Wallace 1: Luvdisc Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 44),
  -- Wallace 2: Whiscash Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 44),
  -- Wallace 3: Sealeo Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 44),
  -- Wallace 4: Seaking Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 4, 119, 11900, 44),
  -- Wallace 5: Milotic Lv. 46
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 46),
  -- Sidney 1: Mightyena Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 50),
  -- Sidney 2: Shiftry Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 50),
  -- Sidney 3: Cacturne Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 50),
  -- Sidney 4: Sharpedo Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 50),
  -- Sidney 5: Absol Lv. 52
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 52),
  -- Phoebe 1: Dusclops Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 51),
  -- Phoebe 2: Banette Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 51),
  -- Phoebe 3: Sableye Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 51),
  -- Phoebe 4: Banette Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 51),
  -- Phoebe 5: Dusknoir Lv. 53
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 5, 477, 47700, 53),
  -- Glacia 1: Glalie Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 1, 362, 36200, 52),
  -- Glacia 2: Froslass Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 2, 478, 47800, 52),
  -- Glacia 3: Glalie Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 3, 362, 36200, 52),
  -- Glacia 4: Froslass Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 52),
  -- Glacia 5: Walrein Lv. 54
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 54),
  -- Drake 1: Altaria Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 53),
  -- Drake 2: Flygon Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 53),
  -- Drake 3: Kingdra Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 3, 230, 23000, 53),
  -- Drake 4: Flygon Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53),
  -- Drake 5: Salamence Lv. 55
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55),
  -- Steven 1: Skarmory Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 57),
  -- Steven 2: Claydol Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 57),
  -- Steven 3: Aggron Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 57),
  -- Steven 4: Cradily Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 57),
  -- Steven 5: Armaldo Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 57),
  -- Steven 6: Metagross Lv. 59
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 59),
  -- Zinnia 1: Goodra Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 1, 706, 70600, 60),
  -- Zinnia 2: Noivern Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 2, 715, 71500, 60),
  -- Zinnia 3: Altaria Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 3, 334, 33400, 60),
  -- Zinnia 4: Tyrantrum Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 4, 697, 69700, 60),
  -- Zinnia 5: Salamence Lv. 62
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 62),
  -- May / Brendan (chose Treecko), Receive Pokedex 1: Torchic Lv. 5
  (140002, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 255, 25500, 5),
  -- May / Brendan (chose Torchic), Receive Pokedex 1: Mudkip Lv. 5
  (140002, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 258, 25800, 5),
  -- May / Brendan (chose Mudkip), Receive Pokedex 1: Treecko Lv. 5
  (140002, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 252, 25200, 5),
  -- May / Brendan (chose Treecko), Dynamo Badge 1: Wailmer Lv. 18
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 320, 32000, 18),
  -- May / Brendan (chose Treecko), Dynamo Badge 2: Shroomish Lv. 18
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 285, 28500, 18),
  -- May / Brendan (chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 256, 25600, 20),
  -- May / Brendan (chose Torchic), Dynamo Badge 1: Shroomish Lv. 18
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 285, 28500, 18),
  -- May / Brendan (chose Torchic), Dynamo Badge 2: Slugma Lv. 18
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 218, 21800, 18),
  -- May / Brendan (chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 259, 25900, 20),
  -- May / Brendan (chose Mudkip), Dynamo Badge 1: Slugma Lv. 18
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 218, 21800, 18),
  -- May / Brendan (chose Mudkip), Dynamo Badge 2: Wailmer Lv. 18
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 320, 32000, 18),
  -- May / Brendan (chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 253, 25300, 20),
  -- Wally, Dynamo Badge 1: Ralts Lv. 17
  (140005, 14016, 14, NULL, NULL, NULL, NULL, NULL, 1, 280, 28000, 17),
  -- Maxie, Mt. Chimney 1: Mightyena Lv. 25
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 25),
  -- Maxie, Mt. Chimney 2: Golbat Lv. 25
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 25),
  -- Maxie, Mt. Chimney 3: Camerupt Lv. 27
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 27),
  -- Archie, Mt. Chimney 1: Mightyena Lv. 25
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 25),
  -- Archie, Mt. Chimney 2: Golbat Lv. 25
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 25),
  -- Archie, Mt. Chimney 3: Sharpedo Lv. 27
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 3, 319, 31900, 27),
  -- May / Brendan (chose Treecko), Feather Badge 1: Wailmer Lv. 31
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 320, 32000, 31),
  -- May / Brendan (chose Treecko), Feather Badge 2: Shroomish Lv. 31
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 285, 28500, 31),
  -- May / Brendan (chose Treecko), Feather Badge 3: Combusken Lv. 33
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 256, 25600, 33),
  -- May / Brendan (chose Torchic), Feather Badge 1: Shroomish Lv. 31
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 285, 28500, 31),
  -- May / Brendan (chose Torchic), Feather Badge 2: Slugma Lv. 31
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 218, 21800, 31),
  -- May / Brendan (chose Torchic), Feather Badge 3: Marshtomp Lv. 33
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 259, 25900, 33),
  -- May / Brendan (chose Mudkip), Feather Badge 1: Slugma Lv. 31
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 218, 21800, 31),
  -- May / Brendan (chose Mudkip), Feather Badge 2: Wailmer Lv. 31
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 320, 32000, 31),
  -- May / Brendan (chose Mudkip), Feather Badge 3: Grovyle Lv. 33
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 253, 25300, 33),
  -- May / Brendan (chose Treecko), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 277, 27700, 37),
  -- May / Brendan (chose Treecko), Mind Badge 2: Wailord Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 321, 32100, 37),
  -- May / Brendan (chose Treecko), Mind Badge 3: Breloom Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 286, 28600, 37),
  -- May / Brendan (chose Treecko), Mind Badge 4: Blaziken Lv. 39
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 4, 257, 25700, 39),
  -- May / Brendan (chose Torchic), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 277, 27700, 37),
  -- May / Brendan (chose Torchic), Mind Badge 2: Breloom Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 286, 28600, 37),
  -- May / Brendan (chose Torchic), Mind Badge 3: Magcargo Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 219, 21900, 37),
  -- May / Brendan (chose Torchic), Mind Badge 4: Swampert Lv. 39
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 4, 260, 26000, 39),
  -- May / Brendan (chose Mudkip), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 277, 27700, 37),
  -- May / Brendan (chose Mudkip), Mind Badge 2: Magcargo Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 219, 21900, 37),
  -- May / Brendan (chose Mudkip), Mind Badge 3: Wailord Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 321, 32100, 37),
  -- May / Brendan (chose Mudkip), Mind Badge 4: Sceptile Lv. 39
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 4, 254, 25400, 39),
  -- Maxie, Seafloor Cavern 1: Mightyena Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41),
  -- Maxie, Seafloor Cavern 2: Weezing Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 41),
  -- Maxie, Seafloor Cavern 3: Crobat Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 41),
  -- Maxie, Seafloor Cavern 4: Camerupt Lv. 43
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 43),
  -- Archie, Seafloor Cavern 1: Mightyena Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41),
  -- Archie, Seafloor Cavern 2: Muk Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 41),
  -- Archie, Seafloor Cavern 3: Crobat Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 41),
  -- Archie, Seafloor Cavern 4: Sharpedo Lv. 43
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 43),
  -- Wally, Elite Four Sidney 1: Altaria Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 46),
  -- Wally, Elite Four Sidney 2: Delcatty Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 2, 301, 30100, 46),
  -- Wally, Elite Four Sidney 3: Roselia Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 3, 315, 31500, 46),
  -- Wally, Elite Four Sidney 4: Magneton Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 4, 82, 8200, 46),
  -- Wally, Elite Four Sidney 5: Gallade Lv. 48
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 5, 475, 47500, 48),
  -- May / Brendan (chose Treecko), Hall of Fame 1: Swellow Lv. 48
  (140017, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 277, 27700, 48),
  -- May / Brendan (chose Treecko), Hall of Fame 2: Raichu Lv. 48
  (140017, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 26, 2600, 48),
  -- May / Brendan (chose Treecko), Hall of Fame 3: Wailord Lv. 48
  (140017, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 321, 32100, 48),
  -- May / Brendan (chose Treecko), Hall of Fame 4: Breloom Lv. 48
  (140017, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 4, 286, 28600, 48),
  -- May / Brendan (chose Treecko), Hall of Fame 5: Blaziken Lv. 50
  (140017, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 5, 257, 25700, 50),
  -- May / Brendan (chose Torchic), Hall of Fame 1: Swellow Lv. 48
  (140017, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 277, 27700, 48),
  -- May / Brendan (chose Torchic), Hall of Fame 2: Raichu Lv. 48
  (140017, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 26, 2600, 48),
  -- May / Brendan (chose Torchic), Hall of Fame 3: Breloom Lv. 48
  (140017, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 286, 28600, 48),
  -- May / Brendan (chose Torchic), Hall of Fame 4: Magcargo Lv. 48
  (140017, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 4, 219, 21900, 48),
  -- May / Brendan (chose Torchic), Hall of Fame 5: Swampert Lv. 50
  (140017, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 5, 260, 26000, 50),
  -- May / Brendan (chose Mudkip), Hall of Fame 1: Swellow Lv. 48
  (140017, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 277, 27700, 48),
  -- May / Brendan (chose Mudkip), Hall of Fame 2: Raichu Lv. 48
  (140017, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 26, 2600, 48),
  -- May / Brendan (chose Mudkip), Hall of Fame 3: Magcargo Lv. 48
  (140017, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 219, 21900, 48),
  -- May / Brendan (chose Mudkip), Hall of Fame 4: Wailord Lv. 48
  (140017, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 4, 321, 32100, 48),
  -- May / Brendan (chose Mudkip), Hall of Fame 5: Sceptile Lv. 50
  (140017, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 5, 254, 25400, 50);
