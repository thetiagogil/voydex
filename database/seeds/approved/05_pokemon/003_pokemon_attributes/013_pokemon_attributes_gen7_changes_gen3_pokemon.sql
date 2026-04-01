-- Source: Bulbapedia — List of Pokémon by base stats (Generation VII), List of Pokémon by Ability
-- Generation: 7
-- Scope: changes to Gen 3 Pokémon (#252-386)
-- Table: meta.pokemon_attributes
-- Rows: 11
--
-- Gen 7 (Sun/Moon) stat adjustments and ability2 additions for Gen 3 species.
-- This file covers:
--   1. Stat increases: Swellow SpA +25, Pelipper SpA +10,
--      Masquerain SpA +20 & Spe +20, Delcatty Spe +25,
--      Volbeat Def +20 & SpD +10, Illumise Def +20 & SpD +10,
--      Lunatone HP +20, Solrock HP +20,
--      Chimecho HP +10 & Def +10 & SpD +10.
--   2. Ability2 additions: Wingull Hydration(93), Pelipper Drizzle(2),
--      Torkoal Drought(70).
--
-- Type IDs: Normal(1) Fire(2) Water(3) Psychic(11) Bug(12) Rock(13)
--   Flying(10)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #277 Swellow: SpA 50→75
    (277, 27700, 7, 1, 10, 62, NULL, 113, 6, NULL, 60, 85, 60, 75, 50, 125, NULL),
    -- #278 Wingull: ab2 NULL→Hydration(93)
    (278, 27800, 7, 3, 10, 51, 93, 44, 2, 6, 40, 30, 30, 55, 30, 85, NULL),
    -- #279 Pelipper: ab2 NULL→Drizzle(2), SpA 85→95
    (279, 27900, 7, 3, 10, 51, 2, 44, 2, 6, 60, 50, 100, 95, 70, 65, NULL),
    -- #284 Masquerain: SpA 80→100, Spe 60→80
    (284, 28400, 7, 12, 10, 22, NULL, 127, 2, 5, 70, 60, 62, 100, 82, 80, NULL),
    -- #301 Delcatty: Spe 65→90
    (301, 30100, 7, 1, NULL, 56, 96, 147, 7, 8, 70, 65, 65, 55, 55, 90, NULL),
    -- #313 Volbeat: Def 55→75, SpD 75→85
    (313, 31300, 7, 12, NULL, 35, 68, 158, 5, 10, 65, 73, 75, 47, 85, 85, NULL),
    -- #314 Illumise: Def 55→75, SpD 75→85
    (314, 31400, 7, 12, NULL, 12, 110, 158, 5, 10, 65, 47, 75, 73, 85, 85, NULL),
    -- #324 Torkoal: ab2 NULL→Drought(70)
    (324, 32400, 7, 2, NULL, 73, 70, 75, 7, NULL, 70, 85, 140, 85, 70, 20, NULL),
    -- #337 Lunatone: HP 70→90
    (337, 33700, 7, 13, 11, 26, NULL, NULL, 11, NULL, 90, 55, 65, 95, 85, 70, NULL),
    -- #338 Solrock: HP 70→90
    (338, 33800, 7, 13, 11, 26, NULL, NULL, 11, NULL, 90, 95, 85, 55, 65, 70, NULL),
    -- #358 Chimecho: HP 65→75, Def 70→80, SpD 80→90
    (358, 35800, 7, 11, NULL, 26, NULL, NULL, 12, NULL, 75, 50, 80, 95, 90, 65, NULL);