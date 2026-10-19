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
-- Generation: 9
-- Version Group: Scarlet / Violet
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 23, NULL, NULL, NULL),
  -- Splash Plate
  (3, 23, NULL, NULL, NULL),
  -- Zap Plate
  (4, 23, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 23, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 23, NULL, NULL, NULL),
  -- Fist Plate
  (7, 23, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 23, NULL, NULL, NULL),
  -- Earth Plate
  (9, 23, NULL, NULL, NULL),
  -- Sky Plate
  (10, 23, NULL, NULL, NULL),
  -- Mind Plate
  (11, 23, NULL, NULL, NULL),
  -- Insect Plate
  (12, 23, NULL, NULL, NULL),
  -- Stone Plate
  (13, 23, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 23, NULL, NULL, NULL),
  -- Draco Plate
  (15, 23, NULL, NULL, NULL),
  -- Dread Plate
  (16, 23, NULL, NULL, NULL),
  -- Iron Plate
  (17, 23, NULL, NULL, NULL),
  -- Pixie Plate
  (22, 23, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 23, NULL, NULL, NULL),
  -- Adamant Crystal
  (57, 23, NULL, NULL, NULL),
  -- Lustrous Globe
  (58, 23, NULL, NULL, NULL),
  -- Griseous Core
  (116, 23, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 23, NULL, NULL, NULL),
  -- Fire Stone
  (64, 23, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 23, NULL, NULL, NULL),
  -- Water Stone
  (66, 23, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 23, NULL, NULL, NULL),
  -- Sun Stone
  (68, 23, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 23, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 23, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 23, NULL, NULL, NULL),
  -- Oval Stone
  (78, 23, NULL, NULL, NULL),
  -- Ice Stone
  (89, 23, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 23, NULL, NULL, NULL),
  -- Metal Coat
  (70, 23, NULL, NULL, NULL),
  -- Razor Claw
  (84, 23, NULL, NULL, NULL),
  -- Leader's Crest
  (110, 23, NULL, NULL, NULL),
  -- Special Evolution Items
  -- Sweet Apple
  (97, 23, NULL, NULL, NULL),
  -- Tart Apple
  (98, 23, NULL, NULL, NULL),
  -- Cracked Pot
  (99, 23, NULL, NULL, NULL),
  -- Chipped Pot
  (100, 23, NULL, NULL, NULL),
  -- Malicious Armor -> Violet
  (108, 23, 37, NULL, NULL),
  -- Auspicious Armor -> Scarlet
  (109, 23, 36, NULL, NULL),
  -- Gimmighoul Coin
  (111, 23, NULL, NULL, NULL),
  -- Scroll of Darkness
  (103, 23, NULL, NULL, 'Available through Porto Marinada auctions if the player owns Kubfu.'),
  -- Scroll of Waters
  (104, 23, NULL, NULL, 'Available through Porto Marinada auctions if the player owns Kubfu.'),
  -- Poke Balls
  -- Poke Ball
  (117, 23, NULL, NULL, NULL),
  -- Great Ball
  (118, 23, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 23, NULL, NULL, NULL),
  -- Master Ball
  (120, 23, NULL, NULL, NULL),
  -- Safari Ball
  (121, 23, NULL, NULL, NULL),
  -- Fast Ball
  (122, 23, NULL, NULL, NULL),
  -- Level Ball
  (123, 23, NULL, NULL, NULL),
  -- Lure Ball
  (124, 23, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 23, NULL, NULL, NULL),
  -- Love Ball
  (126, 23, NULL, NULL, NULL),
  -- Friend Ball
  (127, 23, NULL, NULL, NULL),
  -- Moon Ball
  (128, 23, NULL, NULL, NULL),
  -- Sport Ball
  (129, 23, NULL, NULL, NULL),
  -- Net Ball
  (130, 23, NULL, NULL, NULL),
  -- Dive Ball
  (131, 23, NULL, NULL, NULL),
  -- Nest Ball
  (132, 23, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 23, NULL, NULL, NULL),
  -- Timer Ball
  (134, 23, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 23, NULL, NULL, NULL),
  -- Premier Ball
  (136, 23, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 23, NULL, NULL, NULL),
  -- Heal Ball
  (138, 23, NULL, NULL, NULL),
  -- Quick Ball
  (139, 23, NULL, NULL, NULL),
  -- Dream Ball
  (141, 23, NULL, NULL, NULL),
  -- Beast Ball
  (142, 23, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 23, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 23, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 23, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 23, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 23, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 23, NULL, NULL, NULL),
  -- Oran Berry
  (184, 23, NULL, NULL, NULL),
  -- Persim Berry
  (185, 23, NULL, NULL, NULL),
  -- Lum Berry
  (186, 23, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 23, NULL, NULL, NULL),
  -- Figy Berry
  (188, 23, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 23, NULL, NULL, NULL),
  -- Mago Berry
  (190, 23, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 23, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 23, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 23, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 23, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 23, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 23, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 23, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 23, NULL, NULL, NULL),
  -- Occa Berry
  (213, 23, NULL, NULL, NULL),
  -- Passho Berry
  (214, 23, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 23, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 23, NULL, NULL, NULL),
  -- Yache Berry
  (217, 23, NULL, NULL, NULL),
  -- Chople Berry
  (218, 23, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 23, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 23, NULL, NULL, NULL),
  -- Coba Berry
  (221, 23, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 23, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 23, NULL, NULL, NULL),
  -- Charti Berry
  (224, 23, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 23, NULL, NULL, NULL),
  -- Haban Berry
  (226, 23, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 23, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 23, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 23, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 23, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 23, NULL, NULL, NULL),
  -- Salac Berry
  (232, 23, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 23, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 23, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 23, NULL, NULL, NULL),
  -- Starf Berry
  (236, 23, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 23, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 23, NULL, NULL, NULL),
  -- Black Glasses
  (311, 23, NULL, NULL, NULL),
  -- Charcoal
  (312, 23, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 23, NULL, NULL, NULL),
  -- Hard Stone
  (315, 23, NULL, NULL, NULL),
  -- Magnet
  (316, 23, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 23, NULL, NULL, NULL),
  -- Mystic Water
  (318, 23, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 23, NULL, NULL, NULL),
  -- Poison Barb
  (321, 23, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 23, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 23, NULL, NULL, NULL),
  -- Silver Powder
  (325, 23, NULL, NULL, NULL),
  -- Soft Sand
  (326, 23, NULL, NULL, NULL),
  -- Spell Tag
  (327, 23, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 23, NULL, NULL, NULL),
  -- Normal Gem
  (329, 23, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 23, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 23, NULL, NULL, NULL),
  -- Soul Dew
  (358, 23, NULL, NULL, NULL),
  -- Rusted Sword
  (361, 23, NULL, NULL, NULL),
  -- Rusted Shield
  (362, 23, NULL, NULL, NULL),
  -- Booster Energy
  (369, 23, NULL, NULL, NULL),
  -- Ability Shield
  (370, 23, NULL, NULL, NULL),
  -- Absorb Bulb
  (371, 23, NULL, NULL, NULL),
  -- Air Balloon
  (372, 23, NULL, NULL, NULL),
  -- Assault Vest
  (373, 23, NULL, NULL, NULL),
  -- Big Root
  (375, 23, NULL, NULL, NULL),
  -- Binding Band
  (376, 23, NULL, NULL, NULL),
  -- Black Sludge
  (377, 23, NULL, NULL, NULL),
  -- Blunder Policy
  (378, 23, NULL, NULL, NULL),
  -- Bright Powder
  (379, 23, NULL, NULL, NULL),
  -- Cell Battery
  (380, 23, NULL, NULL, NULL),
  -- Choice Band
  (381, 23, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 23, NULL, NULL, NULL),
  -- Choice Specs
  (383, 23, NULL, NULL, NULL),
  -- Clear Amulet
  (384, 23, NULL, NULL, NULL),
  -- Covert Cloak
  (385, 23, NULL, NULL, NULL),
  -- Damp Rock
  (386, 23, NULL, NULL, NULL),
  -- Eject Button
  (387, 23, NULL, NULL, NULL),
  -- Eject Pack
  (388, 23, NULL, NULL, NULL),
  -- Electric Seed
  (389, 23, NULL, NULL, NULL),
  -- Eviolite
  (390, 23, NULL, NULL, NULL),
  -- Expert Belt
  (391, 23, NULL, NULL, NULL),
  -- Flame Orb
  (392, 23, NULL, NULL, NULL),
  -- Float Stone
  (393, 23, NULL, NULL, NULL),
  -- Focus Band
  (394, 23, NULL, NULL, NULL),
  -- Focus Sash
  (395, 23, NULL, NULL, NULL),
  -- Grassy Seed
  (396, 23, NULL, NULL, NULL),
  -- Grip Claw
  (397, 23, NULL, NULL, NULL),
  -- Heat Rock
  (398, 23, NULL, NULL, NULL),
  -- Heavy-Duty Boots
  (399, 23, NULL, NULL, NULL),
  -- Icy Rock
  (400, 23, NULL, NULL, NULL),
  -- Iron Ball
  (401, 23, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 23, NULL, NULL, NULL),
  -- Leftovers
  (403, 23, NULL, NULL, NULL),
  -- Life Orb
  (404, 23, NULL, NULL, NULL),
  -- Light Clay
  (405, 23, NULL, NULL, NULL),
  -- Loaded Dice
  (406, 23, NULL, NULL, NULL),
  -- Luminous Moss
  (407, 23, NULL, NULL, NULL),
  -- Mental Herb
  (408, 23, NULL, NULL, NULL),
  -- Metronome
  (409, 23, NULL, NULL, NULL),
  -- Mirror Herb
  (410, 23, NULL, NULL, NULL),
  -- Misty Seed
  (411, 23, NULL, NULL, NULL),
  -- Muscle Band
  (412, 23, NULL, NULL, NULL),
  -- Power Herb
  (413, 23, NULL, NULL, NULL),
  -- Protective Pads
  (414, 23, NULL, NULL, NULL),
  -- Psychic Seed
  (415, 23, NULL, NULL, NULL),
  -- Punching Glove
  (416, 23, NULL, NULL, NULL),
  -- Quick Claw
  (417, 23, NULL, NULL, NULL),
  -- Red Card
  (418, 23, NULL, NULL, NULL),
  -- Ring Target
  (419, 23, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 23, NULL, NULL, NULL),
  -- Room Service
  (421, 23, NULL, NULL, NULL),
  -- Safety Goggles
  (422, 23, NULL, NULL, NULL),
  -- Scope Lens
  (423, 23, NULL, NULL, NULL),
  -- Shed Shell
  (424, 23, NULL, NULL, NULL),
  -- Shell Bell
  (425, 23, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 23, NULL, NULL, NULL),
  -- Snowball
  (427, 23, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 23, NULL, NULL, NULL),
  -- Terrain Extender
  (429, 23, NULL, NULL, NULL),
  -- Throat Spray
  (430, 23, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 23, NULL, NULL, NULL),
  -- Utility Umbrella
  (432, 23, NULL, NULL, NULL),
  -- Weakness Policy
  (433, 23, NULL, NULL, NULL),
  -- White Herb
  (434, 23, NULL, NULL, NULL),
  -- Wide Lens
  (435, 23, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 23, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 23, NULL, NULL, NULL),
  -- Power Weight
  (439, 23, NULL, NULL, NULL),
  -- Power Bracer
  (440, 23, NULL, NULL, NULL),
  -- Power Belt
  (441, 23, NULL, NULL, NULL),
  -- Power Lens
  (442, 23, NULL, NULL, NULL),
  -- Power Band
  (443, 23, NULL, NULL, NULL),
  -- Power Anklet
  (444, 23, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 23, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 23, NULL, NULL, NULL),
  -- Everstone
  (449, 23, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 23, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 23, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 23, NULL, NULL, NULL);
