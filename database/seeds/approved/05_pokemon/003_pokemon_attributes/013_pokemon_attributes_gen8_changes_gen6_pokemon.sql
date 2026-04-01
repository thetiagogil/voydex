-- Source: Bulbapedia — List of Pokémon by base stats (Generation VIII), List of Pokémon by Egg Group
-- Generation: 8
-- Scope: changes to Gen 6 Pokémon (#650-721)
-- Table: meta.pokemon_attributes
-- Rows: 6
--
-- Gen 8 (Sword/Shield) nerfed Aegislash stats and added second egg groups
-- to several Gen 6 Pokémon:
--   1. Stat changes: Aegislash Shield Forme Def 150→140, SpD 150→140.
--   2. Egg group additions:
--      - Hawlucha: eg Human-Like(10) → Flying(6)+Human-Like(10)
--      - Bergmite/Avalugg: eg Monster(1) → Monster(1)+Mineral(11)
--      - Noibat/Noivern: eg Flying(6) → Flying(6)+Dragon(13)
--
-- Ability IDs referenced:
--   176=Stance Change (Aegislash)
--
-- Egg Group IDs: Monster(1) Flying(6) Human-Like(10) Mineral(11) Dragon(13)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #681 Aegislash (Shield Forme): Def 150→140, SpD 150→140
    (681, 68100, 8, 17, 14, 176, NULL, NULL, 11, NULL, 60, 50, 140, 50, 140, 60, NULL),
    -- #701 Hawlucha: eg Human-Like → Flying+Human-Like
    (701, 70100, 8, 7, 10, 7, 84, 104, 6, 10, 78, 92, 75, 74, 63, 118, NULL),
    -- #712 Bergmite: eg2 NULL→Mineral(11)
    (712, 71200, 8, 6, NULL, 20, 115, 5, 1, 11, 55, 69, 85, 32, 35, 28, NULL),
    -- #713 Avalugg: eg2 NULL→Mineral(11)
    (713, 71300, 8, 6, NULL, 20, 115, 5, 1, 11, 95, 117, 184, 44, 46, 28, NULL),
    -- #714 Noibat: eg2 NULL→Dragon(13)
    (714, 71400, 8, 10, 15, 119, 151, 140, 6, 13, 40, 30, 35, 45, 40, 55, NULL),
    -- #715 Noivern: eg2 NULL→Dragon(13)
    (715, 71500, 8, 10, 15, 119, 151, 140, 6, 13, 85, 70, 80, 97, 80, 123, NULL);