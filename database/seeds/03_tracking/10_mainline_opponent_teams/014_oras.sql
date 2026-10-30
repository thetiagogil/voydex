-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Omega Ruby / Alpha Sapphire Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Omega Ruby / Alpha Sapphire Gym Leaders and Elite Four page.
-- Rival, Wally, Maxie and Archie battles: Bulbapedia, cross-checked with Serebii's rival, Wally and Team Aqua / Magma pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Zinnia: cross-checked with Bulbapedia, whose slot order is used.
-- Delta Episode battles with Zinnia at Granite Cave and Wallace: Bulbapedia, cross-checked with Serebii.
-- Battle forms: Steven, Zinnia, Wally at Victory Road, and Maxie and Archie at
-- Seafloor Cavern hold their ace's Mega Stone, and Groudon and Kyogre at the Cave
-- of Origin are Primal, so each is stored in that form (Bulbapedia trainer pages).
-- May / Brendan's Hall of Fame battle: their starter holds its Mega Stone and
-- Mega Evolves at the first chance, so it is stored as its Mega (Bulbapedia).
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- May / Brendan's Mind Badge team: Bulbapedia (PokéWiki lists other levels); it holds nothing.
-- Wild Ho-Oh always holds Sacred Ash in its game data; other wild Pokémon here hold nothing.
-- Magma and Aqua Admins (Tabitha, Courtney, Shelly, Matt) and the Brendan / May and
-- Steven partner teams: Bulbapedia's trainer pages, cross-checked with Serebii's Pokéarth
-- where it lists them (Southern Island and the Space Center Grunts are Bulbapedia only).
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Roxanne 1: Geodude Lv. 12
  (140003, 14001, 14, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL, NULL, FALSE),
  -- Roxanne 2: Nosepass Lv. 14
  (140003, 14001, 14, NULL, NULL, NULL, NULL, NULL, 2, 299, 29900, 14, NULL, NULL, FALSE),
  -- Brawly 1: Machop Lv. 14
  (140004, 14002, 14, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 14, NULL, NULL, FALSE),
  -- Brawly 2: Makuhita Lv. 16
  (140004, 14002, 14, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 16, NULL, NULL, FALSE),
  -- Wattson 1: Magnemite Lv. 19
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 19, NULL, NULL, FALSE),
  -- Wattson 2: Voltorb Lv. 19
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 2, 100, 10000, 19, NULL, NULL, FALSE),
  -- Wattson 3: Magneton Lv. 21
  (140005, 14003, 14, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 21, NULL, NULL, FALSE),
  -- Flannery 1: Slugma Lv. 26
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 1, 218, 21800, 26, NULL, NULL, FALSE),
  -- Flannery 2: Numel Lv. 26
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 2, 322, 32200, 26, NULL, NULL, FALSE),
  -- Flannery 3: Torkoal Lv. 28
  (140007, 14004, 14, NULL, NULL, NULL, NULL, NULL, 3, 324, 32400, 28, NULL, NULL, FALSE),
  -- Norman 1: Slaking Lv. 28
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 1, 289, 28900, 28, NULL, NULL, FALSE),
  -- Norman 2: Vigoroth Lv. 28
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 28, NULL, NULL, FALSE),
  -- Norman 3: Slaking Lv. 30
  (140008, 14005, 14, NULL, NULL, NULL, NULL, NULL, 3, 289, 28900, 30, NULL, NULL, FALSE),
  -- Winona 1: Swellow Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 1, 277, 27700, 33, NULL, NULL, FALSE),
  -- Winona 2: Pelipper Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 33, NULL, NULL, FALSE),
  -- Winona 3: Skarmory Lv. 33
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 3, 227, 22700, 33, NULL, NULL, FALSE),
  -- Winona 4: Altaria Lv. 35
  (140009, 14006, 14, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 35, NULL, NULL, FALSE),
  -- Tate & Liza 1: Lunatone Lv. 45
  (140010, 14007, 14, NULL, NULL, NULL, NULL, NULL, 1, 337, 33700, 45, NULL, NULL, FALSE),
  -- Tate & Liza 2: Solrock Lv. 45
  (140010, 14007, 14, NULL, NULL, NULL, NULL, NULL, 2, 338, 33800, 45, NULL, NULL, FALSE),
  -- Wallace 1: Luvdisc Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 44, NULL, NULL, FALSE),
  -- Wallace 2: Whiscash Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 44, NULL, NULL, FALSE),
  -- Wallace 3: Sealeo Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 44, NULL, NULL, FALSE),
  -- Wallace 4: Seaking Lv. 44
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 4, 119, 11900, 44, NULL, NULL, FALSE),
  -- Wallace 5: Milotic Lv. 46
  (140011, 14008, 14, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 46, NULL, NULL, FALSE),
  -- Sidney 1: Mightyena Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 50, NULL, NULL, FALSE),
  -- Sidney 2: Shiftry Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 50, NULL, NULL, FALSE),
  -- Sidney 3: Cacturne Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 50, NULL, NULL, FALSE),
  -- Sidney 4: Sharpedo Lv. 50
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 50, NULL, NULL, FALSE),
  -- Sidney 5: Absol Lv. 52
  (140012, 14009, 14, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 52, NULL, NULL, FALSE),
  -- Phoebe 1: Dusclops Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 51, NULL, NULL, FALSE),
  -- Phoebe 2: Banette Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 51, NULL, NULL, FALSE),
  -- Phoebe 3: Sableye Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 51, NULL, NULL, FALSE),
  -- Phoebe 4: Banette Lv. 51
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 51, NULL, NULL, FALSE),
  -- Phoebe 5: Dusknoir Lv. 53
  (140013, 14010, 14, NULL, NULL, NULL, NULL, NULL, 5, 477, 47700, 53, NULL, NULL, FALSE),
  -- Glacia 1: Glalie Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 1, 362, 36200, 52, NULL, NULL, FALSE),
  -- Glacia 2: Froslass Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 2, 478, 47800, 52, NULL, NULL, FALSE),
  -- Glacia 3: Glalie Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 3, 362, 36200, 52, NULL, NULL, FALSE),
  -- Glacia 4: Froslass Lv. 52
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 4, 478, 47800, 52, NULL, NULL, FALSE),
  -- Glacia 5: Walrein Lv. 54
  (140014, 14011, 14, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 54, NULL, NULL, FALSE),
  -- Drake 1: Altaria Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 53, NULL, NULL, FALSE),
  -- Drake 2: Flygon Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 53, NULL, NULL, FALSE),
  -- Drake 3: Kingdra Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 3, 230, 23000, 53, NULL, NULL, FALSE),
  -- Drake 4: Flygon Lv. 53
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53, NULL, NULL, FALSE),
  -- Drake 5: Salamence Lv. 55
  (140015, 14012, 14, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55, NULL, NULL, FALSE),
  -- Steven 1: Skarmory Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 57, NULL, NULL, FALSE),
  -- Steven 2: Claydol Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 57, NULL, NULL, FALSE),
  -- Steven 3: Aggron Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 57, NULL, NULL, FALSE),
  -- Steven 4: Cradily Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 57, NULL, NULL, FALSE),
  -- Steven 5: Armaldo Lv. 57
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 57, NULL, NULL, FALSE),
  -- Steven 6: Mega Metagross Lv. 59, holds Metagrossite
  (140016, 14013, 14, NULL, NULL, NULL, NULL, NULL, 6, 376, 37601, 59, 300, NULL, FALSE),
  -- Zinnia 1: Goodra Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 1, 706, 70600, 60, NULL, NULL, FALSE),
  -- Zinnia 2: Tyrantrum Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 2, 697, 69700, 60, NULL, NULL, FALSE),
  -- Zinnia 3: Altaria Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 3, 334, 33400, 60, NULL, NULL, FALSE),
  -- Zinnia 4: Noivern Lv. 60
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 4, 715, 71500, 60, NULL, NULL, FALSE),
  -- Zinnia 5: Mega Salamence Lv. 62, holds Salamencite
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 5, 373, 37301, 62, 299, NULL, FALSE),
  -- May / Brendan (chose Treecko), Receive Pokedex 1: Torchic Lv. 5
  (140002, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 255, 25500, 5, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Receive Pokedex 1: Mudkip Lv. 5
  (140002, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 258, 25800, 5, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Receive Pokedex 1: Treecko Lv. 5
  (140002, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 252, 25200, 5, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Dynamo Badge 1: Wailmer Lv. 18
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 320, 32000, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Dynamo Badge 2: Shroomish Lv. 18
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 285, 28500, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (140005, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 256, 25600, 20, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Dynamo Badge 1: Shroomish Lv. 18
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 285, 28500, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Dynamo Badge 2: Slugma Lv. 18
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 218, 21800, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (140005, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 259, 25900, 20, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Dynamo Badge 1: Slugma Lv. 18
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 218, 21800, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Dynamo Badge 2: Wailmer Lv. 18
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 320, 32000, 18, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (140005, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 253, 25300, 20, NULL, NULL, FALSE),
  -- Wally, Dynamo Badge 1: Ralts Lv. 17
  (140005, 14016, 14, NULL, NULL, NULL, NULL, NULL, 1, 280, 28000, 17, NULL, NULL, FALSE),
  -- Maxie, Mt. Chimney 1: Mightyena Lv. 25
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 25, NULL, NULL, FALSE),
  -- Maxie, Mt. Chimney 2: Golbat Lv. 25
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 25, NULL, NULL, FALSE),
  -- Maxie, Mt. Chimney 3: Camerupt Lv. 27
  (140019, 14017, 14, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 27, NULL, NULL, FALSE),
  -- Archie, Mt. Chimney 1: Mightyena Lv. 25
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 25, NULL, NULL, FALSE),
  -- Archie, Mt. Chimney 2: Golbat Lv. 25
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 25, NULL, NULL, FALSE),
  -- Archie, Mt. Chimney 3: Sharpedo Lv. 27
  (140019, 14018, 14, NULL, NULL, NULL, NULL, NULL, 3, 319, 31900, 27, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Feather Badge 1: Wailmer Lv. 31
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 320, 32000, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Feather Badge 2: Shroomish Lv. 31
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 285, 28500, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Feather Badge 3: Combusken Lv. 33
  (140009, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 256, 25600, 33, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Feather Badge 1: Shroomish Lv. 31
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 285, 28500, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Feather Badge 2: Slugma Lv. 31
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 218, 21800, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Feather Badge 3: Marshtomp Lv. 33
  (140009, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 259, 25900, 33, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Feather Badge 1: Slugma Lv. 31
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 218, 21800, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Feather Badge 2: Wailmer Lv. 31
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 320, 32000, 31, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Feather Badge 3: Grovyle Lv. 33
  (140009, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 253, 25300, 33, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 277, 27700, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Mind Badge 2: Wailord Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 321, 32100, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Mind Badge 3: Breloom Lv. 37
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 286, 28600, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Mind Badge 4: Blaziken Lv. 39
  (140010, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 4, 257, 25700, 39, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 277, 27700, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Mind Badge 2: Breloom Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 286, 28600, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Mind Badge 3: Magcargo Lv. 37
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 219, 21900, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Mind Badge 4: Swampert Lv. 39
  (140010, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 4, 260, 26000, 39, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Mind Badge 1: Swellow Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 277, 27700, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Mind Badge 2: Magcargo Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 219, 21900, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Mind Badge 3: Wailord Lv. 37
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 321, 32100, 37, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Mind Badge 4: Sceptile Lv. 39
  (140010, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 4, 254, 25400, 39, NULL, NULL, FALSE),
  -- Maxie, Seafloor Cavern 1: Mightyena Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41, NULL, NULL, FALSE),
  -- Maxie, Seafloor Cavern 2: Weezing Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 41, NULL, NULL, FALSE),
  -- Maxie, Seafloor Cavern 3: Crobat Lv. 41
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 41, NULL, NULL, FALSE),
  -- Maxie, Seafloor Cavern 4: Mega Camerupt Lv. 43, holds Cameruptite
  (140020, 14017, 14, NULL, NULL, NULL, NULL, NULL, 4, 323, 32301, 43, 294, NULL, FALSE),
  -- Archie, Seafloor Cavern 1: Mightyena Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41, NULL, NULL, FALSE),
  -- Archie, Seafloor Cavern 2: Muk Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 41, NULL, NULL, FALSE),
  -- Archie, Seafloor Cavern 3: Crobat Lv. 41
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 3, 169, 16900, 41, NULL, NULL, FALSE),
  -- Archie, Seafloor Cavern 4: Mega Sharpedo Lv. 43, holds Sharpedonite
  (140020, 14018, 14, NULL, NULL, NULL, NULL, NULL, 4, 319, 31901, 43, 293, NULL, FALSE),
  -- Wally, Elite Four Sidney 1: Altaria Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 46, NULL, NULL, FALSE),
  -- Wally, Elite Four Sidney 2: Delcatty Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 2, 301, 30100, 46, NULL, NULL, FALSE),
  -- Wally, Elite Four Sidney 3: Roselia Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 3, 315, 31500, 46, NULL, NULL, FALSE),
  -- Wally, Elite Four Sidney 4: Magneton Lv. 46
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 4, 82, 8200, 46, NULL, NULL, FALSE),
  -- Wally, Elite Four Sidney 5: Mega Gallade Lv. 48, holds Galladite
  (140012, 14016, 14, NULL, NULL, NULL, NULL, NULL, 5, 475, 47501, 48, 307, NULL, FALSE),
  -- May / Brendan (chose Treecko), Hall of Fame 1: Swellow Lv. 48
  (140018, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 1, 277, 27700, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Hall of Fame 2: Raichu Lv. 48
  (140018, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 2, 26, 2600, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Hall of Fame 3: Wailord Lv. 48
  (140018, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 3, 321, 32100, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Hall of Fame 4: Breloom Lv. 48
  (140018, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 4, 286, 28600, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Treecko), Hall of Fame 5: Mega Blaziken Lv. 50, holds Blazikenite
  (140018, 14015, 14, NULL, 140001, 'treecko', NULL, NULL, 5, 257, 25701, 50, 285, NULL, FALSE),
  -- May / Brendan (chose Torchic), Hall of Fame 1: Swellow Lv. 48
  (140018, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 1, 277, 27700, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Hall of Fame 2: Raichu Lv. 48
  (140018, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 2, 26, 2600, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Hall of Fame 3: Breloom Lv. 48
  (140018, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 3, 286, 28600, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Hall of Fame 4: Magcargo Lv. 48
  (140018, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 4, 219, 21900, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Torchic), Hall of Fame 5: Mega Swampert Lv. 50, holds Swampertite
  (140018, 14015, 14, NULL, 140001, 'torchic', NULL, NULL, 5, 260, 26001, 50, 286, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Hall of Fame 1: Swellow Lv. 48
  (140018, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 1, 277, 27700, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Hall of Fame 2: Raichu Lv. 48
  (140018, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 2, 26, 2600, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Hall of Fame 3: Magcargo Lv. 48
  (140018, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 3, 219, 21900, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Hall of Fame 4: Wailord Lv. 48
  (140018, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 4, 321, 32100, 48, NULL, NULL, FALSE),
  -- May / Brendan (chose Mudkip), Hall of Fame 5: Mega Sceptile Lv. 50, holds Sceptilite
  (140018, 14015, 14, NULL, 140001, 'mudkip', NULL, NULL, 5, 254, 25401, 50, 284, NULL, FALSE),
  -- Groudon, Rain Badge 1: Primal Groudon Lv. 45
  (140033, 14019, 14, NULL, NULL, NULL, NULL, NULL, 1, 383, 38301, 45, NULL, NULL, FALSE),
  -- Kyogre, Rain Badge 1: Primal Kyogre Lv. 45
  (140033, 14020, 14, NULL, NULL, NULL, NULL, NULL, 1, 382, 38201, 45, NULL, NULL, FALSE),
  -- Rayquaza, Delta Episode 1: Rayquaza Lv. 70
  (140018, 14021, 14, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70, NULL, NULL, FALSE),
  -- Deoxys, Delta Episode 1: Deoxys Lv. 80
  (140018, 14022, 14, NULL, NULL, NULL, NULL, NULL, 1, 386, 38600, 80, NULL, NULL, FALSE),
  -- Regirock, Sealed Chamber 1: Regirock Lv. 40
  (140021, 14023, 14, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 40, NULL, NULL, FALSE),
  -- Regice, Sealed Chamber 1: Regice Lv. 40
  (140021, 14024, 14, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 40, NULL, NULL, FALSE),
  -- Registeel, Sealed Chamber 1: Registeel Lv. 40
  (140021, 14025, 14, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 40, NULL, NULL, FALSE),
  -- Heatran, Scorched Slab 1: Heatran Lv. 50
  (140022, 14026, 14, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 50, NULL, NULL, FALSE),
  -- Ho-Oh, Sea Mauville 1: Ho-Oh Lv. 50, holds Sacred Ash
  (140023, 14027, 14, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 50, 503, NULL, FALSE),
  -- Lugia, Sea Mauville 1: Lugia Lv. 50
  (140023, 14028, 14, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 50, NULL, NULL, FALSE),
  -- Cresselia, Crescent Isle 1: Cresselia Lv. 50
  (140024, 14029, 14, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 50, NULL, NULL, FALSE),
  -- Tornadus, Storm Clouds 1: Tornadus Lv. 50
  (140025, 14030, 14, NULL, NULL, NULL, NULL, NULL, 1, 641, 64100, 50, NULL, NULL, FALSE),
  -- Thundurus, Storm Clouds 1: Thundurus Lv. 50
  (140025, 14031, 14, NULL, NULL, NULL, NULL, NULL, 1, 642, 64200, 50, NULL, NULL, FALSE),
  -- Landorus, Storm Clouds 1: Landorus Lv. 50
  (140025, 14032, 14, NULL, NULL, NULL, NULL, NULL, 1, 645, 64500, 50, NULL, NULL, FALSE),
  -- Regigigas, Regigigas in Island Cave 1: Regigigas Lv. 50
  (140026, 14033, 14, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 50, NULL, NULL, FALSE),
  -- Raikou, Trackless Forest 1: Raikou Lv. 50
  (140027, 14034, 14, NULL, NULL, NULL, NULL, NULL, 1, 243, 24300, 50, NULL, NULL, FALSE),
  -- Entei, Trackless Forest 1: Entei Lv. 50
  (140027, 14035, 14, NULL, NULL, NULL, NULL, NULL, 1, 244, 24400, 50, NULL, NULL, FALSE),
  -- Suicune, Trackless Forest 1: Suicune Lv. 50
  (140027, 14036, 14, NULL, NULL, NULL, NULL, NULL, 1, 245, 24500, 50, NULL, NULL, FALSE),
  -- Uxie, Nameless Cavern 1: Uxie Lv. 50
  (140028, 14037, 14, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 50, NULL, NULL, FALSE),
  -- Mesprit, Nameless Cavern 1: Mesprit Lv. 50
  (140028, 14038, 14, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 50, NULL, NULL, FALSE),
  -- Azelf, Nameless Cavern 1: Azelf Lv. 50
  (140028, 14039, 14, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 50, NULL, NULL, FALSE),
  -- Palkia, Dimensional Rift 1: Palkia Lv. 50
  (140029, 14040, 14, NULL, NULL, NULL, NULL, NULL, 1, 484, 48400, 50, NULL, NULL, FALSE),
  -- Dialga, Dimensional Rift 1: Dialga Lv. 50
  (140029, 14041, 14, NULL, NULL, NULL, NULL, NULL, 1, 483, 48300, 50, NULL, NULL, FALSE),
  -- Giratina, Dimensional Rift 1: Giratina Lv. 50
  (140029, 14042, 14, NULL, NULL, NULL, NULL, NULL, 1, 487, 48700, 50, NULL, NULL, FALSE),
  -- Cobalion, Pathless Plain 1: Cobalion Lv. 50
  (140030, 14043, 14, NULL, NULL, NULL, NULL, NULL, 1, 638, 63800, 50, NULL, NULL, FALSE),
  -- Terrakion, Pathless Plain 1: Terrakion Lv. 50
  (140030, 14044, 14, NULL, NULL, NULL, NULL, NULL, 1, 639, 63900, 50, NULL, NULL, FALSE),
  -- Virizion, Pathless Plain 1: Virizion Lv. 50
  (140030, 14045, 14, NULL, NULL, NULL, NULL, NULL, 1, 640, 64000, 50, NULL, NULL, FALSE),
  -- Reshiram, Fabled Cave 1: Reshiram Lv. 50
  (140031, 14046, 14, NULL, NULL, NULL, NULL, NULL, 1, 643, 64300, 50, NULL, NULL, FALSE),
  -- Zekrom, Fabled Cave 1: Zekrom Lv. 50
  (140031, 14047, 14, NULL, NULL, NULL, NULL, NULL, 1, 644, 64400, 50, NULL, NULL, FALSE),
  -- Kyurem, Gnarled Den 1: Kyurem Lv. 50
  (140032, 14048, 14, NULL, NULL, NULL, NULL, NULL, 1, 646, 64600, 50, NULL, NULL, FALSE),
  -- Zinnia, Granite Cave 1: Tyrantrum Lv. 55
  (140018, 14049, 14, NULL, NULL, NULL, NULL, NULL, 1, 697, 69700, 55, NULL, NULL, FALSE),
  -- Zinnia, Granite Cave 2: Altaria Lv. 55
  (140018, 14049, 14, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 55, NULL, NULL, FALSE),
  -- Zinnia, Granite Cave 3: Salamence Lv. 57
  (140018, 14049, 14, NULL, NULL, NULL, NULL, NULL, 3, 373, 37300, 57, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 1: Wailord Lv. 55
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 1, 321, 32100, 55, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 2: Tentacruel Lv. 55
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 2, 73, 7300, 55, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 3: Ludicolo Lv. 55
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 3, 272, 27200, 55, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 4: Whiscash Lv. 55
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 55, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 5: Gyarados Lv. 55
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 5, 130, 13000, 55, NULL, NULL, FALSE),
  -- Wallace, Delta Episode 6: Milotic Lv. 57
  (140018, 14050, 14, NULL, NULL, NULL, NULL, NULL, 6, 350, 35000, 57, NULL, NULL, FALSE),
  -- Tabitha & Grunt, Meteor Falls 1: Mightyena Lv. 23
  (140019, 14051, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 23, NULL, NULL, FALSE),
  -- Tabitha & Grunt, Meteor Falls 2: Numel Lv. 23
  (140019, 14051, 14, NULL, NULL, NULL, NULL, NULL, 2, 322, 32200, 23, NULL, NULL, FALSE),
  -- Tabitha & Grunt, Meteor Falls 3: Koffing Lv. 23
  (140019, 14051, 14, NULL, NULL, NULL, NULL, NULL, 3, 109, 10900, 23, NULL, NULL, FALSE),
  -- Tabitha, Mt. Chimney 1: Koffing Lv. 24
  (140019, 14052, 14, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 24, NULL, NULL, FALSE),
  -- Tabitha, Mt. Chimney 2: Numel Lv. 24
  (140019, 14052, 14, NULL, NULL, NULL, NULL, NULL, 2, 322, 32200, 24, NULL, NULL, FALSE),
  -- Tabitha, Weather Institute 1: Camerupt Lv. 32
  (140009, 14052, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32300, 32, NULL, NULL, FALSE),
  -- Shelly & Grunt, Meteor Falls 1: Mightyena Lv. 23
  (140019, 14056, 14, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 23, NULL, NULL, FALSE),
  -- Shelly & Grunt, Meteor Falls 2: Carvanha Lv. 23
  (140019, 14056, 14, NULL, NULL, NULL, NULL, NULL, 2, 318, 31800, 23, NULL, NULL, FALSE),
  -- Shelly & Grunt, Meteor Falls 3: Grimer Lv. 23
  (140019, 14056, 14, NULL, NULL, NULL, NULL, NULL, 3, 88, 8800, 23, NULL, NULL, FALSE),
  -- Shelly, Mt. Chimney 1: Grimer Lv. 24
  (140019, 14057, 14, NULL, NULL, NULL, NULL, NULL, 1, 88, 8800, 24, NULL, NULL, FALSE),
  -- Shelly, Mt. Chimney 2: Carvanha Lv. 24
  (140019, 14057, 14, NULL, NULL, NULL, NULL, NULL, 2, 318, 31800, 24, NULL, NULL, FALSE),
  -- Shelly, Weather Institute 1: Sharpedo Lv. 32
  (140009, 14057, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31900, 32, NULL, NULL, FALSE),
  -- Courtney & Grunt, Southern Island 1: Camerupt Lv. 31
  (140009, 14053, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32300, 31, NULL, NULL, FALSE),
  -- Courtney & Grunt, Southern Island 2: Koffing Lv. 29
  (140009, 14053, 14, NULL, NULL, NULL, NULL, NULL, 2, 109, 10900, 29, NULL, NULL, FALSE),
  -- Courtney, Mt. Pyre 1: Camerupt Lv. 38
  (140010, 14054, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32300, 38, NULL, NULL, FALSE),
  -- Courtney, Team Magma Hideout 1: Camerupt Lv. 39
  (140010, 14055, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32300, 39, NULL, NULL, FALSE),
  -- Courtney, Petalburg City 1: Camerupt Lv. 53
  (140018, 14054, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32300, 53, NULL, NULL, FALSE),
  -- Courtney & Grunt, Mossdeep Space Center 1: Mega Camerupt Lv. 55, holds Cameruptite
  (140018, 14053, 14, NULL, NULL, NULL, NULL, NULL, 1, 323, 32301, 55, 294, NULL, FALSE),
  -- Courtney & Grunt, Mossdeep Space Center 2: Mightyena Lv. 51
  (140018, 14053, 14, NULL, NULL, NULL, NULL, NULL, 2, 262, 26200, 51, NULL, NULL, FALSE),
  -- Courtney & Grunt, Mossdeep Space Center 3: Weezing Lv. 51
  (140018, 14053, 14, NULL, NULL, NULL, NULL, NULL, 3, 110, 11000, 51, NULL, NULL, FALSE),
  -- Matt & Grunt, Southern Island 1: Sharpedo Lv. 31
  (140009, 14058, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31900, 31, NULL, NULL, FALSE),
  -- Matt & Grunt, Southern Island 2: Grimer Lv. 29
  (140009, 14058, 14, NULL, NULL, NULL, NULL, NULL, 2, 88, 8800, 29, NULL, NULL, FALSE),
  -- Matt, Mt. Pyre 1: Sharpedo Lv. 38
  (140010, 14059, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31900, 38, NULL, NULL, FALSE),
  -- Matt, Team Aqua Hideout 1: Sharpedo Lv. 39
  (140010, 14060, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31900, 39, NULL, NULL, FALSE),
  -- Matt, Petalburg City 1: Sharpedo Lv. 53
  (140018, 14059, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31900, 53, NULL, NULL, FALSE),
  -- Matt & Grunt, Mossdeep Space Center 1: Mega Sharpedo Lv. 55, holds Sharpedonite
  (140018, 14058, 14, NULL, NULL, NULL, NULL, NULL, 1, 319, 31901, 55, 293, NULL, FALSE),
  -- Matt & Grunt, Mossdeep Space Center 2: Mightyena Lv. 51
  (140018, 14058, 14, NULL, NULL, NULL, NULL, NULL, 2, 262, 26200, 51, NULL, NULL, FALSE),
  -- Matt & Grunt, Mossdeep Space Center 3: Muk Lv. 51
  (140018, 14058, 14, NULL, NULL, NULL, NULL, NULL, 3, 89, 8900, 51, NULL, NULL, FALSE);
