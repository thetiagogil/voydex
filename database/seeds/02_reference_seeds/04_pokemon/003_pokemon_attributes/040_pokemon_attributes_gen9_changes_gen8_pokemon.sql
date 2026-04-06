-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_attributes
-- Scope: changes to Gen 8 Pokémon (#810–905)
-- Zacian/Zamazenta Atk nerfed. Kleavor, Basculegion (Male+Female), Sneasler, Enamorus ability updates.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #888 Zacian (Hero of Many Battles): Atk 130 → 120
    (888, 88800, 9, 18, NULL, 234, NULL, NULL, 15, NULL, 92, 120, 115, 80, 115, 138, NULL),
    -- #889 Zamazenta (Hero of Many Battles): Atk 130 → 120
    (889, 88900, 9, 7, NULL, 235, NULL, NULL, 15, NULL, 92, 120, 115, 80, 115, 138, NULL),
    -- #900 Kleavor: Atk 135→130, SpD 70→75, HA Steadfast(80) → Sharpness(292)
    (900, 90000, 9, 12, 13, 68, 125, 292, 5, NULL, 70, 130, 95, 45, 75, 85, NULL),
    -- #902 Basculegion (Male): ab1 Rattled(155) → Swift Swim(33)
    (902, 90200, 9, 3, 14, 33, 91, 104, 3, NULL, 120, 112, 65, 80, 75, 78, NULL),
    -- #902 Basculegion (Female): ab1 Rattled(155) → Swift Swim(33)
    (902, 90201, 9, 3, 14, 33, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78, NULL),
    -- #903 Sneasler: ab2 NULL → Unburden(84)
    (903, 90300, 9, 7, 8, 46, 84, 143, 7, NULL, 80, 130, 60, 40, 80, 120, NULL),
    -- #905 Enamorus (Incarnate Forme): ab1 Healer(131) → Cute Charm(56)
    (905, 90500, 9, 18, 10, 56, NULL, 126, 15, NULL, 74, 115, 70, 135, 80, 106, NULL);