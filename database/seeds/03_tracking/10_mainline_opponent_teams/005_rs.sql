-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Ruby / Sapphire Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Ruby / Sapphire Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Scope: Pokémon Ruby / Sapphire first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Ruby / Sapphire opponent uses the first time you battle them, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
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
  -- Roxanne 1: Geodude Lv. 14
  (5001, 5, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 14),
  -- Roxanne 2: Nosepass Lv. 15
  (5001, 5, NULL, NULL, NULL, NULL, NULL, 2, 299, 29900, 15),
  -- Brawly 1: Machop Lv. 17
  (5002, 5, NULL, NULL, NULL, NULL, NULL, 1, 66, 6600, 17),
  -- Brawly 2: Makuhita Lv. 18
  (5002, 5, NULL, NULL, NULL, NULL, NULL, 2, 296, 29600, 18),
  -- Wattson 1: Magnemite Lv. 22
  (5003, 5, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 22),
  -- Wattson 2: Voltorb Lv. 20
  (5003, 5, NULL, NULL, NULL, NULL, NULL, 2, 100, 10000, 20),
  -- Wattson 3: Magneton Lv. 23
  (5003, 5, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 23),
  -- Flannery 1: Slugma Lv. 26
  (5004, 5, NULL, NULL, NULL, NULL, NULL, 1, 218, 21800, 26),
  -- Flannery 2: Slugma Lv. 26
  (5004, 5, NULL, NULL, NULL, NULL, NULL, 2, 218, 21800, 26),
  -- Flannery 3: Torkoal Lv. 28
  (5004, 5, NULL, NULL, NULL, NULL, NULL, 3, 324, 32400, 28),
  -- Norman 1: Slaking Lv. 28
  (5005, 5, NULL, NULL, NULL, NULL, NULL, 1, 289, 28900, 28),
  -- Norman 2: Vigoroth Lv. 30
  (5005, 5, NULL, NULL, NULL, NULL, NULL, 2, 288, 28800, 30),
  -- Norman 3: Slaking Lv. 31
  (5005, 5, NULL, NULL, NULL, NULL, NULL, 3, 289, 28900, 31),
  -- Winona 1: Swellow Lv. 31
  (5006, 5, NULL, NULL, NULL, NULL, NULL, 1, 277, 27700, 31),
  -- Winona 2: Pelipper Lv. 30
  (5006, 5, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 30),
  -- Winona 3: Skarmory Lv. 32
  (5006, 5, NULL, NULL, NULL, NULL, NULL, 3, 227, 22700, 32),
  -- Winona 4: Altaria Lv. 33
  (5006, 5, NULL, NULL, NULL, NULL, NULL, 4, 334, 33400, 33),
  -- Tate & Liza 1: Lunatone Lv. 42
  (5007, 5, NULL, NULL, NULL, NULL, NULL, 1, 337, 33700, 42),
  -- Tate & Liza 2: Solrock Lv. 42
  (5007, 5, NULL, NULL, NULL, NULL, NULL, 2, 338, 33800, 42),
  -- Wallace 1: Luvdisc Lv. 40
  (5008, 5, NULL, NULL, NULL, NULL, NULL, 1, 370, 37000, 40),
  -- Wallace 2: Whiscash Lv. 42
  (5008, 5, NULL, NULL, NULL, NULL, NULL, 2, 340, 34000, 42),
  -- Wallace 3: Sealeo Lv. 40
  (5008, 5, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 40),
  -- Wallace 4: Seaking Lv. 42
  (5008, 5, NULL, NULL, NULL, NULL, NULL, 4, 119, 11900, 42),
  -- Wallace 5: Milotic Lv. 43
  (5008, 5, NULL, NULL, NULL, NULL, NULL, 5, 350, 35000, 43),
  -- Sidney 1: Mightyena Lv. 46
  (5009, 5, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 46),
  -- Sidney 2: Shiftry Lv. 48
  (5009, 5, NULL, NULL, NULL, NULL, NULL, 2, 275, 27500, 48),
  -- Sidney 3: Cacturne Lv. 46
  (5009, 5, NULL, NULL, NULL, NULL, NULL, 3, 332, 33200, 46),
  -- Sidney 4: Sharpedo Lv. 48
  (5009, 5, NULL, NULL, NULL, NULL, NULL, 4, 319, 31900, 48),
  -- Sidney 5: Absol Lv. 49
  (5009, 5, NULL, NULL, NULL, NULL, NULL, 5, 359, 35900, 49),
  -- Phoebe 1: Dusclops Lv. 48
  (5010, 5, NULL, NULL, NULL, NULL, NULL, 1, 356, 35600, 48),
  -- Phoebe 2: Banette Lv. 49
  (5010, 5, NULL, NULL, NULL, NULL, NULL, 2, 354, 35400, 49),
  -- Phoebe 3: Sableye Lv. 50
  (5010, 5, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 50),
  -- Phoebe 4: Banette Lv. 49
  (5010, 5, NULL, NULL, NULL, NULL, NULL, 4, 354, 35400, 49),
  -- Phoebe 5: Dusclops Lv. 51
  (5010, 5, NULL, NULL, NULL, NULL, NULL, 5, 356, 35600, 51),
  -- Glacia 1: Glalie Lv. 50
  (5011, 5, NULL, NULL, NULL, NULL, NULL, 1, 362, 36200, 50),
  -- Glacia 2: Sealeo Lv. 50
  (5011, 5, NULL, NULL, NULL, NULL, NULL, 2, 364, 36400, 50),
  -- Glacia 3: Sealeo Lv. 52
  (5011, 5, NULL, NULL, NULL, NULL, NULL, 3, 364, 36400, 52),
  -- Glacia 4: Glalie Lv. 52
  (5011, 5, NULL, NULL, NULL, NULL, NULL, 4, 362, 36200, 52),
  -- Glacia 5: Walrein Lv. 53
  (5011, 5, NULL, NULL, NULL, NULL, NULL, 5, 365, 36500, 53),
  -- Drake 1: Shelgon Lv. 52
  (5012, 5, NULL, NULL, NULL, NULL, NULL, 1, 372, 37200, 52),
  -- Drake 2: Altaria Lv. 54
  (5012, 5, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 54),
  -- Drake 3: Flygon Lv. 53
  (5012, 5, NULL, NULL, NULL, NULL, NULL, 3, 330, 33000, 53),
  -- Drake 4: Flygon Lv. 53
  (5012, 5, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 53),
  -- Drake 5: Salamence Lv. 55
  (5012, 5, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 55),
  -- Steven 1: Skarmory Lv. 57
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 57),
  -- Steven 2: Claydol Lv. 55
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 2, 344, 34400, 55),
  -- Steven 3: Aggron Lv. 56
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 56),
  -- Steven 4: Cradily Lv. 56
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 4, 346, 34600, 56),
  -- Steven 5: Armaldo Lv. 56
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 5, 348, 34800, 56),
  -- Steven 6: Metagross Lv. 58
  (5013, 5, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 58);
