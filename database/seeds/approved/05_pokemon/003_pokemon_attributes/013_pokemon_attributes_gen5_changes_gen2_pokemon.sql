-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 5
-- Scope: changes to Gen 2 Pokémon (#152-251) — hidden ability introduction
-- Table: meta.pokemon_attributes
-- Rows: 93
--
-- Hidden abilities were introduced in Gen 5 (Black/White).
-- This file adds hidden_ability_id for Gen 2 Pokémon that gained a hidden ability.
-- All other attributes (types, regular abilities, stats, egg groups) are unchanged from Gen 4.
--
-- 7 Gen 2 Pokémon have NO hidden ability in Gen V and are excluded:
--   #200 Misdreavus, #201 Unown, #243 Raikou, #244 Entei, #245 Suicune,
--   #247 Pupitar, #251 Celebi
-- Raikou/Entei/Suicune received Inner Focus as HA in Gen VII (tracked in gen7_changes).
--
-- Hidden Ability IDs used in this file:
--   Gen 3: 2=Drizzle 6=Damp 8=Sand Veil 11=Water Absorb 15=Insomnia
--     17=Immunity 18=Flash Fire 22=Intimidate 30=Natural Cure 31=Lightning Rod
--     33=Swift Swim 39=Inner Focus 41=Water Veil 45=Sand Stream 47=Thick Fat
--     48=Early Bird 57=Plus 72=Vital Spirit
--   Gen 4: 80=Steadfast 81=Snow Cloak 87=Dry Skin 89=Iron Fist 92=Skill Link
--     93=Hydration 97=Sniper 105=Super Luck 109=Unaware 110=Tinted Lens
--     118=Honey Gather 119=Frisk
--   Gen 5: 124=Pickpocket 125=Sheer Force 126=Contrary 127=Unnerve 131=Healer
--     132=Friend Guard 133=Weak Armor 135=Light Metal 136=Multiscale 140=Telepathy
--     141=Moody 142=Overcoat 144=Regenerator 148=Analytic 151=Infiltrator
--     153=Moxie 155=Rattled 156=Magic Bounce 157=Sap Sipper 158=Prankster
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #152-154: Chikorita line (+Leaf Guard)
    (152, 15200, 5, 5, NULL, 65, NULL, 102, 1, 9, 45, 49, 65, 49, 65, 45, NULL),
    (153, 15300, 5, 5, NULL, 65, NULL, 102, 1, 9, 60, 62, 80, 63, 80, 60, NULL),
    (154, 15400, 5, 5, NULL, 65, NULL, 102, 1, 9, 80, 82, 100, 83, 100, 80, NULL),
    -- #155-157: Cyndaquil line (+Flash Fire)
    (155, 15500, 5, 2, NULL, 66, NULL, 18, 7, NULL, 39, 52, 43, 60, 50, 65, NULL),
    (156, 15600, 5, 2, NULL, 66, NULL, 18, 7, NULL, 58, 64, 58, 80, 65, 80, NULL),
    (157, 15700, 5, 2, NULL, 66, NULL, 18, 7, NULL, 78, 84, 78, 109, 85, 100, NULL),
    -- #158-160: Totodile line (+Sheer Force)
    (158, 15800, 5, 3, NULL, 67, NULL, 125, 1, 2, 50, 65, 64, 44, 48, 43, NULL),
    (159, 15900, 5, 3, NULL, 67, NULL, 125, 1, 2, 65, 80, 80, 59, 63, 58, NULL),
    (160, 16000, 5, 3, NULL, 67, NULL, 125, 1, 2, 85, 105, 100, 79, 83, 78, NULL),
    -- #161-162: Sentret line (+Frisk)
    (161, 16100, 5, 1, NULL, 50, 51, 119, 7, NULL, 35, 46, 34, 35, 45, 20, NULL),
    (162, 16200, 5, 1, NULL, 50, 51, 119, 7, NULL, 85, 76, 64, 45, 55, 90, NULL),
    -- #163-164: Hoothoot line (+Tinted Lens)
    (163, 16300, 5, 1, 10, 15, 51, 110, 6, NULL, 60, 30, 30, 36, 56, 50, NULL),
    (164, 16400, 5, 1, 10, 15, 51, 110, 6, NULL, 100, 50, 50, 76, 96, 70, NULL),
    -- #165-166: Ledyba line (+Rattled / +Iron Fist)
    (165, 16500, 5, 12, 10, 68, 48, 155, 5, NULL, 40, 20, 30, 40, 80, 55, NULL),
    (166, 16600, 5, 12, 10, 68, 48, 89, 5, NULL, 55, 35, 50, 55, 110, 85, NULL),
    -- #167-168: Spinarak line (+Sniper)
    (167, 16700, 5, 12, 8, 68, 15, 97, 5, NULL, 40, 60, 40, 40, 40, 30, NULL),
    (168, 16800, 5, 12, 8, 68, 15, 97, 5, NULL, 70, 90, 70, 60, 60, 40, NULL),
    -- #169: Crobat (+Infiltrator)
    (169, 16900, 5, 8, 10, 39, NULL, 151, 6, NULL, 85, 90, 80, 70, 80, 130, NULL),
    -- #170-171: Chinchou line (+Water Absorb)
    (170, 17000, 5, 3, 4, 10, 35, 11, 3, NULL, 75, 38, 38, 56, 56, 67, NULL),
    (171, 17100, 5, 3, 4, 10, 35, 11, 3, NULL, 125, 58, 58, 76, 76, 67, NULL),
    -- #172: Pichu (+Lightning Rod)
    (172, 17200, 5, 4, NULL, 9, NULL, 31, 15, NULL, 20, 40, 15, 35, 35, 60, NULL),
    -- #173: Cleffa (+Friend Guard)
    (173, 17300, 5, 1, NULL, 56, 98, 132, 15, NULL, 50, 25, 28, 45, 55, 15, NULL),
    -- #174: Igglybuff (+Friend Guard)
    (174, 17400, 5, 1, NULL, 56, NULL, 132, 15, NULL, 90, 30, 15, 40, 20, 15, NULL),
    -- #175-176: Togepi line (+Super Luck)
    (175, 17500, 5, 1, NULL, 55, 32, 105, 15, NULL, 35, 20, 65, 40, 65, 20, NULL),
    (176, 17600, 5, 1, 10, 55, 32, 105, 6, 8, 55, 40, 85, 80, 105, 40, NULL),
    -- #177-178: Natu line (+Magic Bounce)
    (177, 17700, 5, 11, 10, 28, 48, 156, 6, NULL, 40, 50, 45, 70, 45, 70, NULL),
    (178, 17800, 5, 11, 10, 28, 48, 156, 6, NULL, 65, 75, 70, 95, 70, 95, NULL),
    -- #179-181: Mareep line (+Plus)
    (179, 17900, 5, 4, NULL, 9, NULL, 57, 1, 7, 55, 40, 40, 65, 45, 35, NULL),
    (180, 18000, 5, 4, NULL, 9, NULL, 57, 1, 7, 70, 55, 55, 80, 60, 45, NULL),
    (181, 18100, 5, 4, NULL, 9, NULL, 57, 1, 7, 90, 75, 75, 115, 90, 55, NULL),
    -- #182: Bellossom (+Healer)
    (182, 18200, 5, 5, NULL, 34, NULL, 131, 9, NULL, 75, 80, 85, 90, 100, 50, NULL),
    -- #183-184: Marill line (+Sap Sipper)
    (183, 18300, 5, 3, NULL, 47, 37, 157, 2, 8, 70, 20, 50, 20, 50, 40, NULL),
    (184, 18400, 5, 3, NULL, 47, 37, 157, 2, 8, 100, 50, 80, 50, 80, 50, NULL),
    -- #185: Sudowoodo (+Rattled)
    (185, 18500, 5, 13, NULL, 5, 69, 155, 11, NULL, 70, 100, 115, 30, 65, 30, NULL),
    -- #186: Politoed (+Drizzle)
    (186, 18600, 5, 3, NULL, 11, 6, 2, 2, NULL, 90, 75, 75, 90, 100, 70, NULL),
    -- #187-189: Hoppip line (+Infiltrator)
    (187, 18700, 5, 5, 10, 34, 102, 151, 8, 9, 35, 35, 40, 35, 55, 50, NULL),
    (188, 18800, 5, 5, 10, 34, 102, 151, 8, 9, 55, 45, 50, 45, 65, 80, NULL),
    (189, 18900, 5, 5, 10, 34, 102, 151, 8, 9, 75, 55, 70, 55, 85, 110, NULL),
    -- #190: Aipom (+Skill Link)
    (190, 19000, 5, 1, NULL, 50, 53, 92, 7, NULL, 55, 70, 55, 40, 55, 85, NULL),
    -- #191-192: Sunkern line (+Early Bird)
    (191, 19100, 5, 5, NULL, 34, 94, 48, 9, NULL, 30, 30, 30, 30, 30, 30, NULL),
    (192, 19200, 5, 5, NULL, 34, 94, 48, 9, NULL, 75, 75, 55, 105, 85, 30, NULL),
    -- #193: Yanma (+Frisk)
    (193, 19300, 5, 12, 10, 3, 14, 119, 5, NULL, 65, 65, 45, 75, 45, 95, NULL),
    -- #194-195: Wooper line (+Unaware)
    (194, 19400, 5, 3, 9, 6, 11, 109, 2, 7, 55, 45, 45, 25, 25, 15, NULL),
    (195, 19500, 5, 3, 9, 6, 11, 109, 2, 7, 95, 85, 85, 65, 65, 35, NULL),
    -- #196: Espeon (+Magic Bounce)
    (196, 19600, 5, 11, NULL, 28, NULL, 156, 7, NULL, 65, 65, 60, 130, 95, 110, NULL),
    -- #197: Umbreon (+Inner Focus)
    (197, 19700, 5, 16, NULL, 28, NULL, 39, 7, NULL, 95, 65, 110, 60, 130, 65, NULL),
    -- #198: Murkrow (+Prankster)
    (198, 19800, 5, 16, 10, 15, 105, 158, 6, NULL, 60, 85, 42, 85, 42, 91, NULL),
    -- #199: Slowking (+Regenerator)
    (199, 19900, 5, 3, 11, 12, 20, 144, 1, 2, 95, 75, 80, 100, 110, 30, NULL),
    -- #202: Wobbuffet (+Telepathy)
    (202, 20200, 5, 11, NULL, 23, NULL, 140, 12, NULL, 190, 33, 58, 33, 58, 33, NULL),
    -- #203: Girafarig (+Sap Sipper)
    (203, 20300, 5, 1, 11, 39, 48, 157, 7, NULL, 70, 80, 65, 90, 65, 85, NULL),
    -- #204-205: Pineco line (+Overcoat)
    (204, 20400, 5, 12, NULL, 5, NULL, 142, 5, NULL, 50, 65, 90, 35, 35, 15, NULL),
    (205, 20500, 5, 12, 17, 5, NULL, 142, 5, NULL, 75, 90, 140, 60, 60, 40, NULL),
    -- #206: Dunsparce (+Rattled)
    (206, 20600, 5, 1, NULL, 32, 50, 155, 7, NULL, 100, 70, 70, 65, 65, 45, NULL),
    -- #207: Gligar (+Immunity)
    (207, 20700, 5, 9, 10, 52, 8, 17, 5, NULL, 65, 75, 105, 35, 65, 85, NULL),
    -- #208: Steelix (+Sheer Force)
    (208, 20800, 5, 17, 9, 69, 5, 125, 11, NULL, 75, 85, 200, 55, 65, 30, NULL),
    -- #209-210: Snubbull line (+Rattled)
    (209, 20900, 5, 1, NULL, 22, 50, 155, 7, 8, 60, 80, 50, 40, 40, 30, NULL),
    (210, 21000, 5, 1, NULL, 22, 95, 155, 7, 8, 90, 120, 75, 60, 60, 45, NULL),
    -- #211: Qwilfish (+Intimidate)
    (211, 21100, 5, 3, 8, 38, 33, 22, 3, NULL, 65, 95, 75, 55, 55, 85, NULL),
    -- #212: Scizor (+Light Metal)
    (212, 21200, 5, 12, 17, 68, 101, 135, 5, NULL, 70, 130, 100, 55, 80, 65, NULL),
    -- #213: Shuckle (+Contrary)
    (213, 21300, 5, 12, 13, 5, 82, 126, 5, NULL, 20, 10, 230, 10, 230, 5, NULL),
    -- #214: Heracross (+Moxie)
    (214, 21400, 5, 12, 7, 68, 62, 153, 5, NULL, 80, 125, 75, 40, 95, 85, NULL),
    -- #215: Sneasel (+Pickpocket)
    (215, 21500, 5, 16, 6, 39, 51, 124, 7, NULL, 55, 95, 55, 35, 75, 115, NULL),
    -- #216-217: Teddiursa line (+Honey Gather / +Unnerve)
    (216, 21600, 5, 1, NULL, 53, 95, 118, 7, NULL, 60, 80, 50, 50, 50, 40, NULL),
    (217, 21700, 5, 1, NULL, 62, 95, 127, 7, NULL, 90, 130, 75, 75, 75, 55, NULL),
    -- #218-219: Slugma line (+Weak Armor)
    (218, 21800, 5, 2, NULL, 40, 49, 133, 12, NULL, 40, 40, 40, 70, 40, 20, NULL),
    (219, 21900, 5, 2, 13, 40, 49, 133, 12, NULL, 50, 50, 120, 80, 80, 30, NULL),
    -- #220-221: Swinub line (+Thick Fat)
    (220, 22000, 5, 6, 9, 12, 81, 47, 7, NULL, 50, 50, 40, 30, 30, 50, NULL),
    (221, 22100, 5, 6, 9, 12, 81, 47, 7, NULL, 100, 100, 80, 60, 60, 50, NULL),
    -- #222: Corsola (+Regenerator)
    (222, 22200, 5, 3, 13, 55, 30, 144, 2, 4, 55, 55, 85, 65, 85, 35, NULL),
    -- #223-224: Remoraid line (+Moody)
    (223, 22300, 5, 3, NULL, 55, 97, 141, 2, 3, 35, 65, 35, 65, 35, 65, NULL),
    (224, 22400, 5, 3, NULL, 21, 97, 141, 2, 3, 75, 105, 75, 105, 75, 45, NULL),
    -- #225: Delibird (+Insomnia)
    (225, 22500, 5, 6, 10, 72, 55, 15, 2, 7, 45, 55, 45, 65, 45, 75, NULL),
    -- #226: Mantine (+Water Veil)
    (226, 22600, 5, 3, 10, 33, 11, 41, 2, NULL, 65, 40, 70, 80, 140, 70, NULL),
    -- #227: Skarmory (+Weak Armor)
    (227, 22700, 5, 17, 10, 51, 5, 133, 6, NULL, 65, 80, 140, 40, 70, 70, NULL),
    -- #228-229: Houndour line (+Unnerve)
    (228, 22800, 5, 16, 2, 48, 18, 127, 7, NULL, 45, 60, 30, 80, 50, 65, NULL),
    (229, 22900, 5, 16, 2, 48, 18, 127, 7, NULL, 75, 90, 50, 110, 80, 95, NULL),
    -- #230: Kingdra (+Damp)
    (230, 23000, 5, 3, 15, 33, 97, 6, 2, 13, 75, 95, 95, 95, 95, 85, NULL),
    -- #231-232: Phanpy line (+Sand Veil)
    (231, 23100, 5, 9, NULL, 53, NULL, 8, 7, NULL, 90, 60, 60, 40, 40, 40, NULL),
    (232, 23200, 5, 9, NULL, 5, NULL, 8, 7, NULL, 90, 120, 120, 60, 60, 50, NULL),
    -- #233: Porygon2 (+Analytic)
    (233, 23300, 5, 1, NULL, 36, 88, 148, 11, NULL, 85, 80, 90, 105, 95, 60, NULL),
    -- #234: Stantler (+Sap Sipper)
    (234, 23400, 5, 1, NULL, 22, 119, 157, 7, NULL, 73, 95, 62, 85, 65, 85, NULL),
    -- #235: Smeargle (+Moody)
    (235, 23500, 5, 1, NULL, 20, 101, 141, 7, NULL, 55, 20, 35, 20, 45, 75, NULL),
    -- #236: Tyrogue (+Vital Spirit)
    (236, 23600, 5, 7, NULL, 62, 80, 72, 15, NULL, 35, 35, 35, 35, 35, 35, NULL),
    -- #237: Hitmontop (+Steadfast)
    (237, 23700, 5, 7, NULL, 22, 101, 80, 10, NULL, 50, 95, 95, 35, 110, 70, NULL),
    -- #238: Smoochum (+Hydration)
    (238, 23800, 5, 6, 11, 12, 108, 93, 15, NULL, 45, 30, 15, 85, 65, 65, NULL),
    -- #239: Elekid (+Vital Spirit)
    (239, 23900, 5, 4, NULL, 9, NULL, 72, 15, NULL, 45, 63, 37, 65, 55, 95, NULL),
    -- #240: Magby (+Vital Spirit)
    (240, 24000, 5, 2, NULL, 49, NULL, 72, 15, NULL, 45, 75, 37, 70, 55, 83, NULL),
    -- #241: Miltank (+Sap Sipper)
    (241, 24100, 5, 1, NULL, 47, 113, 157, 7, NULL, 95, 80, 105, 40, 70, 100, NULL),
    -- #242: Blissey (+Healer)
    (242, 24200, 5, 1, NULL, 30, 32, 131, 8, NULL, 255, 10, 10, 75, 135, 55, NULL),
    -- #246: Larvitar (+Sand Veil)
    (246, 24600, 5, 13, 9, 62, NULL, 8, 1, NULL, 50, 64, 50, 45, 50, 41, NULL),
    -- #248: Tyranitar (+Unnerve)
    (248, 24800, 5, 13, 16, 45, NULL, 127, 1, NULL, 100, 134, 110, 95, 100, 61, NULL),
    -- #249: Lugia (+Multiscale)
    (249, 24900, 5, 11, 10, 46, NULL, 136, 15, NULL, 106, 90, 130, 90, 154, 110, NULL),
    -- #250: Ho-Oh (+Regenerator)
    (250, 25000, 5, 2, 10, 46, NULL, 144, 15, NULL, 106, 130, 90, 110, 154, 90, NULL);