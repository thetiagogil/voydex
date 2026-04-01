-- Source: Bulbapedia — List of Pokémon by Egg Group
-- Generation: 8
-- Scope: changes to Gen 4 Pokémon (#387-493)
-- Table: meta.pokemon_attributes
-- Rows: 1
--
-- Gen 8 (Sword/Shield) added a second egg group to Gallade:
--   1. Gallade: eg Amorphous(12) → Human-Like(10)+Amorphous(12)
--
-- Egg Group IDs: Human-Like(10) Amorphous(12)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #475 Gallade: eg Amorphous → Human-Like+Amorphous
    (475, 47500, 8, 11, 7, 80, NULL, 154, 10, 12, 68, 125, 65, 65, 115, 80, NULL);