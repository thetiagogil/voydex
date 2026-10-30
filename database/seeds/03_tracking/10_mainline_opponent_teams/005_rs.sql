-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Ruby / Sapphire Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Ruby / Sapphire Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival, Wally, Maxie and Archie battles: the pret pokeruby disassembly's trainer parties, cross-checked with Bulbapedia and Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Held items: the pret pokeruby disassembly's trainer parties and wild battle scripts.
-- Scope: Pokémon Ruby / Sapphire Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Ruby / Sapphire opponent uses in each Story battle, by
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
  -- Roxanne 1: Geodude Lv. 14
  (50003, 5001, 5, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 14, NULL),
  -- Roxanne 2: Nosepass Lv. 15
  (50003, 5001, 5, NULL, NULL, NULL, NULL, NULL, 2, 299, 29900, 15, NULL),
  -- Brawly 1: Machop Lv. 17
  (50004, 5002, 5, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 17, NULL),
  -- Brawly 2: Makuhita Lv. 18
  (50004, 5002, 5, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 18, NULL),
  -- Wattson 1: Magnemite Lv. 22
  (50005, 5003, 5, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 22, NULL),
  -- Wattson 2: Voltorb Lv. 20
  (50005, 5003, 5, NULL, NULL, NULL, NULL, NULL, 2, 100, 10000, 20, NULL),
  -- Wattson 3: Magneton Lv. 23
  (50005, 5003, 5, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 23, NULL),
  -- Flannery 1: Slugma Lv. 26
  (50007, 5004, 5, NULL, NULL, NULL, NULL, NULL, 1, 218, 21800, 26, NULL),
  -- Flannery 2: Slugma Lv. 26
  (50007, 5004, 5, NULL, NULL, NULL, NULL, NULL, 2, 218, 21800, 26, NULL),
  -- Flannery 3: Torkoal Lv. 28
  (50007, 5004, 5, NULL, NULL, NULL, NULL, NULL, 3, 324, 32400, 28, NULL),
  -- Norman 1: Slaking Lv. 28
  (50008, 5005, 5, NULL, NULL, NULL, NULL, NULL, 1, 289, 28900, 28, NULL),
  -- Norman 2: Vigoroth Lv. 30
  (50008, 5005, 5, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 30, NULL),
  -- Norman 3: Slaking Lv. 31
  (50008, 5005, 5, NULL, NULL, NULL, NULL, NULL, 3, 289, 28900, 31, NULL),
  -- Winona 1: Swellow Lv. 31
  (50009, 5006, 5, NULL, NULL, NULL, NULL, NULL, 1, 277, 27700, 31, NULL),
  -- Winona 2: Pelipper Lv. 30
  (50009, 5006, 5, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 30, NULL),
  -- Winona 3: Skarmory Lv. 32
  (50009, 5006, 5, NULL, NULL, NULL, NULL, NULL, 3, 227, 22700, 32, NULL),
  -- Winona 4: Altaria Lv. 33
  (50009, 5006, 5, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 33, NULL),
  -- Tate & Liza 1: Lunatone Lv. 42
  (50010, 5007, 5, NULL, NULL, NULL, NULL, NULL, 1, 337, 33700, 42, NULL),
  -- Tate & Liza 2: Solrock Lv. 42
  (50010, 5007, 5, NULL, NULL, NULL, NULL, NULL, 2, 338, 33800, 42, NULL),
  -- Wallace 1: Luvdisc Lv. 40
  (50011, 5008, 5, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 40, NULL),
  -- Wallace 2: Whiscash Lv. 42
  (50011, 5008, 5, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 42, NULL),
  -- Wallace 3: Sealeo Lv. 40
  (50011, 5008, 5, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 40, NULL),
  -- Wallace 4: Seaking Lv. 42
  (50011, 5008, 5, NULL, NULL, NULL, NULL, NULL, 4, 119, 11900, 42, NULL),
  -- Wallace 5: Milotic Lv. 43
  (50011, 5008, 5, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 43, NULL),
  -- Sidney 1: Mightyena Lv. 46
  (50012, 5009, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 46, NULL),
  -- Sidney 2: Shiftry Lv. 48
  (50012, 5009, 5, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 48, NULL),
  -- Sidney 3: Cacturne Lv. 46
  (50012, 5009, 5, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 46, NULL),
  -- Sidney 4: Sharpedo Lv. 48
  (50012, 5009, 5, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 48, NULL),
  -- Sidney 5: Absol Lv. 49, holds Sitrus Berry
  (50012, 5009, 5, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 49, 187),
  -- Phoebe 1: Dusclops Lv. 48
  (50013, 5010, 5, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 48, NULL),
  -- Phoebe 2: Banette Lv. 49
  (50013, 5010, 5, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 49, NULL),
  -- Phoebe 3: Sableye Lv. 50
  (50013, 5010, 5, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 50, NULL),
  -- Phoebe 4: Banette Lv. 49
  (50013, 5010, 5, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 49, NULL),
  -- Phoebe 5: Dusclops Lv. 51, holds Sitrus Berry
  (50013, 5010, 5, NULL, NULL, NULL, NULL, NULL, 5, 356, 35600, 51, 187),
  -- Glacia 1: Glalie Lv. 50
  (50014, 5011, 5, NULL, NULL, NULL, NULL, NULL, 1, 362, 36200, 50, NULL),
  -- Glacia 2: Sealeo Lv. 50
  (50014, 5011, 5, NULL, NULL, NULL, NULL, NULL, 2, 364, 36400, 50, NULL),
  -- Glacia 3: Sealeo Lv. 52
  (50014, 5011, 5, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 52, NULL),
  -- Glacia 4: Glalie Lv. 52
  (50014, 5011, 5, NULL, NULL, NULL, NULL, NULL, 4, 362, 36200, 52, NULL),
  -- Glacia 5: Walrein Lv. 53, holds Sitrus Berry
  (50014, 5011, 5, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 53, 187),
  -- Drake 1: Shelgon Lv. 52
  (50015, 5012, 5, NULL, NULL, NULL, NULL, NULL, 1, 372, 37200, 52, NULL),
  -- Drake 2: Altaria Lv. 54
  (50015, 5012, 5, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 54, NULL),
  -- Drake 3: Flygon Lv. 53
  (50015, 5012, 5, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 53, NULL),
  -- Drake 4: Flygon Lv. 53
  (50015, 5012, 5, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53, NULL),
  -- Drake 5: Salamence Lv. 55, holds Sitrus Berry
  (50015, 5012, 5, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55, 187),
  -- Steven 1: Skarmory Lv. 57
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 57, NULL),
  -- Steven 2: Claydol Lv. 55
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 55, NULL),
  -- Steven 3: Aggron Lv. 56
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 56, NULL),
  -- Steven 4: Cradily Lv. 56
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 56, NULL),
  -- Steven 5: Armaldo Lv. 56
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 56, NULL),
  -- Steven 6: Metagross Lv. 58, holds Sitrus Berry
  (50016, 5013, 5, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 58, 187),
  -- May / Brendan (chose Treecko), Receive Pokedex 1: Torchic Lv. 5
  (50002, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 1, 255, 25500, 5, NULL),
  -- May / Brendan (chose Torchic), Receive Pokedex 1: Mudkip Lv. 5
  (50002, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 1, 258, 25800, 5, NULL),
  -- May / Brendan (chose Mudkip), Receive Pokedex 1: Treecko Lv. 5
  (50002, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 1, 252, 25200, 5, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 1: Wailmer Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 1, 320, 32000, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 2: Shroomish Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 2, 285, 28500, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 3, 256, 25600, 20, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 1: Shroomish Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 1, 285, 28500, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 2: Numel Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 2, 322, 32200, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 3, 259, 25900, 20, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 1: Wailmer Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 1, 320, 32000, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 2: Numel Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 2, 322, 32200, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 3, 253, 25300, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 1: Wailmer Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 1, 320, 32000, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 2: Shroomish Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 2, 285, 28500, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 3, 256, 25600, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 1: Shroomish Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 1, 285, 28500, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 2: Numel Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 2, 322, 32200, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 3, 259, 25900, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 1: Numel Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 1, 322, 32200, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 2: Wailmer Lv. 18
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 2, 320, 32000, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (50005, 5014, 5, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 3, 253, 25300, 20, NULL),
  -- Wally, Dynamo Badge 1: Ralts Lv. 16
  (50005, 5015, 5, NULL, NULL, NULL, NULL, NULL, 1, 280, 28000, 16, NULL),
  -- Maxie, Mt. Chimney 1: Mightyena Lv. 24
  (50018, 5016, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 24, NULL),
  -- Maxie, Mt. Chimney 2: Golbat Lv. 24
  (50018, 5016, 5, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 24, NULL),
  -- Maxie, Mt. Chimney 3: Camerupt Lv. 25
  (50018, 5016, 5, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 25, NULL),
  -- Archie, Mt. Chimney 1: Mightyena Lv. 24
  (50018, 5017, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 24, NULL),
  -- Archie, Mt. Chimney 2: Golbat Lv. 24
  (50018, 5017, 5, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 24, NULL),
  -- Archie, Mt. Chimney 3: Sharpedo Lv. 25
  (50018, 5017, 5, NULL, NULL, NULL, NULL, NULL, 3, 319, 31900, 25, NULL),
  -- May / Brendan (chose Treecko), Feather Badge 1: Wailmer Lv. 29
  (50009, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 1, 320, 32000, 29, NULL),
  -- May / Brendan (chose Treecko), Feather Badge 2: Shroomish Lv. 29
  (50009, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 2, 285, 28500, 29, NULL),
  -- May / Brendan (chose Treecko), Feather Badge 3: Combusken Lv. 31
  (50009, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 3, 256, 25600, 31, NULL),
  -- May / Brendan (chose Torchic), Feather Badge 1: Shroomish Lv. 29
  (50009, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 1, 285, 28500, 29, NULL),
  -- May / Brendan (chose Torchic), Feather Badge 2: Numel Lv. 29
  (50009, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 2, 322, 32200, 29, NULL),
  -- May / Brendan (chose Torchic), Feather Badge 3: Marshtomp Lv. 31
  (50009, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 3, 259, 25900, 31, NULL),
  -- May / Brendan (chose Mudkip), Feather Badge 1: Numel Lv. 29
  (50009, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 1, 322, 32200, 29, NULL),
  -- May / Brendan (chose Mudkip), Feather Badge 2: Wailmer Lv. 29
  (50009, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 2, 320, 32000, 29, NULL),
  -- May / Brendan (chose Mudkip), Feather Badge 3: Grovyle Lv. 31
  (50009, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 3, 253, 25300, 31, NULL),
  -- May / Brendan (chose Treecko), Mind Badge 1: Swellow Lv. 31
  (50010, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 1, 277, 27700, 31, NULL),
  -- May / Brendan (chose Treecko), Mind Badge 2: Wailmer Lv. 32
  (50010, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 2, 320, 32000, 32, NULL),
  -- May / Brendan (chose Treecko), Mind Badge 3: Shroomish Lv. 32
  (50010, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 3, 285, 28500, 32, NULL),
  -- May / Brendan (chose Treecko), Mind Badge 4: Combusken Lv. 34
  (50010, 5014, 5, NULL, 50001, 'treecko', NULL, NULL, 4, 256, 25600, 34, NULL),
  -- May / Brendan (chose Torchic), Mind Badge 1: Swellow Lv. 31
  (50010, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 1, 277, 27700, 31, NULL),
  -- May / Brendan (chose Torchic), Mind Badge 2: Shroomish Lv. 32
  (50010, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 2, 285, 28500, 32, NULL),
  -- May / Brendan (chose Torchic), Mind Badge 3: Numel Lv. 32
  (50010, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 3, 322, 32200, 32, NULL),
  -- May / Brendan (chose Torchic), Mind Badge 4: Marshtomp Lv. 34
  (50010, 5014, 5, NULL, 50001, 'torchic', NULL, NULL, 4, 259, 25900, 34, NULL),
  -- May / Brendan (chose Mudkip), Mind Badge 1: Swellow Lv. 31
  (50010, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 1, 277, 27700, 31, NULL),
  -- May / Brendan (chose Mudkip), Mind Badge 2: Numel Lv. 32
  (50010, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 2, 322, 32200, 32, NULL),
  -- May / Brendan (chose Mudkip), Mind Badge 3: Wailmer Lv. 32
  (50010, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 3, 320, 32000, 32, NULL),
  -- May / Brendan (chose Mudkip), Mind Badge 4: Grovyle Lv. 34
  (50010, 5014, 5, NULL, 50001, 'mudkip', NULL, NULL, 4, 253, 25300, 34, NULL),
  -- Maxie, Seafloor Cavern 1: Mightyena Lv. 41
  (50019, 5016, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41, NULL),
  -- Maxie, Seafloor Cavern 2: Crobat Lv. 41
  (50019, 5016, 5, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 41, NULL),
  -- Maxie, Seafloor Cavern 3: Camerupt Lv. 43
  (50019, 5016, 5, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 43, NULL),
  -- Archie, Seafloor Cavern 1: Mightyena Lv. 41
  (50019, 5017, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41, NULL),
  -- Archie, Seafloor Cavern 2: Crobat Lv. 41
  (50019, 5017, 5, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 41, NULL),
  -- Archie, Seafloor Cavern 3: Sharpedo Lv. 43
  (50019, 5017, 5, NULL, NULL, NULL, NULL, NULL, 3, 319, 31900, 43, NULL),
  -- Wally, Elite Four Sidney 1: Altaria Lv. 44
  (50012, 5015, 5, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 44, NULL),
  -- Wally, Elite Four Sidney 2: Delcatty Lv. 43
  (50012, 5015, 5, NULL, NULL, NULL, NULL, NULL, 2, 301, 30100, 43, NULL),
  -- Wally, Elite Four Sidney 3: Roselia Lv. 44
  (50012, 5015, 5, NULL, NULL, NULL, NULL, NULL, 3, 315, 31500, 44, NULL),
  -- Wally, Elite Four Sidney 4: Magneton Lv. 41
  (50012, 5015, 5, NULL, NULL, NULL, NULL, NULL, 4, 82, 8200, 41, NULL),
  -- Wally, Elite Four Sidney 5: Gardevoir Lv. 45
  (50012, 5015, 5, NULL, NULL, NULL, NULL, NULL, 5, 282, 28200, 45, NULL),
  -- Groudon, Rain Badge 1: Groudon Lv. 45
  (50023, 5018, 5, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 45, NULL),
  -- Kyogre, Rain Badge 1: Kyogre Lv. 45
  (50023, 5019, 5, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 45, NULL),
  -- Regirock, Sealed Chamber 1: Regirock Lv. 40
  (50020, 5020, 5, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 40, NULL),
  -- Regice, Sealed Chamber 1: Regice Lv. 40
  (50020, 5021, 5, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 40, NULL),
  -- Registeel, Sealed Chamber 1: Registeel Lv. 40
  (50020, 5022, 5, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 40, NULL),
  -- Rayquaza, Sky Pillar 1: Rayquaza Lv. 70
  (50021, 5023, 5, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70, NULL),
  -- Latios, Roaming Latios or Latias 1: Latios Lv. 40
  (50022, 5024, 5, NULL, NULL, NULL, NULL, NULL, 1, 381, 38100, 40, NULL),
  -- Latias, Roaming Latios or Latias 1: Latias Lv. 40
  (50022, 5025, 5, NULL, NULL, NULL, NULL, NULL, 1, 380, 38000, 40, NULL);
