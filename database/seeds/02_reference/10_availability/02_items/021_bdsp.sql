-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual item, evolution item, form item, and game item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Scope note: curated Pokémon-relevant item availability, not a full item encyclopedia.
-- Poke Ball rule: a ball is listed when it exists in this game's item data, including event-only (Cherish Ball) and transfer-only balls; checked against Serebii ItemDex per-game ball descriptions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_availability
-- Generation: 8
-- Version Group: Brilliant Diamond / Shining Pearl
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 21, NULL, NULL, NULL),
  -- Splash Plate
  (3, 21, NULL, NULL, NULL),
  -- Zap Plate
  (4, 21, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 21, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 21, NULL, NULL, NULL),
  -- Fist Plate
  (7, 21, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 21, NULL, NULL, NULL),
  -- Earth Plate
  (9, 21, NULL, NULL, NULL),
  -- Sky Plate
  (10, 21, NULL, NULL, NULL),
  -- Mind Plate
  (11, 21, NULL, NULL, NULL),
  -- Insect Plate
  (12, 21, NULL, NULL, NULL),
  -- Stone Plate
  (13, 21, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 21, NULL, NULL, NULL),
  -- Draco Plate
  (15, 21, NULL, NULL, NULL),
  -- Dread Plate
  (16, 21, NULL, NULL, NULL),
  -- Iron Plate
  (17, 21, NULL, NULL, NULL),
  -- Pixie Plate
  (22, 21, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 21, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 21, NULL, NULL, NULL),
  -- Fire Stone
  (64, 21, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 21, NULL, NULL, NULL),
  -- Water Stone
  (66, 21, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 21, NULL, NULL, NULL),
  -- Sun Stone
  (68, 21, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 21, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 21, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 21, NULL, NULL, NULL),
  -- Oval Stone
  (78, 21, NULL, NULL, NULL),
  -- Ice Stone
  (89, 21, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 21, NULL, NULL, NULL),
  -- Metal Coat
  (70, 21, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 21, NULL, NULL, NULL),
  -- Up-Grade
  (72, 21, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 21, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 21, NULL, NULL, NULL),
  -- Protector
  (79, 21, NULL, NULL, NULL),
  -- Electirizer -> Brilliant Diamond
  (80, 21, 33, NULL, NULL),
  -- Magmarizer -> Shining Pearl
  (81, 21, 34, NULL, NULL),
  -- Dubious Disc
  (82, 21, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 21, NULL, NULL, NULL),
  -- Razor Claw
  (84, 21, NULL, NULL, NULL),
  -- Razor Fang
  (85, 21, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 21, NULL, NULL, NULL),
  -- Great Ball
  (118, 21, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 21, NULL, NULL, NULL),
  -- Master Ball
  (120, 21, NULL, NULL, NULL),
  -- Safari Ball
  (121, 21, NULL, NULL, NULL),
  -- Fast Ball
  (122, 21, NULL, NULL, NULL),
  -- Level Ball
  (123, 21, NULL, NULL, NULL),
  -- Lure Ball
  (124, 21, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 21, NULL, NULL, NULL),
  -- Love Ball
  (126, 21, NULL, NULL, NULL),
  -- Friend Ball
  (127, 21, NULL, NULL, NULL),
  -- Moon Ball
  (128, 21, NULL, NULL, NULL),
  -- Sport Ball
  (129, 21, NULL, NULL, 'Sport Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Net Ball
  (130, 21, NULL, NULL, NULL),
  -- Dive Ball
  (131, 21, NULL, NULL, NULL),
  -- Nest Ball
  (132, 21, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 21, NULL, NULL, NULL),
  -- Timer Ball
  (134, 21, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 21, NULL, NULL, NULL),
  -- Premier Ball
  (136, 21, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 21, NULL, NULL, NULL),
  -- Heal Ball
  (138, 21, NULL, NULL, NULL),
  -- Quick Ball
  (139, 21, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 21, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Dream Ball
  (141, 21, NULL, NULL, 'Dream Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Beast Ball
  (142, 21, NULL, NULL, 'Beast Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Fossils
  -- Helix Fossil
  (153, 21, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 21, NULL, NULL, NULL),
  -- Old Amber
  (155, 21, NULL, NULL, NULL),
  -- Root Fossil
  (156, 21, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 21, NULL, NULL, NULL),
  -- Skull Fossil
  (159, 21, 33, NULL, NULL),
  -- Armor Fossil
  (158, 21, 34, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 21, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 21, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 21, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 21, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 21, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 21, NULL, NULL, NULL),
  -- Oran Berry
  (184, 21, NULL, NULL, NULL),
  -- Persim Berry
  (185, 21, NULL, NULL, NULL),
  -- Lum Berry
  (186, 21, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 21, NULL, NULL, NULL),
  -- Figy Berry
  (188, 21, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 21, NULL, NULL, NULL),
  -- Mago Berry
  (190, 21, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 21, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 21, NULL, NULL, NULL),
  -- Razz Berry
  (193, 21, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 21, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 21, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 21, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 21, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 21, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 21, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 21, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 21, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 21, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 21, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 21, NULL, NULL, NULL),
  -- Magost Berry
  (205, 21, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 21, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 21, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 21, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 21, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 21, NULL, NULL, NULL),
  -- Durin Berry
  (211, 21, NULL, NULL, NULL),
  -- Belue Berry
  (212, 21, NULL, NULL, NULL),
  -- Occa Berry
  (213, 21, NULL, NULL, NULL),
  -- Passho Berry
  (214, 21, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 21, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 21, NULL, NULL, NULL),
  -- Yache Berry
  (217, 21, NULL, NULL, NULL),
  -- Chople Berry
  (218, 21, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 21, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 21, NULL, NULL, NULL),
  -- Coba Berry
  (221, 21, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 21, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 21, NULL, NULL, NULL),
  -- Charti Berry
  (224, 21, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 21, NULL, NULL, NULL),
  -- Haban Berry
  (226, 21, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 21, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 21, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 21, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 21, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 21, NULL, NULL, NULL),
  -- Salac Berry
  (232, 21, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 21, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 21, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 21, NULL, NULL, NULL),
  -- Starf Berry
  (236, 21, NULL, NULL, NULL),
  -- Enigma Berry
  (237, 21, NULL, NULL, NULL),
  -- Micle Berry
  (238, 21, NULL, NULL, NULL),
  -- Custap Berry
  (239, 21, NULL, NULL, NULL),
  -- Jaboca Berry
  (240, 21, NULL, NULL, NULL),
  -- Rowap Berry
  (241, 21, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 21, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 21, NULL, NULL, NULL),
  -- Black Glasses
  (311, 21, NULL, NULL, NULL),
  -- Charcoal
  (312, 21, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 21, NULL, NULL, NULL),
  -- Hard Stone
  (315, 21, NULL, NULL, NULL),
  -- Magnet
  (316, 21, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 21, NULL, NULL, NULL),
  -- Mystic Water
  (318, 21, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 21, NULL, NULL, NULL),
  -- Poison Barb
  (321, 21, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 21, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 21, NULL, NULL, NULL),
  -- Silver Powder
  (325, 21, NULL, NULL, NULL),
  -- Soft Sand
  (326, 21, NULL, NULL, NULL),
  -- Spell Tag
  (327, 21, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 21, NULL, NULL, NULL),
  -- Sea Incense
  (347, 21, NULL, NULL, NULL),
  -- Lax Incense
  (348, 21, NULL, NULL, NULL),
  -- Rose Incense
  (349, 21, NULL, NULL, NULL),
  -- Pure Incense
  (350, 21, NULL, NULL, NULL),
  -- Full Incense
  (351, 21, NULL, NULL, NULL),
  -- Luck Incense
  (352, 21, NULL, NULL, NULL),
  -- Odd Incense
  (353, 21, NULL, NULL, NULL),
  -- Rock Incense
  (354, 21, NULL, NULL, NULL),
  -- Wave Incense
  (355, 21, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 21, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 21, NULL, NULL, NULL),
  -- Soul Dew
  (358, 21, NULL, NULL, NULL),
  -- Lucky Punch
  (365, 21, NULL, NULL, NULL),
  -- Big Root
  (375, 21, NULL, NULL, NULL),
  -- Bright Powder
  (379, 21, NULL, NULL, NULL),
  -- Choice Band
  (381, 21, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 21, NULL, NULL, NULL),
  -- Choice Specs
  (383, 21, NULL, NULL, NULL),
  -- Damp Rock
  (386, 21, NULL, NULL, NULL),
  -- Expert Belt
  (391, 21, NULL, NULL, NULL),
  -- Flame Orb
  (392, 21, NULL, NULL, NULL),
  -- Focus Band
  (394, 21, NULL, NULL, NULL),
  -- Focus Sash
  (395, 21, NULL, NULL, NULL),
  -- Grip Claw
  (397, 21, NULL, NULL, NULL),
  -- Heat Rock
  (398, 21, NULL, NULL, NULL),
  -- Icy Rock
  (400, 21, NULL, NULL, NULL),
  -- Iron Ball
  (401, 21, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 21, NULL, NULL, NULL),
  -- Leftovers
  (403, 21, NULL, NULL, NULL),
  -- Life Orb
  (404, 21, NULL, NULL, NULL),
  -- Light Clay
  (405, 21, NULL, NULL, NULL),
  -- Mental Herb
  (408, 21, NULL, NULL, NULL),
  -- Metronome
  (409, 21, NULL, NULL, NULL),
  -- Muscle Band
  (412, 21, NULL, NULL, NULL),
  -- Power Herb
  (413, 21, NULL, NULL, NULL),
  -- Quick Claw
  (417, 21, NULL, NULL, NULL),
  -- Scope Lens
  (423, 21, NULL, NULL, NULL),
  -- Shed Shell
  (424, 21, NULL, NULL, NULL),
  -- Shell Bell
  (425, 21, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 21, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 21, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 21, NULL, NULL, NULL),
  -- White Herb
  (434, 21, NULL, NULL, NULL),
  -- Wide Lens
  (435, 21, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 21, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 21, NULL, NULL, NULL),
  -- Macho Brace
  (438, 21, NULL, NULL, NULL),
  -- Power Weight
  (439, 21, NULL, NULL, NULL),
  -- Power Bracer
  (440, 21, NULL, NULL, NULL),
  -- Power Belt
  (441, 21, NULL, NULL, NULL),
  -- Power Lens
  (442, 21, NULL, NULL, NULL),
  -- Power Band
  (443, 21, NULL, NULL, NULL),
  -- Power Anklet
  (444, 21, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 21, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 21, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 21, NULL, NULL, NULL),
  -- Everstone
  (449, 21, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 21, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 21, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 21, NULL, NULL, NULL),
  -- Blue Scarf
  (453, 21, NULL, NULL, NULL),
  -- Green Scarf
  (454, 21, NULL, NULL, NULL),
  -- Pink Scarf
  (455, 21, NULL, NULL, NULL),
  -- Red Scarf
  (456, 21, NULL, NULL, NULL),
  -- Yellow Scarf
  (457, 21, NULL, NULL, NULL);
