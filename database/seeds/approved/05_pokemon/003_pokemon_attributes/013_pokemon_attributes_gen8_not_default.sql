-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_attributes
-- Scope: non-default forms introduced in Gen 8

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Basculegion Female (#902) ab1=Rattled(155) in Gen 8 (same as Male); changed to Swift Swim(33) in Gen 9.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #876 Indeedee Female
    (876, 87601, 8, 11, 1, 20, 28, 267, 8, NULL, 70, 55, 65, 95, 105, 85, NULL),
    -- #902 Basculegion Female
    (902, 90201, 8, 3, 14, 155, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78, NULL);