-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Emerald Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Emerald Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival, Wally, Maxie and Archie battles: the pret pokeemerald disassembly's trainer parties, cross-checked with Bulbapedia.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Held items: the pret pokeemerald disassembly's trainer parties and wild battle scripts.
-- Scope: Pokémon Emerald Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Emerald opponent uses in each Story battle, by
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
  -- Roxanne 1: Geodude Lv. 12
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL),
  -- Roxanne 2: Geodude Lv. 12
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 2, 74, 7400, 12, NULL),
  -- Roxanne 3: Nosepass Lv. 15, holds Oran Berry
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 3, 299, 29900, 15, 184),
  -- Brawly 1: Machop Lv. 16
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 16, NULL),
  -- Brawly 2: Meditite Lv. 16
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 2, 307, 30700, 16, NULL),
  -- Brawly 3: Makuhita Lv. 19, holds Sitrus Berry
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 3, 296, 29600, 19, 187),
  -- Wattson 1: Voltorb Lv. 20
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 20, NULL),
  -- Wattson 2: Electrike Lv. 20
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 2, 309, 30900, 20, NULL),
  -- Wattson 3: Magneton Lv. 22
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 22, NULL),
  -- Wattson 4: Manectric Lv. 24, holds Sitrus Berry
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 4, 310, 31000, 24, 187),
  -- Flannery 1: Numel Lv. 24
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 1, 322, 32200, 24, NULL),
  -- Flannery 2: Slugma Lv. 24
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 2, 218, 21800, 24, NULL),
  -- Flannery 3: Camerupt Lv. 26
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 26, NULL),
  -- Flannery 4: Torkoal Lv. 29, holds White Herb
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 4, 324, 32400, 29, 434),
  -- Norman 1: Spinda Lv. 27
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 1, 327, 32700, 27, NULL),
  -- Norman 2: Vigoroth Lv. 27
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 27, NULL),
  -- Norman 3: Linoone Lv. 29
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 3, 264, 26400, 29, NULL),
  -- Norman 4: Slaking Lv. 31, holds Sitrus Berry
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 4, 289, 28900, 31, 187),
  -- Winona 1: Swablu Lv. 29
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 1, 333, 33300, 29, NULL),
  -- Winona 2: Tropius Lv. 29
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 2, 357, 35700, 29, NULL),
  -- Winona 3: Pelipper Lv. 30
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 3, 279, 27900, 30, NULL),
  -- Winona 4: Skarmory Lv. 31
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 4, 227, 22700, 31, NULL),
  -- Winona 5: Altaria Lv. 33, holds Oran Berry
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 5, 334, 33400, 33, 184),
  -- Tate & Liza 1: Claydol Lv. 41
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 1, 344, 34400, 41, NULL),
  -- Tate & Liza 2: Xatu Lv. 41
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 2, 178, 17800, 41, NULL),
  -- Tate & Liza 3: Lunatone Lv. 42, holds Sitrus Berry
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 3, 337, 33700, 42, 187),
  -- Tate & Liza 4: Solrock Lv. 42, holds Sitrus Berry
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 4, 338, 33800, 42, 187),
  -- Juan 1: Luvdisc Lv. 41
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 41, NULL),
  -- Juan 2: Whiscash Lv. 41
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 41, NULL),
  -- Juan 3: Sealeo Lv. 43
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 43, NULL),
  -- Juan 4: Crawdaunt Lv. 43
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 4, 342, 34200, 43, NULL),
  -- Juan 5: Kingdra Lv. 46, holds Chesto Berry
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 5, 230, 23000, 46, 179),
  -- Sidney 1: Mightyena Lv. 46
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 46, NULL),
  -- Sidney 2: Shiftry Lv. 48
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 48, NULL),
  -- Sidney 3: Cacturne Lv. 46
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 46, NULL),
  -- Sidney 4: Crawdaunt Lv. 48
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 4, 342, 34200, 48, NULL),
  -- Sidney 5: Absol Lv. 49, holds Sitrus Berry
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 49, 187),
  -- Phoebe 1: Dusclops Lv. 48
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 48, NULL),
  -- Phoebe 2: Banette Lv. 49
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 49, NULL),
  -- Phoebe 3: Sableye Lv. 50
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 50, NULL),
  -- Phoebe 4: Banette Lv. 49
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 49, NULL),
  -- Phoebe 5: Dusclops Lv. 51, holds Sitrus Berry
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 5, 356, 35600, 51, 187),
  -- Glacia 1: Sealeo Lv. 50
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 1, 364, 36400, 50, NULL),
  -- Glacia 2: Glalie Lv. 50
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 2, 362, 36200, 50, NULL),
  -- Glacia 3: Sealeo Lv. 52
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 52, NULL),
  -- Glacia 4: Glalie Lv. 52
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 4, 362, 36200, 52, NULL),
  -- Glacia 5: Walrein Lv. 53, holds Sitrus Berry
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 53, 187),
  -- Drake 1: Shelgon Lv. 52
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 1, 372, 37200, 52, NULL),
  -- Drake 2: Altaria Lv. 54
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 54, NULL),
  -- Drake 3: Kingdra Lv. 53
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 3, 230, 23000, 53, NULL),
  -- Drake 4: Flygon Lv. 53
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53, NULL),
  -- Drake 5: Salamence Lv. 55, holds Sitrus Berry
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55, 187),
  -- Wallace 1: Wailord Lv. 57
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 1, 321, 32100, 57, NULL),
  -- Wallace 2: Tentacruel Lv. 55
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 2, 73, 7300, 55, NULL),
  -- Wallace 3: Ludicolo Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 3, 272, 27200, 56, NULL),
  -- Wallace 4: Whiscash Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 56, NULL),
  -- Wallace 5: Gyarados Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 5, 130, 13000, 56, NULL),
  -- Wallace 6: Milotic Lv. 58, holds Sitrus Berry
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 6, 350, 35000, 58, 187),
  -- Steven 1: Skarmory Lv. 77
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 77, NULL),
  -- Steven 2: Claydol Lv. 75
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 75, NULL),
  -- Steven 3: Aggron Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 76, NULL),
  -- Steven 4: Cradily Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 76, NULL),
  -- Steven 5: Armaldo Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 76, NULL),
  -- Steven 6: Metagross Lv. 78, holds Sitrus Berry
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 78, 187),
  -- May / Brendan (chose Treecko), Receive Pokedex 1: Torchic Lv. 5
  (70002, 7015, 7, NULL, 70001, 'treecko', NULL, NULL, 1, 255, 25500, 5, NULL),
  -- May / Brendan (chose Torchic), Receive Pokedex 1: Mudkip Lv. 5
  (70002, 7015, 7, NULL, 70001, 'torchic', NULL, NULL, 1, 258, 25800, 5, NULL),
  -- May / Brendan (chose Mudkip), Receive Pokedex 1: Treecko Lv. 5
  (70002, 7015, 7, NULL, 70001, 'mudkip', NULL, NULL, 1, 252, 25200, 5, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Knuckle Badge 1: Lotad Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 1, 270, 27000, 13, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Knuckle Badge 2: Torchic Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 2, 255, 25500, 15, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Knuckle Badge 1: Torkoal Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 1, 324, 32400, 13, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Knuckle Badge 2: Mudkip Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 2, 258, 25800, 15, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Knuckle Badge 1: Wingull Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 1, 278, 27800, 13, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Knuckle Badge 2: Treecko Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 2, 252, 25200, 15, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Knuckle Badge 1: Lotad Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 1, 270, 27000, 13, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Knuckle Badge 2: Torchic Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 2, 255, 25500, 15, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Knuckle Badge 1: Slugma Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 1, 218, 21800, 13, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Knuckle Badge 2: Mudkip Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 2, 258, 25800, 15, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Knuckle Badge 1: Wingull Lv. 13
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 1, 278, 27800, 13, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Knuckle Badge 2: Treecko Lv. 15
  (70004, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 2, 252, 25200, 15, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 1: Wingull Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 1, 278, 27800, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 2: Lombre Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 2, 271, 27100, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 3, 256, 25600, 20, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 1: Lombre Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 1, 271, 27100, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 2: Slugma Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 2, 218, 21800, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 3, 259, 25900, 20, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 1: Wingull Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 1, 278, 27800, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 2: Slugma Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 2, 218, 21800, 18, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 3, 253, 25300, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 1: Wingull Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 1, 278, 27800, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 2: Lombre Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 2, 271, 27100, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Dynamo Badge 3: Combusken Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 3, 256, 25600, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 1: Lombre Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 1, 271, 27100, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 2: Slugma Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 2, 218, 21800, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Dynamo Badge 3: Marshtomp Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 3, 259, 25900, 20, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 1: Slugma Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 1, 218, 21800, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 2: Wingull Lv. 18
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 2, 278, 27800, 18, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Dynamo Badge 3: Grovyle Lv. 20
  (70005, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 3, 253, 25300, 20, NULL),
  -- Wally, Dynamo Badge 1: Ralts Lv. 16
  (70005, 7016, 7, NULL, NULL, NULL, NULL, NULL, 1, 280, 28000, 16, NULL),
  -- Maxie, Mt. Chimney 1: Mightyena Lv. 24
  (70020, 7017, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 24, NULL),
  -- Maxie, Mt. Chimney 2: Zubat Lv. 24
  (70020, 7017, 7, NULL, NULL, NULL, NULL, NULL, 2, 41, 4100, 24, NULL),
  -- Maxie, Mt. Chimney 3: Camerupt Lv. 25
  (70020, 7017, 7, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 25, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Feather Badge 1: Pelipper Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 1, 279, 27900, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Feather Badge 2: Lombre Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 2, 271, 27100, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Treecko), Feather Badge 3: Combusken Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'may-treecko', 'Rival is May (you play as Brendan), you chose Treecko', 3, 256, 25600, 31, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Feather Badge 1: Lombre Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 1, 271, 27100, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Feather Badge 2: Slugma Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 2, 218, 21800, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Torchic), Feather Badge 3: Marshtomp Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'may-torchic', 'Rival is May (you play as Brendan), you chose Torchic', 3, 259, 25900, 31, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Feather Badge 1: Slugma Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 1, 218, 21800, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Feather Badge 2: Lombre Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 2, 271, 27100, 29, NULL),
  -- May / Brendan (Rival is May (you play as Brendan), you chose Mudkip), Feather Badge 3: Grovyle Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'may-mudkip', 'Rival is May (you play as Brendan), you chose Mudkip', 3, 253, 25300, 31, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Feather Badge 1: Pelipper Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 1, 279, 27900, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Feather Badge 2: Lombre Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 2, 271, 27100, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Treecko), Feather Badge 3: Combusken Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-treecko', 'Rival is Brendan (you play as May), you chose Treecko', 3, 256, 25600, 31, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Feather Badge 1: Lombre Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 1, 271, 27100, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Feather Badge 2: Slugma Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 2, 218, 21800, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Torchic), Feather Badge 3: Marshtomp Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-torchic', 'Rival is Brendan (you play as May), you chose Torchic', 3, 259, 25900, 31, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Feather Badge 1: Slugma Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 1, 218, 21800, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Feather Badge 2: Pelipper Lv. 29
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 2, 279, 27900, 29, NULL),
  -- May / Brendan (Rival is Brendan (you play as May), you chose Mudkip), Feather Badge 3: Grovyle Lv. 31
  (70009, 7015, 7, NULL, NULL, NULL, 'brendan-mudkip', 'Rival is Brendan (you play as May), you chose Mudkip', 3, 253, 25300, 31, NULL),
  -- May / Brendan (chose Treecko), Magma Hideout 1: Tropius Lv. 31
  (70021, 7015, 7, NULL, 70001, 'treecko', NULL, NULL, 1, 357, 35700, 31, NULL),
  -- May / Brendan (chose Treecko), Magma Hideout 2: Pelipper Lv. 32
  (70021, 7015, 7, NULL, 70001, 'treecko', NULL, NULL, 2, 279, 27900, 32, NULL),
  -- May / Brendan (chose Treecko), Magma Hideout 3: Ludicolo Lv. 32
  (70021, 7015, 7, NULL, 70001, 'treecko', NULL, NULL, 3, 272, 27200, 32, NULL),
  -- May / Brendan (chose Treecko), Magma Hideout 4: Combusken Lv. 34
  (70021, 7015, 7, NULL, 70001, 'treecko', NULL, NULL, 4, 256, 25600, 34, NULL),
  -- May / Brendan (chose Torchic), Magma Hideout 1: Tropius Lv. 31
  (70021, 7015, 7, NULL, 70001, 'torchic', NULL, NULL, 1, 357, 35700, 31, NULL),
  -- May / Brendan (chose Torchic), Magma Hideout 2: Ludicolo Lv. 32
  (70021, 7015, 7, NULL, 70001, 'torchic', NULL, NULL, 2, 272, 27200, 32, NULL),
  -- May / Brendan (chose Torchic), Magma Hideout 3: Slugma Lv. 32
  (70021, 7015, 7, NULL, 70001, 'torchic', NULL, NULL, 3, 218, 21800, 32, NULL),
  -- May / Brendan (chose Torchic), Magma Hideout 4: Marshtomp Lv. 34
  (70021, 7015, 7, NULL, 70001, 'torchic', NULL, NULL, 4, 259, 25900, 34, NULL),
  -- May / Brendan (chose Mudkip), Magma Hideout 1: Tropius Lv. 31
  (70021, 7015, 7, NULL, 70001, 'mudkip', NULL, NULL, 1, 357, 35700, 31, NULL),
  -- May / Brendan (chose Mudkip), Magma Hideout 2: Slugma Lv. 32
  (70021, 7015, 7, NULL, 70001, 'mudkip', NULL, NULL, 2, 218, 21800, 32, NULL),
  -- May / Brendan (chose Mudkip), Magma Hideout 3: Pelipper Lv. 32
  (70021, 7015, 7, NULL, 70001, 'mudkip', NULL, NULL, 3, 279, 27900, 32, NULL),
  -- May / Brendan (chose Mudkip), Magma Hideout 4: Grovyle Lv. 34
  (70021, 7015, 7, NULL, 70001, 'mudkip', NULL, NULL, 4, 253, 25300, 34, NULL),
  -- Maxie, Magma Hideout 1: Mightyena Lv. 37
  (70021, 7017, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 37, NULL),
  -- Maxie, Magma Hideout 2: Crobat Lv. 38
  (70021, 7017, 7, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 38, NULL),
  -- Maxie, Magma Hideout 3: Camerupt Lv. 39
  (70021, 7017, 7, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 39, NULL),
  -- Maxie & Tabitha, Mind Badge 1: Mightyena Lv. 42
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 42, NULL),
  -- Maxie & Tabitha, Mind Badge 2: Crobat Lv. 43
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 43, NULL),
  -- Maxie & Tabitha, Mind Badge 3: Camerupt Lv. 44
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 44, NULL),
  -- Maxie & Tabitha, Mind Badge 4: Camerupt Lv. 36
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 36, NULL),
  -- Maxie & Tabitha, Mind Badge 5: Mightyena Lv. 38
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 5, 262, 26200, 38, NULL),
  -- Maxie & Tabitha, Mind Badge 6: Golbat Lv. 40
  (70010, 7018, 7, NULL, NULL, NULL, NULL, NULL, 6, 42, 4200, 40, NULL),
  -- Archie, Seafloor Cavern 1: Mightyena Lv. 41
  (70022, 7019, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 41, NULL),
  -- Archie, Seafloor Cavern 2: Crobat Lv. 41
  (70022, 7019, 7, NULL, NULL, NULL, NULL, NULL, 2, 169, 16900, 41, NULL),
  -- Archie, Seafloor Cavern 3: Sharpedo Lv. 43
  (70022, 7019, 7, NULL, NULL, NULL, NULL, NULL, 3, 319, 31900, 43, NULL),
  -- Wally, Elite Four Sidney 1: Altaria Lv. 44
  (70012, 7016, 7, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 44, NULL),
  -- Wally, Elite Four Sidney 2: Delcatty Lv. 43
  (70012, 7016, 7, NULL, NULL, NULL, NULL, NULL, 2, 301, 30100, 43, NULL),
  -- Wally, Elite Four Sidney 3: Roselia Lv. 44
  (70012, 7016, 7, NULL, NULL, NULL, NULL, NULL, 3, 315, 31500, 44, NULL),
  -- Wally, Elite Four Sidney 4: Magneton Lv. 41
  (70012, 7016, 7, NULL, NULL, NULL, NULL, NULL, 4, 82, 8200, 41, NULL),
  -- Wally, Elite Four Sidney 5: Gardevoir Lv. 45
  (70012, 7016, 7, NULL, NULL, NULL, NULL, NULL, 5, 282, 28200, 45, NULL),
  -- Wally, Hall of Fame 1: Altaria Lv. 47
  (70017, 7016, 7, NULL, NULL, NULL, NULL, NULL, 1, 334, 33400, 47, NULL),
  -- Wally, Hall of Fame 2: Delcatty Lv. 46
  (70017, 7016, 7, NULL, NULL, NULL, NULL, NULL, 2, 301, 30100, 46, NULL),
  -- Wally, Hall of Fame 3: Roselia Lv. 47
  (70017, 7016, 7, NULL, NULL, NULL, NULL, NULL, 3, 315, 31500, 47, NULL),
  -- Wally, Hall of Fame 4: Magneton Lv. 44
  (70017, 7016, 7, NULL, NULL, NULL, NULL, NULL, 4, 82, 8200, 44, NULL),
  -- Wally, Hall of Fame 5: Gardevoir Lv. 48
  (70017, 7016, 7, NULL, NULL, NULL, NULL, NULL, 5, 282, 28200, 48, NULL),
  -- Regirock, Sealed Chamber 1: Regirock Lv. 40
  (70023, 7020, 7, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 40, NULL),
  -- Regice, Sealed Chamber 1: Regice Lv. 40
  (70023, 7021, 7, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 40, NULL),
  -- Registeel, Sealed Chamber 1: Registeel Lv. 40
  (70023, 7022, 7, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 40, NULL),
  -- Rayquaza, Sky Pillar 1: Rayquaza Lv. 70
  (70024, 7023, 7, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70, NULL),
  -- Groudon, Terra Cave 1: Groudon Lv. 70
  (70025, 7024, 7, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 70, NULL),
  -- Kyogre, Marine Cave 1: Kyogre Lv. 70
  (70026, 7025, 7, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 70, NULL),
  -- Latias (chose Latias), Lati Choice 1: Latias Lv. 40
  (70018, 7026, 7, NULL, 70018, 'latias', NULL, NULL, 1, 380, 38000, 40, NULL),
  -- Latios (chose Latios), Lati Choice 1: Latios Lv. 40
  (70018, 7027, 7, NULL, 70018, 'latios', NULL, NULL, 1, 381, 38100, 40, NULL);
