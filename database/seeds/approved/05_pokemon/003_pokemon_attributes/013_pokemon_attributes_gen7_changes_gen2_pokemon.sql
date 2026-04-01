-- Source: Bulbapedia — List of Pokémon by base stats (Generation VII), List of Pokémon by Ability
-- Generation: 7
-- Scope: changes to Gen 2 Pokémon (#152-251)
-- Table: meta.pokemon_attributes
-- Rows: 9
--
-- Gen 7 (Sun/Moon) stat adjustments and HA changes for Gen 2 species.
-- This file covers:
--   1. Stat increases: Noctowl SpA +10, Ariados SpD +10, Qwilfish Def +10,
--      Magcargo HP +10 & SpA +10, Corsola HP +10 & Def +10 & SpD +10,
--      Mantine HP +20.
--   2. HA changes: Raikou Volt Absorb(10)→Inner Focus(39),
--      Entei Flash Fire(18)→Inner Focus(39),
--      Suicune Water Absorb(11)→Inner Focus(39).
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Poison(8) Flying(10)
--   Bug(12) Rock(13)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #164 Noctowl: SpA 76→86
    (164, 16400, 7, 1, 10, 15, 51, 110, 6, NULL, 100, 50, 50, 86, 96, 70, NULL),
    -- #168 Ariados: SpD 60→70
    (168, 16800, 7, 12, 8, 68, 15, 97, 5, NULL, 70, 90, 70, 60, 70, 40, NULL),
    -- #211 Qwilfish: Def 75→85
    (211, 21100, 7, 3, 8, 38, 33, 22, 3, NULL, 65, 95, 85, 55, 55, 85, NULL),
    -- #219 Magcargo: HP 50→60, SpA 80→90
    (219, 21900, 7, 2, 13, 40, 49, 133, 12, NULL, 60, 50, 120, 90, 80, 30, NULL),
    -- #222 Corsola: HP 55→65, Def 85→95, SpD 85→95
    (222, 22200, 7, 3, 13, 55, 30, 144, 2, 4, 65, 55, 95, 65, 95, 35, NULL),
    -- #226 Mantine: HP 65→85
    (226, 22600, 7, 3, 10, 33, 11, 41, 2, NULL, 85, 40, 70, 80, 140, 70, NULL),
    -- #243 Raikou: HA Volt Absorb(10)→Inner Focus(39)
    (243, 24300, 7, 4, NULL, 46, NULL, 39, 15, NULL, 90, 85, 75, 115, 100, 115, NULL),
    -- #244 Entei: HA Flash Fire(18)→Inner Focus(39)
    (244, 24400, 7, 2, NULL, 46, NULL, 39, 15, NULL, 115, 115, 85, 90, 75, 100, NULL),
    -- #245 Suicune: HA Water Absorb(11)→Inner Focus(39)
    (245, 24500, 7, 3, NULL, 46, NULL, 39, 15, NULL, 100, 75, 115, 90, 115, 85, NULL);