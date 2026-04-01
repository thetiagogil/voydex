-- Source: Bulbapedia — Lists of Pokémon by Ability, base stats (Gen II-V), Hoenn Pokédex
-- Generation: 3
-- Scope: new species (#252-386) — 135 rows
-- Table: meta.pokemon_attributes
-- Rows: 135
--
-- Gen 3 introduced abilities; this file is the initial snapshot for Gen 3 species.
-- Hidden abilities (Gen 5+) are NULL for all Pokémon.
-- Fairy type did not exist in Gen 3; Ralts/Kirlia/Gardevoir, Azurill, and Mawile
-- are listed with their original Gen 3 types (Fairy added in Gen 6 changes file).
-- Abilities marked "Gen IV+" on Bulbapedia are NULL here.
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Grass(5) Ice(6) Fighting(7)
--   Poison(8) Ground(9) Flying(10) Psychic(11) Bug(12) Rock(13) Ghost(14)
--   Dragon(15) Dark(16) Steel(17)
-- Egg Group IDs: Monster(1) Water1(2) Water2(3) Water3(4) Bug(5) Flying(6)
--   Field(7) Fairy(8) Grass(9) Human-Like(10) Mineral(11) Amorphous(12)
--   Dragon(13) Ditto(14) Undiscovered(15)
-- Ability IDs (Gen 3, 1-76): see 009_abilities_gen3.sql
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #252-254: Treecko line
    (252, 25200, 3, 5, NULL, 65, NULL, NULL, 1, 13, 40, 45, 35, 65, 55, 70, NULL),
    (253, 25300, 3, 5, NULL, 65, NULL, NULL, 1, 13, 50, 65, 45, 85, 65, 95, NULL),
    (254, 25400, 3, 5, NULL, 65, NULL, NULL, 1, 13, 70, 85, 65, 105, 85, 120, NULL),
    -- #255-257: Torchic line
    (255, 25500, 3, 2, NULL, 66, NULL, NULL, 7, NULL, 45, 60, 40, 70, 50, 45, NULL),
    (256, 25600, 3, 2, 7, 66, NULL, NULL, 7, NULL, 60, 85, 60, 85, 60, 55, NULL),
    (257, 25700, 3, 2, 7, 66, NULL, NULL, 7, NULL, 80, 120, 70, 110, 70, 80, NULL),
    -- #258-260: Mudkip line
    (258, 25800, 3, 3, NULL, 67, NULL, NULL, 1, 2, 50, 70, 50, 50, 50, 40, NULL),
    (259, 25900, 3, 3, 9, 67, NULL, NULL, 1, 2, 70, 85, 70, 60, 70, 50, NULL),
    (260, 26000, 3, 3, 9, 67, NULL, NULL, 1, 2, 100, 110, 90, 85, 90, 60, NULL),
    -- #261-262: Poochyena line (Quick Feet is Gen IV+)
    (261, 26100, 3, 16, NULL, 50, NULL, NULL, 7, NULL, 35, 55, 35, 30, 30, 35, NULL),
    (262, 26200, 3, 16, NULL, 22, NULL, NULL, 7, NULL, 70, 90, 70, 60, 60, 70, NULL),
    -- #263-264: Zigzagoon line (Gluttony is Gen IV+)
    (263, 26300, 3, 1, NULL, 53, NULL, NULL, 7, NULL, 38, 30, 41, 30, 41, 60, NULL),
    (264, 26400, 3, 1, NULL, 53, NULL, NULL, 7, NULL, 78, 70, 61, 50, 61, 100, NULL),
    -- #265-269: Wurmple branches
    (265, 26500, 3, 12, NULL, 19, NULL, NULL, 5, NULL, 45, 45, 35, 20, 30, 20, NULL),
    (266, 26600, 3, 12, NULL, 61, NULL, NULL, 5, NULL, 50, 35, 55, 25, 25, 15, NULL),
    (267, 26700, 3, 12, 10, 68, NULL, NULL, 5, NULL, 60, 70, 50, 90, 50, 65, NULL),
    (268, 26800, 3, 12, NULL, 61, NULL, NULL, 5, NULL, 50, 35, 55, 25, 25, 15, NULL),
    (269, 26900, 3, 12, 8, 19, NULL, NULL, 5, NULL, 60, 50, 70, 50, 90, 65, NULL),
    -- #270-272: Lotad line
    (270, 27000, 3, 3, 5, 33, 44, NULL, 2, 9, 40, 30, 30, 40, 50, 30, NULL),
    (271, 27100, 3, 3, 5, 33, 44, NULL, 2, 9, 60, 50, 50, 60, 70, 50, NULL),
    (272, 27200, 3, 3, 5, 33, 44, NULL, 2, 9, 80, 70, 70, 90, 100, 70, NULL),
    -- #273-275: Seedot line
    (273, 27300, 3, 5, NULL, 34, 48, NULL, 7, 9, 40, 40, 50, 30, 30, 30, NULL),
    (274, 27400, 3, 5, 16, 34, 48, NULL, 7, 9, 70, 70, 40, 60, 40, 60, NULL),
    (275, 27500, 3, 5, 16, 34, 48, NULL, 7, 9, 90, 100, 60, 90, 60, 80, NULL),
    -- #276-277: Taillow line
    (276, 27600, 3, 1, 10, 62, NULL, NULL, 6, NULL, 40, 55, 30, 30, 30, 85, NULL),
    (277, 27700, 3, 1, 10, 62, NULL, NULL, 6, NULL, 60, 85, 60, 50, 50, 125, NULL),
    -- #278-279: Wingull line (Hydration/Drizzle are Gen VII+)
    (278, 27800, 3, 3, 10, 51, NULL, NULL, 2, 6, 40, 30, 30, 55, 30, 85, NULL),
    (279, 27900, 3, 3, 10, 51, NULL, NULL, 2, 6, 60, 50, 100, 85, 70, 65, NULL),
    -- #280-282: Ralts line (Psychic only in Gen 3; Fairy added in Gen 6)
    (280, 28000, 3, 11, NULL, 28, 36, NULL, 12, NULL, 28, 25, 25, 45, 35, 40, NULL),
    (281, 28100, 3, 11, NULL, 28, 36, NULL, 12, NULL, 38, 35, 35, 65, 55, 50, NULL),
    (282, 28200, 3, 11, NULL, 28, 36, NULL, 12, NULL, 68, 65, 65, 125, 115, 80, NULL),
    -- #283-284: Surskit line
    (283, 28300, 3, 12, 3, 33, NULL, NULL, 2, 5, 40, 30, 32, 50, 52, 65, NULL),
    (284, 28400, 3, 12, 10, 22, NULL, NULL, 2, 5, 70, 60, 62, 80, 82, 60, NULL),
    -- #285-286: Shroomish line (Poison Heal is Gen IV+)
    (285, 28500, 3, 5, NULL, 27, NULL, NULL, 8, 9, 60, 40, 60, 40, 60, 35, NULL),
    (286, 28600, 3, 5, 7, 27, NULL, NULL, 8, 9, 60, 130, 80, 60, 60, 70, NULL),
    -- #287-289: Slakoth line
    (287, 28700, 3, 1, NULL, 54, NULL, NULL, 7, NULL, 60, 60, 60, 35, 35, 30, NULL),
    (288, 28800, 3, 1, NULL, 72, NULL, NULL, 7, NULL, 80, 80, 80, 55, 55, 90, NULL),
    (289, 28900, 3, 1, NULL, 54, NULL, NULL, 7, NULL, 150, 160, 100, 95, 65, 100, NULL),
    -- #290-292: Nincada line
    (290, 29000, 3, 12, 9, 14, NULL, NULL, 5, NULL, 31, 45, 90, 30, 30, 40, NULL),
    (291, 29100, 3, 12, 10, 3, NULL, NULL, 5, NULL, 61, 90, 45, 50, 50, 160, NULL),
    (292, 29200, 3, 12, 14, 25, NULL, NULL, 11, NULL, 1, 90, 45, 30, 30, 40, NULL),
    -- #293-295: Whismur line
    (293, 29300, 3, 1, NULL, 43, NULL, NULL, 1, 7, 64, 51, 23, 51, 23, 28, NULL),
    (294, 29400, 3, 1, NULL, 43, NULL, NULL, 1, 7, 84, 71, 43, 71, 43, 48, NULL),
    (295, 29500, 3, 1, NULL, 43, NULL, NULL, 1, 7, 104, 91, 63, 91, 63, 68, NULL),
    -- #296-297: Makuhita line
    (296, 29600, 3, 7, NULL, 47, 62, NULL, 10, NULL, 72, 60, 30, 20, 30, 25, NULL),
    (297, 29700, 3, 7, NULL, 47, 62, NULL, 10, NULL, 144, 120, 60, 40, 60, 50, NULL),
    -- #298: Azurill (baby; Normal only in Gen 3, gains Fairy in Gen 6)
    (298, 29800, 3, 1, NULL, 47, 37, NULL, 15, NULL, 50, 20, 40, 20, 40, 20, NULL),
    -- #299: Nosepass
    (299, 29900, 3, 13, NULL, 5, 42, NULL, 11, NULL, 30, 45, 135, 45, 90, 30, NULL),
    -- #300-301: Skitty line (Normalize is Gen IV+)
    (300, 30000, 3, 1, NULL, 56, NULL, NULL, 7, 8, 50, 45, 45, 35, 35, 50, NULL),
    (301, 30100, 3, 1, NULL, 56, NULL, NULL, 7, 8, 70, 65, 65, 55, 55, 70, NULL),
    -- #302: Sableye (Stall is Gen IV+)
    (302, 30200, 3, 16, 14, 51, NULL, NULL, 10, NULL, 50, 75, 75, 65, 65, 50, NULL),
    -- #303: Mawile (Steel only in Gen 3; gains Fairy in Gen 6)
    (303, 30300, 3, 17, NULL, 52, 22, NULL, 7, 8, 50, 85, 85, 55, 55, 50, NULL),
    -- #304-306: Aron line
    (304, 30400, 3, 17, 13, 5, 69, NULL, 1, NULL, 50, 70, 100, 40, 40, 30, NULL),
    (305, 30500, 3, 17, 13, 5, 69, NULL, 1, NULL, 60, 90, 140, 50, 50, 40, NULL),
    (306, 30600, 3, 17, 13, 5, 69, NULL, 1, NULL, 70, 110, 180, 60, 60, 50, NULL),
    -- #307-308: Meditite line
    (307, 30700, 3, 7, 11, 74, NULL, NULL, 10, NULL, 30, 40, 55, 40, 55, 60, NULL),
    (308, 30800, 3, 7, 11, 74, NULL, NULL, 10, NULL, 60, 60, 75, 60, 75, 80, NULL),
    -- #309-310: Electrike line
    (309, 30900, 3, 4, NULL, 9, 31, NULL, 7, NULL, 40, 45, 40, 65, 40, 65, NULL),
    (310, 31000, 3, 4, NULL, 9, 31, NULL, 7, NULL, 70, 75, 60, 105, 60, 105, NULL),
    -- #311: Plusle
    (311, 31100, 3, 4, NULL, 57, NULL, NULL, 8, NULL, 60, 50, 40, 85, 75, 95, NULL),
    -- #312: Minun
    (312, 31200, 3, 4, NULL, 58, NULL, NULL, 8, NULL, 60, 40, 50, 75, 85, 95, NULL),
    -- #313: Volbeat
    (313, 31300, 3, 12, NULL, 35, 68, NULL, 5, 10, 65, 73, 55, 47, 75, 85, NULL),
    -- #314: Illumise (Tinted Lens is Gen IV+)
    (314, 31400, 3, 12, NULL, 12, NULL, NULL, 5, 10, 65, 47, 55, 73, 75, 85, NULL),
    -- #315: Roselia
    (315, 31500, 3, 5, 8, 30, 38, NULL, 8, 9, 50, 60, 45, 100, 80, 65, NULL),
    -- #316-317: Gulpin line
    (316, 31600, 3, 8, NULL, 64, 60, NULL, 12, NULL, 70, 43, 53, 43, 53, 40, NULL),
    (317, 31700, 3, 8, NULL, 64, 60, NULL, 12, NULL, 100, 73, 83, 73, 83, 55, NULL),
    -- #318-319: Carvanha line
    (318, 31800, 3, 3, 16, 24, NULL, NULL, 3, NULL, 45, 90, 20, 65, 20, 65, NULL),
    (319, 31900, 3, 3, 16, 24, NULL, NULL, 3, NULL, 70, 120, 40, 95, 40, 95, NULL),
    -- #320-321: Wailmer line
    (320, 32000, 3, 3, NULL, 41, 12, NULL, 7, 3, 130, 70, 35, 70, 35, 60, NULL),
    (321, 32100, 3, 3, NULL, 41, 12, NULL, 7, 3, 170, 90, 45, 90, 45, 60, NULL),
    -- #322-323: Numel line (Simple/Solid Rock are Gen IV+)
    (322, 32200, 3, 2, 9, 12, NULL, NULL, 7, NULL, 60, 60, 40, 65, 45, 35, NULL),
    (323, 32300, 3, 2, 9, 40, NULL, NULL, 7, NULL, 70, 100, 70, 105, 75, 40, NULL),
    -- #324: Torkoal (Drought is Gen VII+)
    (324, 32400, 3, 2, NULL, 73, NULL, NULL, 7, NULL, 70, 85, 140, 85, 70, 20, NULL),
    -- #325-326: Spoink line
    (325, 32500, 3, 11, NULL, 47, 20, NULL, 7, NULL, 60, 25, 35, 70, 80, 60, NULL),
    (326, 32600, 3, 11, NULL, 47, 20, NULL, 7, NULL, 80, 45, 65, 90, 110, 80, NULL),
    -- #327: Spinda (Tangled Feet is Gen IV+)
    (327, 32700, 3, 1, NULL, 20, NULL, NULL, 7, 10, 60, 60, 60, 60, 60, 60, NULL),
    -- #328-330: Trapinch line
    (328, 32800, 3, 9, NULL, 52, 71, NULL, 5, NULL, 45, 100, 45, 45, 45, 10, NULL),
    (329, 32900, 3, 9, 15, 26, NULL, NULL, 5, NULL, 50, 70, 50, 50, 50, 70, NULL),
    (330, 33000, 3, 9, 15, 26, NULL, NULL, 5, NULL, 80, 100, 80, 80, 80, 100, NULL),
    -- #331-332: Cacnea line
    (331, 33100, 3, 5, NULL, 8, NULL, NULL, 9, 10, 50, 85, 40, 85, 40, 35, NULL),
    (332, 33200, 3, 5, 16, 8, NULL, NULL, 9, 10, 70, 115, 60, 115, 60, 55, NULL),
    -- #333-334: Swablu / Altaria
    (333, 33300, 3, 1, 10, 30, NULL, NULL, 6, 13, 45, 40, 60, 40, 75, 50, NULL),
    (334, 33400, 3, 15, 10, 30, NULL, NULL, 6, 13, 75, 70, 90, 70, 105, 80, NULL),
    -- #335: Zangoose
    (335, 33500, 3, 1, NULL, 17, NULL, NULL, 7, NULL, 73, 115, 60, 60, 60, 90, NULL),
    -- #336: Seviper
    (336, 33600, 3, 8, NULL, 61, NULL, NULL, 7, 13, 73, 100, 60, 100, 60, 65, NULL),
    -- #337: Lunatone
    (337, 33700, 3, 13, 11, 26, NULL, NULL, 11, NULL, 70, 55, 65, 95, 85, 70, NULL),
    -- #338: Solrock
    (338, 33800, 3, 13, 11, 26, NULL, NULL, 11, NULL, 70, 95, 85, 55, 65, 70, NULL),
    -- #339-340: Barboach line (Anticipation is Gen IV+)
    (339, 33900, 3, 3, 9, 12, NULL, NULL, 3, NULL, 50, 48, 43, 46, 41, 60, NULL),
    (340, 34000, 3, 3, 9, 12, NULL, NULL, 3, NULL, 110, 78, 73, 76, 71, 60, NULL),
    -- #341-342: Corphish line
    (341, 34100, 3, 3, NULL, 52, 75, NULL, 2, 4, 43, 80, 65, 50, 35, 35, NULL),
    (342, 34200, 3, 3, 16, 52, 75, NULL, 2, 4, 63, 120, 85, 90, 55, 55, NULL),
    -- #343-344: Baltoy line
    (343, 34300, 3, 9, 11, 26, NULL, NULL, 11, NULL, 40, 40, 55, 40, 70, 55, NULL),
    (344, 34400, 3, 9, 11, 26, NULL, NULL, 11, NULL, 60, 70, 105, 70, 120, 75, NULL),
    -- #345-346: Lileep line
    (345, 34500, 3, 13, 5, 21, NULL, NULL, 4, NULL, 66, 41, 77, 61, 87, 23, NULL),
    (346, 34600, 3, 13, 5, 21, NULL, NULL, 4, NULL, 86, 81, 97, 81, 107, 43, NULL),
    -- #347-348: Anorith line
    (347, 34700, 3, 13, 12, 4, NULL, NULL, 4, NULL, 45, 95, 50, 40, 50, 75, NULL),
    (348, 34800, 3, 13, 12, 4, NULL, NULL, 4, NULL, 75, 125, 100, 70, 80, 45, NULL),
    -- #349-350: Feebas / Milotic (Oblivious/Competitive are Gen VI+)
    (349, 34900, 3, 3, NULL, 33, NULL, NULL, 2, 13, 20, 15, 20, 10, 55, 80, NULL),
    (350, 35000, 3, 3, NULL, 63, NULL, NULL, 2, 13, 95, 60, 79, 100, 125, 81, NULL),
    -- #351: Castform
    (351, 35100, 3, 1, NULL, 59, NULL, NULL, 8, 12, 70, 70, 70, 70, 70, 70, NULL),
    -- #352: Kecleon
    (352, 35200, 3, 1, NULL, 16, NULL, NULL, 7, NULL, 60, 90, 70, 60, 120, 40, NULL),
    -- #353-354: Shuppet line (Frisk is Gen IV+)
    (353, 35300, 3, 14, NULL, 15, NULL, NULL, 12, NULL, 44, 75, 35, 63, 33, 45, NULL),
    (354, 35400, 3, 14, NULL, 15, NULL, NULL, 12, NULL, 64, 115, 65, 83, 63, 65, NULL),
    -- #355-356: Duskull line
    (355, 35500, 3, 14, NULL, 26, NULL, NULL, 12, NULL, 20, 40, 90, 30, 90, 25, NULL),
    (356, 35600, 3, 14, NULL, 46, NULL, NULL, 12, NULL, 40, 70, 130, 60, 130, 25, NULL),
    -- #357: Tropius (Solar Power is Gen IV+)
    (357, 35700, 3, 5, 10, 34, NULL, NULL, 1, 9, 99, 68, 83, 72, 87, 51, NULL),
    -- #358: Chimecho
    (358, 35800, 3, 11, NULL, 26, NULL, NULL, 12, NULL, 65, 50, 70, 95, 80, 65, NULL),
    -- #359: Absol (Super Luck is Gen IV+)
    (359, 35900, 3, 16, NULL, 46, NULL, NULL, 7, NULL, 65, 130, 60, 75, 60, 75, NULL),
    -- #360: Wynaut (baby)
    (360, 36000, 3, 11, NULL, 23, NULL, NULL, 15, NULL, 95, 23, 48, 23, 48, 23, NULL),
    -- #361-362: Snorunt / Glalie (Ice Body is Gen IV+)
    (361, 36100, 3, 6, NULL, 39, NULL, NULL, 8, 11, 50, 50, 50, 50, 50, 50, NULL),
    (362, 36200, 3, 6, NULL, 39, NULL, NULL, 8, 11, 80, 80, 80, 80, 80, 80, NULL),
    -- #363-365: Spheal line (Ice Body is Gen IV+)
    (363, 36300, 3, 6, 3, 47, NULL, NULL, 2, 7, 70, 40, 50, 55, 50, 25, NULL),
    (364, 36400, 3, 6, 3, 47, NULL, NULL, 2, 7, 90, 60, 70, 75, 70, 45, NULL),
    (365, 36500, 3, 6, 3, 47, NULL, NULL, 2, 7, 110, 80, 90, 95, 90, 65, NULL),
    -- #366: Clamperl
    (366, 36600, 3, 3, NULL, 75, NULL, NULL, 2, NULL, 35, 64, 85, 74, 55, 32, NULL),
    -- #367: Huntail
    (367, 36700, 3, 3, NULL, 33, NULL, NULL, 2, NULL, 55, 104, 105, 94, 75, 52, NULL),
    -- #368: Gorebyss
    (368, 36800, 3, 3, NULL, 33, NULL, NULL, 2, NULL, 55, 84, 105, 114, 75, 52, NULL),
    -- #369: Relicanth
    (369, 36900, 3, 3, 13, 33, 69, NULL, 2, 3, 100, 90, 130, 45, 65, 55, NULL),
    -- #370: Luvdisc
    (370, 37000, 3, 3, NULL, 33, NULL, NULL, 3, NULL, 43, 30, 55, 40, 65, 97, NULL),
    -- #371-373: Bagon line
    (371, 37100, 3, 15, NULL, 69, NULL, NULL, 13, NULL, 45, 75, 60, 40, 30, 50, NULL),
    (372, 37200, 3, 15, NULL, 69, NULL, NULL, 13, NULL, 65, 95, 100, 60, 50, 50, NULL),
    (373, 37300, 3, 15, 10, 22, NULL, NULL, 13, NULL, 95, 135, 80, 110, 80, 100, NULL),
    -- #374-376: Beldum line
    (374, 37400, 3, 17, 11, 29, NULL, NULL, 11, NULL, 40, 55, 80, 35, 60, 30, NULL),
    (375, 37500, 3, 17, 11, 29, NULL, NULL, 11, NULL, 60, 75, 100, 55, 80, 50, NULL),
    (376, 37600, 3, 17, 11, 29, NULL, NULL, 11, NULL, 80, 135, 130, 95, 90, 70, NULL),
    -- #377: Regirock
    (377, 37700, 3, 13, NULL, 29, NULL, NULL, 15, NULL, 80, 100, 200, 50, 100, 50, NULL),
    -- #378: Regice
    (378, 37800, 3, 6, NULL, 29, NULL, NULL, 15, NULL, 80, 50, 100, 100, 200, 50, NULL),
    -- #379: Registeel
    (379, 37900, 3, 17, NULL, 29, NULL, NULL, 15, NULL, 80, 75, 150, 75, 150, 50, NULL),
    -- #380: Latias
    (380, 38000, 3, 15, 11, 26, NULL, NULL, 15, NULL, 80, 80, 90, 110, 130, 110, NULL),
    -- #381: Latios
    (381, 38100, 3, 15, 11, 26, NULL, NULL, 15, NULL, 80, 90, 80, 130, 110, 110, NULL),
    -- #382: Kyogre
    (382, 38200, 3, 3, NULL, 2, NULL, NULL, 15, NULL, 100, 100, 90, 150, 140, 90, NULL),
    -- #383: Groudon
    (383, 38300, 3, 9, NULL, 70, NULL, NULL, 15, NULL, 100, 150, 140, 100, 90, 90, NULL),
    -- #384: Rayquaza
    (384, 38400, 3, 15, 10, 76, NULL, NULL, 15, NULL, 105, 150, 90, 150, 90, 95, NULL),
    -- #385: Jirachi
    (385, 38500, 3, 17, 11, 32, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL),
    -- #386: Deoxys (Normal Forme, default form only)
    (386, 38600, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 150, 50, 150, 50, 150, NULL);