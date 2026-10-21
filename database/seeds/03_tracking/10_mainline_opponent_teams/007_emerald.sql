-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Emerald Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Emerald Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
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
  level
) VALUES
  -- Roxanne 1: Geodude Lv. 12
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Roxanne 2: Geodude Lv. 12
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 2, 74, 7400, 12),
  -- Roxanne 3: Nosepass Lv. 15
  (70003, 7001, 7, NULL, NULL, NULL, NULL, NULL, 3, 299, 29900, 15),
  -- Brawly 1: Machop Lv. 16
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 16),
  -- Brawly 2: Meditite Lv. 16
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 2, 307, 30700, 16),
  -- Brawly 3: Makuhita Lv. 19
  (70004, 7002, 7, NULL, NULL, NULL, NULL, NULL, 3, 296, 29600, 19),
  -- Wattson 1: Voltorb Lv. 20
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 20),
  -- Wattson 2: Electrike Lv. 20
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 2, 309, 30900, 20),
  -- Wattson 3: Magneton Lv. 22
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 22),
  -- Wattson 4: Manectric Lv. 24
  (70005, 7003, 7, NULL, NULL, NULL, NULL, NULL, 4, 310, 31000, 24),
  -- Flannery 1: Numel Lv. 24
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 1, 322, 32200, 24),
  -- Flannery 2: Slugma Lv. 24
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 2, 218, 21800, 24),
  -- Flannery 3: Camerupt Lv. 26
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 3, 323, 32300, 26),
  -- Flannery 4: Torkoal Lv. 29
  (70007, 7004, 7, NULL, NULL, NULL, NULL, NULL, 4, 324, 32400, 29),
  -- Norman 1: Spinda Lv. 27
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 1, 327, 32700, 27),
  -- Norman 2: Vigoroth Lv. 27
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 27),
  -- Norman 3: Linoone Lv. 29
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 3, 264, 26400, 29),
  -- Norman 4: Slaking Lv. 31
  (70008, 7005, 7, NULL, NULL, NULL, NULL, NULL, 4, 289, 28900, 31),
  -- Winona 1: Swablu Lv. 29
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 1, 333, 33300, 29),
  -- Winona 2: Tropius Lv. 29
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 2, 357, 35700, 29),
  -- Winona 3: Pelipper Lv. 30
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 3, 279, 27900, 30),
  -- Winona 4: Skarmory Lv. 31
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 4, 227, 22700, 31),
  -- Winona 5: Altaria Lv. 33
  (70009, 7006, 7, NULL, NULL, NULL, NULL, NULL, 5, 334, 33400, 33),
  -- Tate & Liza 1: Claydol Lv. 41
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 1, 344, 34400, 41),
  -- Tate & Liza 2: Xatu Lv. 41
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 2, 178, 17800, 41),
  -- Tate & Liza 3: Lunatone Lv. 42
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 3, 337, 33700, 42),
  -- Tate & Liza 4: Solrock Lv. 42
  (70010, 7007, 7, NULL, NULL, NULL, NULL, NULL, 4, 338, 33800, 42),
  -- Juan 1: Luvdisc Lv. 41
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 41),
  -- Juan 2: Whiscash Lv. 41
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 41),
  -- Juan 3: Sealeo Lv. 43
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 43),
  -- Juan 4: Crawdaunt Lv. 43
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 4, 342, 34200, 43),
  -- Juan 5: Kingdra Lv. 46
  (70011, 7008, 7, NULL, NULL, NULL, NULL, NULL, 5, 230, 23000, 46),
  -- Sidney 1: Mightyena Lv. 46
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 46),
  -- Sidney 2: Shiftry Lv. 48
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 48),
  -- Sidney 3: Cacturne Lv. 46
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 46),
  -- Sidney 4: Crawdaunt Lv. 48
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 4, 342, 34200, 48),
  -- Sidney 5: Absol Lv. 49
  (70012, 7009, 7, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 49),
  -- Phoebe 1: Dusclops Lv. 48
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 48),
  -- Phoebe 2: Banette Lv. 49
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 49),
  -- Phoebe 3: Sableye Lv. 50
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 50),
  -- Phoebe 4: Banette Lv. 49
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 49),
  -- Phoebe 5: Dusclops Lv. 51
  (70013, 7010, 7, NULL, NULL, NULL, NULL, NULL, 5, 356, 35600, 51),
  -- Glacia 1: Sealeo Lv. 50
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 1, 364, 36400, 50),
  -- Glacia 2: Glalie Lv. 50
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 2, 362, 36200, 50),
  -- Glacia 3: Sealeo Lv. 52
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 52),
  -- Glacia 4: Glalie Lv. 52
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 4, 362, 36200, 52),
  -- Glacia 5: Walrein Lv. 53
  (70014, 7011, 7, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 53),
  -- Drake 1: Shelgon Lv. 52
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 1, 372, 37200, 52),
  -- Drake 2: Altaria Lv. 54
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 54),
  -- Drake 3: Kingdra Lv. 53
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 3, 230, 23000, 53),
  -- Drake 4: Flygon Lv. 53
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53),
  -- Drake 5: Salamence Lv. 55
  (70015, 7012, 7, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55),
  -- Wallace 1: Wailord Lv. 57
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 1, 321, 32100, 57),
  -- Wallace 2: Tentacruel Lv. 55
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 2, 73, 7300, 55),
  -- Wallace 3: Ludicolo Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 3, 272, 27200, 56),
  -- Wallace 4: Whiscash Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 4, 340, 34000, 56),
  -- Wallace 5: Gyarados Lv. 56
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 5, 130, 13000, 56),
  -- Wallace 6: Milotic Lv. 58
  (70016, 7013, 7, NULL, NULL, NULL, NULL, NULL, 6, 350, 35000, 58),
  -- Steven 1: Skarmory Lv. 77
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 77),
  -- Steven 2: Claydol Lv. 75
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 75),
  -- Steven 3: Aggron Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 76),
  -- Steven 4: Cradily Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 76),
  -- Steven 5: Armaldo Lv. 76
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 76),
  -- Steven 6: Metagross Lv. 78
  (70019, 7014, 7, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 78);
