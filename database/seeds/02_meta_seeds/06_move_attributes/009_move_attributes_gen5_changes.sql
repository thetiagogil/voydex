-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: meta.move_attributes
-- Scope: generation changes
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #019 Fly
    (19, 5, 10, 90, 95, 15, 0, 'physical'),
    -- #022 Vine Whip
    (22, 5, 5, 35, 100, 15, 0, 'physical'),
    -- #026 Jump Kick
    (26, 5, 7, 85, 95, 25, 0, 'physical'),
    -- #050 Disable
    (50, 5, 1, NULL, 80, 20, 0, 'status'),
    -- #071 Absorb
    (71, 5, 5, 20, 100, 25, 0, 'special'),
    -- #072 Mega Drain
    (72, 5, 5, 40, 100, 15, 0, 'special'),
    -- #080 Petal Dance
    (80, 5, 5, 90, 100, 20, 0, 'special'),
    -- #091 Dig
    (91, 5, 9, 80, 100, 10, 0, 'physical'),
    -- #095 Hypnosis
    (95, 5, 11, NULL, 60, 20, 0, 'status'),
    -- #105 Recover
    (105, 5, 1, NULL, NULL, 5, 0, 'status'),
    -- #136 High Jump Kick
    (136, 5, 7, 100, 90, 20, 0, 'physical'),
    -- #148 Flash
    (148, 5, 1, NULL, 100, 20, 0, 'status'),
    -- #192 Zap Cannon
    (192, 5, 4, 120, 50, 5, 0, 'special'),
    -- #200 Outrage
    (200, 5, 15, 120, 100, 15, 0, 'physical'),
    -- #202 Giga Drain
    (202, 5, 5, 60, 100, 10, 0, 'special'),
    -- #249 Rock Smash
    (249, 5, 7, 40, 100, 15, 0, 'physical'),
    -- #254 Stockpile
    (254, 5, 1, NULL, NULL, 20, 0, 'status'),
    -- #291 Dive
    (291, 5, 3, 80, 100, 10, 0, 'physical'),
    -- #348 Leaf Blade
    (348, 5, 5, 90, 100, 15, 0, 'physical');