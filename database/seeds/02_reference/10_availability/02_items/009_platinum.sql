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
-- Generation: 4
-- Version Group: Platinum
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 9, NULL, NULL, NULL),
  -- Splash Plate
  (3, 9, NULL, NULL, NULL),
  -- Zap Plate
  (4, 9, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 9, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 9, NULL, NULL, NULL),
  -- Fist Plate
  (7, 9, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 9, NULL, NULL, NULL),
  -- Earth Plate
  (9, 9, NULL, NULL, NULL),
  -- Sky Plate
  (10, 9, NULL, NULL, NULL),
  -- Mind Plate
  (11, 9, NULL, NULL, NULL),
  -- Insect Plate
  (12, 9, NULL, NULL, NULL),
  -- Stone Plate
  (13, 9, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 9, NULL, NULL, NULL),
  -- Draco Plate
  (15, 9, NULL, NULL, NULL),
  -- Dread Plate
  (16, 9, NULL, NULL, NULL),
  -- Iron Plate
  (17, 9, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 9, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 9, NULL, NULL, NULL),
  -- Fire Stone
  (64, 9, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 9, NULL, NULL, NULL),
  -- Water Stone
  (66, 9, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 9, NULL, NULL, NULL),
  -- Sun Stone
  (68, 9, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 9, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 9, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 9, NULL, NULL, NULL),
  -- Oval Stone
  (78, 9, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 9, NULL, NULL, NULL),
  -- Metal Coat
  (70, 9, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 9, NULL, NULL, NULL),
  -- Up-Grade
  (72, 9, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 9, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 9, NULL, NULL, NULL),
  -- Protector
  (79, 9, NULL, NULL, NULL),
  -- Electirizer
  (80, 9, NULL, NULL, NULL),
  -- Magmarizer
  (81, 9, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 9, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 9, NULL, NULL, NULL),
  -- Razor Claw
  (84, 9, NULL, NULL, NULL),
  -- Razor Fang
  (85, 9, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 9, NULL, NULL, NULL),
  -- Great Ball
  (118, 9, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 9, NULL, NULL, NULL),
  -- Master Ball
  (120, 9, NULL, NULL, NULL),
  -- Safari Ball
  (121, 9, NULL, NULL, NULL),
  -- Net Ball
  (130, 9, NULL, NULL, NULL),
  -- Dive Ball
  (131, 9, NULL, NULL, NULL),
  -- Nest Ball
  (132, 9, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 9, NULL, NULL, NULL),
  -- Timer Ball
  (134, 9, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 9, NULL, NULL, NULL),
  -- Premier Ball
  (136, 9, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 9, NULL, NULL, NULL),
  -- Heal Ball
  (138, 9, NULL, NULL, NULL),
  -- Quick Ball
  (139, 9, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 9, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Fossils
  -- Helix Fossil
  (153, 9, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 9, NULL, NULL, NULL),
  -- Old Amber
  (155, 9, NULL, NULL, NULL),
  -- Root Fossil
  (156, 9, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 9, NULL, NULL, NULL),
  -- Skull Fossil
  (159, 9, NULL, NULL, NULL),
  -- Armor Fossil
  (158, 9, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 9, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 9, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 9, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 9, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 9, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 9, NULL, NULL, NULL),
  -- Oran Berry
  (184, 9, NULL, NULL, NULL),
  -- Persim Berry
  (185, 9, NULL, NULL, NULL),
  -- Lum Berry
  (186, 9, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 9, NULL, NULL, NULL),
  -- Figy Berry
  (188, 9, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 9, NULL, NULL, NULL),
  -- Mago Berry
  (190, 9, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 9, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 9, NULL, NULL, NULL),
  -- Razz Berry
  (193, 9, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 9, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 9, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 9, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 9, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 9, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 9, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 9, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 9, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 9, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 9, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 9, NULL, NULL, NULL),
  -- Magost Berry
  (205, 9, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 9, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 9, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 9, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 9, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 9, NULL, NULL, NULL),
  -- Durin Berry
  (211, 9, NULL, NULL, NULL),
  -- Belue Berry
  (212, 9, NULL, NULL, NULL),
  -- Occa Berry
  (213, 9, NULL, NULL, NULL),
  -- Passho Berry
  (214, 9, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 9, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 9, NULL, NULL, NULL),
  -- Yache Berry
  (217, 9, NULL, NULL, NULL),
  -- Chople Berry
  (218, 9, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 9, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 9, NULL, NULL, NULL),
  -- Coba Berry
  (221, 9, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 9, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 9, NULL, NULL, NULL),
  -- Charti Berry
  (224, 9, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 9, NULL, NULL, NULL),
  -- Haban Berry
  (226, 9, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 9, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 9, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 9, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 9, NULL, NULL, NULL),
  -- Black Glasses
  (311, 9, NULL, NULL, NULL),
  -- Charcoal
  (312, 9, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 9, NULL, NULL, NULL),
  -- Hard Stone
  (315, 9, NULL, NULL, NULL),
  -- Magnet
  (316, 9, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 9, NULL, NULL, NULL),
  -- Mystic Water
  (318, 9, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 9, NULL, NULL, NULL),
  -- Poison Barb
  (321, 9, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 9, NULL, NULL, NULL),
  -- Silver Powder
  (325, 9, NULL, NULL, NULL),
  -- Soft Sand
  (326, 9, NULL, NULL, NULL),
  -- Spell Tag
  (327, 9, NULL, NULL, NULL),
  -- Sea Incense
  (347, 9, NULL, NULL, NULL),
  -- Lax Incense
  (348, 9, NULL, NULL, NULL),
  -- Rose Incense
  (349, 9, NULL, NULL, NULL),
  -- Pure Incense
  (350, 9, NULL, NULL, NULL),
  -- Full Incense
  (351, 9, NULL, NULL, NULL),
  -- Luck Incense
  (352, 9, NULL, NULL, NULL),
  -- Odd Incense
  (353, 9, NULL, NULL, NULL),
  -- Rock Incense
  (354, 9, NULL, NULL, NULL),
  -- Wave Incense
  (355, 9, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 9, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 9, NULL, NULL, NULL),
  -- Big Root
  (375, 9, NULL, NULL, NULL),
  -- Bright Powder
  (379, 9, NULL, NULL, NULL),
  -- Choice Band
  (381, 9, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 9, NULL, NULL, NULL),
  -- Choice Specs
  (383, 9, NULL, NULL, NULL),
  -- Damp Rock
  (386, 9, NULL, NULL, NULL),
  -- Expert Belt
  (391, 9, NULL, NULL, NULL),
  -- Flame Orb
  (392, 9, NULL, NULL, NULL),
  -- Focus Band
  (394, 9, NULL, NULL, NULL),
  -- Focus Sash
  (395, 9, NULL, NULL, NULL),
  -- Grip Claw
  (397, 9, NULL, NULL, NULL),
  -- Heat Rock
  (398, 9, NULL, NULL, NULL),
  -- Icy Rock
  (400, 9, NULL, NULL, NULL),
  -- Iron Ball
  (401, 9, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 9, NULL, NULL, NULL),
  -- Leftovers
  (403, 9, NULL, NULL, NULL),
  -- Life Orb
  (404, 9, NULL, NULL, NULL),
  -- Light Clay
  (405, 9, NULL, NULL, NULL),
  -- Mental Herb
  (408, 9, NULL, NULL, NULL),
  -- Metronome
  (409, 9, NULL, NULL, NULL),
  -- Muscle Band
  (412, 9, NULL, NULL, NULL),
  -- Power Herb
  (413, 9, NULL, NULL, NULL),
  -- Quick Claw
  (417, 9, NULL, NULL, NULL),
  -- Scope Lens
  (423, 9, NULL, NULL, NULL),
  -- Shed Shell
  (424, 9, NULL, NULL, NULL),
  -- Shell Bell
  (425, 9, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 9, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 9, NULL, NULL, NULL),
  -- White Herb
  (434, 9, NULL, NULL, NULL),
  -- Wide Lens
  (435, 9, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 9, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 9, NULL, NULL, NULL),
  -- Macho Brace
  (438, 9, NULL, NULL, NULL),
  -- Power Weight
  (439, 9, NULL, NULL, NULL),
  -- Power Bracer
  (440, 9, NULL, NULL, NULL),
  -- Power Belt
  (441, 9, NULL, NULL, NULL),
  -- Power Lens
  (442, 9, NULL, NULL, NULL),
  -- Power Band
  (443, 9, NULL, NULL, NULL),
  -- Power Anklet
  (444, 9, NULL, NULL, NULL),
  -- Exp. Share
  (445, 9, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 9, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 9, NULL, NULL, NULL),
  -- Everstone
  (449, 9, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 9, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 9, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 9, NULL, NULL, NULL),
  -- Blue Scarf
  (453, 9, NULL, NULL, NULL),
  -- Green Scarf
  (454, 9, NULL, NULL, NULL),
  -- Pink Scarf
  (455, 9, NULL, NULL, NULL),
  -- Red Scarf
  (456, 9, NULL, NULL, NULL),
  -- Yellow Scarf
  (457, 9, NULL, NULL, NULL);
