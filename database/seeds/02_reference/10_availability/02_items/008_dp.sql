-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual item, evolution item, form item, and game item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Scope note: curated Pokémon-relevant item availability, not a full item encyclopedia.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_availability
-- Generation: 4
-- Version Group: Diamond / Pearl
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 8, NULL, NULL, NULL),
  -- Splash Plate
  (3, 8, NULL, NULL, NULL),
  -- Zap Plate
  (4, 8, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 8, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 8, NULL, NULL, NULL),
  -- Fist Plate
  (7, 8, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 8, NULL, NULL, NULL),
  -- Earth Plate
  (9, 8, NULL, NULL, NULL),
  -- Sky Plate
  (10, 8, NULL, NULL, NULL),
  -- Mind Plate
  (11, 8, NULL, NULL, NULL),
  -- Insect Plate
  (12, 8, NULL, NULL, NULL),
  -- Stone Plate
  (13, 8, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 8, NULL, NULL, NULL),
  -- Draco Plate
  (15, 8, NULL, NULL, NULL),
  -- Dread Plate
  (16, 8, NULL, NULL, NULL),
  -- Iron Plate
  (17, 8, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 8, NULL, NULL, NULL),
  -- Fire Stone
  (64, 8, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 8, NULL, NULL, NULL),
  -- Water Stone
  (66, 8, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 8, NULL, NULL, NULL),
  -- Sun Stone
  (68, 8, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 8, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 8, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 8, NULL, NULL, NULL),
  -- Oval Stone
  (78, 8, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 8, NULL, NULL, NULL),
  -- Metal Coat
  (70, 8, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 8, NULL, NULL, NULL),
  -- Up-Grade
  (72, 8, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 8, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 8, NULL, NULL, NULL),
  -- Protector
  (79, 8, NULL, NULL, NULL),
  -- Electirizer
  (80, 8, NULL, NULL, NULL),
  -- Magmarizer
  (81, 8, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 8, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 8, NULL, NULL, NULL),
  -- Razor Claw
  (84, 8, NULL, NULL, NULL),
  -- Razor Fang
  (85, 8, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 8, NULL, NULL, NULL),
  -- Great Ball
  (118, 8, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 8, NULL, NULL, NULL),
  -- Master Ball
  (120, 8, NULL, NULL, NULL),
  -- Safari Ball
  (121, 8, NULL, NULL, NULL),
  -- Net Ball
  (130, 8, NULL, NULL, NULL),
  -- Dive Ball
  (131, 8, NULL, NULL, NULL),
  -- Nest Ball
  (132, 8, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 8, NULL, NULL, NULL),
  -- Timer Ball
  (134, 8, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 8, NULL, NULL, NULL),
  -- Premier Ball
  (136, 8, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 8, NULL, NULL, NULL),
  -- Heal Ball
  (138, 8, NULL, NULL, NULL),
  -- Quick Ball
  (139, 8, NULL, NULL, NULL),
  -- Fossils
  -- Helix Fossil
  (153, 8, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 8, NULL, NULL, NULL),
  -- Old Amber
  (155, 8, NULL, NULL, NULL),
  -- Root Fossil
  (156, 8, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 8, NULL, NULL, NULL),
  -- Skull Fossil
  (159, 8, 12, NULL, NULL),
  -- Armor Fossil
  (158, 8, 13, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 8, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 8, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 8, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 8, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 8, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 8, NULL, NULL, NULL),
  -- Oran Berry
  (184, 8, NULL, NULL, NULL),
  -- Persim Berry
  (185, 8, NULL, NULL, NULL),
  -- Lum Berry
  (186, 8, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 8, NULL, NULL, NULL),
  -- Figy Berry
  (188, 8, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 8, NULL, NULL, NULL),
  -- Mago Berry
  (190, 8, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 8, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 8, NULL, NULL, NULL),
  -- Razz Berry
  (193, 8, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 8, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 8, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 8, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 8, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 8, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 8, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 8, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 8, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 8, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 8, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 8, NULL, NULL, NULL),
  -- Magost Berry
  (205, 8, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 8, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 8, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 8, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 8, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 8, NULL, NULL, NULL),
  -- Durin Berry
  (211, 8, NULL, NULL, NULL),
  -- Belue Berry
  (212, 8, NULL, NULL, NULL),
  -- Occa Berry
  (213, 8, NULL, NULL, NULL),
  -- Passho Berry
  (214, 8, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 8, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 8, NULL, NULL, NULL),
  -- Yache Berry
  (217, 8, NULL, NULL, NULL),
  -- Chople Berry
  (218, 8, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 8, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 8, NULL, NULL, NULL),
  -- Coba Berry
  (221, 8, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 8, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 8, NULL, NULL, NULL),
  -- Charti Berry
  (224, 8, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 8, NULL, NULL, NULL),
  -- Haban Berry
  (226, 8, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 8, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 8, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 8, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 8, NULL, NULL, NULL),
  -- Black Glasses
  (311, 8, NULL, NULL, NULL),
  -- Charcoal
  (312, 8, NULL, NULL, NULL),
  -- Hard Stone
  (315, 8, NULL, NULL, NULL),
  -- Magnet
  (316, 8, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 8, NULL, NULL, NULL),
  -- Mystic Water
  (318, 8, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 8, NULL, NULL, NULL),
  -- Poison Barb
  (321, 8, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 8, NULL, NULL, NULL),
  -- Silver Powder
  (325, 8, NULL, NULL, NULL),
  -- Soft Sand
  (326, 8, NULL, NULL, NULL),
  -- Spell Tag
  (327, 8, NULL, NULL, NULL),
  -- Sea Incense
  (347, 8, NULL, NULL, NULL),
  -- Lax Incense
  (348, 8, NULL, NULL, NULL),
  -- Rose Incense
  (349, 8, NULL, NULL, NULL),
  -- Pure Incense
  (350, 8, NULL, NULL, NULL),
  -- Full Incense
  (351, 8, NULL, NULL, NULL),
  -- Luck Incense
  (352, 8, NULL, NULL, NULL),
  -- Odd Incense
  (353, 8, NULL, NULL, NULL),
  -- Rock Incense
  (354, 8, NULL, NULL, NULL),
  -- Wave Incense
  (355, 8, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 8, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 8, NULL, NULL, NULL),
  -- Big Root
  (375, 8, NULL, NULL, NULL),
  -- Bright Powder
  (379, 8, NULL, NULL, NULL),
  -- Choice Band
  (381, 8, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 8, NULL, NULL, NULL),
  -- Choice Specs
  (383, 8, NULL, NULL, NULL),
  -- Damp Rock
  (386, 8, NULL, NULL, NULL),
  -- Expert Belt
  (391, 8, NULL, NULL, NULL),
  -- Flame Orb
  (392, 8, NULL, NULL, NULL),
  -- Focus Band
  (394, 8, NULL, NULL, NULL),
  -- Focus Sash
  (395, 8, NULL, NULL, NULL),
  -- Grip Claw
  (397, 8, NULL, NULL, NULL),
  -- Heat Rock
  (398, 8, NULL, NULL, NULL),
  -- Icy Rock
  (400, 8, NULL, NULL, NULL),
  -- Iron Ball
  (401, 8, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 8, NULL, NULL, NULL),
  -- Leftovers
  (403, 8, NULL, NULL, NULL),
  -- Life Orb
  (404, 8, NULL, NULL, NULL),
  -- Light Clay
  (405, 8, NULL, NULL, NULL),
  -- Mental Herb
  (408, 8, NULL, NULL, NULL),
  -- Metronome
  (409, 8, NULL, NULL, NULL),
  -- Muscle Band
  (412, 8, NULL, NULL, NULL),
  -- Power Herb
  (413, 8, NULL, NULL, NULL),
  -- Quick Claw
  (417, 8, NULL, NULL, NULL),
  -- Scope Lens
  (423, 8, NULL, NULL, NULL),
  -- Shed Shell
  (424, 8, NULL, NULL, NULL),
  -- Shell Bell
  (425, 8, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 8, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 8, NULL, NULL, NULL),
  -- White Herb
  (434, 8, NULL, NULL, NULL),
  -- Wide Lens
  (435, 8, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 8, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 8, NULL, NULL, NULL),
  -- Macho Brace
  (438, 8, NULL, NULL, NULL),
  -- Power Weight
  (439, 8, NULL, NULL, NULL),
  -- Power Bracer
  (440, 8, NULL, NULL, NULL),
  -- Power Belt
  (441, 8, NULL, NULL, NULL),
  -- Power Lens
  (442, 8, NULL, NULL, NULL),
  -- Power Band
  (443, 8, NULL, NULL, NULL),
  -- Power Anklet
  (444, 8, NULL, NULL, NULL),
  -- Exp. Share
  (445, 8, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 8, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 8, NULL, NULL, NULL),
  -- Everstone
  (449, 8, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 8, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 8, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 8, NULL, NULL, NULL),
  -- Blue Scarf
  (453, 8, NULL, NULL, NULL),
  -- Green Scarf
  (454, 8, NULL, NULL, NULL),
  -- Pink Scarf
  (455, 8, NULL, NULL, NULL),
  -- Red Scarf
  (456, 8, NULL, NULL, NULL),
  -- Yellow Scarf
  (457, 8, NULL, NULL, NULL);
