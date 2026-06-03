-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_attributes
-- Scope: changes to Generation 4 Pokémon (#387–493)
-- Gallade gains Human-Like as second egg group.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #475 Gallade: eg Amorphous → Human-Like+Amorphous
    (475, 47500, 8, 11, 7, 80, NULL, 154, 10, 12, 68, 125, 65, 65, 115, 80, NULL);