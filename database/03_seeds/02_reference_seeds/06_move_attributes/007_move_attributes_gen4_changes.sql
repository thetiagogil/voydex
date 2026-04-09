-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.move_attributes
-- Scope: generation changes
-- Gen 4 introduced the physical/special split. Each move now has its own damage
-- class independent of type. Many pre-Gen 4 moves changed damage class here.
-- This file also includes power/accuracy/pp changes that took effect in Gen 4.
INSERT INTO
    reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #007 Fire Punch
    (7, 4, 2, 75, 100, 15, 0, 'physical'),
    -- #008 Ice Punch
    (8, 4, 6, 75, 100, 15, 0, 'physical'),
    -- #009 Thunder Punch
    (9, 4, 4, 75, 100, 15, 0, 'physical'),
    -- #013 Razor Wind
    (13, 4, 1, 80, 100, 10, 0, 'special'),
    -- #016 Gust
    (16, 4, 10, 40, 100, 35, 0, 'special'),
    -- #022 Vine Whip
    (22, 4, 5, 35, 100, 10, 0, 'physical'),
    -- #044 Bite
    (44, 4, 16, 60, 100, 25, 0, 'physical'),
    -- #049 Sonic Boom
    (49, 4, 1, NULL, 90, 20, 0, 'special'),
    -- #051 Acid
    (51, 4, 8, 40, 100, 30, 0, 'special'),
    -- #063 Hyper Beam
    (63, 4, 1, 150, 90, 5, 0, 'special'),
    -- #067 Low Kick
    (67, 4, 7, NULL, 100, 20, 0, 'physical'),
    -- #075 Razor Leaf
    (75, 4, 5, 55, 95, 25, 0, 'physical'),
    -- #101 Night Shade
    (101, 4, 14, NULL, 100, 15, 0, 'special'),
    -- #123 Smog
    (123, 4, 8, 20, 70, 20, 0, 'special'),
    -- #124 Sludge
    (124, 4, 8, 65, 100, 20, 0, 'special'),
    -- #127 Waterfall
    (127, 4, 3, 80, 100, 15, 0, 'physical'),
    -- #128 Clamp
    (128, 4, 3, 35, 75, 10, 0, 'physical'),
    -- #129 Swift
    (129, 4, 1, 60, NULL, 20, 0, 'special'),
    -- #152 Crabhammer
    (152, 4, 3, 90, 85, 10, 0, 'physical'),
    -- #161 Tri Attack
    (161, 4, 1, 80, 100, 10, 0, 'special'),
    -- #168 Thief
    (168, 4, 16, 40, 100, 10, 0, 'physical'),
    -- #172 Flame Wheel
    (172, 4, 2, 60, 100, 25, 0, 'physical'),
    -- #173 Snore
    (173, 4, 1, 40, 100, 15, 0, 'special'),
    -- #177 Aeroblast
    (177, 4, 10, 100, 95, 5, 0, 'special'),
    -- #185 Feint Attack
    (185, 4, 16, 60, NULL, 20, 0, 'physical'),
    -- #188 Sludge Bomb
    (188, 4, 8, 90, 100, 10, 0, 'special'),
    -- #189 Mud-Slap
    (189, 4, 9, 20, 100, 10, 0, 'special'),
    -- #200 Outrage
    (200, 4, 15, 90, 100, 15, 0, 'physical'),
    -- #209 Spark
    (209, 4, 4, 65, 100, 20, 0, 'physical'),
    -- #221 Sacred Fire
    (221, 4, 2, 100, 95, 5, 0, 'physical'),
    -- #228 Pursuit
    (228, 4, 16, 40, 100, 20, 0, 'physical'),
    -- #237 Hidden Power
    (237, 4, 1, 1, 100, 15, 0, 'special'),
    -- #242 Crunch
    (242, 4, 16, 80, 100, 15, 0, 'physical'),
    -- #246 Ancient Power
    (246, 4, 13, 60, 100, 5, 0, 'special'),
    -- #247 Shadow Ball
    (247, 4, 14, 80, 100, 15, 0, 'special'),
    -- #251 Beat Up
    (251, 4, 16, 10, 100, 10, 0, 'physical'),
    -- #253 Uproar
    (253, 4, 1, 50, 100, 10, 0, 'special'),
    -- #255 Spit Up
    (255, 4, 1, NULL, 100, 10, 0, 'special'),
    -- #282 Knock Off
    (282, 4, 16, 20, 100, 20, 0, 'physical'),
    -- #291 Dive
    (291, 4, 3, 60, 100, 10, 0, 'physical'),
    -- #299 Blaze Kick
    (299, 4, 2, 85, 90, 10, 0, 'physical'),
    -- #301 Ice Ball
    (301, 4, 6, 30, 90, 20, 0, 'physical'),
    -- #302 Needle Arm
    (302, 4, 5, 60, 100, 15, 0, 'physical'),
    -- #304 Hyper Voice
    (304, 4, 1, 90, 100, 10, 0, 'special'),
    -- #311 Weather Ball
    (311, 4, 1, 50, 100, 10, 0, 'special'),
    -- #314 Air Cutter
    (314, 4, 10, 55, 95, 25, 0, 'special'),
    -- #318 Silver Wind
    (318, 4, 12, 60, 100, 5, 0, 'special'),
    -- #324 Signal Beam
    (324, 4, 12, 75, 100, 15, 0, 'special'),
    -- #331 Bullet Seed
    (331, 4, 5, 10, 100, 30, 0, 'physical'),
    -- #333 Icicle Spear
    (333, 4, 6, 10, 100, 30, 0, 'physical'),
    -- #337 Dragon Claw
    (337, 4, 15, 80, 100, 15, 0, 'physical'),
    -- #341 Mud Shot
    (341, 4, 9, 55, 95, 15, 0, 'special'),
    -- #344 Volt Tackle
    (344, 4, 4, 120, 100, 15, 0, 'physical'),
    -- #348 Leaf Blade
    (348, 4, 5, 70, 100, 15, 0, 'physical'),
    -- #353 Doom Desire
    (353, 4, 17, 120, 85, 5, 0, 'special');