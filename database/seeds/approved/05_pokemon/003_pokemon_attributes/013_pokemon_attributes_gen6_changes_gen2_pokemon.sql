-- Source: Bulbapedia — List of Pokémon by base stats (Generation VI), List of Pokémon by Ability
-- Generation: 6
-- Scope: changes to Gen 2 Pokémon (#152-251)
-- Table: meta.pokemon_attributes
-- Rows: 11
--
-- Gen 6 (X/Y) changes to Gen 2 Pokémon:
--   1. Fairy type additions: Cleffa, Togepi, Togetic became Fairy or Fairy/Flying;
--      Igglybuff gained Fairy as type2; Marill, Azumarill gained Fairy as type2;
--      Snubbull, Granbull became pure Fairy.
--   2. Stat increases: Ampharos Def +10, Bellossom Def +10,
--      Azumarill SpA +10, Jumpluff SpD +10.
--   3. Ability2 addition: Igglybuff gained Competitive (172).
--
-- Type IDs: 1=Normal 3=Water 4=Electric 5=Grass 10=Flying 18=Fairy
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #173 Cleffa: type Normal→Fairy
    (173, 17300, 6, 18, NULL, 56, 98, 132, 15, NULL, 50, 25, 28, 45, 55, 15, NULL),
    -- #174 Igglybuff: type2 NULL→Fairy, ability2 NULL→Competitive(172)
    (174, 17400, 6, 1, 18, 56, 172, 132, 15, NULL, 90, 30, 15, 40, 20, 15, NULL),
    -- #175 Togepi: type Normal→Fairy
    (175, 17500, 6, 18, NULL, 55, 32, 105, 15, NULL, 35, 20, 65, 40, 65, 20, NULL),
    -- #176 Togetic: type1 Normal→Fairy (type2 stays Flying)
    (176, 17600, 6, 18, 10, 55, 32, 105, 6, 8, 55, 40, 85, 80, 105, 40, NULL),
    -- #181 Ampharos: Def 75→85
    (181, 18100, 6, 4, NULL, 9, NULL, 57, 1, 7, 90, 75, 85, 115, 90, 55, NULL),
    -- #182 Bellossom: Def 85→95
    (182, 18200, 6, 5, NULL, 34, NULL, 131, 9, NULL, 75, 80, 95, 90, 100, 50, NULL),
    -- #183 Marill: type2 NULL→Fairy
    (183, 18300, 6, 3, 18, 47, 37, 157, 2, 8, 70, 20, 50, 20, 50, 40, NULL),
    -- #184 Azumarill: type2 NULL→Fairy, SpA 50→60
    (184, 18400, 6, 3, 18, 47, 37, 157, 2, 8, 100, 50, 80, 60, 80, 50, NULL),
    -- #189 Jumpluff: SpD 85→95
    (189, 18900, 6, 5, 10, 34, 102, 151, 8, 9, 75, 55, 70, 55, 95, 110, NULL),
    -- #209 Snubbull: type Normal→Fairy
    (209, 20900, 6, 18, NULL, 22, 50, 155, 7, 8, 60, 80, 50, 40, 40, 30, NULL),
    -- #210 Granbull: type Normal→Fairy
    (210, 21000, 6, 18, NULL, 22, 95, 155, 7, 8, 90, 120, 75, 60, 60, 45, NULL);