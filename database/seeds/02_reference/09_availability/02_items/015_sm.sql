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
-- Generation: 7
-- Version Group: Sun / Moon
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 15, NULL, NULL, NULL),
  -- Splash Plate
  (3, 15, NULL, NULL, NULL),
  -- Zap Plate
  (4, 15, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 15, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 15, NULL, NULL, NULL),
  -- Fist Plate
  (7, 15, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 15, NULL, NULL, NULL),
  -- Earth Plate
  (9, 15, NULL, NULL, NULL),
  -- Sky Plate
  (10, 15, NULL, NULL, NULL),
  -- Mind Plate
  (11, 15, NULL, NULL, NULL),
  -- Insect Plate
  (12, 15, NULL, NULL, NULL),
  -- Stone Plate
  (13, 15, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 15, NULL, NULL, NULL),
  -- Draco Plate
  (15, 15, NULL, NULL, NULL),
  -- Dread Plate
  (16, 15, NULL, NULL, NULL),
  -- Iron Plate
  (17, 15, NULL, NULL, NULL),
  -- Douse Drive
  (18, 15, NULL, NULL, NULL),
  -- Shock Drive
  (19, 15, NULL, NULL, NULL),
  -- Burn Drive
  (20, 15, NULL, NULL, NULL),
  -- Chill Drive
  (21, 15, NULL, NULL, NULL),
  -- Pixie Plate
  (22, 15, NULL, NULL, NULL),
  -- Z-Crystals
  -- Firium Z
  (23, 15, NULL, NULL, NULL),
  -- Waterium Z
  (24, 15, NULL, NULL, NULL),
  -- Electrium Z
  (25, 15, NULL, NULL, NULL),
  -- Grassium Z
  (26, 15, NULL, NULL, NULL),
  -- Icium Z
  (27, 15, NULL, NULL, NULL),
  -- Fightinium Z
  (28, 15, NULL, NULL, NULL),
  -- Poisonium Z
  (29, 15, NULL, NULL, NULL),
  -- Groundium Z
  (30, 15, NULL, NULL, NULL),
  -- Flyinium Z
  (31, 15, NULL, NULL, NULL),
  -- Psychium Z
  (32, 15, NULL, NULL, NULL),
  -- Buginium Z
  (33, 15, NULL, NULL, NULL),
  -- Rockium Z
  (34, 15, NULL, NULL, NULL),
  -- Ghostium Z
  (35, 15, NULL, NULL, NULL),
  -- Dragonium Z
  (36, 15, NULL, NULL, NULL),
  -- Darkinium Z
  (37, 15, NULL, NULL, NULL),
  -- Steelium Z
  (38, 15, NULL, NULL, NULL),
  -- Fairium Z
  (39, 15, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 15, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 15, NULL, NULL, NULL),
  -- Fire Stone
  (64, 15, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 15, NULL, NULL, NULL),
  -- Water Stone
  (66, 15, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 15, NULL, NULL, NULL),
  -- Sun Stone
  (68, 15, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 15, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 15, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 15, NULL, NULL, NULL),
  -- Oval Stone
  (78, 15, NULL, NULL, NULL),
  -- Ice Stone
  (89, 15, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 15, NULL, NULL, NULL),
  -- Metal Coat
  (70, 15, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 15, NULL, NULL, NULL),
  -- Up-Grade
  (72, 15, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 15, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 15, NULL, NULL, NULL),
  -- Protector
  (79, 15, NULL, NULL, NULL),
  -- Electirizer
  (80, 15, NULL, NULL, NULL),
  -- Magmarizer
  (81, 15, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 15, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 15, NULL, NULL, NULL),
  -- Razor Claw
  (84, 15, NULL, NULL, NULL),
  -- Razor Fang
  (85, 15, NULL, NULL, NULL),
  -- Prism Scale
  (86, 15, NULL, NULL, NULL),
  -- Sachet
  (87, 15, NULL, NULL, NULL),
  -- Whipped Dream
  (88, 15, NULL, NULL, NULL),
  -- Other Items
  -- Fire Memory
  (40, 15, NULL, NULL, NULL),
  -- Water Memory
  (41, 15, NULL, NULL, NULL),
  -- Electric Memory
  (42, 15, NULL, NULL, NULL),
  -- Grass Memory
  (43, 15, NULL, NULL, NULL),
  -- Ice Memory
  (44, 15, NULL, NULL, NULL),
  -- Fighting Memory
  (45, 15, NULL, NULL, NULL),
  -- Poison Memory
  (46, 15, NULL, NULL, NULL),
  -- Ground Memory
  (47, 15, NULL, NULL, NULL),
  -- Flying Memory
  (48, 15, NULL, NULL, NULL),
  -- Psychic Memory
  (49, 15, NULL, NULL, NULL),
  -- Bug Memory
  (50, 15, NULL, NULL, NULL),
  -- Rock Memory
  (51, 15, NULL, NULL, NULL),
  -- Ghost Memory
  (52, 15, NULL, NULL, NULL),
  -- Dragon Memory
  (53, 15, NULL, NULL, NULL),
  -- Dark Memory
  (54, 15, NULL, NULL, NULL),
  -- Steel Memory
  (55, 15, NULL, NULL, NULL),
  -- Fairy Memory
  (56, 15, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 15, NULL, NULL, NULL),
  -- Great Ball
  (118, 15, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 15, NULL, NULL, NULL),
  -- Master Ball
  (120, 15, NULL, NULL, NULL),
  -- Fast Ball
  (122, 15, NULL, NULL, NULL),
  -- Level Ball
  (123, 15, NULL, NULL, NULL),
  -- Lure Ball
  (124, 15, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 15, NULL, NULL, NULL),
  -- Love Ball
  (126, 15, NULL, NULL, NULL),
  -- Friend Ball
  (127, 15, NULL, NULL, NULL),
  -- Moon Ball
  (128, 15, NULL, NULL, NULL),
  -- Net Ball
  (130, 15, NULL, NULL, NULL),
  -- Dive Ball
  (131, 15, NULL, NULL, NULL),
  -- Nest Ball
  (132, 15, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 15, NULL, NULL, NULL),
  -- Timer Ball
  (134, 15, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 15, NULL, NULL, NULL),
  -- Premier Ball
  (136, 15, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 15, NULL, NULL, NULL),
  -- Heal Ball
  (138, 15, NULL, NULL, NULL),
  -- Quick Ball
  (139, 15, NULL, NULL, NULL),
  -- Beast Ball
  (142, 15, NULL, NULL, NULL),
  -- Fossils
  -- Skull Fossil
  (159, 15, 25, NULL, NULL),
  -- Cover Fossil
  (160, 15, 25, NULL, NULL),
  -- Armor Fossil
  (158, 15, 26, NULL, NULL),
  -- Plume Fossil
  (161, 15, 26, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 15, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 15, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 15, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 15, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 15, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 15, NULL, NULL, NULL),
  -- Oran Berry
  (184, 15, NULL, NULL, NULL),
  -- Persim Berry
  (185, 15, NULL, NULL, NULL),
  -- Lum Berry
  (186, 15, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 15, NULL, NULL, NULL),
  -- Figy Berry
  (188, 15, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 15, NULL, NULL, NULL),
  -- Mago Berry
  (190, 15, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 15, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 15, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 15, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 15, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 15, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 15, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 15, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 15, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 15, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 15, NULL, NULL, NULL),
  -- Occa Berry
  (213, 15, NULL, NULL, NULL),
  -- Passho Berry
  (214, 15, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 15, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 15, NULL, NULL, NULL),
  -- Yache Berry
  (217, 15, NULL, NULL, NULL),
  -- Chople Berry
  (218, 15, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 15, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 15, NULL, NULL, NULL),
  -- Coba Berry
  (221, 15, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 15, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 15, NULL, NULL, NULL),
  -- Charti Berry
  (224, 15, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 15, NULL, NULL, NULL),
  -- Haban Berry
  (226, 15, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 15, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 15, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 15, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 15, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 15, NULL, NULL, NULL),
  -- Salac Berry
  (232, 15, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 15, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 15, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 15, NULL, NULL, NULL),
  -- Starf Berry
  (236, 15, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 15, NULL, NULL, NULL),
  -- Kee Berry
  (243, 15, NULL, NULL, NULL),
  -- Maranga Berry
  (244, 15, NULL, NULL, NULL),
  -- Z-Crystals
  -- Normalium Z
  (245, 15, NULL, NULL, NULL),
  -- Aloraichium Z
  (246, 15, NULL, NULL, NULL),
  -- Decidium Z
  (247, 15, NULL, NULL, NULL),
  -- Eevium Z
  (248, 15, NULL, NULL, NULL),
  -- Incinium Z
  (249, 15, NULL, NULL, NULL),
  -- Pikanium Z
  (256, 15, NULL, NULL, NULL),
  -- Primarium Z
  (258, 15, NULL, NULL, NULL),
  -- Tapunium Z
  (261, 15, NULL, NULL, NULL),
  -- Mega Stones
  -- Venusaurite
  (263, 15, NULL, NULL, NULL),
  -- Charizardite X
  (264, 15, NULL, NULL, NULL),
  -- Charizardite Y
  (265, 15, NULL, NULL, NULL),
  -- Blastoisinite
  (266, 15, NULL, NULL, NULL),
  -- Alakazite
  (269, 15, NULL, NULL, NULL),
  -- Slowbronite
  (270, 15, NULL, NULL, NULL),
  -- Gengarite
  (271, 15, NULL, NULL, NULL),
  -- Kangaskhanite
  (272, 15, NULL, NULL, NULL),
  -- Pinsirite
  (273, 15, NULL, NULL, NULL),
  -- Gyaradosite
  (274, 15, NULL, NULL, NULL),
  -- Aerodactylite
  (275, 15, NULL, NULL, NULL),
  -- Scizorite
  (280, 15, NULL, NULL, NULL),
  -- Sablenite
  (288, 15, NULL, NULL, NULL),
  -- Sharpedonite
  (293, 15, NULL, NULL, NULL),
  -- Absolite
  (297, 15, NULL, NULL, NULL),
  -- Glalitite
  (298, 15, NULL, NULL, NULL),
  -- Salamencite
  (299, 15, NULL, NULL, NULL),
  -- Metagrossite
  (300, 15, NULL, NULL, NULL),
  -- Garchompite
  (304, 15, NULL, NULL, NULL),
  -- Lucarionite
  (305, 15, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 15, NULL, NULL, NULL),
  -- Black Glasses
  (311, 15, NULL, NULL, NULL),
  -- Charcoal
  (312, 15, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 15, NULL, NULL, NULL),
  -- Hard Stone
  (315, 15, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 15, NULL, NULL, NULL),
  -- Mystic Water
  (318, 15, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 15, NULL, NULL, NULL),
  -- Poison Barb
  (321, 15, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 15, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 15, NULL, NULL, NULL),
  -- Silver Powder
  (325, 15, NULL, NULL, NULL),
  -- Soft Sand
  (326, 15, NULL, NULL, NULL),
  -- Spell Tag
  (327, 15, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 15, NULL, NULL, NULL),
  -- Normal Gem
  (329, 15, NULL, NULL, NULL),
  -- Sea Incense
  (347, 15, NULL, NULL, NULL),
  -- Lax Incense
  (348, 15, NULL, NULL, NULL),
  -- Rose Incense
  (349, 15, NULL, NULL, NULL),
  -- Pure Incense
  (350, 15, NULL, NULL, NULL),
  -- Full Incense
  (351, 15, NULL, NULL, NULL),
  -- Luck Incense
  (352, 15, NULL, NULL, NULL),
  -- Odd Incense
  (353, 15, NULL, NULL, NULL),
  -- Rock Incense
  (354, 15, NULL, NULL, NULL),
  -- Wave Incense
  (355, 15, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 15, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 15, NULL, NULL, NULL),
  -- Soul Dew
  (358, 15, NULL, NULL, NULL),
  -- Red Orb
  (359, 15, NULL, NULL, NULL),
  -- Blue Orb
  (360, 15, NULL, NULL, NULL),
  -- Leek
  (363, 15, NULL, NULL, NULL),
  -- Light Ball
  (364, 15, NULL, NULL, NULL),
  -- Lucky Punch
  (365, 15, NULL, NULL, NULL),
  -- Air Balloon
  (372, 15, NULL, NULL, NULL),
  -- Assault Vest
  (373, 15, NULL, NULL, NULL),
  -- Big Root
  (375, 15, NULL, NULL, NULL),
  -- Binding Band
  (376, 15, NULL, NULL, NULL),
  -- Bright Powder
  (379, 15, NULL, NULL, NULL),
  -- Choice Band
  (381, 15, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 15, NULL, NULL, NULL),
  -- Choice Specs
  (383, 15, NULL, NULL, NULL),
  -- Damp Rock
  (386, 15, NULL, NULL, NULL),
  -- Eject Button
  (387, 15, NULL, NULL, NULL),
  -- Electric Seed
  (389, 15, NULL, NULL, NULL),
  -- Eviolite
  (390, 15, NULL, NULL, NULL),
  -- Expert Belt
  (391, 15, NULL, NULL, NULL),
  -- Flame Orb
  (392, 15, NULL, NULL, NULL),
  -- Float Stone
  (393, 15, NULL, NULL, NULL),
  -- Focus Band
  (394, 15, NULL, NULL, NULL),
  -- Focus Sash
  (395, 15, NULL, NULL, NULL),
  -- Grassy Seed
  (396, 15, NULL, NULL, NULL),
  -- Heat Rock
  (398, 15, NULL, NULL, NULL),
  -- Icy Rock
  (400, 15, NULL, NULL, NULL),
  -- Iron Ball
  (401, 15, NULL, NULL, NULL),
  -- Leftovers
  (403, 15, NULL, NULL, NULL),
  -- Life Orb
  (404, 15, NULL, NULL, NULL),
  -- Mental Herb
  (408, 15, NULL, NULL, NULL),
  -- Metronome
  (409, 15, NULL, NULL, NULL),
  -- Misty Seed
  (411, 15, NULL, NULL, NULL),
  -- Muscle Band
  (412, 15, NULL, NULL, NULL),
  -- Power Herb
  (413, 15, NULL, NULL, NULL),
  -- Protective Pads
  (414, 15, NULL, NULL, NULL),
  -- Quick Claw
  (417, 15, NULL, NULL, NULL),
  -- Red Card
  (418, 15, NULL, NULL, NULL),
  -- Ring Target
  (419, 15, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 15, NULL, NULL, NULL),
  -- Safety Goggles
  (422, 15, NULL, NULL, NULL),
  -- Scope Lens
  (423, 15, NULL, NULL, NULL),
  -- Shell Bell
  (425, 15, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 15, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 15, NULL, NULL, NULL),
  -- Terrain Extender
  (429, 15, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 15, NULL, NULL, NULL),
  -- Weakness Policy
  (433, 15, NULL, NULL, NULL),
  -- White Herb
  (434, 15, NULL, NULL, NULL),
  -- Wide Lens
  (435, 15, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 15, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 15, NULL, NULL, NULL),
  -- Power Weight
  (439, 15, NULL, NULL, NULL),
  -- Power Bracer
  (440, 15, NULL, NULL, NULL),
  -- Power Belt
  (441, 15, NULL, NULL, NULL),
  -- Power Lens
  (442, 15, NULL, NULL, NULL),
  -- Power Band
  (443, 15, NULL, NULL, NULL),
  -- Power Anklet
  (444, 15, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 15, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 15, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 15, NULL, NULL, NULL),
  -- Everstone
  (449, 15, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 15, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 15, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 15, NULL, NULL, NULL);
