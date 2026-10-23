-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen4 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Fire Punch Generation IV
  (7, 4, 2, 75, 100, 15, 0, 'physical', 'May burn the target (10% chance).'),
  -- Ice Punch Generation IV
  (8, 4, 6, 75, 100, 15, 0, 'physical', 'May freeze the target (10% chance).'),
  -- Thunder Punch Generation IV
  (9, 4, 4, 75, 100, 15, 0, 'physical', 'May paralyze the target (10% chance).'),
  -- Razor Wind Generation IV
  (13, 4, 1, 80, 100, 10, 0, 'special', 'Charges on the first turn and strikes on the second; has a high critical-hit ratio.'),
  -- Gust Generation IV
  (16, 4, 10, 40, 100, 35, 0, 'special', 'Doubles in power against a target in the air from Fly or Bounce.'),
  -- Fly Generation IV
  (19, 4, 10, 90, 95, 15, 0, 'physical', 'Flies up on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Vine Whip Generation IV
  (22, 4, 5, 35, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Jump Kick Generation IV
  (26, 4, 7, 85, 95, 25, 0, 'physical', 'If it misses, the user takes half of the damage it would have dealt.'),
  -- Bite Generation IV
  (44, 4, 16, 60, 100, 25, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Sonic Boom Generation IV
  (49, 4, 1, NULL, 90, 20, 0, 'special', 'Always deals 20 HP of damage.'),
  -- Disable Generation IV
  (50, 4, 1, NULL, 80, 20, 0, 'status', 'Stops the target from using its last move for four to seven turns.'),
  -- Acid Generation IV
  (51, 4, 8, 40, 100, 30, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Hyper Beam Generation IV
  (63, 4, 1, 150, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Absorb Generation IV
  (71, 4, 5, 20, 100, 25, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Mega Drain Generation IV
  (72, 4, 5, 40, 100, 15, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Razor Leaf Generation IV
  (75, 4, 5, 55, 95, 25, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Petal Dance Generation IV
  (80, 4, 5, 90, 100, 20, 0, 'special', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Dig Generation IV
  (91, 4, 9, 80, 100, 10, 0, 'physical', 'Digs underground on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Night Shade Generation IV
  (101, 4, 14, NULL, 100, 15, 0, 'special', 'Deals damage equal to the user''s level.'),
  -- Recover Generation IV
  (105, 4, 1, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP.'),
  -- Smog Generation IV
  (123, 4, 8, 20, 70, 20, 0, 'special', 'May poison the target (40% chance).'),
  -- Sludge Generation IV
  (124, 4, 8, 65, 100, 20, 0, 'special', 'May poison the target (30% chance).'),
  -- Waterfall Generation IV
  (127, 4, 3, 80, 100, 15, 0, 'physical', 'May make the target flinch (20% chance).'),
  -- Clamp Generation IV
  (128, 4, 3, 35, 75, 10, 0, 'physical', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn.'),
  -- Swift Generation IV
  (129, 4, 1, 60, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- High Jump Kick Generation IV
  (136, 4, 7, 100, 90, 20, 0, 'physical', 'If it misses, the user takes half of the damage it would have dealt.'),
  -- Flash Generation IV
  (148, 4, 1, NULL, 100, 20, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Crabhammer Generation IV
  (152, 4, 3, 90, 85, 10, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Tri Attack Generation IV
  (161, 4, 1, 80, 100, 10, 0, 'special', 'May burn, freeze or paralyze the target (20% chance).'),
  -- Thief Generation IV
  (168, 4, 16, 40, 100, 10, 0, 'physical', 'Steals the target''s held item if the user holds none.'),
  -- Flame Wheel Generation IV
  (172, 4, 2, 60, 100, 25, 0, 'physical', 'May burn the target (10% chance); thaws the user if frozen.'),
  -- Snore Generation IV
  (173, 4, 1, 40, 100, 15, 0, 'special', 'Usable only while asleep; may make the target flinch (30% chance).'),
  -- Aeroblast Generation IV
  (177, 4, 10, 100, 95, 5, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Feint Attack Generation IV
  (185, 4, 16, 60, NULL, 20, 0, 'physical', 'A plain attack that never misses.'),
  -- Sludge Bomb Generation IV
  (188, 4, 8, 90, 100, 10, 0, 'special', 'May poison the target (30% chance).'),
  -- Mud-Slap Generation IV
  (189, 4, 9, 20, 100, 10, 0, 'special', 'Lowers the target''s accuracy by one stage.'),
  -- Zap Cannon Generation IV
  (192, 4, 4, 120, 50, 5, 0, 'special', 'Paralyzes the target if it hits.'),
  -- Outrage Generation IV
  (200, 4, 15, 120, 100, 15, 0, 'physical', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Giga Drain Generation IV
  (202, 4, 5, 60, 100, 10, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Spark Generation IV
  (209, 4, 4, 65, 100, 20, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Sacred Fire Generation IV
  (221, 4, 2, 100, 95, 5, 0, 'physical', 'May burn the target (50% chance); thaws the user if frozen.'),
  -- Pursuit Generation IV
  (228, 4, 16, 40, 100, 20, 0, 'physical', 'Doubles in power and hits first against a target that is switching out.'),
  -- Hidden Power Generation IV
  (237, 4, 1, 1, 100, 15, 0, 'special', 'Its type and power depend on the user''s individual values.'),
  -- Crunch Generation IV
  (242, 4, 16, 80, 100, 15, 0, 'physical', 'May lower the target''s Defense by one stage (20% chance).'),
  -- Ancient Power Generation IV
  (246, 4, 13, 60, 100, 5, 0, 'special', 'May raise all of the user''s stats by one stage (10% chance).'),
  -- Shadow Ball Generation IV
  (247, 4, 14, 80, 100, 15, 0, 'special', 'May lower the target''s Sp. Def by one stage (20% chance).'),
  -- Rock Smash Generation IV
  (249, 4, 7, 40, 100, 15, 0, 'physical', 'May lower the target''s Defense by one stage (50% chance).'),
  -- Beat Up Generation IV
  (251, 4, 16, 10, 100, 10, 0, 'physical', 'Each healthy member of the user''s party joins in for one hit.'),
  -- Uproar Generation IV
  (253, 4, 1, 50, 100, 10, 0, 'special', 'Causes an uproar for two to five turns that keeps every Pokémon awake.'),
  -- Stockpile Generation IV
  (254, 4, 1, NULL, NULL, 20, 0, 'status', 'Stores power up to three times, raising Defense and Sp. Def by one stage each time.'),
  -- Spit Up Generation IV
  (255, 4, 1, NULL, 100, 10, 0, 'special', 'Releases stored power; stronger the more times the user used Stockpile.'),
  -- Knock Off Generation IV
  (282, 4, 16, 20, 100, 20, 0, 'physical', 'Makes the target lose its held item for the rest of the battle.'),
  -- Dive Generation IV
  (291, 4, 3, 80, 100, 10, 0, 'physical', 'Dives underwater on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Blaze Kick Generation IV
  (299, 4, 2, 85, 90, 10, 0, 'physical', 'May burn the target (10% chance); has a high critical-hit ratio.'),
  -- Ice Ball Generation IV
  (301, 4, 6, 30, 90, 20, 0, 'physical', 'Attacks for five turns, gaining power with each hit; stops if it misses.'),
  -- Needle Arm Generation IV
  (302, 4, 5, 60, 100, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Hyper Voice Generation IV
  (304, 4, 1, 90, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Weather Ball Generation IV
  (311, 4, 1, 50, 100, 10, 0, 'special', 'Doubles in power and changes type to match the weather.'),
  -- Air Cutter Generation IV
  (314, 4, 10, 55, 95, 25, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Silver Wind Generation IV
  (318, 4, 12, 60, 100, 5, 0, 'special', 'May raise all of the user''s stats by one stage (10% chance).'),
  -- Signal Beam Generation IV
  (324, 4, 12, 75, 100, 15, 0, 'special', 'May confuse the target (10% chance).'),
  -- Bullet Seed Generation IV
  (331, 4, 5, 10, 100, 30, 0, 'physical', 'Hits two to five times in a row.'),
  -- Icicle Spear Generation IV
  (333, 4, 6, 10, 100, 30, 0, 'physical', 'Hits two to five times in a row.'),
  -- Dragon Claw Generation IV
  (337, 4, 15, 80, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Mud Shot Generation IV
  (341, 4, 9, 55, 95, 15, 0, 'special', 'Lowers the target''s Speed by one stage.'),
  -- Volt Tackle Generation IV
  (344, 4, 4, 120, 100, 15, 0, 'physical', 'May paralyze the target (10% chance); the user takes 1/3 of the damage dealt as recoil.'),
  -- Leaf Blade Generation IV
  (348, 4, 5, 90, 100, 15, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Doom Desire Generation IV
  (353, 4, 17, 120, 85, 5, 0, 'special', 'Strikes the target two turns after it is used.');
