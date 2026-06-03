-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_attributes
-- Scope: non-default forms introduced in Generation 3
-- Deoxys forms share Psychic type and Pressure ability but have very different stat spreads.
-- No Hidden Abilities in Generation 3 (all NULL).
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #386 Deoxys Attack
    (386, 38601, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 180, 20, 180, 20, 150, NULL),
    -- #386 Deoxys Defense
    (386, 38602, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 70, 160, 70, 160, 90, NULL),
    -- #386 Deoxys Speed
    (386, 38603, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 95, 90, 95, 90, 180, NULL);