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
-- Generation: 5
-- Version Group: Black / White
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 11, NULL, NULL, NULL),
  -- Splash Plate
  (3, 11, NULL, NULL, NULL),
  -- Zap Plate
  (4, 11, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 11, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 11, NULL, NULL, NULL),
  -- Fist Plate
  (7, 11, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 11, NULL, NULL, NULL),
  -- Earth Plate
  (9, 11, NULL, NULL, NULL),
  -- Sky Plate
  (10, 11, NULL, NULL, NULL),
  -- Mind Plate
  (11, 11, NULL, NULL, NULL),
  -- Insect Plate
  (12, 11, NULL, NULL, NULL),
  -- Stone Plate
  (13, 11, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 11, NULL, NULL, NULL),
  -- Draco Plate
  (15, 11, NULL, NULL, NULL),
  -- Dread Plate
  (16, 11, NULL, NULL, NULL),
  -- Iron Plate
  (17, 11, NULL, NULL, NULL),
  -- Douse Drive -> White
  (18, 11, 18, NULL, NULL),
  -- Shock Drive -> Black
  (19, 11, 17, NULL, NULL),
  -- Burn Drive -> Black
  (20, 11, 17, NULL, NULL),
  -- Chill Drive -> White
  (21, 11, 18, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 11, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 11, NULL, NULL, NULL),
  -- Fire Stone
  (64, 11, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 11, NULL, NULL, NULL),
  -- Water Stone
  (66, 11, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 11, NULL, NULL, NULL),
  -- Sun Stone
  (68, 11, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 11, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 11, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 11, NULL, NULL, NULL),
  -- Oval Stone
  (78, 11, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 11, NULL, NULL, NULL),
  -- Metal Coat
  (70, 11, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 11, NULL, NULL, NULL),
  -- Up-Grade
  (72, 11, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 11, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 11, NULL, NULL, NULL),
  -- Protector
  (79, 11, NULL, NULL, NULL),
  -- Electirizer
  (80, 11, NULL, NULL, NULL),
  -- Magmarizer
  (81, 11, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 11, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 11, NULL, NULL, NULL),
  -- Razor Claw
  (84, 11, NULL, NULL, NULL),
  -- Razor Fang
  (85, 11, NULL, NULL, NULL),
  -- Prism Scale
  (86, 11, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 11, NULL, NULL, NULL),
  -- Great Ball
  (118, 11, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 11, NULL, NULL, NULL),
  -- Master Ball
  (120, 11, NULL, NULL, NULL),
  -- Safari Ball
  (121, 11, NULL, NULL, 'Safari Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Fast Ball
  (122, 11, NULL, NULL, 'Fast Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Level Ball
  (123, 11, NULL, NULL, 'Level Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Lure Ball
  (124, 11, NULL, NULL, 'Lure Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Heavy Ball
  (125, 11, NULL, NULL, 'Heavy Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Love Ball
  (126, 11, NULL, NULL, 'Love Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Friend Ball
  (127, 11, NULL, NULL, 'Friend Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Moon Ball
  (128, 11, NULL, NULL, 'Moon Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Sport Ball
  (129, 11, NULL, NULL, 'Sport Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Net Ball
  (130, 11, NULL, NULL, NULL),
  -- Dive Ball
  (131, 11, NULL, NULL, NULL),
  -- Nest Ball
  (132, 11, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 11, NULL, NULL, NULL),
  -- Timer Ball
  (134, 11, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 11, NULL, NULL, NULL),
  -- Premier Ball
  (136, 11, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 11, NULL, NULL, NULL),
  -- Heal Ball
  (138, 11, NULL, NULL, NULL),
  -- Quick Ball
  (139, 11, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 11, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Dream Ball
  (141, 11, NULL, NULL, NULL),
  -- Fossils
  -- Helix Fossil
  (153, 11, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 11, NULL, NULL, NULL),
  -- Old Amber
  (155, 11, NULL, NULL, NULL),
  -- Root Fossil
  (156, 11, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 11, NULL, NULL, NULL),
  -- Skull Fossil
  (159, 11, NULL, NULL, NULL),
  -- Armor Fossil
  (158, 11, NULL, NULL, NULL),
  -- Cover Fossil
  (160, 11, NULL, NULL, NULL),
  -- Plume Fossil
  (161, 11, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 11, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 11, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 11, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 11, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 11, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 11, NULL, NULL, NULL),
  -- Oran Berry
  (184, 11, NULL, NULL, NULL),
  -- Persim Berry
  (185, 11, NULL, NULL, NULL),
  -- Lum Berry
  (186, 11, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 11, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 11, NULL, NULL, NULL),
  -- Occa Berry
  (213, 11, NULL, NULL, NULL),
  -- Passho Berry
  (214, 11, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 11, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 11, NULL, NULL, NULL),
  -- Yache Berry
  (217, 11, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 11, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 11, NULL, NULL, NULL),
  -- Coba Berry
  (221, 11, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 11, NULL, NULL, NULL),
  -- Charti Berry
  (224, 11, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 11, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 11, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 11, NULL, NULL, NULL),
  -- Starf Berry
  (236, 11, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 11, NULL, NULL, NULL),
  -- Black Glasses
  (311, 11, NULL, NULL, NULL),
  -- Charcoal
  (312, 11, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 11, NULL, NULL, NULL),
  -- Hard Stone
  (315, 11, NULL, NULL, NULL),
  -- Magnet
  (316, 11, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 11, NULL, NULL, NULL),
  -- Mystic Water
  (318, 11, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 11, NULL, NULL, NULL),
  -- Poison Barb
  (321, 11, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 11, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 11, NULL, NULL, NULL),
  -- Silver Powder
  (325, 11, NULL, NULL, NULL),
  -- Soft Sand
  (326, 11, NULL, NULL, NULL),
  -- Spell Tag
  (327, 11, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 11, NULL, NULL, NULL),
  -- Normal Gem
  (329, 11, NULL, NULL, NULL),
  -- Fire Gem
  (330, 11, NULL, NULL, NULL),
  -- Water Gem
  (331, 11, NULL, NULL, NULL),
  -- Electric Gem
  (332, 11, NULL, NULL, NULL),
  -- Grass Gem
  (333, 11, NULL, NULL, NULL),
  -- Ice Gem
  (334, 11, NULL, NULL, NULL),
  -- Fighting Gem
  (335, 11, NULL, NULL, NULL),
  -- Poison Gem
  (336, 11, NULL, NULL, NULL),
  -- Ground Gem
  (337, 11, NULL, NULL, NULL),
  -- Flying Gem
  (338, 11, NULL, NULL, NULL),
  -- Psychic Gem
  (339, 11, NULL, NULL, NULL),
  -- Bug Gem
  (340, 11, NULL, NULL, NULL),
  -- Rock Gem
  (341, 11, NULL, NULL, NULL),
  -- Ghost Gem
  (342, 11, NULL, NULL, NULL),
  -- Dragon Gem
  (343, 11, NULL, NULL, NULL),
  -- Dark Gem
  (344, 11, NULL, NULL, NULL),
  -- Steel Gem
  (345, 11, NULL, NULL, NULL),
  -- Sea Incense
  (347, 11, NULL, NULL, NULL),
  -- Lax Incense
  (348, 11, NULL, NULL, NULL),
  -- Rose Incense
  (349, 11, NULL, NULL, NULL),
  -- Pure Incense
  (350, 11, NULL, NULL, NULL),
  -- Full Incense
  (351, 11, NULL, NULL, NULL),
  -- Luck Incense
  (352, 11, NULL, NULL, NULL),
  -- Odd Incense
  (353, 11, NULL, NULL, NULL),
  -- Rock Incense
  (354, 11, NULL, NULL, NULL),
  -- Wave Incense
  (355, 11, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 11, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 11, NULL, NULL, NULL),
  -- Leek
  (363, 11, NULL, NULL, NULL),
  -- Lucky Punch
  (365, 11, NULL, NULL, NULL),
  -- Metal Powder
  (366, 11, NULL, NULL, NULL),
  -- Thick Club
  (368, 11, NULL, NULL, NULL),
  -- Absorb Bulb
  (371, 11, NULL, NULL, NULL),
  -- Air Balloon
  (372, 11, NULL, NULL, NULL),
  -- Big Root
  (375, 11, NULL, NULL, NULL),
  -- Binding Band
  (376, 11, NULL, NULL, NULL),
  -- Bright Powder
  (379, 11, NULL, NULL, NULL),
  -- Cell Battery
  (380, 11, NULL, NULL, NULL),
  -- Choice Band
  (381, 11, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 11, NULL, NULL, NULL),
  -- Choice Specs
  (383, 11, NULL, NULL, NULL),
  -- Damp Rock
  (386, 11, NULL, NULL, NULL),
  -- Eject Button
  (387, 11, NULL, NULL, NULL),
  -- Eviolite
  (390, 11, NULL, NULL, NULL),
  -- Expert Belt
  (391, 11, NULL, NULL, NULL),
  -- Flame Orb
  (392, 11, NULL, NULL, NULL),
  -- Float Stone
  (393, 11, NULL, NULL, NULL),
  -- Focus Band
  (394, 11, NULL, NULL, NULL),
  -- Focus Sash
  (395, 11, NULL, NULL, NULL),
  -- Heat Rock
  (398, 11, NULL, NULL, NULL),
  -- Icy Rock
  (400, 11, NULL, NULL, NULL),
  -- Iron Ball
  (401, 11, NULL, NULL, NULL),
  -- Leftovers
  (403, 11, NULL, NULL, NULL),
  -- Life Orb
  (404, 11, NULL, NULL, NULL),
  -- Muscle Band
  (412, 11, NULL, NULL, NULL),
  -- Power Herb
  (413, 11, NULL, NULL, NULL),
  -- Quick Claw
  (417, 11, NULL, NULL, NULL),
  -- Red Card
  (418, 11, NULL, NULL, NULL),
  -- Ring Target
  (419, 11, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 11, NULL, NULL, NULL),
  -- Scope Lens
  (423, 11, NULL, NULL, NULL),
  -- Shell Bell
  (425, 11, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 11, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 11, NULL, NULL, NULL),
  -- White Herb
  (434, 11, NULL, NULL, NULL),
  -- Wide Lens
  (435, 11, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 11, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 11, NULL, NULL, NULL),
  -- Macho Brace
  (438, 11, NULL, NULL, NULL),
  -- Power Weight
  (439, 11, NULL, NULL, NULL),
  -- Power Bracer
  (440, 11, NULL, NULL, NULL),
  -- Power Belt
  (441, 11, NULL, NULL, NULL),
  -- Power Lens
  (442, 11, NULL, NULL, NULL),
  -- Power Band
  (443, 11, NULL, NULL, NULL),
  -- Power Anklet
  (444, 11, NULL, NULL, NULL),
  -- Exp. Share
  (445, 11, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 11, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 11, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 11, NULL, NULL, NULL),
  -- Everstone
  (449, 11, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 11, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 11, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 11, NULL, NULL, NULL);
