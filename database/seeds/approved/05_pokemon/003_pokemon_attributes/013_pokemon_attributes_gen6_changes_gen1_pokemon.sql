-- Source: Bulbapedia — List of Pokémon by base stats (Generation VI), List of Pokémon by Ability
-- Generation: 6
-- Scope: changes to Gen 1 Pokémon (#001-151)
-- Table: meta.pokemon_attributes
-- Rows: 18
--
-- Gen 6 (X/Y) introduced the Fairy type and made stat adjustments.
-- This file covers:
--   1. Fairy type additions: Clefairy/Clefable became pure Fairy,
--      Jigglypuff/Wigglytuff gained Fairy as type2, Mr. Mime gained Fairy as type2.
--   2. Stat increases: +10 to one or two stats for 14 species.
--   3. Ability2 additions: Jigglypuff/Wigglytuff gained Competitive (172).
--   4. HA change: Zapdos HA changed from Lightning Rod (31) to Static (9).
--
-- Ability IDs referenced:
--   172=Competitive (new Gen 6 ability, added to Jigglypuff/Wigglytuff)
--   9=Static (Zapdos HA replacement)
--
-- Type IDs: 1=Normal 4=Electric 5=Grass 7=Fighting 8=Poison 9=Ground
--   10=Flying 11=Psychic 12=Bug 13=Rock 17=Steel 18=Fairy
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #012 Butterfree: SpA 80→90
    (12, 1200, 6, 12, 10, 14, NULL, 110, 5, NULL, 60, 45, 50, 90, 80, 70, NULL),
    -- #015 Beedrill: Atk 80→90
    (15, 1500, 6, 12, 8, 68, NULL, 97, 5, NULL, 65, 90, 40, 45, 80, 75, NULL),
    -- #018 Pidgeot: Spe 91→101
    (18, 1800, 6, 1, 10, 51, 77, 145, 6, NULL, 83, 80, 75, 70, 70, 101, NULL),
    -- #025 Pikachu: Def 30→40, SpD 40→50
    (25, 2500, 6, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90, NULL),
    -- #026 Raichu: Spe 100→110
    (26, 2600, 6, 4, NULL, 9, NULL, 31, 7, 8, 60, 90, 55, 90, 80, 110, NULL),
    -- #031 Nidoqueen: Atk 82→92
    (31, 3100, 6, 8, 9, 38, 79, 125, 15, NULL, 90, 92, 87, 75, 85, 76, NULL),
    -- #034 Nidoking: Atk 92→102
    (34, 3400, 6, 8, 9, 38, 79, 125, 1, 7, 81, 102, 77, 85, 75, 85, NULL),
    -- #035 Clefairy: type Normal→Fairy
    (35, 3500, 6, 18, NULL, 56, 98, 132, 8, NULL, 70, 45, 48, 60, 65, 35, NULL),
    -- #036 Clefable: type Normal→Fairy, SpA 85→95
    (36, 3600, 6, 18, NULL, 56, 98, 109, 8, NULL, 95, 70, 73, 95, 90, 60, NULL),
    -- #039 Jigglypuff: type2 NULL→Fairy, ability2 NULL→Competitive(172)
    (39, 3900, 6, 1, 18, 56, 172, 132, 8, NULL, 115, 45, 20, 45, 25, 20, NULL),
    -- #040 Wigglytuff: type2 NULL→Fairy, ability2 NULL→Competitive(172), SpA 75→85
    (40, 4000, 6, 1, 18, 56, 172, 119, 8, NULL, 140, 70, 45, 85, 50, 45, NULL),
    -- #045 Vileplume: SpA 100→110
    (45, 4500, 6, 5, 8, 34, NULL, 27, 9, NULL, 75, 80, 85, 110, 90, 50, NULL),
    -- #062 Poliwrath: Atk 85→95
    (62, 6200, 6, 3, 7, 11, 6, 33, 2, NULL, 90, 95, 95, 70, 90, 70, NULL),
    -- #065 Alakazam: SpD 85→95
    (65, 6500, 6, 11, NULL, 28, 39, 98, 10, NULL, 55, 50, 45, 135, 95, 120, NULL),
    -- #071 Victreebel: SpD 60→70
    (71, 7100, 6, 5, 8, 34, NULL, 82, 9, NULL, 80, 105, 65, 100, 70, 70, NULL),
    -- #076 Golem: Atk 110→120
    (76, 7600, 6, 13, 9, 69, 5, 8, 11, NULL, 80, 120, 130, 55, 65, 45, NULL),
    -- #122 Mr. Mime: type2 NULL→Fairy
    (122, 12200, 6, 11, 18, 43, 111, 101, 10, NULL, 40, 45, 65, 100, 120, 90, NULL),
    -- #145 Zapdos: HA Lightning Rod(31)→Static(9)
    (145, 14500, 6, 4, 10, 46, NULL, 9, 15, NULL, 90, 90, 85, 125, 90, 100, NULL);