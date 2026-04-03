-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 4 Pokémon (#387–493)

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Togekiss gains Fairy as type1. Mime Jr. gains Fairy as type2.
-- Starly and Dusknoir gain HAs (were NULL in Gen 5).
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #396 Starly: HA NULL→Reckless(120)
    (396, 39600, 6, 1, 10, 51, NULL, 120, 6, NULL, 40, 55, 30, 30, 30, 60, NULL),
    -- #439 Mime Jr.: type2 NULL→Fairy
    (439, 43900, 6, 11, 18, 43, 111, 101, 15, NULL, 20, 25, 45, 70, 90, 60, NULL),
    -- #468 Togekiss: type1 Normal→Fairy (type2 stays Flying)
    (468, 46800, 6, 18, 10, 55, 32, 105, 6, 8, 85, 50, 95, 120, 115, 80, NULL),
    -- #477 Dusknoir: HA NULL→Frisk(119)
    (477, 47700, 6, 14, NULL, 46, NULL, 119, 12, NULL, 45, 100, 135, 65, 135, 45, NULL);