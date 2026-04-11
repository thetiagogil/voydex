-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_attributes
-- Scope: changes to Generation 3 Pokémon (#252–386)
-- Shiftry ab2 changed from Early Bird to Wind Rider in Generation 9.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #275 Shiftry: ab2 Early Bird(48) → Wind Rider(274)
    (275, 27500, 9, 5, 16, 34, 274, 124, 7, 9, 90, 100, 60, 90, 60, 80, NULL);