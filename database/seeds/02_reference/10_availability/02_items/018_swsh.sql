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
-- Version Group: Sword / Shield
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Douse Drive
  (18, 18, NULL, NULL, NULL),
  -- Shock Drive
  (19, 18, NULL, NULL, NULL),
  -- Burn Drive
  (20, 18, NULL, NULL, NULL),
  -- Chill Drive
  (21, 18, NULL, NULL, NULL),
  -- Pixie Plate
  (22, 18, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 18, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 18, NULL, NULL, NULL),
  -- Fire Stone
  (64, 18, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 18, NULL, NULL, NULL),
  -- Water Stone
  (66, 18, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 18, NULL, NULL, NULL),
  -- Sun Stone
  (68, 18, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 18, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 18, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 18, NULL, NULL, NULL),
  -- Oval Stone
  (78, 18, NULL, NULL, NULL),
  -- Ice Stone
  (89, 18, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 18, NULL, NULL, NULL),
  -- Metal Coat
  (70, 18, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 18, NULL, NULL, NULL),
  -- Razor Claw
  (84, 18, NULL, NULL, NULL),
  -- Prism Scale
  (86, 18, NULL, NULL, NULL),
  -- Sachet
  (87, 18, NULL, NULL, NULL),
  -- Whipped Dream
  (88, 18, NULL, NULL, NULL),
  -- Special Evolution Items
  -- Strawberry Sweet
  (90, 18, NULL, NULL, NULL),
  -- Love Sweet
  (91, 18, NULL, NULL, NULL),
  -- Berry Sweet
  (92, 18, NULL, NULL, NULL),
  -- Clover Sweet
  (93, 18, NULL, NULL, NULL),
  -- Flower Sweet
  (94, 18, NULL, NULL, NULL),
  -- Star Sweet
  (95, 18, NULL, NULL, NULL),
  -- Ribbon Sweet
  (96, 18, NULL, NULL, NULL),
  -- Sweet Apple -> Shield
  (97, 18, 32, NULL, NULL),
  -- Tart Apple -> Sword
  (98, 18, 31, NULL, NULL),
  -- Cracked Pot
  (99, 18, NULL, NULL, NULL),
  -- Chipped Pot
  (100, 18, NULL, NULL, NULL),
  -- Other Items
  -- Fire Memory
  (40, 18, NULL, NULL, NULL),
  -- Water Memory
  (41, 18, NULL, NULL, NULL),
  -- Electric Memory
  (42, 18, NULL, NULL, NULL),
  -- Grass Memory
  (43, 18, NULL, NULL, NULL),
  -- Ice Memory
  (44, 18, NULL, NULL, NULL),
  -- Fighting Memory
  (45, 18, NULL, NULL, NULL),
  -- Poison Memory
  (46, 18, NULL, NULL, NULL),
  -- Ground Memory
  (47, 18, NULL, NULL, NULL),
  -- Flying Memory
  (48, 18, NULL, NULL, NULL),
  -- Psychic Memory
  (49, 18, NULL, NULL, NULL),
  -- Bug Memory
  (50, 18, NULL, NULL, NULL),
  -- Rock Memory
  (51, 18, NULL, NULL, NULL),
  -- Ghost Memory
  (52, 18, NULL, NULL, NULL),
  -- Dragon Memory
  (53, 18, NULL, NULL, NULL),
  -- Dark Memory
  (54, 18, NULL, NULL, NULL),
  -- Steel Memory
  (55, 18, NULL, NULL, NULL),
  -- Fairy Memory
  (56, 18, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 18, NULL, NULL, NULL),
  -- Great Ball
  (118, 18, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 18, NULL, NULL, NULL),
  -- Master Ball
  (120, 18, NULL, NULL, NULL),
  -- Safari Ball
  (121, 18, NULL, NULL, NULL),
  -- Fast Ball
  (122, 18, NULL, NULL, NULL),
  -- Level Ball
  (123, 18, NULL, NULL, NULL),
  -- Lure Ball
  (124, 18, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 18, NULL, NULL, NULL),
  -- Love Ball
  (126, 18, NULL, NULL, NULL),
  -- Friend Ball
  (127, 18, NULL, NULL, NULL),
  -- Moon Ball
  (128, 18, NULL, NULL, NULL),
  -- Sport Ball
  (129, 18, NULL, NULL, NULL),
  -- Net Ball
  (130, 18, NULL, NULL, NULL),
  -- Dive Ball
  (131, 18, NULL, NULL, NULL),
  -- Nest Ball
  (132, 18, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 18, NULL, NULL, NULL),
  -- Timer Ball
  (134, 18, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 18, NULL, NULL, NULL),
  -- Premier Ball
  (136, 18, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 18, NULL, NULL, NULL),
  -- Heal Ball
  (138, 18, NULL, NULL, NULL),
  -- Quick Ball
  (139, 18, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 18, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Dream Ball
  (141, 18, NULL, NULL, NULL),
  -- Beast Ball
  (142, 18, NULL, NULL, NULL),
  -- Fossils
  -- Fossilized Bird
  (164, 18, NULL, NULL, NULL),
  -- Fossilized Fish
  (165, 18, NULL, NULL, NULL),
  -- Fossilized Drake
  (166, 18, NULL, NULL, NULL),
  -- Fossilized Dino
  (167, 18, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 18, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 18, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 18, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 18, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 18, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 18, NULL, NULL, NULL),
  -- Oran Berry
  (184, 18, NULL, NULL, NULL),
  -- Persim Berry
  (185, 18, NULL, NULL, NULL),
  -- Lum Berry
  (186, 18, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 18, NULL, NULL, NULL),
  -- Figy Berry
  (188, 18, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 18, NULL, NULL, NULL),
  -- Mago Berry
  (190, 18, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 18, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 18, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 18, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 18, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 18, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 18, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 18, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 18, NULL, NULL, NULL),
  -- Occa Berry
  (213, 18, NULL, NULL, NULL),
  -- Passho Berry
  (214, 18, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 18, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 18, NULL, NULL, NULL),
  -- Yache Berry
  (217, 18, NULL, NULL, NULL),
  -- Chople Berry
  (218, 18, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 18, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 18, NULL, NULL, NULL),
  -- Coba Berry
  (221, 18, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 18, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 18, NULL, NULL, NULL),
  -- Charti Berry
  (224, 18, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 18, NULL, NULL, NULL),
  -- Haban Berry
  (226, 18, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 18, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 18, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 18, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 18, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 18, NULL, NULL, NULL),
  -- Salac Berry
  (232, 18, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 18, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 18, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 18, NULL, NULL, NULL),
  -- Starf Berry
  (236, 18, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 18, NULL, NULL, NULL),
  -- Kee Berry
  (243, 18, NULL, NULL, NULL),
  -- Maranga Berry
  (244, 18, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 18, NULL, NULL, NULL),
  -- Black Glasses
  (311, 18, NULL, NULL, NULL),
  -- Charcoal
  (312, 18, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 18, NULL, NULL, NULL),
  -- Hard Stone
  (315, 18, NULL, NULL, NULL),
  -- Magnet
  (316, 18, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 18, NULL, NULL, NULL),
  -- Mystic Water
  (318, 18, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 18, NULL, NULL, NULL),
  -- Poison Barb
  (321, 18, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 18, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 18, NULL, NULL, NULL),
  -- Silver Powder
  (325, 18, NULL, NULL, NULL),
  -- Soft Sand
  (326, 18, NULL, NULL, NULL),
  -- Spell Tag
  (327, 18, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 18, NULL, NULL, NULL),
  -- Normal Gem
  (329, 18, NULL, NULL, NULL),
  -- Sea Incense
  (347, 18, NULL, NULL, NULL),
  -- Lax Incense
  (348, 18, NULL, NULL, NULL),
  -- Rose Incense
  (349, 18, NULL, NULL, NULL),
  -- Pure Incense
  (350, 18, NULL, NULL, NULL),
  -- Full Incense
  (351, 18, NULL, NULL, NULL),
  -- Luck Incense
  (352, 18, NULL, NULL, NULL),
  -- Odd Incense
  (353, 18, NULL, NULL, NULL),
  -- Rock Incense
  (354, 18, NULL, NULL, NULL),
  -- Wave Incense
  (355, 18, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 18, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 18, NULL, NULL, NULL),
  -- Soul Dew
  (358, 18, NULL, NULL, NULL),
  -- Rusted Sword
  (361, 18, NULL, NULL, NULL),
  -- Rusted Shield
  (362, 18, NULL, NULL, NULL),
  -- Absorb Bulb
  (371, 18, NULL, NULL, NULL),
  -- Air Balloon
  (372, 18, NULL, NULL, NULL),
  -- Assault Vest
  (373, 18, NULL, NULL, NULL),
  -- Big Root
  (375, 18, NULL, NULL, NULL),
  -- Binding Band
  (376, 18, NULL, NULL, NULL),
  -- Black Sludge
  (377, 18, NULL, NULL, NULL),
  -- Blunder Policy
  (378, 18, NULL, NULL, NULL),
  -- Bright Powder
  (379, 18, NULL, NULL, NULL),
  -- Cell Battery
  (380, 18, NULL, NULL, NULL),
  -- Choice Band
  (381, 18, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 18, NULL, NULL, NULL),
  -- Choice Specs
  (383, 18, NULL, NULL, NULL),
  -- Damp Rock
  (386, 18, NULL, NULL, NULL),
  -- Eject Button
  (387, 18, NULL, NULL, NULL),
  -- Eject Pack
  (388, 18, NULL, NULL, NULL),
  -- Electric Seed
  (389, 18, NULL, NULL, NULL),
  -- Eviolite
  (390, 18, NULL, NULL, NULL),
  -- Expert Belt
  (391, 18, NULL, NULL, NULL),
  -- Flame Orb
  (392, 18, NULL, NULL, NULL),
  -- Float Stone
  (393, 18, NULL, NULL, NULL),
  -- Focus Band
  (394, 18, NULL, NULL, NULL),
  -- Focus Sash
  (395, 18, NULL, NULL, NULL),
  -- Grassy Seed
  (396, 18, NULL, NULL, NULL),
  -- Grip Claw
  (397, 18, NULL, NULL, NULL),
  -- Heat Rock
  (398, 18, NULL, NULL, NULL),
  -- Heavy-Duty Boots
  (399, 18, NULL, NULL, NULL),
  -- Icy Rock
  (400, 18, NULL, NULL, NULL),
  -- Iron Ball
  (401, 18, NULL, NULL, NULL),
  -- Lagging Tail
  (402, 18, NULL, NULL, NULL),
  -- Leftovers
  (403, 18, NULL, NULL, NULL),
  -- Life Orb
  (404, 18, NULL, NULL, NULL),
  -- Light Clay
  (405, 18, NULL, NULL, NULL),
  -- Luminous Moss
  (407, 18, NULL, NULL, NULL),
  -- Mental Herb
  (408, 18, NULL, NULL, NULL),
  -- Metronome
  (409, 18, NULL, NULL, NULL),
  -- Misty Seed
  (411, 18, NULL, NULL, NULL),
  -- Muscle Band
  (412, 18, NULL, NULL, NULL),
  -- Power Herb
  (413, 18, NULL, NULL, NULL),
  -- Protective Pads
  (414, 18, NULL, NULL, NULL),
  -- Psychic Seed
  (415, 18, NULL, NULL, NULL),
  -- Quick Claw
  (417, 18, NULL, NULL, NULL),
  -- Red Card
  (418, 18, NULL, NULL, NULL),
  -- Ring Target
  (419, 18, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 18, NULL, NULL, NULL),
  -- Room Service
  (421, 18, NULL, NULL, NULL),
  -- Safety Goggles
  (422, 18, NULL, NULL, NULL),
  -- Scope Lens
  (423, 18, NULL, NULL, NULL),
  -- Shed Shell
  (424, 18, NULL, NULL, NULL),
  -- Shell Bell
  (425, 18, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 18, NULL, NULL, NULL),
  -- Snowball
  (427, 18, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 18, NULL, NULL, NULL),
  -- Terrain Extender
  (429, 18, NULL, NULL, NULL),
  -- Throat Spray
  (430, 18, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 18, NULL, NULL, NULL),
  -- Utility Umbrella
  (432, 18, NULL, NULL, NULL),
  -- Weakness Policy
  (433, 18, NULL, NULL, NULL),
  -- White Herb
  (434, 18, NULL, NULL, NULL),
  -- Wide Lens
  (435, 18, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 18, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 18, NULL, NULL, NULL),
  -- Macho Brace
  (438, 18, NULL, NULL, NULL),
  -- Power Weight
  (439, 18, NULL, NULL, NULL),
  -- Power Bracer
  (440, 18, NULL, NULL, NULL),
  -- Power Belt
  (441, 18, NULL, NULL, NULL),
  -- Power Lens
  (442, 18, NULL, NULL, NULL),
  -- Power Band
  (443, 18, NULL, NULL, NULL),
  -- Power Anklet
  (444, 18, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 18, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 18, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 18, NULL, NULL, NULL),
  -- Everstone
  (449, 18, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 18, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 18, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 18, NULL, NULL, NULL);
