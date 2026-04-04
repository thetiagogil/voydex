-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 5 Pokémon (#494–649)
-- Stat increases for 4 species. Roggenrola line, Vanillite line, Cubchoo line gain ability2.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #524 Roggenrola: ab2 NULL→Weak Armor(133)
    (524, 52400, 7, 13, NULL, 5, 133, 159, 11, NULL, 55, 75, 85, 25, 25, 15, NULL),
    -- #525 Boldore: ab2 NULL→Weak Armor(133)
    (525, 52500, 7, 13, NULL, 5, 133, 159, 11, NULL, 70, 105, 105, 50, 40, 20, NULL),
    -- #526 Gigalith: ab2 NULL→Sand Stream(45)
    (526, 52600, 7, 13, NULL, 5, 45, 159, 11, NULL, 85, 135, 130, 60, 80, 25, NULL),
    -- #527 Woobat: HP 55→65
    (527, 52700, 7, 11, 10, 109, 103, 86, 7, 6, 65, 45, 43, 55, 43, 72, NULL),
    -- #558 Crustle: Atk 95→105
    (558, 55800, 7, 12, 13, 5, 75, 133, 5, 11, 70, 105, 125, 65, 75, 45, NULL),
    -- #582 Vanillite: ab2 NULL→Snow Cloak(81)
    (582, 58200, 7, 6, NULL, 115, 81, 133, 11, NULL, 36, 50, 50, 65, 60, 44, NULL),
    -- #583 Vanillish: ab2 NULL→Snow Cloak(81)
    (583, 58300, 7, 6, NULL, 115, 81, 133, 11, NULL, 51, 65, 65, 80, 75, 59, NULL),
    -- #584 Vanilluxe: ab2 NULL→Snow Warning(117)
    (584, 58400, 7, 6, NULL, 115, 117, 133, 11, NULL, 71, 95, 85, 110, 95, 79, NULL),
    -- #613 Cubchoo: ab2 NULL→Slush Rush(202)
    (613, 61300, 7, 6, NULL, 81, 202, 155, 7, NULL, 55, 70, 40, 60, 40, 40, NULL),
    -- #614 Beartic: ab2 NULL→Slush Rush(202), Atk 110→130
    (614, 61400, 7, 6, NULL, 81, 202, 33, 7, NULL, 95, 130, 80, 70, 80, 50, NULL),
    -- #615 Cryogonal: HP 70→80, Def 30→50
    (615, 61500, 7, 6, NULL, 26, NULL, NULL, 11, NULL, 80, 50, 50, 95, 135, 105, NULL);