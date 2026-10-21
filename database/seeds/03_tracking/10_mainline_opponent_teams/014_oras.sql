-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Omega Ruby / Alpha Sapphire Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Omega Ruby / Alpha Sapphire Gym Leaders and Elite Four page.
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
  (140018, 14014, 14, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 62);
