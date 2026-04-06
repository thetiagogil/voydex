-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.move_attributes
-- Scope: generation changes
-- Four Gen 1 moves had their type corrected in Gen 2:
-- Karate Chop (Normal -> Fighting), Gust (Normal -> Flying),
-- Sand Attack (Normal -> Ground), Bite (Normal -> Dark).
INSERT INTO
    reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #002 Karate Chop
    (2, 2, 7, 50, 100, 25, 0, 'physical'),
    -- #016 Gust
    (16, 2, 10, 40, 100, 35, 0, 'physical'),
    -- #028 Sand Attack
    (28, 2, 9, NULL, 100, 15, 0, 'status'),
    -- #044 Bite
    (44, 2, 16, 60, 100, 25, 0, 'special');