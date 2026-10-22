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
-- Version Group: HeartGold / SoulSilver
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 10, NULL, NULL, NULL),
  -- Splash Plate
  (3, 10, NULL, NULL, NULL),
  -- Zap Plate
  (4, 10, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 10, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 10, NULL, NULL, NULL),
  -- Fist Plate
  (7, 10, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 10, NULL, NULL, NULL),
  -- Earth Plate
  (9, 10, NULL, NULL, NULL),
  -- Sky Plate
  (10, 10, NULL, NULL, NULL),
  -- Mind Plate
  (11, 10, NULL, NULL, NULL),
  -- Insect Plate
  (12, 10, NULL, NULL, NULL),
  -- Stone Plate
  (13, 10, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 10, NULL, NULL, NULL),
  -- Draco Plate
  (15, 10, NULL, NULL, NULL),
  -- Dread Plate
  (16, 10, NULL, NULL, NULL),
  -- Iron Plate
  (17, 10, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 10, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 10, NULL, NULL, NULL),
  -- Fire Stone
  (64, 10, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 10, NULL, NULL, NULL),
  -- Water Stone
  (66, 10, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 10, NULL, NULL, NULL),
  -- Sun Stone
  (68, 10, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 10, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 10, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 10, NULL, NULL, NULL),
  -- Oval Stone
  (78, 10, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 10, NULL, NULL, NULL),
  -- Metal Coat
  (70, 10, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 10, NULL, NULL, NULL),
  -- Up-Grade
  (72, 10, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 10, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 10, NULL, NULL, NULL),
  -- Protector
  (79, 10, NULL, NULL, NULL),
  -- Electirizer
  (80, 10, NULL, NULL, NULL),
  -- Magmarizer
  (81, 10, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 10, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 10, NULL, NULL, NULL),
  -- Razor Claw
  (84, 10, NULL, NULL, NULL),
  -- Razor Fang
  (85, 10, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 10, NULL, NULL, NULL),
  -- Great Ball
  (118, 10, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 10, NULL, NULL, NULL),
  -- Master Ball
  (120, 10, NULL, NULL, NULL),
  -- Safari Ball
  (121, 10, NULL, NULL, NULL),
  -- Fast Ball
  (122, 10, NULL, NULL, NULL),
  -- Level Ball
  (123, 10, NULL, NULL, NULL),
  -- Lure Ball
  (124, 10, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 10, NULL, NULL, NULL),
  -- Love Ball
  (126, 10, NULL, NULL, NULL),
  -- Friend Ball
  (127, 10, NULL, NULL, NULL),
  -- Moon Ball
  (128, 10, NULL, NULL, NULL),
  -- Sport Ball
  (129, 10, NULL, NULL, NULL),
  -- Net Ball
  (130, 10, NULL, NULL, NULL),
  -- Dive Ball
  (131, 10, NULL, NULL, NULL),
  -- Nest Ball
  (132, 10, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 10, NULL, NULL, NULL),
  -- Timer Ball
  (134, 10, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 10, NULL, NULL, NULL),
  -- Premier Ball
  (136, 10, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 10, NULL, NULL, NULL),
  -- Heal Ball
  (138, 10, NULL, NULL, NULL),
  -- Quick Ball
  (139, 10, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 10, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Fossils
  -- Helix Fossil
  (153, 10, 15, NULL, NULL),
  -- Claw Fossil
  (157, 10, 15, NULL, NULL),
  -- Dome Fossil
  (154, 10, 16, NULL, NULL),
  -- Root Fossil
  (156, 10, 16, NULL, NULL),
  -- Old Amber
  (155, 10, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 10, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 10, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 10, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 10, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 10, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 10, NULL, NULL, NULL),
  -- Oran Berry
  (184, 10, NULL, NULL, NULL),
  -- Persim Berry
  (185, 10, NULL, NULL, NULL),
  -- Lum Berry
  (186, 10, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 10, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 10, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 10, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 10, NULL, NULL, NULL),
  -- Razz Berry
  (193, 10, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 10, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 10, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 10, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 10, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 10, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 10, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 10, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 10, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 10, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 10, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 10, NULL, NULL, NULL),
  -- Durin Berry
  (211, 10, NULL, NULL, NULL),
  -- Occa Berry
  (213, 10, NULL, NULL, NULL),
  -- Passho Berry
  (214, 10, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 10, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 10, NULL, NULL, NULL),
  -- Yache Berry
  (217, 10, NULL, NULL, NULL),
  -- Chople Berry
  (218, 10, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 10, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 10, NULL, NULL, NULL),
  -- Coba Berry
  (221, 10, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 10, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 10, NULL, NULL, NULL),
  -- Charti Berry
  (224, 10, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 10, NULL, NULL, NULL),
  -- Haban Berry
  (226, 10, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 10, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 10, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 10, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 10, NULL, NULL, NULL),
  -- Black Glasses
  (311, 10, NULL, NULL, NULL),
  -- Charcoal
  (312, 10, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 10, NULL, NULL, NULL),
  -- Hard Stone
  (315, 10, NULL, NULL, NULL),
  -- Magnet
  (316, 10, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 10, NULL, NULL, NULL),
  -- Mystic Water
  (318, 10, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 10, NULL, NULL, NULL),
  -- Poison Barb
  (321, 10, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 10, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 10, NULL, NULL, NULL),
  -- Soft Sand
  (326, 10, NULL, NULL, NULL),
  -- Spell Tag
  (327, 10, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 10, NULL, NULL, NULL),
  -- Sea Incense
  (347, 10, NULL, NULL, NULL),
  -- Lax Incense
  (348, 10, NULL, NULL, NULL),
  -- Rose Incense
  (349, 10, NULL, NULL, NULL),
  -- Pure Incense
  (350, 10, NULL, NULL, NULL),
  -- Full Incense
  (351, 10, NULL, NULL, NULL),
  -- Luck Incense
  (352, 10, NULL, NULL, NULL),
  -- Odd Incense
  (353, 10, NULL, NULL, NULL),
  -- Rock Incense
  (354, 10, NULL, NULL, NULL),
  -- Wave Incense
  (355, 10, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 10, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 10, NULL, NULL, NULL),
  -- Soul Dew
  (358, 10, NULL, NULL, NULL),
  -- Lucky Punch
  (365, 10, NULL, NULL, NULL),
  -- Big Root
  (375, 10, NULL, NULL, NULL),
  -- Black Sludge
  (377, 10, NULL, NULL, NULL),
  -- Bright Powder
  (379, 10, NULL, NULL, NULL),
  -- Choice Band
  (381, 10, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 10, NULL, NULL, NULL),
  -- Choice Specs
  (383, 10, NULL, NULL, NULL),
  -- Expert Belt
  (391, 10, NULL, NULL, NULL),
  -- Flame Orb
  (392, 10, NULL, NULL, NULL),
  -- Focus Band
  (394, 10, NULL, NULL, NULL),
  -- Focus Sash
  (395, 10, NULL, NULL, NULL),
  -- Grip Claw
  (397, 10, NULL, NULL, NULL),
  -- Iron Ball
  (401, 10, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 10, NULL, NULL, NULL),
  -- Leftovers
  (403, 10, NULL, NULL, NULL),
  -- Life Orb
  (404, 10, NULL, NULL, NULL),
  -- Light Clay
  (405, 10, NULL, NULL, NULL),
  -- Mental Herb
  (408, 10, NULL, NULL, NULL),
  -- Metronome
  (409, 10, NULL, NULL, NULL),
  -- Muscle Band
  (412, 10, NULL, NULL, NULL),
  -- Power Herb
  (413, 10, NULL, NULL, NULL),
  -- Quick Claw
  (417, 10, NULL, NULL, NULL),
  -- Scope Lens
  (423, 10, NULL, NULL, NULL),
  -- Shed Shell
  (424, 10, NULL, NULL, NULL),
  -- Shell Bell
  (425, 10, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 10, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 10, NULL, NULL, NULL),
  -- White Herb
  (434, 10, NULL, NULL, NULL),
  -- Wide Lens
  (435, 10, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 10, NULL, NULL, NULL),
  -- Power Weight
  (439, 10, NULL, NULL, NULL),
  -- Power Bracer
  (440, 10, NULL, NULL, NULL),
  -- Power Belt
  (441, 10, NULL, NULL, NULL),
  -- Power Lens
  (442, 10, NULL, NULL, NULL),
  -- Power Band
  (443, 10, NULL, NULL, NULL),
  -- Power Anklet
  (444, 10, NULL, NULL, NULL),
  -- Exp. Share
  (445, 10, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 10, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 10, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 10, NULL, NULL, NULL),
  -- Everstone
  (449, 10, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 10, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 10, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 10, NULL, NULL, NULL);
