-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 4 Pokémon (#387–493)
-- Piplup line HA changed from Defiant to Competitive. Gallade gains Sharpness as ab2.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #393 Piplup: HA Defiant(128) → Competitive(172)
    (393, 39300, 9, 3, NULL, 67, NULL, 172, 2, 7, 53, 51, 53, 61, 56, 40, NULL),
    -- #394 Prinplup: HA Defiant(128) → Competitive(172)
    (394, 39400, 9, 3, NULL, 67, NULL, 172, 2, 7, 64, 66, 68, 81, 76, 50, NULL),
    -- #395 Empoleon: HA Defiant(128) → Competitive(172)
    (395, 39500, 9, 3, 17, 67, NULL, 172, 2, 7, 84, 86, 88, 111, 101, 60, NULL),
    -- #475 Gallade: ab2 NULL → Sharpness(292)
    (475, 47500, 9, 11, 7, 80, 292, 154, 10, 12, 68, 125, 65, 65, 115, 80, NULL);