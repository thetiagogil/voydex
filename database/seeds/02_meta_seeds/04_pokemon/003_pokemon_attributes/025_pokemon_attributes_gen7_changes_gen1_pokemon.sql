-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 1 Pokémon (#001–151)
-- Stat increases for 6 species. Gengar ab1 changed from Levitate to Cursed Body.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #024 Arbok: Atk 85→95
    (24, 2400, 7, 8, NULL, 22, 61, 127, 7, 13, 60, 95, 69, 65, 79, 80, NULL),
    -- #051 Dugtrio: Atk 80→100
    (51, 5100, 7, 9, NULL, 8, 71, 159, 7, NULL, 35, 100, 50, 50, 70, 120, NULL),
    -- #083 Farfetch'd: Atk 65→90
    (83, 8300, 7, 1, 10, 51, 39, 128, 6, 7, 52, 90, 55, 58, 62, 60, NULL),
    -- #085 Dodrio: Spe 100→110
    (85, 8500, 7, 1, 10, 50, 48, 77, 6, NULL, 60, 110, 70, 60, 60, 110, NULL),
    -- #094 Gengar: ab1 Levitate(26)→Cursed Body(130)
    (94, 9400, 7, 14, 8, 130, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110, NULL),
    -- #101 Electrode: Spe 140→150
    (101, 10100, 7, 4, NULL, 43, 9, 106, 11, NULL, 60, 50, 70, 80, 80, 150, NULL),
    -- #103 Exeggutor: SpD 65→75
    (103, 10300, 7, 5, 11, 34, NULL, 139, 9, NULL, 95, 95, 85, 125, 75, 55, NULL);