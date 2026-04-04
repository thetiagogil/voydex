-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.pokemon_attributes
-- Scope: changes to Gen 6 Pokémon (#650–721)
-- Zygarde gains Power Construct as ability2 in Gen 7, enabling 10%/Complete Forme changes.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #718 Zygarde (50% Forme): ab2 NULL→Power Construct(211)
    (718, 71800, 7, 15, 9, 188, 211, NULL, 15, NULL, 108, 100, 121, 81, 95, 95, NULL);