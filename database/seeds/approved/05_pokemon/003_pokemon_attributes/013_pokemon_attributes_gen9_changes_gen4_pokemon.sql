-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 9
-- Scope: changes to Gen 4 Pokémon (#387-493)
-- Table: meta.pokemon_attributes
-- Rows: 4
--
-- Gen 9 (Scarlet/Violet) ability changes for Gen 4 Pokémon:
--   1. Piplup/Prinplup/Empoleon: HA Defiant(128) → Competitive(172)
--   2. Gallade: ab2 NULL → Sharpness(292)
--
-- Ability IDs: Steadfast(80) Torrent(67) Defiant(128) Justified(154) Competitive(172) Sharpness(292)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #393 Piplup: HA Defiant(128) → Competitive(172)
    (393, 39300, 9, 3, NULL, 67, NULL, 172, 2, 7, 53, 51, 53, 61, 56, 40, NULL),
    -- #394 Prinplup: HA Defiant(128) → Competitive(172)
    (394, 39400, 9, 3, NULL, 67, NULL, 172, 2, 7, 64, 66, 68, 81, 76, 50, NULL),
    -- #395 Empoleon: HA Defiant(128) → Competitive(172)
    (395, 39500, 9, 3, 17, 67, NULL, 172, 2, 7, 84, 86, 88, 111, 101, 60, NULL),
    -- #475 Gallade: ab2 NULL → Sharpness(292)
    (475, 47500, 9, 11, 7, 80, 292, 154, 10, 12, 68, 125, 65, 65, 115, 80, NULL);