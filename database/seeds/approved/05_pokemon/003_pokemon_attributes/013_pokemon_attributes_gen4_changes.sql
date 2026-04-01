-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 4
-- Scope: changes to Gen 1-3 Pokémon — ability2 additions
-- Table: meta.pokemon_attributes
-- Rows: 89
--
-- Gen 4 (Diamond/Pearl) expanded the ability pool for many existing Pokémon.
-- This file adds ability2 for Gen 1-3 Pokémon that gained a second ability in Gen IV.
-- All other attributes (types, stats, egg groups) are unchanged from Gen 3.
-- Hidden abilities (Gen 5+) remain NULL.
--
-- Gen 4 Ability IDs used in this file (77-120):
--   77=Tangled Feet 79=Rivalry 80=Steadfast 81=Snow Cloak 82=Gluttony
--   83=Anger Point 86=Simple 87=Dry Skin 88=Download 89=Iron Fist
--   90=Poison Heal 91=Adaptability 92=Skill Link 93=Hydration
--   94=Solar Power 95=Quick Feet 96=Normalize 97=Sniper 98=Magic Guard
--   99=No Guard 100=Stall 101=Technician 102=Leaf Guard 104=Mold Breaker
--   105=Super Luck 107=Anticipation 108=Forewarn 110=Tinted Lens
--   111=Filter 113=Scrappy 115=Ice Body 116=Solid Rock 119=Frisk 120=Reckless
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- pokemon_attributes_gen4_changes: Gen 1 Pokémon (41 rows)
    -- #016-018: Pidgey line (+Tangled Feet)
    (16, 1600, 4, 1, 10, 51, 77, NULL, 6, NULL, 40, 45, 40, 35, 35, 56, NULL),
    (17, 1700, 4, 1, 10, 51, 77, NULL, 6, NULL, 63, 60, 55, 50, 50, 71, NULL),
    (18, 1800, 4, 1, 10, 51, 77, NULL, 6, NULL, 83, 80, 75, 70, 70, 91, NULL),
    -- #029-031: Nidoran♀ line (+Rivalry)
    (29, 2900, 4, 8, NULL, 38, 79, NULL, 1, 7, 55, 47, 52, 40, 40, 41, NULL),
    (30, 3000, 4, 8, NULL, 38, 79, NULL, 15, NULL, 70, 62, 67, 55, 55, 56, NULL),
    (31, 3100, 4, 8, 9, 38, 79, NULL, 15, NULL, 90, 82, 87, 75, 85, 76, NULL),
    -- #032-034: Nidoran♂ line (+Rivalry)
    (32, 3200, 4, 8, NULL, 38, 79, NULL, 1, 7, 46, 57, 40, 40, 40, 50, NULL),
    (33, 3300, 4, 8, NULL, 38, 79, NULL, 1, 7, 61, 72, 57, 55, 55, 65, NULL),
    (34, 3400, 4, 8, 9, 38, 79, NULL, 1, 7, 81, 92, 77, 85, 75, 85, NULL),
    -- #035-036: Clefairy line (+Magic Guard)
    (35, 3500, 4, 1, NULL, 56, 98, NULL, 8, NULL, 70, 45, 48, 60, 65, 35, NULL),
    (36, 3600, 4, 1, NULL, 56, 98, NULL, 8, NULL, 95, 70, 73, 85, 90, 60, NULL),
    -- #046-047: Paras line (+Dry Skin)
    (46, 4600, 4, 12, 5, 27, 87, NULL, 5, 9, 35, 70, 55, 45, 55, 25, NULL),
    (47, 4700, 4, 12, 5, 27, 87, NULL, 5, 9, 60, 95, 80, 60, 80, 30, NULL),
    -- #048-049: Venonat line (+Tinted Lens)
    (48, 4800, 4, 12, 8, 14, 110, NULL, 5, NULL, 60, 55, 50, 40, 55, 45, NULL),
    (49, 4900, 4, 12, 8, 19, 110, NULL, 5, NULL, 70, 65, 60, 90, 75, 90, NULL),
    -- #052-053: Meowth line (+Technician)
    (52, 5200, 4, 1, NULL, 53, 101, NULL, 7, NULL, 40, 45, 35, 40, 40, 90, NULL),
    (53, 5300, 4, 1, NULL, 7, 101, NULL, 7, NULL, 65, 70, 60, 65, 65, 115, NULL),
    -- #056-057: Mankey line (+Anger Point)
    (56, 5600, 4, 7, NULL, 72, 83, NULL, 7, NULL, 40, 80, 35, 35, 45, 70, NULL),
    (57, 5700, 4, 7, NULL, 72, 83, NULL, 7, NULL, 65, 105, 60, 60, 70, 95, NULL),
    -- #066-068: Machop line (+No Guard)
    (66, 6600, 4, 7, NULL, 62, 99, NULL, 10, NULL, 70, 80, 50, 35, 35, 35, NULL),
    (67, 6700, 4, 7, NULL, 62, 99, NULL, 10, NULL, 80, 100, 70, 50, 60, 45, NULL),
    (68, 6800, 4, 7, NULL, 62, 99, NULL, 10, NULL, 90, 130, 80, 65, 85, 55, NULL),
    -- #086-087: Seel line (+Hydration)
    (86, 8600, 4, 3, NULL, 47, 93, NULL, 2, 7, 65, 45, 55, 45, 70, 45, NULL),
    (87, 8700, 4, 3, 6, 47, 93, NULL, 2, 7, 90, 70, 80, 70, 95, 70, NULL),
    -- #090-091: Shellder line (+Skill Link)
    (90, 9000, 4, 3, NULL, 75, 92, NULL, 4, NULL, 30, 65, 100, 45, 25, 40, NULL),
    (91, 9100, 4, 3, 6, 75, 92, NULL, 4, NULL, 50, 95, 180, 85, 45, 70, NULL),
    -- #096-097: Drowzee line (+Forewarn)
    (96, 9600, 4, 11, NULL, 15, 108, NULL, 10, NULL, 60, 48, 45, 43, 90, 42, NULL),
    (97, 9700, 4, 11, NULL, 15, 108, NULL, 10, NULL, 85, 73, 70, 73, 115, 67, NULL),
    -- #106: Hitmonlee (+Reckless)
    (106, 10600, 4, 7, NULL, 7, 120, NULL, 10, NULL, 50, 120, 53, 35, 110, 87, NULL),
    -- #107: Hitmonchan (+Iron Fist)
    (107, 10700, 4, 7, NULL, 51, 89, NULL, 10, NULL, 50, 105, 79, 35, 110, 76, NULL),
    -- #114: Tangela (+Leaf Guard)
    (114, 11400, 4, 5, NULL, 34, 102, NULL, 9, NULL, 65, 55, 115, 100, 40, 60, NULL),
    -- #115: Kangaskhan (+Scrappy)
    (115, 11500, 4, 1, NULL, 48, 113, NULL, 1, NULL, 105, 95, 80, 40, 80, 90, NULL),
    -- #116-117: Horsea line (+Sniper)
    (116, 11600, 4, 3, NULL, 33, 97, NULL, 2, 13, 30, 40, 70, 70, 25, 60, NULL),
    (117, 11700, 4, 3, NULL, 38, 97, NULL, 2, 13, 55, 65, 95, 95, 45, 85, NULL),
    -- #122: Mr. Mime (+Filter)
    (122, 12200, 4, 11, NULL, 43, 111, NULL, 10, NULL, 40, 45, 65, 100, 120, 90, NULL),
    -- #123: Scyther (+Technician)
    (123, 12300, 4, 12, 10, 68, 101, NULL, 5, NULL, 70, 110, 80, 55, 80, 105, NULL),
    -- #124: Jynx (+Forewarn)
    (124, 12400, 4, 6, 11, 12, 108, NULL, 10, NULL, 65, 50, 35, 115, 95, 95, NULL),
    -- #127: Pinsir (+Mold Breaker)
    (127, 12700, 4, 12, NULL, 52, 104, NULL, 5, NULL, 65, 125, 100, 55, 70, 85, NULL),
    -- #128: Tauros (+Anger Point)
    (128, 12800, 4, 1, NULL, 22, 83, NULL, 7, NULL, 75, 100, 95, 40, 70, 110, NULL),
    -- #133: Eevee (+Adaptability)
    (133, 13300, 4, 1, NULL, 50, 91, NULL, 7, NULL, 55, 55, 50, 45, 65, 55, NULL),
    -- #137: Porygon (+Download)
    (137, 13700, 4, 1, NULL, 36, 88, NULL, 11, NULL, 65, 60, 70, 85, 75, 40, NULL),
    -- pokemon_attributes_gen4_changes: Gen 2 Pokémon (24 rows)
    -- #173: Cleffa (+Magic Guard)
    (173, 17300, 4, 1, NULL, 56, 98, NULL, 15, NULL, 50, 25, 28, 45, 55, 15, NULL),
    -- #187-189: Hoppip line (+Leaf Guard)
    (187, 18700, 4, 5, 10, 34, 102, NULL, 8, 9, 35, 35, 40, 35, 55, 50, NULL),
    (188, 18800, 4, 5, 10, 34, 102, NULL, 8, 9, 55, 45, 50, 45, 65, 80, NULL),
    (189, 18900, 4, 5, 10, 34, 102, NULL, 8, 9, 75, 55, 70, 55, 85, 110, NULL),
    -- #191-192: Sunkern line (+Solar Power)
    (191, 19100, 4, 5, NULL, 34, 94, NULL, 9, NULL, 30, 30, 30, 30, 30, 30, NULL),
    (192, 19200, 4, 5, NULL, 34, 94, NULL, 9, NULL, 75, 75, 55, 105, 85, 30, NULL),
    -- #198: Murkrow (+Super Luck)
    (198, 19800, 4, 16, 10, 15, 105, NULL, 6, NULL, 60, 85, 42, 85, 42, 91, NULL),
    -- #210: Granbull (+Quick Feet)
    (210, 21000, 4, 1, NULL, 22, 95, NULL, 7, 8, 90, 120, 75, 60, 60, 45, NULL),
    -- #212: Scizor (+Technician)
    (212, 21200, 4, 12, 17, 68, 101, NULL, 5, NULL, 70, 130, 100, 55, 80, 65, NULL),
    -- #213: Shuckle (+Gluttony)
    (213, 21300, 4, 12, 13, 5, 82, NULL, 5, NULL, 20, 10, 230, 10, 230, 5, NULL),
    -- #216-217: Teddiursa line (+Quick Feet)
    (216, 21600, 4, 1, NULL, 53, 95, NULL, 7, NULL, 60, 80, 50, 50, 50, 40, NULL),
    (217, 21700, 4, 1, NULL, 62, 95, NULL, 7, NULL, 90, 130, 75, 75, 75, 55, NULL),
    -- #220-221: Swinub line (+Snow Cloak)
    (220, 22000, 4, 6, 9, 12, 81, NULL, 7, NULL, 50, 50, 40, 30, 30, 50, NULL),
    (221, 22100, 4, 6, 9, 12, 81, NULL, 7, NULL, 100, 100, 80, 60, 60, 50, NULL),
    -- #223-224: Remoraid line (+Sniper)
    (223, 22300, 4, 3, NULL, 55, 97, NULL, 2, 3, 35, 65, 35, 65, 35, 65, NULL),
    (224, 22400, 4, 3, NULL, 21, 97, NULL, 2, 3, 75, 105, 75, 105, 75, 45, NULL),
    -- #230: Kingdra (+Sniper)
    (230, 23000, 4, 3, 15, 33, 97, NULL, 2, 13, 75, 95, 95, 95, 95, 85, NULL),
    -- #233: Porygon2 (+Download)
    (233, 23300, 4, 1, NULL, 36, 88, NULL, 11, NULL, 85, 80, 90, 105, 95, 60, NULL),
    -- #234: Stantler (+Frisk)
    (234, 23400, 4, 1, NULL, 22, 119, NULL, 7, NULL, 73, 95, 62, 85, 65, 85, NULL),
    -- #235: Smeargle (+Technician)
    (235, 23500, 4, 1, NULL, 20, 101, NULL, 7, NULL, 55, 20, 35, 20, 45, 75, NULL),
    -- #236: Tyrogue (+Steadfast)
    (236, 23600, 4, 7, NULL, 62, 80, NULL, 15, NULL, 35, 35, 35, 35, 35, 35, NULL),
    -- #237: Hitmontop (+Technician)
    (237, 23700, 4, 7, NULL, 22, 101, NULL, 10, NULL, 50, 95, 95, 35, 110, 70, NULL),
    -- #238: Smoochum (+Forewarn)
    (238, 23800, 4, 6, 11, 12, 108, NULL, 15, NULL, 45, 30, 15, 85, 65, 65, NULL),
    -- #241: Miltank (+Scrappy)
    (241, 24100, 4, 1, NULL, 47, 113, NULL, 7, NULL, 95, 80, 105, 40, 70, 100, NULL),
    -- pokemon_attributes_gen4_changes: Gen 3 Pokémon (24 rows)
    -- #261-262: Poochyena line (+Quick Feet)
    (261, 26100, 4, 16, NULL, 50, 95, NULL, 7, NULL, 35, 55, 35, 30, 30, 35, NULL),
    (262, 26200, 4, 16, NULL, 22, 95, NULL, 7, NULL, 70, 90, 70, 60, 60, 70, NULL),
    -- #263-264: Zigzagoon line (+Gluttony)
    (263, 26300, 4, 1, NULL, 53, 82, NULL, 7, NULL, 38, 30, 41, 30, 41, 60, NULL),
    (264, 26400, 4, 1, NULL, 53, 82, NULL, 7, NULL, 78, 70, 61, 50, 61, 100, NULL),
    -- #285-286: Shroomish line (+Poison Heal)
    (285, 28500, 4, 5, NULL, 27, 90, NULL, 8, 9, 60, 40, 60, 40, 60, 35, NULL),
    (286, 28600, 4, 5, 7, 27, 90, NULL, 8, 9, 60, 130, 80, 60, 60, 70, NULL),
    -- #300-301: Skitty line (+Normalize)
    (300, 30000, 4, 1, NULL, 56, 96, NULL, 7, 8, 50, 45, 45, 35, 35, 50, NULL),
    (301, 30100, 4, 1, NULL, 56, 96, NULL, 7, 8, 70, 65, 65, 55, 55, 70, NULL),
    -- #302: Sableye (+Stall)
    (302, 30200, 4, 16, 14, 51, 100, NULL, 10, NULL, 50, 75, 75, 65, 65, 50, NULL),
    -- #314: Illumise (+Tinted Lens)
    (314, 31400, 4, 12, NULL, 12, 110, NULL, 5, 10, 65, 47, 55, 73, 75, 85, NULL),
    -- #322: Numel (+Simple)
    (322, 32200, 4, 2, 9, 12, 86, NULL, 7, NULL, 60, 60, 40, 65, 45, 35, NULL),
    -- #323: Camerupt (+Solid Rock)
    (323, 32300, 4, 2, 9, 40, 116, NULL, 7, NULL, 70, 100, 70, 105, 75, 40, NULL),
    -- #327: Spinda (+Tangled Feet)
    (327, 32700, 4, 1, NULL, 20, 77, NULL, 7, 10, 60, 60, 60, 60, 60, 60, NULL),
    -- #339-340: Barboach line (+Anticipation)
    (339, 33900, 4, 3, 9, 12, 107, NULL, 3, NULL, 50, 48, 43, 46, 41, 60, NULL),
    (340, 34000, 4, 3, 9, 12, 107, NULL, 3, NULL, 110, 78, 73, 76, 71, 60, NULL),
    -- #353-354: Shuppet line (+Frisk)
    (353, 35300, 4, 14, NULL, 15, 119, NULL, 12, NULL, 44, 75, 35, 63, 33, 45, NULL),
    (354, 35400, 4, 14, NULL, 15, 119, NULL, 12, NULL, 64, 115, 65, 83, 63, 65, NULL),
    -- #357: Tropius (+Solar Power)
    (357, 35700, 4, 5, 10, 34, 94, NULL, 1, 9, 99, 68, 83, 72, 87, 51, NULL),
    -- #359: Absol (+Super Luck)
    (359, 35900, 4, 16, NULL, 46, 105, NULL, 7, NULL, 65, 130, 60, 75, 60, 75, NULL),
    -- #361-362: Snorunt / Glalie (+Ice Body)
    (361, 36100, 4, 6, NULL, 39, 115, NULL, 8, 11, 50, 50, 50, 50, 50, 50, NULL),
    (362, 36200, 4, 6, NULL, 39, 115, NULL, 8, 11, 80, 80, 80, 80, 80, 80, NULL),
    -- #363-365: Spheal line (+Ice Body)
    (363, 36300, 4, 6, 3, 47, 115, NULL, 2, 7, 70, 40, 50, 55, 50, 25, NULL),
    (364, 36400, 4, 6, 3, 47, 115, NULL, 2, 7, 90, 60, 70, 75, 70, 45, NULL),
    (365, 36500, 4, 6, 3, 47, 115, NULL, 2, 7, 110, 80, 90, 95, 90, 65, NULL);