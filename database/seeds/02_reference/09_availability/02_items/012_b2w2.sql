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
-- Generation: 5
-- Version Group: Black 2 / White 2
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 12, NULL, NULL, NULL),
  -- Splash Plate
  (3, 12, NULL, NULL, NULL),
  -- Zap Plate
  (4, 12, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 12, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 12, NULL, NULL, NULL),
  -- Fist Plate
  (7, 12, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 12, NULL, NULL, NULL),
  -- Earth Plate
  (9, 12, NULL, NULL, NULL),
  -- Sky Plate
  (10, 12, NULL, NULL, NULL),
  -- Mind Plate
  (11, 12, NULL, NULL, NULL),
  -- Insect Plate
  (12, 12, NULL, NULL, NULL),
  -- Stone Plate
  (13, 12, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 12, NULL, NULL, NULL),
  -- Draco Plate
  (15, 12, NULL, NULL, NULL),
  -- Dread Plate
  (16, 12, NULL, NULL, NULL),
  -- Iron Plate
  (17, 12, NULL, NULL, NULL),
  -- Douse Drive -> White 2
  (18, 12, 20, NULL, NULL),
  -- Shock Drive -> Black 2
  (19, 12, 19, NULL, NULL),
  -- Burn Drive -> Black 2
  (20, 12, 19, NULL, NULL),
  -- Chill Drive -> White 2
  (21, 12, 20, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 12, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 12, NULL, NULL, NULL),
  -- Fire Stone
  (64, 12, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 12, NULL, NULL, NULL),
  -- Water Stone
  (66, 12, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 12, NULL, NULL, NULL),
  -- Sun Stone
  (68, 12, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 12, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 12, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 12, NULL, NULL, NULL),
  -- Oval Stone
  (78, 12, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 12, NULL, NULL, NULL),
  -- Metal Coat
  (70, 12, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 12, NULL, NULL, NULL),
  -- Up-Grade
  (72, 12, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 12, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 12, NULL, NULL, NULL),
  -- Protector
  (79, 12, NULL, NULL, NULL),
  -- Electirizer
  (80, 12, NULL, NULL, NULL),
  -- Magmarizer
  (81, 12, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 12, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 12, NULL, NULL, NULL),
  -- Razor Claw
  (84, 12, NULL, NULL, NULL),
  -- Razor Fang
  (85, 12, NULL, NULL, NULL),
  -- Prism Scale
  (86, 12, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 12, NULL, NULL, NULL),
  -- Great Ball
  (118, 12, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 12, NULL, NULL, NULL),
  -- Master Ball
  (120, 12, NULL, NULL, NULL),
  -- Net Ball
  (130, 12, NULL, NULL, NULL),
  -- Dive Ball
  (131, 12, NULL, NULL, NULL),
  -- Nest Ball
  (132, 12, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 12, NULL, NULL, NULL),
  -- Timer Ball
  (134, 12, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 12, NULL, NULL, NULL),
  -- Premier Ball
  (136, 12, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 12, NULL, NULL, NULL),
  -- Heal Ball
  (138, 12, NULL, NULL, NULL),
  -- Quick Ball
  (139, 12, NULL, NULL, NULL),
  -- Dream Ball
  (141, 12, NULL, NULL, NULL),
  -- Fossils
  -- Helix Fossil
  (153, 12, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 12, NULL, NULL, NULL),
  -- Old Amber
  (155, 12, NULL, NULL, NULL),
  -- Root Fossil
  (156, 12, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 12, NULL, NULL, NULL),
  -- Skull Fossil
  (159, 12, NULL, NULL, NULL),
  -- Armor Fossil
  (158, 12, NULL, NULL, NULL),
  -- Cover Fossil
  (160, 12, NULL, NULL, NULL),
  -- Plume Fossil
  (161, 12, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 12, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 12, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 12, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 12, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 12, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 12, NULL, NULL, NULL),
  -- Oran Berry
  (184, 12, NULL, NULL, NULL),
  -- Persim Berry
  (185, 12, NULL, NULL, NULL),
  -- Lum Berry
  (186, 12, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 12, NULL, NULL, NULL),
  -- Razz Berry
  (193, 12, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 12, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 12, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 12, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 12, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 12, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 12, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 12, NULL, NULL, NULL),
  -- Occa Berry
  (213, 12, NULL, NULL, NULL),
  -- Passho Berry
  (214, 12, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 12, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 12, NULL, NULL, NULL),
  -- Yache Berry
  (217, 12, NULL, NULL, NULL),
  -- Chople Berry
  (218, 12, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 12, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 12, NULL, NULL, NULL),
  -- Coba Berry
  (221, 12, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 12, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 12, NULL, NULL, NULL),
  -- Charti Berry
  (224, 12, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 12, NULL, NULL, NULL),
  -- Haban Berry
  (226, 12, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 12, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 12, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 12, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 12, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 12, NULL, NULL, NULL),
  -- Salac Berry
  (232, 12, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 12, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 12, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 12, NULL, NULL, NULL),
  -- Starf Berry
  (236, 12, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 12, NULL, NULL, NULL),
  -- Black Glasses
  (311, 12, NULL, NULL, NULL),
  -- Charcoal
  (312, 12, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 12, NULL, NULL, NULL),
  -- Hard Stone
  (315, 12, NULL, NULL, NULL),
  -- Magnet
  (316, 12, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 12, NULL, NULL, NULL),
  -- Mystic Water
  (318, 12, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 12, NULL, NULL, NULL),
  -- Poison Barb
  (321, 12, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 12, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 12, NULL, NULL, NULL),
  -- Soft Sand
  (326, 12, NULL, NULL, NULL),
  -- Spell Tag
  (327, 12, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 12, NULL, NULL, NULL),
  -- Normal Gem
  (329, 12, NULL, NULL, NULL),
  -- Fire Gem
  (330, 12, NULL, NULL, NULL),
  -- Water Gem
  (331, 12, NULL, NULL, NULL),
  -- Electric Gem
  (332, 12, NULL, NULL, NULL),
  -- Grass Gem
  (333, 12, NULL, NULL, NULL),
  -- Ice Gem
  (334, 12, NULL, NULL, NULL),
  -- Fighting Gem
  (335, 12, NULL, NULL, NULL),
  -- Poison Gem
  (336, 12, NULL, NULL, NULL),
  -- Ground Gem
  (337, 12, NULL, NULL, NULL),
  -- Flying Gem
  (338, 12, NULL, NULL, NULL),
  -- Psychic Gem
  (339, 12, NULL, NULL, NULL),
  -- Bug Gem
  (340, 12, NULL, NULL, NULL),
  -- Rock Gem
  (341, 12, NULL, NULL, NULL),
  -- Ghost Gem
  (342, 12, NULL, NULL, NULL),
  -- Dragon Gem
  (343, 12, NULL, NULL, NULL),
  -- Dark Gem
  (344, 12, NULL, NULL, NULL),
  -- Steel Gem
  (345, 12, NULL, NULL, NULL),
  -- Sea Incense
  (347, 12, NULL, NULL, NULL),
  -- Lax Incense
  (348, 12, NULL, NULL, NULL),
  -- Rose Incense
  (349, 12, NULL, NULL, NULL),
  -- Pure Incense
  (350, 12, NULL, NULL, NULL),
  -- Full Incense
  (351, 12, NULL, NULL, NULL),
  -- Luck Incense
  (352, 12, NULL, NULL, NULL),
  -- Odd Incense
  (353, 12, NULL, NULL, NULL),
  -- Rock Incense
  (354, 12, NULL, NULL, NULL),
  -- Wave Incense
  (355, 12, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 12, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 12, NULL, NULL, NULL),
  -- Soul Dew
  (358, 12, NULL, NULL, NULL),
  -- Absorb Bulb
  (371, 12, NULL, NULL, NULL),
  -- Air Balloon
  (372, 12, NULL, NULL, NULL),
  -- Big Root
  (375, 12, NULL, NULL, NULL),
  -- Binding Band
  (376, 12, NULL, NULL, NULL),
  -- Black Sludge
  (377, 12, NULL, NULL, NULL),
  -- Bright Powder
  (379, 12, NULL, NULL, NULL),
  -- Cell Battery
  (380, 12, NULL, NULL, NULL),
  -- Choice Band
  (381, 12, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 12, NULL, NULL, NULL),
  -- Choice Specs
  (383, 12, NULL, NULL, NULL),
  -- Damp Rock
  (386, 12, NULL, NULL, NULL),
  -- Eject Button
  (387, 12, NULL, NULL, NULL),
  -- Eviolite
  (390, 12, NULL, NULL, NULL),
  -- Expert Belt
  (391, 12, NULL, NULL, NULL),
  -- Flame Orb
  (392, 12, NULL, NULL, NULL),
  -- Float Stone
  (393, 12, NULL, NULL, NULL),
  -- Focus Band
  (394, 12, NULL, NULL, NULL),
  -- Focus Sash
  (395, 12, NULL, NULL, NULL),
  -- Grip Claw
  (397, 12, NULL, NULL, NULL),
  -- Heat Rock
  (398, 12, NULL, NULL, NULL),
  -- Icy Rock
  (400, 12, NULL, NULL, NULL),
  -- Iron Ball
  (401, 12, NULL, NULL, NULL),
  -- Leftovers
  (403, 12, NULL, NULL, NULL),
  -- Life Orb
  (404, 12, NULL, NULL, NULL),
  -- Metronome
  (409, 12, NULL, NULL, NULL),
  -- Muscle Band
  (412, 12, NULL, NULL, NULL),
  -- Power Herb
  (413, 12, NULL, NULL, NULL),
  -- Quick Claw
  (417, 12, NULL, NULL, NULL),
  -- Red Card
  (418, 12, NULL, NULL, NULL),
  -- Ring Target
  (419, 12, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 12, NULL, NULL, NULL),
  -- Scope Lens
  (423, 12, NULL, NULL, NULL),
  -- Shell Bell
  (425, 12, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 12, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 12, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 12, NULL, NULL, NULL),
  -- White Herb
  (434, 12, NULL, NULL, NULL),
  -- Wide Lens
  (435, 12, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 12, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 12, NULL, NULL, NULL),
  -- Macho Brace
  (438, 12, NULL, NULL, NULL),
  -- Power Weight
  (439, 12, NULL, NULL, NULL),
  -- Power Bracer
  (440, 12, NULL, NULL, NULL),
  -- Power Belt
  (441, 12, NULL, NULL, NULL),
  -- Power Lens
  (442, 12, NULL, NULL, NULL),
  -- Power Band
  (443, 12, NULL, NULL, NULL),
  -- Power Anklet
  (444, 12, NULL, NULL, NULL),
  -- Exp. Share
  (445, 12, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 12, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 12, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 12, NULL, NULL, NULL),
  -- Everstone
  (449, 12, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 12, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 12, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 12, NULL, NULL, NULL);
