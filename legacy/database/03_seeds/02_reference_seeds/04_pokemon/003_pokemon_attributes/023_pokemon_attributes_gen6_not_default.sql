-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_attributes
-- Scope: non-default forms introduced in Generation 6
-- Meowstic Female (#678) shares all base stats with Male but has different ab1/HA.
-- Pumpkaboo/Gourgeist sizes differ in HP, Attack, and Speed. Types and abilities are identical.
-- Hoopa Unbound (#720) has Psychic/Dark typing vs default Confined's Psychic/Ghost, plus different stats.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #678 Meowstic Female
    (678, 67801, 6, 11, NULL, 20, 151, 172, 7, NULL, 74, 48, 76, 83, 81, 104, NULL),
    -- #710 Pumpkaboo Small (Pickup / Frisk / HA: Insomnia)
    (710, 71001, 6, 14, 5, 53, 119, 15, 12, 9, 44, 66, 70, 44, 55, 56, NULL),
    -- #710 Pumpkaboo Large
    (710, 71002, 6, 14, 5, 53, 119, 15, 12, 9, 54, 66, 70, 44, 55, 46, NULL),
    -- #710 Pumpkaboo Super
    (710, 71003, 6, 14, 5, 53, 119, 15, 12, 9, 59, 66, 70, 44, 55, 41, NULL),
    -- #711 Gourgeist Small (Pickup / Frisk / HA: Insomnia)
    (711, 71101, 6, 14, 5, 53, 119, 15, 12, 9, 55, 85, 122, 58, 75, 99, NULL),
    -- #711 Gourgeist Large
    (711, 71102, 6, 14, 5, 53, 119, 15, 12, 9, 75, 95, 122, 58, 75, 69, NULL),
    -- #711 Gourgeist Super
    (711, 71103, 6, 14, 5, 53, 119, 15, 12, 9, 85, 100, 122, 58, 75, 54, NULL),
    -- #720 Hoopa Unbound (Magician, no HA)
    (720, 72001, 6, 11, 16, 170, NULL, NULL, 15, NULL, 80, 160, 60, 170, 130, 80, NULL);