-- Source: Bulbapedia — List of Pokémon by Egg Group
-- Generation: 8
-- Scope: changes to Gen 3 Pokémon (#252-386)
-- Table: meta.pokemon_attributes
-- Rows: 6
--
-- Gen 8 (Sword/Shield) added second egg groups to several Gen 3 Pokémon:
--   1. Ralts/Kirlia/Gardevoir: eg Amorphous(12) → Human-Like(10)+Amorphous(12)
--   2. Trapinch/Vibrava/Flygon: eg Bug(5) → Bug(5)+Dragon(13)
--
-- Egg Group IDs: Monster(1) Bug(5) Human-Like(10) Mineral(11) Amorphous(12) Dragon(13)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #280 Ralts: eg Amorphous → Human-Like+Amorphous
    (280, 28000, 8, 11, 18, 28, 36, 140, 10, 12, 28, 25, 25, 45, 35, 40, NULL),
    -- #281 Kirlia: eg Amorphous → Human-Like+Amorphous
    (281, 28100, 8, 11, 18, 28, 36, 140, 10, 12, 38, 35, 35, 65, 55, 50, NULL),
    -- #282 Gardevoir: eg Amorphous → Human-Like+Amorphous
    (282, 28200, 8, 11, 18, 28, 36, 140, 10, 12, 68, 65, 65, 125, 115, 80, NULL),
    -- #328 Trapinch: eg2 NULL→Dragon(13)
    (328, 32800, 8, 9, NULL, 52, 71, 125, 5, 13, 45, 100, 45, 45, 45, 10, NULL),
    -- #329 Vibrava: eg2 NULL→Dragon(13)
    (329, 32900, 8, 9, 15, 26, NULL, NULL, 5, 13, 50, 70, 50, 50, 50, 70, NULL),
    -- #330 Flygon: eg2 NULL→Dragon(13)
    (330, 33000, 8, 9, 15, 26, NULL, NULL, 5, 13, 80, 100, 80, 80, 80, 100, NULL);