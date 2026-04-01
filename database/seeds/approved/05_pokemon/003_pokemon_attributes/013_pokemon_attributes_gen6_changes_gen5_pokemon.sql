-- Source: Bulbapedia — Lists of Pokémon by Ability, type changes
-- Generation: 6
-- Scope: changes to Gen 5 species in Gen 6 — 12 rows
-- Table: meta.pokemon_attributes
-- Rows: 12
--
-- Gen 6 changes for Gen 5 Pokémon:
--   Type changes: Cottonee/Whimsicott gained Fairy as type2 (Grass → Grass/Fairy)
--   New ability2: Gothita/Gothorita/Gothitelle gained Competitive (172)
--   New hidden abilities:
--     Venipede/Whirlipede/Scolipede: Speed Boost (3)
--     Ferrothorn: Anticipation (107)
--     Litwick/Lampent/Chandelure: Infiltrator (151) [replaced unreleased Shadow Tag]
--
-- All other columns carried forward from 013_pokemon_attributes_gen5.sql unchanged.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #543-545: Venipede line — gained HA Speed Boost (3)
    (543, 54300, 6, 12, 8, 38, 68, 3, 5, NULL, 30, 45, 59, 30, 39, 57, NULL),
    (544, 54400, 6, 12, 8, 38, 68, 3, 5, NULL, 40, 55, 99, 40, 79, 47, NULL),
    (545, 54500, 6, 12, 8, 38, 68, 3, 5, NULL, 60, 100, 89, 55, 69, 112, NULL),
    -- #546-547: Cottonee / Whimsicott — gained Fairy type2 (Grass → Grass/Fairy)
    (546, 54600, 6, 5, 18, 158, 151, 34, 9, 8, 40, 27, 60, 37, 50, 66, NULL),
    (547, 54700, 6, 5, 18, 158, 151, 34, 9, 8, 60, 67, 85, 77, 75, 116, NULL),
    -- #574-576: Gothita line — gained ability2 Competitive (172)
    (574, 57400, 6, 11, NULL, 119, 172, 23, 10, NULL, 45, 30, 50, 55, 65, 45, NULL),
    (575, 57500, 6, 11, NULL, 119, 172, 23, 10, NULL, 60, 45, 70, 75, 85, 55, NULL),
    (576, 57600, 6, 11, NULL, 119, 172, 23, 10, NULL, 70, 55, 95, 95, 110, 65, NULL),
    -- #598: Ferrothorn — gained HA Anticipation (107)
    (598, 59800, 6, 5, 17, 160, NULL, 107, 9, 11, 74, 94, 131, 54, 116, 20, NULL),
    -- #607-609: Litwick line — gained HA Infiltrator (151)
    (607, 60700, 6, 14, 2, 18, 49, 151, 12, NULL, 50, 30, 55, 65, 55, 20, NULL),
    (608, 60800, 6, 14, 2, 18, 49, 151, 12, NULL, 60, 40, 60, 95, 60, 55, NULL),
    (609, 60900, 6, 14, 2, 18, 49, 151, 12, NULL, 60, 55, 90, 145, 90, 80, NULL);