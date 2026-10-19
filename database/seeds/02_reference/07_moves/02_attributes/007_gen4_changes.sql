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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Fire Punch Generation IV
  (7, 4, 2, 75, 100, 15, 0, 'physical'),
  -- Ice Punch Generation IV
  (8, 4, 6, 75, 100, 15, 0, 'physical'),
  -- Thunder Punch Generation IV
  (9, 4, 4, 75, 100, 15, 0, 'physical'),
  -- Razor Wind Generation IV
  (13, 4, 1, 80, 100, 10, 0, 'special'),
  -- Gust Generation IV
  (16, 4, 10, 40, 100, 35, 0, 'special'),
  -- Fly Generation IV
  (19, 4, 10, 90, 95, 15, 0, 'physical'),
  -- Vine Whip Generation IV
  (22, 4, 5, 35, 100, 15, 0, 'physical'),
  -- Jump Kick Generation IV
  (26, 4, 7, 85, 95, 25, 0, 'physical'),
  -- Bite Generation IV
  (44, 4, 16, 60, 100, 25, 0, 'physical'),
  -- Sonic Boom Generation IV
  (49, 4, 1, NULL, 90, 20, 0, 'special'),
  -- Disable Generation IV
  (50, 4, 1, NULL, 80, 20, 0, 'status'),
  -- Acid Generation IV
  (51, 4, 8, 40, 100, 30, 0, 'special'),
  -- Hyper Beam Generation IV
  (63, 4, 1, 150, 90, 5, 0, 'special'),
  -- Absorb Generation IV
  (71, 4, 5, 20, 100, 25, 0, 'special'),
  -- Mega Drain Generation IV
  (72, 4, 5, 40, 100, 15, 0, 'special'),
  -- Razor Leaf Generation IV
  (75, 4, 5, 55, 95, 25, 0, 'physical'),
  -- Petal Dance Generation IV
  (80, 4, 5, 90, 100, 20, 0, 'special'),
  -- Dig Generation IV
  (91, 4, 9, 80, 100, 10, 0, 'physical'),
  -- Night Shade Generation IV
  (101, 4, 14, NULL, 100, 15, 0, 'special'),
  -- Recover Generation IV
  (105, 4, 1, NULL, NULL, 5, 0, 'status'),
  -- Smog Generation IV
  (123, 4, 8, 20, 70, 20, 0, 'special'),
  -- Sludge Generation IV
  (124, 4, 8, 65, 100, 20, 0, 'special'),
  -- Waterfall Generation IV
  (127, 4, 3, 80, 100, 15, 0, 'physical'),
  -- Clamp Generation IV
  (128, 4, 3, 35, 75, 10, 0, 'physical'),
  -- Swift Generation IV
  (129, 4, 1, 60, NULL, 20, 0, 'special'),
  -- High Jump Kick Generation IV
  (136, 4, 7, 100, 90, 20, 0, 'physical'),
  -- Flash Generation IV
  (148, 4, 1, NULL, 100, 20, 0, 'status'),
  -- Crabhammer Generation IV
  (152, 4, 3, 90, 85, 10, 0, 'physical'),
  -- Tri Attack Generation IV
  (161, 4, 1, 80, 100, 10, 0, 'special'),
  -- Thief Generation IV
  (168, 4, 16, 40, 100, 10, 0, 'physical'),
  -- Flame Wheel Generation IV
  (172, 4, 2, 60, 100, 25, 0, 'physical'),
  -- Snore Generation IV
  (173, 4, 1, 40, 100, 15, 0, 'special'),
  -- Aeroblast Generation IV
  (177, 4, 10, 100, 95, 5, 0, 'special'),
  -- Feint Attack Generation IV
  (185, 4, 16, 60, NULL, 20, 0, 'physical'),
  -- Sludge Bomb Generation IV
  (188, 4, 8, 90, 100, 10, 0, 'special'),
  -- Mud-Slap Generation IV
  (189, 4, 9, 20, 100, 10, 0, 'special'),
  -- Zap Cannon Generation IV
  (192, 4, 4, 120, 50, 5, 0, 'special'),
  -- Outrage Generation IV
  (200, 4, 15, 120, 100, 15, 0, 'physical'),
  -- Giga Drain Generation IV
  (202, 4, 5, 60, 100, 10, 0, 'special'),
  -- Spark Generation IV
  (209, 4, 4, 65, 100, 20, 0, 'physical'),
  -- Sacred Fire Generation IV
  (221, 4, 2, 100, 95, 5, 0, 'physical'),
  -- Pursuit Generation IV
  (228, 4, 16, 40, 100, 20, 0, 'physical'),
  -- Hidden Power Generation IV
  (237, 4, 1, 1, 100, 15, 0, 'special'),
  -- Crunch Generation IV
  (242, 4, 16, 80, 100, 15, 0, 'physical'),
  -- Ancient Power Generation IV
  (246, 4, 13, 60, 100, 5, 0, 'special'),
  -- Shadow Ball Generation IV
  (247, 4, 14, 80, 100, 15, 0, 'special'),
  -- Rock Smash Generation IV
  (249, 4, 7, 40, 100, 15, 0, 'physical'),
  -- Beat Up Generation IV
  (251, 4, 16, 10, 100, 10, 0, 'physical'),
  -- Uproar Generation IV
  (253, 4, 1, 50, 100, 10, 0, 'special'),
  -- Stockpile Generation IV
  (254, 4, 1, NULL, NULL, 20, 0, 'status'),
  -- Spit Up Generation IV
  (255, 4, 1, NULL, 100, 10, 0, 'special'),
  -- Knock Off Generation IV
  (282, 4, 16, 20, 100, 20, 0, 'physical'),
  -- Dive Generation IV
  (291, 4, 3, 80, 100, 10, 0, 'physical'),
  -- Blaze Kick Generation IV
  (299, 4, 2, 85, 90, 10, 0, 'physical'),
  -- Ice Ball Generation IV
  (301, 4, 6, 30, 90, 20, 0, 'physical'),
  -- Needle Arm Generation IV
  (302, 4, 5, 60, 100, 15, 0, 'physical'),
  -- Hyper Voice Generation IV
  (304, 4, 1, 90, 100, 10, 0, 'special'),
  -- Weather Ball Generation IV
  (311, 4, 1, 50, 100, 10, 0, 'special'),
  -- Air Cutter Generation IV
  (314, 4, 10, 55, 95, 25, 0, 'special'),
  -- Silver Wind Generation IV
  (318, 4, 12, 60, 100, 5, 0, 'special'),
  -- Signal Beam Generation IV
  (324, 4, 12, 75, 100, 15, 0, 'special'),
  -- Bullet Seed Generation IV
  (331, 4, 5, 10, 100, 30, 0, 'physical'),
  -- Icicle Spear Generation IV
  (333, 4, 6, 10, 100, 30, 0, 'physical'),
  -- Dragon Claw Generation IV
  (337, 4, 15, 80, 100, 15, 0, 'physical'),
  -- Mud Shot Generation IV
  (341, 4, 9, 55, 95, 15, 0, 'special'),
  -- Volt Tackle Generation IV
  (344, 4, 4, 120, 100, 15, 0, 'physical'),
  -- Leaf Blade Generation IV
  (348, 4, 5, 90, 100, 15, 0, 'physical'),
  -- Doom Desire Generation IV
  (353, 4, 17, 120, 85, 5, 0, 'special');
