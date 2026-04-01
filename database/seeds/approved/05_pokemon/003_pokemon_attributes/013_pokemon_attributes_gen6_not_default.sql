-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: meta.pokemon_attributes
-- Scope: non-default forms introduced in Gen 6

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Meowstic Female (#678) shares all base stats with Male but has different ab1/HA.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #678 Meowstic Female
    (678, 67801, 6, 11, NULL, 20, 151, 172, 7, NULL, 74, 48, 76, 83, 81, 104, NULL);