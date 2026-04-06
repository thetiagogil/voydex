-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_attributes
-- Scope: changes to Gen 6 Pokémon (#650–721)
-- Aegislash Shield Forme stat nerf (Def/SpD 150→140).
-- Hawlucha, Bergmite/Avalugg, Noibat/Noivern gain second egg groups.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #681 Aegislash (Shield Forme): Def 150→140, SpD 150→140
    (681, 68100, 8, 17, 14, 176, NULL, NULL, 11, NULL, 60, 50, 140, 50, 140, 60, NULL),
    -- #701 Hawlucha: eg Human-Like → Flying+Human-Like
    (701, 70100, 8, 7, 10, 7, 84, 104, 6, 10, 78, 92, 75, 74, 63, 118, NULL),
    -- #712 Bergmite: eg2 NULL→Mineral(11)
    (712, 71200, 8, 6, NULL, 20, 115, 5, 1, 11, 55, 69, 85, 32, 35, 28, NULL),
    -- #713 Avalugg: eg2 NULL→Mineral(11)
    (713, 71300, 8, 6, NULL, 20, 115, 5, 1, 11, 95, 117, 184, 44, 46, 28, NULL),
    -- #714 Noibat: eg2 NULL→Dragon(13)
    (714, 71400, 8, 10, 15, 119, 151, 140, 6, 13, 40, 30, 35, 45, 40, 55, NULL),
    -- #715 Noivern: eg2 NULL→Dragon(13)
    (715, 71500, 8, 10, 15, 119, 151, 140, 6, 13, 85, 70, 80, 97, 80, 123, NULL);