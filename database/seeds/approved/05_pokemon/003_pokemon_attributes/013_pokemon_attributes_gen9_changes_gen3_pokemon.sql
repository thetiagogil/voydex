-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 9
-- Scope: changes to Gen 3 Pokémon (#252-386)
-- Table: meta.pokemon_attributes
-- Rows: 1
--
-- Gen 9 (Scarlet/Violet) changed Shiftry's second ability:
--   1. Shiftry: ab2 Early Bird(48) → Wind Rider(274)
--
-- Ability IDs: Chlorophyll(34) Early Bird(48) Pickpocket(124) Wind Rider(274)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #275 Shiftry: ab2 Early Bird(48) → Wind Rider(274)
    (275, 27500, 9, 5, 16, 34, 274, 124, 7, 9, 90, 100, 60, 90, 60, 80, NULL);