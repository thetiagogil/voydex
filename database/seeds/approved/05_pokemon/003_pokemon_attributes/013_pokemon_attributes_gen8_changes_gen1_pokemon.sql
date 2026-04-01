-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 8
-- Scope: changes to Gen 1 Pokémon (#001-151)
-- Table: meta.pokemon_attributes
-- Rows: 2
--
-- Gen 8 (Sword/Shield) added new abilities to Koffing and Weezing.
-- These two species had no second ability or hidden ability prior to Gen 8.
--   1. Ability additions: Koffing/Weezing gained ab2=Neutralizing Gas(256)
--      and HA=Stench(1).
--
-- Ability IDs referenced:
--   26=Levitate, 256=Neutralizing Gas (new ab2), 1=Stench (new HA)
--
-- Type IDs: Poison(8)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #109 Koffing: ab2 NULL→Neutralizing Gas(256), HA NULL→Stench(1)
    (109, 10900, 8, 8, NULL, 26, 256, 1, 12, NULL, 40, 65, 95, 60, 45, 35, NULL),
    -- #110 Weezing: ab2 NULL→Neutralizing Gas(256), HA NULL→Stench(1)
    (110, 11000, 8, 8, NULL, 26, 256, 1, 12, NULL, 65, 90, 120, 85, 70, 60, NULL);