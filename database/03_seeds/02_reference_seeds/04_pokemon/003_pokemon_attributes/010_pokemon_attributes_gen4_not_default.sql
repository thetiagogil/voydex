-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_attributes
-- Scope: non-default forms introduced in Generation 4
-- No Hidden Abilities in Generation 4 (all NULL). HA additions are handled in gen5_not_default.
-- Rotom appliance forms in Generation 4 are Electric/Ghost with base Rotom stats (BST 440).
--   They received type changes and stat boosts in Generation 5 (see gen5_not_default).
-- Giratina Origin uses Levitate (no HA); Altered (default) uses Pressure with HA Telepathy.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #413 Wormadam Sandy Cloak
    (413, 41301, 4, 12, 9, 107, NULL, NULL, 5, NULL, 60, 79, 105, 59, 85, 36, NULL),
    -- #413 Wormadam Trash Cloak
    (413, 41302, 4, 12, 17, 107, NULL, NULL, 5, NULL, 60, 69, 95, 69, 95, 36, NULL),
    -- #479 Rotom Heat (Generation 4: Electric/Ghost, same stats as base)
    (479, 47901, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #479 Rotom Wash (Generation 4: Electric/Ghost, same stats as base)
    (479, 47902, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #479 Rotom Frost (Generation 4: Electric/Ghost, same stats as base)
    (479, 47903, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #479 Rotom Fan (Generation 4: Electric/Ghost, same stats as base)
    (479, 47904, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #479 Rotom Mow (Generation 4: Electric/Ghost, same stats as base)
    (479, 47905, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #487 Giratina Origin
    (487, 48701, 4, 14, 15, 26, NULL, NULL, 15, NULL, 150, 120, 100, 120, 100, 90, NULL),
    -- #492 Shaymin Sky
    (492, 49201, 4, 5, 10, 32, NULL, NULL, 15, NULL, 100, 103, 75, 120, 75, 127, NULL);