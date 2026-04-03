-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.pokemon_attributes
-- Scope: non-default forms introduced in Gen 9 + Gen 9 changes to Gen 8 non-default forms
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Section 1: New non-default forms introduced in Gen 9.
-- Section 2: Gen 9 changes to Gen 8 non-default forms:
--   - Basculegion Female: ab1 changed from Rattled(155) to Swift Swim(33).
--   - Zacian Crowned Sword: Attack nerfed 170 → 150.
--   - Zamazenta Crowned Shield: Attack 130 → 120, Defense 145 → 140, SpDef 145 → 140.
-- ==========================================================================
-- Section 1: Gen 9 Non-Default Form Introductions
-- ==========================================================================
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- === Paldean Regional Variants ===
    -- #128 Paldean Tauros Combat Breed (Intimidate / Anger Point / HA: Cud Chew)
    (128, 12801, 9, 7, NULL, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100, NULL),
    -- #128 Paldean Tauros Blaze Breed
    (128, 12802, 9, 7, 2, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100, NULL),
    -- #128 Paldean Tauros Aqua Breed
    (128, 12803, 9, 7, 3, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100, NULL),
    -- #194 Paldean Wooper (Poison Point / Water Absorb / HA: Unaware)
    (194, 19401, 9, 8, 9, 38, 11, 109, 2, 7, 55, 45, 45, 25, 25, 15, NULL),
    -- === Other Gen 9 Non-Default Forms ===
    -- #901 Ursaluna Bloodmoon (Mind's Eye, no HA)
    (901, 90101, 9, 9, 1, 299, NULL, NULL, 7, NULL, 113, 70, 120, 135, 65, 52, NULL),
    -- #916 Oinkologne Female (Aroma Veil / Gluttony / HA: Thick Fat)
    (916, 91601, 9, 1, NULL, 165, 82, 47, 7, NULL, 115, 90, 70, 59, 90, 65, NULL),
    -- === Ogerpon Mask Forms (same stats, different type2/ability) ===
    -- #1017 Ogerpon Wellspring Mask (Water Absorb, no HA)
    (1017, 101701, 9, 5, 3, 11, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110, NULL),
    -- #1017 Ogerpon Hearthflame Mask (Mold Breaker, no HA)
    (1017, 101702, 9, 5, 2, 104, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110, NULL),
    -- #1017 Ogerpon Cornerstone Mask (Sturdy, no HA)
    (1017, 101703, 9, 5, 13, 5, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110, NULL);

-- ==========================================================================
-- Section 2: Gen 9 Changes to Gen 8 Non-Default Forms
-- ==========================================================================
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #888 Zacian Crowned Sword — Attack nerfed 170 → 150
    (888, 88801, 9, 18, 17, 234, NULL, NULL, 15, NULL, 92, 150, 115, 80, 115, 148, NULL),
    -- #889 Zamazenta Crowned Shield — Attack 130→120, Def 145→140, SpDef 145→140
    (889, 88901, 9, 7, 17, 235, NULL, NULL, 15, NULL, 92, 120, 140, 80, 140, 128, NULL),
    -- #902 Basculegion Female — ab1 changed from Rattled(155) to Swift Swim(33)
    (902, 90201, 9, 3, 14, 33, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78, NULL);