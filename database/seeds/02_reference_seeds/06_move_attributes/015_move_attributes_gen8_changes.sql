-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.move_attributes
-- Scope: generation changes
INSERT INTO
    reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #033 Tackle
    (33, 8, 1, 40, 100, 35, 0, 'physical'),
    -- #071 Absorb
    (71, 8, 5, 40, 100, 15, 0, 'special'),
    -- #072 Mega Drain
    (72, 8, 5, 75, 100, 10, 0, 'special'),
    -- #076 Solar Beam
    (76, 8, 5, 200, 100, 10, 0, 'special'),
    -- #086 Thunder Wave
    (86, 8, 4, NULL, 90, 20, 0, 'status'),
    -- #141 Leech Life
    (141, 8, 12, 80, 100, 10, 0, 'physical'),
    -- #143 Sky Attack
    (143, 8, 10, 200, 90, 5, 0, 'physical'),
    -- #207 Swagger
    (207, 8, 1, NULL, 85, 15, 0, 'status'),
    -- #389 Sucker Punch
    (389, 8, 16, 70, 100, 5, 1, 'physical'),
    -- #464 Dark Void
    (464, 8, 16, NULL, 50, 10, 0, 'status'),
    -- #560 Flying Press
    (560, 8, 7, 100, 95, 10, 0, 'physical'),
    -- #565 Fell Stinger
    (565, 8, 12, 50, 100, 25, 0, 'physical'),
    -- #570 Parabolic Charge
    (570, 8, 4, 65, 100, 20, 0, 'special'),
    -- #595 Mystical Fire
    (595, 8, 2, 75, 100, 10, 0, 'special');