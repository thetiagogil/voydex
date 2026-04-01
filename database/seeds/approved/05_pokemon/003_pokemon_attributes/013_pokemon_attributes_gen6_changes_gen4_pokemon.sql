-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 6
-- Scope: changes to Gen 4 Pokémon (#387-493)
-- Table: meta.pokemon_attributes
-- Rows: 4
--
-- Gen 6 (X/Y) changes to Gen 4 Pokémon:
--   1. Fairy type additions: Togekiss type1 Normal→Fairy,
--      Mime Jr. gained Fairy as type2.
--   2. HA additions (from NULL): Starly→Reckless(120),
--      Dusknoir→Frisk(119).
--
-- Note: Staravia/Staraptor already had Reckless as HA from Gen V.
-- Only Starly was missing it and gained it in Gen VI.
--
-- Type IDs: 10=Flying 11=Psychic 14=Ghost 18=Fairy
-- Ability IDs: 119=Frisk 120=Reckless
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #396 Starly: HA NULL→Reckless(120)
    (396, 39600, 6, 1, 10, 51, NULL, 120, 6, NULL, 40, 55, 30, 30, 30, 60, NULL),
    -- #439 Mime Jr.: type2 NULL→Fairy
    (439, 43900, 6, 11, 18, 43, 111, 101, 15, NULL, 20, 25, 45, 70, 90, 60, NULL),
    -- #468 Togekiss: type1 Normal→Fairy (type2 stays Flying)
    (468, 46800, 6, 18, 10, 55, 32, 105, 6, 8, 85, 50, 95, 120, 115, 80, NULL),
    -- #477 Dusknoir: HA NULL→Frisk(119)
    (477, 47700, 6, 14, NULL, 46, NULL, 119, 12, NULL, 45, 100, 135, 65, 135, 45, NULL);