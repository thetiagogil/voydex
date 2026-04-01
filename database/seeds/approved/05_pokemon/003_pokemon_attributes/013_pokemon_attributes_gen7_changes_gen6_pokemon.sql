-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 7
-- Scope: changes to Gen 6 Pokémon (#650-721)
-- Table: meta.pokemon_attributes
-- Rows: 1
--
-- Gen 7 (Sun/Moon) added Power Construct as ability2 for Zygarde's
-- default 50% Forme, enabling form changes to 10%/Complete Formes.
-- No stat changes for Gen 6 species in Gen 7.
--
-- New ability IDs referenced:
--   211=Power Construct (new Gen 7 ability, added to Zygarde)
--
-- Type IDs: Dragon(15) Ground(9)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #718 Zygarde (50% Forme): ab2 NULL→Power Construct(211)
    (718, 71800, 7, 15, 9, 188, 211, NULL, 15, NULL, 108, 100, 121, 81, 95, 95, NULL);