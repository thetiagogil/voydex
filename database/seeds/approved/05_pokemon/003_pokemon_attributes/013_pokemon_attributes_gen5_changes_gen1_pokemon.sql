-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 5
-- Scope: changes to Gen 1 Pokémon (#001-151) — hidden ability introduction
-- Table: meta.pokemon_attributes
-- Rows: 143
--
-- Hidden abilities were introduced in Gen 5 (Black/White).
-- This file adds hidden_ability_id for Gen 1 Pokémon that gained a hidden ability.
-- All other attributes (types, regular abilities, stats, egg groups) are unchanged from Gen 4.
--
-- 8 Gen 1 Pokémon have NO hidden ability and are excluded:
--   #011 Metapod, #014 Kakuna, #092 Gastly, #093 Haunter, #094 Gengar,
--   #109 Koffing, #110 Weezing, #151 Mew
-- Koffing/Weezing received abilities in Gen 8 (Neutralizing Gas / Stench).
-- Gengar's ability1 changed from Levitate to Cursed Body in Gen 7.
--
-- Note: Zapdos (#145) had Lightning Rod as its hidden ability in Gen V.
-- It was changed to Static in Gen VI (tracked in gen6_changes).
--
-- Hidden Ability IDs used in this file:
--   Gen 3 (1-76): 1=Stench 4=Battle Armor 6=Damp 8=Sand Veil 13=Cloud Nine
--     27=Effect Spore 31=Lightning Rod 33=Swift Swim 34=Chlorophyll 39=Inner Focus
--     44=Rain Dish 49=Flame Body 50=Run Away 55=Hustle 62=Guts 63=Marvel Scale
--     70=Drought 72=Vital Spirit
--   Gen 4 (77-123): 77=Tangled Feet 80=Steadfast 81=Snow Cloak 82=Gluttony
--     84=Unburden 87=Dry Skin 93=Hydration 94=Solar Power 95=Quick Feet
--     97=Sniper 98=Magic Guard 101=Technician 106=Aftermath 107=Anticipation
--     109=Unaware 110=Tinted Lens 115=Ice Body 119=Frisk 120=Reckless
--   Gen 5 (124-164): 125=Sheer Force 127=Unnerve 128=Defiant 131=Healer
--     132=Friend Guard 133=Weak Armor 136=Multiscale 139=Harvest 142=Overcoat
--     143=Poison Touch 144=Regenerator 145=Big Pecks 146=Sand Rush 147=Wonder Skin
--     148=Analytic 150=Imposter 151=Infiltrator 153=Moxie 154=Justified
--     155=Rattled 159=Sand Force
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #001-003: Bulbasaur line (+Chlorophyll)
    (1, 100, 5, 5, 8, 65, NULL, 34, 1, 9, 45, 49, 49, 65, 65, 45, NULL),
    (2, 200, 5, 5, 8, 65, NULL, 34, 1, 9, 60, 62, 63, 80, 80, 60, NULL),
    (3, 300, 5, 5, 8, 65, NULL, 34, 1, 9, 80, 82, 83, 100, 100, 80, NULL),
    -- #004-006: Charmander line (+Solar Power)
    (4, 400, 5, 2, NULL, 66, NULL, 94, 1, 13, 39, 52, 43, 60, 50, 65, NULL),
    (5, 500, 5, 2, NULL, 66, NULL, 94, 1, 13, 58, 64, 58, 80, 65, 80, NULL),
    (6, 600, 5, 2, 10, 66, NULL, 94, 1, 13, 78, 84, 78, 109, 85, 100, NULL),
    -- #007-009: Squirtle line (+Rain Dish)
    (7, 700, 5, 3, NULL, 67, NULL, 44, 1, 2, 44, 48, 65, 50, 64, 43, NULL),
    (8, 800, 5, 3, NULL, 67, NULL, 44, 1, 2, 59, 63, 80, 65, 80, 58, NULL),
    (9, 900, 5, 3, NULL, 67, NULL, 44, 1, 2, 79, 83, 100, 85, 105, 78, NULL),
    -- #010: Caterpie (+Run Away)
    (10, 1000, 5, 12, NULL, 19, NULL, 50, 5, NULL, 45, 30, 35, 20, 20, 45, NULL),
    -- #012: Butterfree (+Tinted Lens)
    (12, 1200, 5, 12, 10, 14, NULL, 110, 5, NULL, 60, 45, 50, 80, 80, 70, NULL),
    -- #013: Weedle (+Run Away)
    (13, 1300, 5, 12, 8, 19, NULL, 50, 5, NULL, 40, 35, 30, 20, 20, 50, NULL),
    -- #015: Beedrill (+Sniper)
    (15, 1500, 5, 12, 8, 68, NULL, 97, 5, NULL, 65, 80, 40, 45, 80, 75, NULL),
    -- #016-018: Pidgey line (+Big Pecks)
    (16, 1600, 5, 1, 10, 51, 77, 145, 6, NULL, 40, 45, 40, 35, 35, 56, NULL),
    (17, 1700, 5, 1, 10, 51, 77, 145, 6, NULL, 63, 60, 55, 50, 50, 71, NULL),
    (18, 1800, 5, 1, 10, 51, 77, 145, 6, NULL, 83, 80, 75, 70, 70, 91, NULL),
    -- #019-020: Rattata line (+Hustle)
    (19, 1900, 5, 1, NULL, 50, 62, 55, 7, NULL, 30, 56, 35, 25, 35, 72, NULL),
    (20, 2000, 5, 1, NULL, 50, 62, 55, 7, NULL, 55, 81, 60, 50, 70, 97, NULL),
    -- #021-022: Spearow line (+Sniper)
    (21, 2100, 5, 1, 10, 51, NULL, 97, 6, NULL, 40, 60, 30, 31, 31, 70, NULL),
    (22, 2200, 5, 1, 10, 51, NULL, 97, 6, NULL, 65, 90, 65, 61, 61, 100, NULL),
    -- #023-024: Ekans line (+Unnerve)
    (23, 2300, 5, 8, NULL, 22, 61, 127, 7, 13, 35, 60, 44, 40, 54, 55, NULL),
    (24, 2400, 5, 8, NULL, 22, 61, 127, 7, 13, 60, 85, 69, 65, 79, 80, NULL),
    -- #025-026: Pikachu line (+Lightning Rod)
    (25, 2500, 5, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 30, 50, 40, 90, NULL),
    (26, 2600, 5, 4, NULL, 9, NULL, 31, 7, 8, 60, 90, 55, 90, 80, 100, NULL),
    -- #027-028: Sandshrew line (+Sand Rush)
    (27, 2700, 5, 9, NULL, 8, NULL, 146, 7, NULL, 50, 75, 85, 20, 30, 40, NULL),
    (28, 2800, 5, 9, NULL, 8, NULL, 146, 7, NULL, 75, 100, 110, 45, 55, 65, NULL),
    -- #029-031: Nidoran♀ line (+Hustle / +Sheer Force)
    (29, 2900, 5, 8, NULL, 38, 79, 55, 1, 7, 55, 47, 52, 40, 40, 41, NULL),
    (30, 3000, 5, 8, NULL, 38, 79, 55, 15, NULL, 70, 62, 67, 55, 55, 56, NULL),
    (31, 3100, 5, 8, 9, 38, 79, 125, 15, NULL, 90, 82, 87, 75, 85, 76, NULL),
    -- #032-034: Nidoran♂ line (+Hustle / +Sheer Force)
    (32, 3200, 5, 8, NULL, 38, 79, 55, 1, 7, 46, 57, 40, 40, 40, 50, NULL),
    (33, 3300, 5, 8, NULL, 38, 79, 55, 1, 7, 61, 72, 57, 55, 55, 65, NULL),
    (34, 3400, 5, 8, 9, 38, 79, 125, 1, 7, 81, 92, 77, 85, 75, 85, NULL),
    -- #035-036: Clefairy line (+Friend Guard / +Unaware)
    (35, 3500, 5, 1, NULL, 56, 98, 132, 8, NULL, 70, 45, 48, 60, 65, 35, NULL),
    (36, 3600, 5, 1, NULL, 56, 98, 109, 8, NULL, 95, 70, 73, 85, 90, 60, NULL),
    -- #037-038: Vulpix line (+Drought)
    (37, 3700, 5, 2, NULL, 18, NULL, 70, 7, NULL, 38, 41, 40, 50, 65, 65, NULL),
    (38, 3800, 5, 2, NULL, 18, NULL, 70, 7, NULL, 73, 76, 75, 81, 100, 100, NULL),
    -- #039-040: Jigglypuff line (+Friend Guard / +Frisk)
    (39, 3900, 5, 1, NULL, 56, NULL, 132, 8, NULL, 115, 45, 20, 45, 25, 20, NULL),
    (40, 4000, 5, 1, NULL, 56, NULL, 119, 8, NULL, 140, 70, 45, 75, 50, 45, NULL),
    -- #041-042: Zubat line (+Infiltrator)
    (41, 4100, 5, 8, 10, 39, NULL, 151, 6, NULL, 40, 45, 35, 30, 40, 55, NULL),
    (42, 4200, 5, 8, 10, 39, NULL, 151, 6, NULL, 75, 80, 70, 65, 75, 90, NULL),
    -- #043-045: Oddish line (+Run Away / +Stench / +Effect Spore)
    (43, 4300, 5, 5, 8, 34, NULL, 50, 9, NULL, 45, 50, 55, 75, 65, 30, NULL),
    (44, 4400, 5, 5, 8, 34, NULL, 1, 9, NULL, 60, 65, 70, 85, 75, 40, NULL),
    (45, 4500, 5, 5, 8, 34, NULL, 27, 9, NULL, 75, 80, 85, 100, 90, 50, NULL),
    -- #046-047: Paras line (+Damp)
    (46, 4600, 5, 12, 5, 27, 87, 6, 5, 9, 35, 70, 55, 45, 55, 25, NULL),
    (47, 4700, 5, 12, 5, 27, 87, 6, 5, 9, 60, 95, 80, 60, 80, 30, NULL),
    -- #048-049: Venonat line (+Run Away / +Wonder Skin)
    (48, 4800, 5, 12, 8, 14, 110, 50, 5, NULL, 60, 55, 50, 40, 55, 45, NULL),
    (49, 4900, 5, 12, 8, 19, 110, 147, 5, NULL, 70, 65, 60, 90, 75, 90, NULL),
    -- #050-051: Diglett line (+Sand Force)
    (50, 5000, 5, 9, NULL, 8, 71, 159, 7, NULL, 10, 55, 25, 35, 45, 95, NULL),
    (51, 5100, 5, 9, NULL, 8, 71, 159, 7, NULL, 35, 80, 50, 50, 70, 120, NULL),
    -- #052-053: Meowth line (+Unnerve)
    (52, 5200, 5, 1, NULL, 53, 101, 127, 7, NULL, 40, 45, 35, 40, 40, 90, NULL),
    (53, 5300, 5, 1, NULL, 7, 101, 127, 7, NULL, 65, 70, 60, 65, 65, 115, NULL),
    -- #054-055: Psyduck line (+Swift Swim)
    (54, 5400, 5, 3, NULL, 6, 13, 33, 2, 7, 50, 52, 48, 65, 50, 55, NULL),
    (55, 5500, 5, 3, NULL, 6, 13, 33, 2, 7, 80, 82, 78, 95, 80, 85, NULL),
    -- #056-057: Mankey line (+Defiant)
    (56, 5600, 5, 7, NULL, 72, 83, 128, 7, NULL, 40, 80, 35, 35, 45, 70, NULL),
    (57, 5700, 5, 7, NULL, 72, 83, 128, 7, NULL, 65, 105, 60, 60, 70, 95, NULL),
    -- #058-059: Growlithe line (+Justified)
    (58, 5800, 5, 2, NULL, 22, 18, 154, 7, NULL, 55, 70, 45, 70, 50, 60, NULL),
    (59, 5900, 5, 2, NULL, 22, 18, 154, 7, NULL, 90, 110, 80, 100, 80, 95, NULL),
    -- #060-062: Poliwag line (+Swift Swim)
    (60, 6000, 5, 3, NULL, 11, 6, 33, 2, NULL, 40, 50, 40, 40, 40, 90, NULL),
    (61, 6100, 5, 3, NULL, 11, 6, 33, 2, NULL, 65, 65, 65, 50, 50, 90, NULL),
    (62, 6200, 5, 3, 7, 11, 6, 33, 2, NULL, 90, 85, 95, 70, 90, 70, NULL),
    -- #063-065: Abra line (+Magic Guard)
    (63, 6300, 5, 11, NULL, 28, 39, 98, 10, NULL, 25, 20, 15, 105, 55, 90, NULL),
    (64, 6400, 5, 11, NULL, 28, 39, 98, 10, NULL, 40, 35, 30, 120, 70, 105, NULL),
    (65, 6500, 5, 11, NULL, 28, 39, 98, 10, NULL, 55, 50, 45, 135, 85, 120, NULL),
    -- #066-068: Machop line (+Steadfast)
    (66, 6600, 5, 7, NULL, 62, 99, 80, 10, NULL, 70, 80, 50, 35, 35, 35, NULL),
    (67, 6700, 5, 7, NULL, 62, 99, 80, 10, NULL, 80, 100, 70, 50, 60, 45, NULL),
    (68, 6800, 5, 7, NULL, 62, 99, 80, 10, NULL, 90, 130, 80, 65, 85, 55, NULL),
    -- #069-071: Bellsprout line (+Gluttony)
    (69, 6900, 5, 5, 8, 34, NULL, 82, 9, NULL, 50, 75, 35, 70, 30, 40, NULL),
    (70, 7000, 5, 5, 8, 34, NULL, 82, 9, NULL, 65, 90, 50, 85, 45, 55, NULL),
    (71, 7100, 5, 5, 8, 34, NULL, 82, 9, NULL, 80, 105, 65, 100, 60, 70, NULL),
    -- #072-073: Tentacool line (+Rain Dish)
    (72, 7200, 5, 3, 8, 29, 64, 44, 4, NULL, 40, 40, 35, 50, 100, 70, NULL),
    (73, 7300, 5, 3, 8, 29, 64, 44, 4, NULL, 80, 70, 65, 80, 120, 100, NULL),
    -- #074-076: Geodude line (+Sand Veil)
    (74, 7400, 5, 13, 9, 69, 5, 8, 11, NULL, 40, 80, 100, 30, 30, 20, NULL),
    (75, 7500, 5, 13, 9, 69, 5, 8, 11, NULL, 55, 95, 115, 45, 45, 35, NULL),
    (76, 7600, 5, 13, 9, 69, 5, 8, 11, NULL, 80, 110, 130, 55, 65, 45, NULL),
    -- #077-078: Ponyta line (+Flame Body)
    (77, 7700, 5, 2, NULL, 50, 18, 49, 7, NULL, 50, 85, 55, 65, 65, 90, NULL),
    (78, 7800, 5, 2, NULL, 50, 18, 49, 7, NULL, 65, 100, 70, 80, 80, 105, NULL),
    -- #079-080: Slowpoke line (+Regenerator)
    (79, 7900, 5, 3, 11, 12, 20, 144, 1, 2, 90, 65, 65, 40, 40, 15, NULL),
    (80, 8000, 5, 3, 11, 12, 20, 144, 1, 2, 95, 75, 110, 100, 80, 30, NULL),
    -- #081-082: Magnemite line (+Analytic)
    (81, 8100, 5, 4, 17, 42, 5, 148, 11, NULL, 25, 35, 70, 95, 55, 45, NULL),
    (82, 8200, 5, 4, 17, 42, 5, 148, 11, NULL, 50, 60, 95, 120, 70, 70, NULL),
    -- #083: Farfetch'd (+Defiant)
    (83, 8300, 5, 1, 10, 51, 39, 128, 6, 7, 52, 65, 55, 58, 62, 60, NULL),
    -- #084-085: Doduo line (+Tangled Feet)
    (84, 8400, 5, 1, 10, 50, 48, 77, 6, NULL, 35, 85, 45, 35, 35, 75, NULL),
    (85, 8500, 5, 1, 10, 50, 48, 77, 6, NULL, 60, 110, 70, 60, 60, 100, NULL),
    -- #086-087: Seel line (+Ice Body)
    (86, 8600, 5, 3, NULL, 47, 93, 115, 2, 7, 65, 45, 55, 45, 70, 45, NULL),
    (87, 8700, 5, 3, 6, 47, 93, 115, 2, 7, 90, 70, 80, 70, 95, 70, NULL),
    -- #088-089: Grimer line (+Poison Touch)
    (88, 8800, 5, 8, NULL, 1, 60, 143, 12, NULL, 80, 80, 50, 40, 50, 25, NULL),
    (89, 8900, 5, 8, NULL, 1, 60, 143, 12, NULL, 105, 105, 75, 65, 100, 50, NULL),
    -- #090-091: Shellder line (+Overcoat)
    (90, 9000, 5, 3, NULL, 75, 92, 142, 4, NULL, 30, 65, 100, 45, 25, 40, NULL),
    (91, 9100, 5, 3, 6, 75, 92, 142, 4, NULL, 50, 95, 180, 85, 45, 70, NULL),
    -- #095: Onix (+Weak Armor)
    (95, 9500, 5, 13, 9, 69, 5, 133, 11, NULL, 35, 45, 160, 30, 45, 70, NULL),
    -- #096-097: Drowzee line (+Inner Focus)
    (96, 9600, 5, 11, NULL, 15, 108, 39, 10, NULL, 60, 48, 45, 43, 90, 42, NULL),
    (97, 9700, 5, 11, NULL, 15, 108, 39, 10, NULL, 85, 73, 70, 73, 115, 67, NULL),
    -- #098-099: Krabby line (+Sheer Force)
    (98, 9800, 5, 3, NULL, 52, 75, 125, 4, NULL, 30, 105, 90, 25, 25, 50, NULL),
    (99, 9900, 5, 3, NULL, 52, 75, 125, 4, NULL, 55, 130, 115, 50, 50, 75, NULL),
    -- #100-101: Voltorb line (+Aftermath)
    (100, 10000, 5, 4, NULL, 43, 9, 106, 11, NULL, 40, 30, 50, 55, 55, 100, NULL),
    (101, 10100, 5, 4, NULL, 43, 9, 106, 11, NULL, 60, 50, 70, 80, 80, 140, NULL),
    -- #102-103: Exeggcute line (+Harvest)
    (102, 10200, 5, 5, 11, 34, NULL, 139, 9, NULL, 60, 40, 80, 60, 45, 40, NULL),
    (103, 10300, 5, 5, 11, 34, NULL, 139, 9, NULL, 95, 95, 85, 125, 65, 55, NULL),
    -- #104-105: Cubone line (+Battle Armor)
    (104, 10400, 5, 9, NULL, 69, 31, 4, 1, NULL, 50, 50, 95, 40, 50, 35, NULL),
    (105, 10500, 5, 9, NULL, 69, 31, 4, 1, NULL, 60, 80, 110, 50, 80, 45, NULL),
    -- #106: Hitmonlee (+Unburden)
    (106, 10600, 5, 7, NULL, 7, 120, 84, 10, NULL, 50, 120, 53, 35, 110, 87, NULL),
    -- #107: Hitmonchan (+Inner Focus)
    (107, 10700, 5, 7, NULL, 51, 89, 39, 10, NULL, 50, 105, 79, 35, 110, 76, NULL),
    -- #108: Lickitung (+Cloud Nine)
    (108, 10800, 5, 1, NULL, 20, 12, 13, 1, NULL, 90, 55, 75, 60, 75, 30, NULL),
    -- #111-112: Rhyhorn line (+Reckless)
    (111, 11100, 5, 9, 13, 31, 69, 120, 1, 7, 80, 85, 95, 30, 30, 25, NULL),
    (112, 11200, 5, 9, 13, 31, 69, 120, 1, 7, 105, 130, 120, 45, 45, 40, NULL),
    -- #113: Chansey (+Healer)
    (113, 11300, 5, 1, NULL, 30, 32, 131, 8, NULL, 250, 5, 5, 35, 105, 50, NULL),
    -- #114: Tangela (+Regenerator)
    (114, 11400, 5, 5, NULL, 34, 102, 144, 9, NULL, 65, 55, 115, 100, 40, 60, NULL),
    -- #115: Kangaskhan (+Inner Focus)
    (115, 11500, 5, 1, NULL, 48, 113, 39, 1, NULL, 105, 95, 80, 40, 80, 90, NULL),
    -- #116-117: Horsea line (+Damp)
    (116, 11600, 5, 3, NULL, 33, 97, 6, 2, 13, 30, 40, 70, 70, 25, 60, NULL),
    (117, 11700, 5, 3, NULL, 38, 97, 6, 2, 13, 55, 65, 95, 95, 45, 85, NULL),
    -- #118-119: Goldeen line (+Lightning Rod)
    (118, 11800, 5, 3, NULL, 33, 41, 31, 3, NULL, 45, 67, 60, 35, 50, 63, NULL),
    (119, 11900, 5, 3, NULL, 33, 41, 31, 3, NULL, 80, 92, 65, 65, 80, 68, NULL),
    -- #120-121: Staryu line (+Analytic)
    (120, 12000, 5, 3, NULL, 35, 30, 148, 4, NULL, 30, 45, 55, 70, 55, 85, NULL),
    (121, 12100, 5, 3, 11, 35, 30, 148, 4, NULL, 60, 75, 85, 100, 85, 115, NULL),
    -- #122: Mr. Mime (+Technician)
    (122, 12200, 5, 11, NULL, 43, 111, 101, 10, NULL, 40, 45, 65, 100, 120, 90, NULL),
    -- #123: Scyther (+Steadfast)
    (123, 12300, 5, 12, 10, 68, 101, 80, 5, NULL, 70, 110, 80, 55, 80, 105, NULL),
    -- #124: Jynx (+Dry Skin)
    (124, 12400, 5, 6, 11, 12, 108, 87, 10, NULL, 65, 50, 35, 115, 95, 95, NULL),
    -- #125: Electabuzz (+Vital Spirit)
    (125, 12500, 5, 4, NULL, 9, NULL, 72, 10, NULL, 65, 83, 57, 95, 85, 105, NULL),
    -- #126: Magmar (+Vital Spirit)
    (126, 12600, 5, 2, NULL, 49, NULL, 72, 10, NULL, 65, 95, 57, 100, 85, 93, NULL),
    -- #127: Pinsir (+Moxie)
    (127, 12700, 5, 12, NULL, 52, 104, 153, 5, NULL, 65, 125, 100, 55, 70, 85, NULL),
    -- #128: Tauros (+Sheer Force)
    (128, 12800, 5, 1, NULL, 22, 83, 125, 7, NULL, 75, 100, 95, 40, 70, 110, NULL),
    -- #129: Magikarp (+Rattled)
    (129, 12900, 5, 3, NULL, 33, NULL, 155, 3, 13, 20, 10, 55, 15, 20, 80, NULL),
    -- #130: Gyarados (+Moxie)
    (130, 13000, 5, 3, 10, 22, NULL, 153, 3, 13, 95, 125, 79, 60, 100, 81, NULL),
    -- #131: Lapras (+Hydration)
    (131, 13100, 5, 3, 6, 11, 75, 93, 1, 2, 130, 85, 80, 85, 95, 60, NULL),
    -- #132: Ditto (+Imposter)
    (132, 13200, 5, 1, NULL, 7, NULL, 150, 14, NULL, 48, 48, 48, 48, 48, 48, NULL),
    -- #133: Eevee (+Anticipation)
    (133, 13300, 5, 1, NULL, 50, 91, 107, 7, NULL, 55, 55, 50, 45, 65, 55, NULL),
    -- #134-136: Eeveelutions Gen 1 (+Hydration / +Quick Feet / +Guts)
    (134, 13400, 5, 3, NULL, 11, NULL, 93, 7, NULL, 130, 65, 60, 110, 95, 65, NULL),
    (135, 13500, 5, 4, NULL, 10, NULL, 95, 7, NULL, 65, 65, 60, 110, 95, 130, NULL),
    (136, 13600, 5, 2, NULL, 18, NULL, 62, 7, NULL, 65, 130, 60, 95, 110, 65, NULL),
    -- #137: Porygon (+Analytic)
    (137, 13700, 5, 1, NULL, 36, 88, 148, 11, NULL, 65, 60, 70, 85, 75, 40, NULL),
    -- #138-139: Omanyte line (+Weak Armor)
    (138, 13800, 5, 13, 3, 33, 75, 133, 2, 4, 35, 40, 100, 90, 55, 35, NULL),
    (139, 13900, 5, 13, 3, 33, 75, 133, 2, 4, 70, 60, 125, 115, 70, 55, NULL),
    -- #140-141: Kabuto line (+Weak Armor)
    (140, 14000, 5, 13, 3, 33, 4, 133, 2, 4, 30, 80, 90, 55, 45, 55, NULL),
    (141, 14100, 5, 13, 3, 33, 4, 133, 2, 4, 60, 115, 105, 65, 70, 80, NULL),
    -- #142: Aerodactyl (+Unnerve)
    (142, 14200, 5, 13, 10, 69, 46, 127, 6, NULL, 80, 105, 65, 60, 75, 130, NULL),
    -- #143: Snorlax (+Gluttony)
    (143, 14300, 5, 1, NULL, 17, 47, 82, 1, NULL, 160, 110, 65, 65, 110, 30, NULL),
    -- #144: Articuno (+Snow Cloak)
    (144, 14400, 5, 6, 10, 46, NULL, 81, 15, NULL, 90, 85, 100, 95, 125, 85, NULL),
    -- #145: Zapdos (+Lightning Rod — changed to Static in Gen VI)
    (145, 14500, 5, 4, 10, 46, NULL, 31, 15, NULL, 90, 90, 85, 125, 90, 100, NULL),
    -- #146: Moltres (+Flame Body)
    (146, 14600, 5, 2, 10, 46, NULL, 49, 15, NULL, 90, 100, 90, 125, 85, 90, NULL),
    -- #147-149: Dratini line (+Marvel Scale / +Marvel Scale / +Multiscale)
    (147, 14700, 5, 15, NULL, 61, NULL, 63, 2, 13, 41, 64, 45, 50, 50, 50, NULL),
    (148, 14800, 5, 15, NULL, 61, NULL, 63, 2, 13, 61, 84, 65, 70, 70, 70, NULL),
    (149, 14900, 5, 15, 10, 39, NULL, 136, 2, 13, 91, 134, 95, 100, 100, 80, NULL),
    -- #150: Mewtwo (+Unnerve)
    (150, 15000, 5, 11, NULL, 46, NULL, 127, 15, NULL, 106, 110, 90, 154, 90, 130, NULL);