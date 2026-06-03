-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_attributes
-- Scope: non-default forms introduced in Generation 5 + Generation 5 changes to Generation 4 non-default forms
-- Section 1: New non-default forms introduced in Generation 5.
-- Section 2: Generation 5 changes to Generation 4 non-default forms:
--   - Wormadam Sandy/Trash: added HA (Overcoat).
--   - Rotom appliance forms: type2 changed from Ghost to form-specific type; stats boosted (BST 440 → 520).
-- Keldeo Resolute excluded (cosmetic only — same stats, abilities, and type as default).
-- ==========================================================================
-- Section 1: Generation 5 Non-Default Form Introductions
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #550 Basculin Blue-Striped (Rock Head / Adaptability / HA: Mold Breaker)
    (550, 55001, 5, 3, NULL, 69, 91, 104, 3, NULL, 70, 92, 65, 80, 55, 98, NULL),
    -- #641 Tornadus Therian (Regenerator, no HA)
    (641, 64101, 5, 10, NULL, 144, NULL, NULL, 15, NULL, 79, 100, 80, 110, 90, 121, NULL),
    -- #642 Thundurus Therian (Volt Absorb, no HA)
    (642, 64201, 5, 4, 10, 10, NULL, NULL, 15, NULL, 79, 105, 70, 145, 80, 101, NULL),
    -- #645 Landorus Therian (Intimidate, no HA)
    (645, 64501, 5, 9, 10, 22, NULL, NULL, 15, NULL, 89, 145, 90, 105, 80, 91, NULL),
    -- #646 Kyurem White (Turboblaze, no HA)
    (646, 64601, 5, 15, 6, 163, NULL, NULL, 15, NULL, 125, 120, 90, 170, 100, 95, NULL),
    -- #646 Kyurem Black (Teravolt, no HA)
    (646, 64602, 5, 15, 6, 164, NULL, NULL, 15, NULL, 125, 170, 100, 120, 90, 95, NULL);

-- ==========================================================================
-- Section 2: Generation 5 Changes to Generation 4 Non-Default Forms
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #413 Wormadam Sandy Cloak — added HA: Overcoat
    (413, 41301, 5, 12, 9, 107, NULL, 142, 5, NULL, 60, 79, 105, 59, 85, 36, NULL),
    -- #413 Wormadam Trash Cloak — added HA: Overcoat
    (413, 41302, 5, 12, 17, 107, NULL, 142, 5, NULL, 60, 69, 95, 69, 95, 36, NULL),
    -- #479 Rotom Heat — type2: Ghost → Fire; stats boosted (BST 440 → 520)
    (479, 47901, 5, 4, 2, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86, NULL),
    -- #479 Rotom Wash — type2: Ghost → Water; stats boosted
    (479, 47902, 5, 4, 3, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86, NULL),
    -- #479 Rotom Frost — type2: Ghost → Ice; stats boosted
    (479, 47903, 5, 4, 6, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86, NULL),
    -- #479 Rotom Fan — type2: Ghost → Flying; stats boosted
    (479, 47904, 5, 4, 10, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86, NULL),
    -- #479 Rotom Mow — type2: Ghost → Grass; stats boosted
    (479, 47905, 5, 4, 5, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86, NULL);