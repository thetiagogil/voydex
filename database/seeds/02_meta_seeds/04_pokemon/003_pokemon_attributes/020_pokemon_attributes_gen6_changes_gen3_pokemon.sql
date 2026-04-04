-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 3 Pokémon (#252–386)
-- Fairy type added to Ralts line, Azurill, Mawile. Minor stat increases (Beautifly, Exploud).
-- Plusle, Minun, Kecleon, Duskull, Dusclops gain HAs (were NULL in Gen 5).
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #267 Beautifly: SpA 90→100
    (267, 26700, 6, 12, 10, 68, NULL, 79, 5, NULL, 60, 70, 50, 100, 50, 65, NULL),
    -- #280 Ralts: type2 NULL→Fairy
    (280, 28000, 6, 11, 18, 28, 36, 140, 12, NULL, 28, 25, 25, 45, 35, 40, NULL),
    -- #281 Kirlia: type2 NULL→Fairy
    (281, 28100, 6, 11, 18, 28, 36, 140, 12, NULL, 38, 35, 35, 65, 55, 50, NULL),
    -- #282 Gardevoir: type2 NULL→Fairy
    (282, 28200, 6, 11, 18, 28, 36, 140, 12, NULL, 68, 65, 65, 125, 115, 80, NULL),
    -- #295 Exploud: SpD 63→73
    (295, 29500, 6, 1, NULL, 43, NULL, 113, 1, 7, 104, 91, 63, 91, 73, 68, NULL),
    -- #298 Azurill: type2 NULL→Fairy
    (298, 29800, 6, 1, 18, 47, 37, 157, 15, NULL, 50, 20, 40, 20, 40, 20, NULL),
    -- #303 Mawile: type2 NULL→Fairy
    (303, 30300, 6, 17, 18, 52, 22, 125, 7, 8, 50, 85, 85, 55, 55, 50, NULL),
    -- #311 Plusle: HA NULL→Lightning Rod(31)
    (311, 31100, 6, 4, NULL, 57, NULL, 31, 8, NULL, 60, 50, 40, 85, 75, 95, NULL),
    -- #312 Minun: HA NULL→Volt Absorb(10)
    (312, 31200, 6, 4, NULL, 58, NULL, 10, 8, NULL, 60, 40, 50, 75, 85, 95, NULL),
    -- #352 Kecleon: HA NULL→Protean(168)
    (352, 35200, 6, 1, NULL, 16, NULL, 168, 7, NULL, 60, 90, 70, 60, 120, 40, NULL),
    -- #355 Duskull: HA NULL→Frisk(119)
    (355, 35500, 6, 14, NULL, 26, NULL, 119, 12, NULL, 20, 40, 90, 30, 90, 25, NULL),
    -- #356 Dusclops: HA NULL→Frisk(119)
    (356, 35600, 6, 14, NULL, 46, NULL, 119, 12, NULL, 40, 70, 130, 60, 130, 25, NULL);