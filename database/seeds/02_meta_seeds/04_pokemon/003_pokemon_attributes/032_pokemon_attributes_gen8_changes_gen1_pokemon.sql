-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 1 Pokémon (#001–151)
-- Koffing and Weezing gain ab2=Neutralizing Gas and HA=Stench in Gen 8.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #109 Koffing: ab2 NULL→Neutralizing Gas(256), HA NULL→Stench(1)
    (109, 10900, 8, 8, NULL, 26, 256, 1, 12, NULL, 40, 65, 95, 60, 45, 35, NULL),
    -- #110 Weezing: ab2 NULL→Neutralizing Gas(256), HA NULL→Stench(1)
    (110, 11000, 8, 8, NULL, 26, 256, 1, 12, NULL, 65, 90, 120, 85, 70, 60, NULL);