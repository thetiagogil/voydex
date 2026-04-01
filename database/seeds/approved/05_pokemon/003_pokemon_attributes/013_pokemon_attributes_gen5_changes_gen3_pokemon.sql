-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 5
-- Scope: changes to Gen 3 Pokémon (#252-386) — hidden ability introduction
-- Table: meta.pokemon_attributes
-- Rows: 109
--
-- Hidden abilities were introduced in Gen 5 (Black/White).
-- This file adds hidden_ability_id for Gen 3 Pokémon that gained a hidden ability.
-- All other attributes (types, regular abilities, stats, egg groups) are unchanged from Gen 4.
--
-- 26 Gen 3 Pokémon have NO hidden ability in Gen V and are excluded:
--   #266 Silcoon, #268 Cascoon, #287 Slakoth, #288 Vigoroth, #289 Slaking,
--   #292 Shedinja, #311 Plusle, #312 Minun, #329 Vibrava, #330 Flygon,
--   #337 Lunatone, #338 Solrock, #343 Baltoy, #344 Claydol, #351 Castform,
--   #352 Kecleon, #355 Duskull, #356 Dusclops, #358 Chimecho,
--   #380 Latias, #381 Latios, #382 Kyogre, #383 Groudon, #384 Rayquaza,
--   #385 Jirachi, #386 Deoxys
-- Plusle/Minun gained HAs (Lightning Rod / Volt Absorb) in Gen VI.
-- Kecleon gained Protean as HA in Gen VI.
-- Duskull/Dusclops gained Frisk as HA in Gen VI.
--
-- Hidden Ability IDs used in this file:
--   Gen 3: 3=Speed Boost 5=Sturdy 6=Damp 11=Water Absorb 12=Oblivious
--     13=Cloud Nine 14=Compound Eyes 20=Own Tempo 33=Swift Swim 44=Rain Dish
--     46=Pressure 50=Run Away 56=Cute Charm 58=Minus 75=Shell Armor
--   Gen 4: 79=Rivalry 82=Gluttony 83=Anger Point 84=Unburden 91=Adaptability
--     93=Hydration 95=Quick Feet 101=Technician 102=Leaf Guard 113=Scrappy
--     114=Storm Drain 115=Ice Body
--   Gen 5: 124=Pickpocket 125=Sheer Force 126=Contrary 127=Unnerve 130=Cursed Body
--     134=Heavy Metal 135=Light Metal 137=Toxic Boost 139=Harvest 140=Telepathy
--     141=Moody 142=Overcoat 147=Wonder Skin 151=Infiltrator 153=Moxie
--     154=Justified 155=Rattled 157=Sap Sipper 158=Prankster 159=Sand Force
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #252-254: Treecko line (+Unburden)
    (252, 25200, 5, 5, NULL, 65, NULL, 84, 1, 13, 40, 45, 35, 65, 55, 70, NULL),
    (253, 25300, 5, 5, NULL, 65, NULL, 84, 1, 13, 50, 65, 45, 85, 65, 95, NULL),
    (254, 25400, 5, 5, NULL, 65, NULL, 84, 1, 13, 70, 85, 65, 105, 85, 120, NULL),
    -- #255-257: Torchic line (+Speed Boost)
    (255, 25500, 5, 2, NULL, 66, NULL, 3, 7, NULL, 45, 60, 40, 70, 50, 45, NULL),
    (256, 25600, 5, 2, 7, 66, NULL, 3, 7, NULL, 60, 85, 60, 85, 60, 55, NULL),
    (257, 25700, 5, 2, 7, 66, NULL, 3, 7, NULL, 80, 120, 70, 110, 70, 80, NULL),
    -- #258-260: Mudkip line (+Damp)
    (258, 25800, 5, 3, NULL, 67, NULL, 6, 1, 2, 50, 70, 50, 50, 50, 40, NULL),
    (259, 25900, 5, 3, 9, 67, NULL, 6, 1, 2, 70, 85, 70, 60, 70, 50, NULL),
    (260, 26000, 5, 3, 9, 67, NULL, 6, 1, 2, 100, 110, 90, 85, 90, 60, NULL),
    -- #261-262: Poochyena line (+Rattled / +Moxie)
    (261, 26100, 5, 16, NULL, 50, 95, 155, 7, NULL, 35, 55, 35, 30, 30, 35, NULL),
    (262, 26200, 5, 16, NULL, 22, 95, 153, 7, NULL, 70, 90, 70, 60, 60, 70, NULL),
    -- #263-264: Zigzagoon line (+Quick Feet)
    (263, 26300, 5, 1, NULL, 53, 82, 95, 7, NULL, 38, 30, 41, 30, 41, 60, NULL),
    (264, 26400, 5, 1, NULL, 53, 82, 95, 7, NULL, 78, 70, 61, 50, 61, 100, NULL),
    -- #265: Wurmple (+Run Away)
    (265, 26500, 5, 12, NULL, 19, NULL, 50, 5, NULL, 45, 45, 35, 20, 30, 20, NULL),
    -- #267: Beautifly (+Rivalry)
    (267, 26700, 5, 12, 10, 68, NULL, 79, 5, NULL, 60, 70, 50, 90, 50, 65, NULL),
    -- #269: Dustox (+Compound Eyes)
    (269, 26900, 5, 12, 8, 19, NULL, 14, 5, NULL, 60, 50, 70, 50, 90, 65, NULL),
    -- #270-272: Lotad line (+Own Tempo)
    (270, 27000, 5, 3, 5, 33, 44, 20, 2, 9, 40, 30, 30, 40, 50, 30, NULL),
    (271, 27100, 5, 3, 5, 33, 44, 20, 2, 9, 60, 50, 50, 60, 70, 50, NULL),
    (272, 27200, 5, 3, 5, 33, 44, 20, 2, 9, 80, 70, 70, 90, 100, 70, NULL),
    -- #273-275: Seedot line (+Pickpocket)
    (273, 27300, 5, 5, NULL, 34, 48, 124, 7, 9, 40, 40, 50, 30, 30, 30, NULL),
    (274, 27400, 5, 5, 16, 34, 48, 124, 7, 9, 70, 70, 40, 60, 40, 60, NULL),
    (275, 27500, 5, 5, 16, 34, 48, 124, 7, 9, 90, 100, 60, 90, 60, 80, NULL),
    -- #276-277: Taillow line (+Scrappy)
    (276, 27600, 5, 1, 10, 62, NULL, 113, 6, NULL, 40, 55, 30, 30, 30, 85, NULL),
    (277, 27700, 5, 1, 10, 62, NULL, 113, 6, NULL, 60, 85, 60, 50, 50, 125, NULL),
    -- #278-279: Wingull line (+Rain Dish)
    (278, 27800, 5, 3, 10, 51, NULL, 44, 2, 6, 40, 30, 30, 55, 30, 85, NULL),
    (279, 27900, 5, 3, 10, 51, NULL, 44, 2, 6, 60, 50, 100, 85, 70, 65, NULL),
    -- #280-282: Ralts line (+Telepathy)
    (280, 28000, 5, 11, NULL, 28, 36, 140, 12, NULL, 28, 25, 25, 45, 35, 40, NULL),
    (281, 28100, 5, 11, NULL, 28, 36, 140, 12, NULL, 38, 35, 35, 65, 55, 50, NULL),
    (282, 28200, 5, 11, NULL, 28, 36, 140, 12, NULL, 68, 65, 65, 125, 115, 80, NULL),
    -- #283-284: Surskit line (+Rain Dish / +Unnerve)
    (283, 28300, 5, 12, 3, 33, NULL, 44, 2, 5, 40, 30, 32, 50, 52, 65, NULL),
    (284, 28400, 5, 12, 10, 22, NULL, 127, 2, 5, 70, 60, 62, 80, 82, 60, NULL),
    -- #285-286: Shroomish line (+Quick Feet / +Technician)
    (285, 28500, 5, 5, NULL, 27, 90, 95, 8, 9, 60, 40, 60, 40, 60, 35, NULL),
    (286, 28600, 5, 5, 7, 27, 90, 101, 8, 9, 60, 130, 80, 60, 60, 70, NULL),
    -- #290-291: Nincada / Ninjask (+Run Away / +Infiltrator)
    (290, 29000, 5, 12, 9, 14, NULL, 50, 5, NULL, 31, 45, 90, 30, 30, 40, NULL),
    (291, 29100, 5, 12, 10, 3, NULL, 151, 5, NULL, 61, 90, 45, 50, 50, 160, NULL),
    -- #293-295: Whismur line (+Rattled / +Scrappy / +Scrappy)
    (293, 29300, 5, 1, NULL, 43, NULL, 155, 1, 7, 64, 51, 23, 51, 23, 28, NULL),
    (294, 29400, 5, 1, NULL, 43, NULL, 113, 1, 7, 84, 71, 43, 71, 43, 48, NULL),
    (295, 29500, 5, 1, NULL, 43, NULL, 113, 1, 7, 104, 91, 63, 91, 63, 68, NULL),
    -- #296-297: Makuhita line (+Sheer Force)
    (296, 29600, 5, 7, NULL, 47, 62, 125, 10, NULL, 72, 60, 30, 20, 30, 25, NULL),
    (297, 29700, 5, 7, NULL, 47, 62, 125, 10, NULL, 144, 120, 60, 40, 60, 50, NULL),
    -- #298: Azurill (+Sap Sipper)
    (298, 29800, 5, 1, NULL, 47, 37, 157, 15, NULL, 50, 20, 40, 20, 40, 20, NULL),
    -- #299: Nosepass (+Sand Force)
    (299, 29900, 5, 13, NULL, 5, 42, 159, 11, NULL, 30, 45, 135, 45, 90, 30, NULL),
    -- #300-301: Skitty line (+Wonder Skin)
    (300, 30000, 5, 1, NULL, 56, 96, 147, 7, 8, 50, 45, 45, 35, 35, 50, NULL),
    (301, 30100, 5, 1, NULL, 56, 96, 147, 7, 8, 70, 65, 65, 55, 55, 70, NULL),
    -- #302: Sableye (+Prankster)
    (302, 30200, 5, 16, 14, 51, 100, 158, 10, NULL, 50, 75, 75, 65, 65, 50, NULL),
    -- #303: Mawile (+Sheer Force)
    (303, 30300, 5, 17, NULL, 52, 22, 125, 7, 8, 50, 85, 85, 55, 55, 50, NULL),
    -- #304-306: Aron line (+Heavy Metal)
    (304, 30400, 5, 17, 13, 5, 69, 134, 1, NULL, 50, 70, 100, 40, 40, 30, NULL),
    (305, 30500, 5, 17, 13, 5, 69, 134, 1, NULL, 60, 90, 140, 50, 50, 40, NULL),
    (306, 30600, 5, 17, 13, 5, 69, 134, 1, NULL, 70, 110, 180, 60, 60, 50, NULL),
    -- #307-308: Meditite line (+Telepathy)
    (307, 30700, 5, 7, 11, 74, NULL, 140, 10, NULL, 30, 40, 55, 40, 55, 60, NULL),
    (308, 30800, 5, 7, 11, 74, NULL, 140, 10, NULL, 60, 60, 75, 60, 75, 80, NULL),
    -- #309-310: Electrike line (+Minus)
    (309, 30900, 5, 4, NULL, 9, 31, 58, 7, NULL, 40, 45, 40, 65, 40, 65, NULL),
    (310, 31000, 5, 4, NULL, 9, 31, 58, 7, NULL, 70, 75, 60, 105, 60, 105, NULL),
    -- #313: Volbeat (+Prankster)
    (313, 31300, 5, 12, NULL, 35, 68, 158, 5, 10, 65, 73, 55, 47, 75, 85, NULL),
    -- #314: Illumise (+Prankster)
    (314, 31400, 5, 12, NULL, 12, 110, 158, 5, 10, 65, 47, 55, 73, 75, 85, NULL),
    -- #315: Roselia (+Leaf Guard)
    (315, 31500, 5, 5, 8, 30, 38, 102, 8, 9, 50, 60, 45, 100, 80, 65, NULL),
    -- #316-317: Gulpin line (+Gluttony)
    (316, 31600, 5, 8, NULL, 64, 60, 82, 12, NULL, 70, 43, 53, 43, 53, 40, NULL),
    (317, 31700, 5, 8, NULL, 64, 60, 82, 12, NULL, 100, 73, 83, 73, 83, 55, NULL),
    -- #318-319: Carvanha line (+Speed Boost)
    (318, 31800, 5, 3, 16, 24, NULL, 3, 3, NULL, 45, 90, 20, 65, 20, 65, NULL),
    (319, 31900, 5, 3, 16, 24, NULL, 3, 3, NULL, 70, 120, 40, 95, 40, 95, NULL),
    -- #320-321: Wailmer line (+Pressure)
    (320, 32000, 5, 3, NULL, 41, 12, 46, 7, 3, 130, 70, 35, 70, 35, 60, NULL),
    (321, 32100, 5, 3, NULL, 41, 12, 46, 7, 3, 170, 90, 45, 90, 45, 60, NULL),
    -- #322-323: Numel line (+Own Tempo / +Anger Point)
    (322, 32200, 5, 2, 9, 12, 86, 20, 7, NULL, 60, 60, 40, 65, 45, 35, NULL),
    (323, 32300, 5, 2, 9, 40, 116, 83, 7, NULL, 70, 100, 70, 105, 75, 40, NULL),
    -- #324: Torkoal (+Shell Armor)
    (324, 32400, 5, 2, NULL, 73, NULL, 75, 7, NULL, 70, 85, 140, 85, 70, 20, NULL),
    -- #325-326: Spoink line (+Gluttony)
    (325, 32500, 5, 11, NULL, 47, 20, 82, 7, NULL, 60, 25, 35, 70, 80, 60, NULL),
    (326, 32600, 5, 11, NULL, 47, 20, 82, 7, NULL, 80, 45, 65, 90, 110, 80, NULL),
    -- #327: Spinda (+Contrary)
    (327, 32700, 5, 1, NULL, 20, 77, 126, 7, 10, 60, 60, 60, 60, 60, 60, NULL),
    -- #328: Trapinch (+Sheer Force)
    (328, 32800, 5, 9, NULL, 52, 71, 125, 5, NULL, 45, 100, 45, 45, 45, 10, NULL),
    -- #331-332: Cacnea line (+Water Absorb)
    (331, 33100, 5, 5, NULL, 8, NULL, 11, 9, 10, 50, 85, 40, 85, 40, 35, NULL),
    (332, 33200, 5, 5, 16, 8, NULL, 11, 9, 10, 70, 115, 60, 115, 60, 55, NULL),
    -- #333-334: Swablu / Altaria (+Cloud Nine)
    (333, 33300, 5, 1, 10, 30, NULL, 13, 6, 13, 45, 40, 60, 40, 75, 50, NULL),
    (334, 33400, 5, 15, 10, 30, NULL, 13, 6, 13, 75, 70, 90, 70, 105, 80, NULL),
    -- #335: Zangoose (+Toxic Boost)
    (335, 33500, 5, 1, NULL, 17, NULL, 137, 7, NULL, 73, 115, 60, 60, 60, 90, NULL),
    -- #336: Seviper (+Infiltrator)
    (336, 33600, 5, 8, NULL, 61, NULL, 151, 7, 13, 73, 100, 60, 100, 60, 65, NULL),
    -- #339-340: Barboach line (+Hydration)
    (339, 33900, 5, 3, 9, 12, 107, 93, 3, NULL, 50, 48, 43, 46, 41, 60, NULL),
    (340, 34000, 5, 3, 9, 12, 107, 93, 3, NULL, 110, 78, 73, 76, 71, 60, NULL),
    -- #341-342: Corphish line (+Adaptability)
    (341, 34100, 5, 3, NULL, 52, 75, 91, 2, 4, 43, 80, 65, 50, 35, 35, NULL),
    (342, 34200, 5, 3, 16, 52, 75, 91, 2, 4, 63, 120, 85, 90, 55, 55, NULL),
    -- #345-346: Lileep line (+Storm Drain)
    (345, 34500, 5, 13, 5, 21, NULL, 114, 4, NULL, 66, 41, 77, 61, 87, 23, NULL),
    (346, 34600, 5, 13, 5, 21, NULL, 114, 4, NULL, 86, 81, 97, 81, 107, 43, NULL),
    -- #347-348: Anorith line (+Swift Swim)
    (347, 34700, 5, 13, 12, 4, NULL, 33, 4, NULL, 45, 95, 50, 40, 50, 75, NULL),
    (348, 34800, 5, 13, 12, 4, NULL, 33, 4, NULL, 75, 125, 100, 70, 80, 45, NULL),
    -- #349: Feebas (+Adaptability)
    (349, 34900, 5, 3, NULL, 33, NULL, 91, 2, 13, 20, 15, 20, 10, 55, 80, NULL),
    -- #350: Milotic (+Cute Charm)
    (350, 35000, 5, 3, NULL, 63, NULL, 56, 2, 13, 95, 60, 79, 100, 125, 81, NULL),
    -- #353-354: Shuppet line (+Cursed Body)
    (353, 35300, 5, 14, NULL, 15, 119, 130, 12, NULL, 44, 75, 35, 63, 33, 45, NULL),
    (354, 35400, 5, 14, NULL, 15, 119, 130, 12, NULL, 64, 115, 65, 83, 63, 65, NULL),
    -- #357: Tropius (+Harvest)
    (357, 35700, 5, 5, 10, 34, 94, 139, 1, 9, 99, 68, 83, 72, 87, 51, NULL),
    -- #359: Absol (+Justified)
    (359, 35900, 5, 16, NULL, 46, 105, 154, 7, NULL, 65, 130, 60, 75, 60, 75, NULL),
    -- #360: Wynaut (+Telepathy)
    (360, 36000, 5, 11, NULL, 23, NULL, 140, 15, NULL, 95, 23, 48, 23, 48, 23, NULL),
    -- #361-362: Snorunt / Glalie (+Moody)
    (361, 36100, 5, 6, NULL, 39, 115, 141, 8, 11, 50, 50, 50, 50, 50, 50, NULL),
    (362, 36200, 5, 6, NULL, 39, 115, 141, 8, 11, 80, 80, 80, 80, 80, 80, NULL),
    -- #363-365: Spheal line (+Oblivious)
    (363, 36300, 5, 6, 3, 47, 115, 12, 2, 7, 70, 40, 50, 55, 50, 25, NULL),
    (364, 36400, 5, 6, 3, 47, 115, 12, 2, 7, 90, 60, 70, 75, 70, 45, NULL),
    (365, 36500, 5, 6, 3, 47, 115, 12, 2, 7, 110, 80, 90, 95, 90, 65, NULL),
    -- #366: Clamperl (+Rattled)
    (366, 36600, 5, 3, NULL, 75, NULL, 155, 2, NULL, 35, 64, 85, 74, 55, 32, NULL),
    -- #367: Huntail (+Water Veil)
    (367, 36700, 5, 3, NULL, 33, NULL, 41, 2, NULL, 55, 104, 105, 94, 75, 52, NULL),
    -- #368: Gorebyss (+Hydration)
    (368, 36800, 5, 3, NULL, 33, NULL, 93, 2, NULL, 55, 84, 105, 114, 75, 52, NULL),
    -- #369: Relicanth (+Sturdy)
    (369, 36900, 5, 3, 13, 33, 69, 5, 2, 3, 100, 90, 130, 45, 65, 55, NULL),
    -- #370: Luvdisc (+Hydration)
    (370, 37000, 5, 3, NULL, 33, NULL, 93, 3, NULL, 43, 30, 55, 40, 65, 97, NULL),
    -- #371-373: Bagon line (+Sheer Force / +Overcoat / +Moxie)
    (371, 37100, 5, 15, NULL, 69, NULL, 125, 13, NULL, 45, 75, 60, 40, 30, 50, NULL),
    (372, 37200, 5, 15, NULL, 69, NULL, 142, 13, NULL, 65, 95, 100, 60, 50, 50, NULL),
    (373, 37300, 5, 15, 10, 22, NULL, 153, 13, NULL, 95, 135, 80, 110, 80, 100, NULL),
    -- #374-376: Beldum line (+Light Metal)
    (374, 37400, 5, 17, 11, 29, NULL, 135, 11, NULL, 40, 55, 80, 35, 60, 30, NULL),
    (375, 37500, 5, 17, 11, 29, NULL, 135, 11, NULL, 60, 75, 100, 55, 80, 50, NULL),
    (376, 37600, 5, 17, 11, 29, NULL, 135, 11, NULL, 80, 135, 130, 95, 90, 70, NULL),
    -- #377: Regirock (+Sturdy)
    (377, 37700, 5, 13, NULL, 29, NULL, 5, 15, NULL, 80, 100, 200, 50, 100, 50, NULL),
    -- #378: Regice (+Ice Body)
    (378, 37800, 5, 6, NULL, 29, NULL, 115, 15, NULL, 80, 50, 100, 100, 200, 50, NULL),
    -- #379: Registeel (+Light Metal)
    (379, 37900, 5, 17, NULL, 29, NULL, 135, 15, NULL, 80, 75, 150, 75, 150, 50, NULL);