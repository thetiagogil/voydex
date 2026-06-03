-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.move_attributes
-- Scope: generation changes
INSERT INTO
    reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #017 Wing Attack
    (17, 3, 10, 60, 100, 35, 0, 'physical'),
    -- #018 Whirlwind
    (18, 3, 1, NULL, 100, 20, -6, 'status'),
    -- #038 Double-Edge
    (38, 3, 1, 120, 100, 15, 0, 'physical'),
    -- #059 Blizzard
    (59, 3, 6, 120, 70, 5, 0, 'special'),
    -- #088 Rock Throw
    (88, 3, 13, 50, 90, 15, 0, 'physical'),
    -- #091 Dig
    (91, 3, 9, 60, 100, 10, 0, 'physical'),
    -- #120 Self-Destruct
    (120, 3, 1, 200, 100, 5, 0, 'physical'),
    -- #153 Explosion
    (153, 3, 1, 250, 100, 5, 0, 'physical');