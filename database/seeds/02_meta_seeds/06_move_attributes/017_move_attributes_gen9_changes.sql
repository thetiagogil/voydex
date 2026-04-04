-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.move_attributes
-- Scope: generation changes
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #071 Absorb
    (71, 9, 5, 20, 100, 25, 0, 'special'),
    -- #072 Mega Drain
    (72, 9, 5, 40, 100, 15, 0, 'special'),
    -- #076 Solar Beam
    (76, 9, 5, 120, 100, 10, 0, 'special'),
    -- #143 Sky Attack
    (143, 9, 10, 140, 90, 5, 0, 'physical'),
    -- #229 Rapid Spin
    (229, 9, 1, 50, 100, 40, 0, 'physical'),
    -- #296 Mist Ball
    (296, 9, 11, 95, 100, 5, 0, 'special'),
    -- #718 Multi-Attack
    (718, 9, 1, 120, 100, 10, 0, 'physical'),
    -- #729 Zippy Zap
    (729, 9, 4, 80, 100, 10, 2, 'physical'),
    -- #733 Bouncy Bubble
    (733, 9, 3, 60, 100, 20, 0, 'special'),
    -- #734 Buzzy Buzz
    (734, 9, 4, 60, 100, 20, 0, 'special'),
    -- #735 Sizzly Slide
    (735, 9, 2, 60, 100, 20, 0, 'physical'),
    -- #736 Glitzy Glow
    (736, 9, 11, 80, 95, 15, 0, 'special'),
    -- #737 Baddy Bad
    (737, 9, 16, 80, 95, 15, 0, 'special'),
    -- #738 Sappy Seed
    (738, 9, 5, 100, 90, 10, 0, 'physical'),
    -- #739 Freezy Frost
    (739, 9, 6, 100, 90, 10, 0, 'special'),
    -- #740 Sparkly Swirl
    (740, 9, 18, 120, 85, 5, 0, 'special');