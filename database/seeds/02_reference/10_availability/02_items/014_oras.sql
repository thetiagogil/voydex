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
-- Generation: 6
-- Version Group: Omega Ruby / Alpha Sapphire
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Plates
  -- Flame Plate
  (2, 14, NULL, NULL, NULL),
  -- Splash Plate
  (3, 14, NULL, NULL, NULL),
  -- Zap Plate
  (4, 14, NULL, NULL, NULL),
  -- Meadow Plate
  (5, 14, NULL, NULL, NULL),
  -- Icicle Plate
  (6, 14, NULL, NULL, NULL),
  -- Fist Plate
  (7, 14, NULL, NULL, NULL),
  -- Toxic Plate
  (8, 14, NULL, NULL, NULL),
  -- Earth Plate
  (9, 14, NULL, NULL, NULL),
  -- Sky Plate
  (10, 14, NULL, NULL, NULL),
  -- Mind Plate
  (11, 14, NULL, NULL, NULL),
  -- Insect Plate
  (12, 14, NULL, NULL, NULL),
  -- Stone Plate
  (13, 14, NULL, NULL, NULL),
  -- Spooky Plate
  (14, 14, NULL, NULL, NULL),
  -- Draco Plate
  (15, 14, NULL, NULL, NULL),
  -- Dread Plate
  (16, 14, NULL, NULL, NULL),
  -- Iron Plate
  (17, 14, NULL, NULL, NULL),
  -- Douse Drive
  (18, 14, NULL, NULL, NULL),
  -- Shock Drive
  (19, 14, NULL, NULL, NULL),
  -- Burn Drive
  (20, 14, NULL, NULL, NULL),
  -- Chill Drive
  (21, 14, NULL, NULL, NULL),
  -- Pixie Plate
  (22, 14, NULL, NULL, NULL),
  -- Legendary And Form Items
  -- Griseous Orb
  (1, 14, NULL, NULL, NULL),
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 14, NULL, NULL, NULL),
  -- Fire Stone
  (64, 14, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 14, NULL, NULL, NULL),
  -- Water Stone
  (66, 14, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 14, NULL, NULL, NULL),
  -- Sun Stone
  (68, 14, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 14, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 14, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 14, NULL, NULL, NULL),
  -- Oval Stone
  (78, 14, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 14, NULL, NULL, NULL),
  -- Metal Coat
  (70, 14, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 14, NULL, NULL, NULL),
  -- Up-Grade
  (72, 14, NULL, NULL, NULL),
  -- Deep Sea Tooth
  (73, 14, NULL, NULL, NULL),
  -- Deep Sea Scale
  (74, 14, NULL, NULL, NULL),
  -- Protector
  (79, 14, NULL, NULL, NULL),
  -- Electirizer
  (80, 14, NULL, NULL, NULL),
  -- Magmarizer
  (81, 14, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 14, NULL, NULL, NULL),
  -- Reaper Cloth
  (83, 14, NULL, NULL, NULL),
  -- Razor Claw
  (84, 14, NULL, NULL, NULL),
  -- Razor Fang
  (85, 14, NULL, NULL, NULL),
  -- Prism Scale
  (86, 14, NULL, NULL, NULL),
  -- Sachet
  (87, 14, NULL, NULL, NULL),
  -- Whipped Dream
  (88, 14, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 14, NULL, NULL, NULL),
  -- Great Ball
  (118, 14, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 14, NULL, NULL, NULL),
  -- Master Ball
  (120, 14, NULL, NULL, NULL),
  -- Safari Ball
  (121, 14, NULL, NULL, 'Safari Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Fast Ball
  (122, 14, NULL, NULL, 'Fast Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Level Ball
  (123, 14, NULL, NULL, 'Level Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Lure Ball
  (124, 14, NULL, NULL, 'Lure Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Heavy Ball
  (125, 14, NULL, NULL, 'Heavy Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Love Ball
  (126, 14, NULL, NULL, 'Love Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Friend Ball
  (127, 14, NULL, NULL, 'Friend Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Moon Ball
  (128, 14, NULL, NULL, 'Moon Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Sport Ball
  (129, 14, NULL, NULL, 'Sport Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Net Ball
  (130, 14, NULL, NULL, NULL),
  -- Dive Ball
  (131, 14, NULL, NULL, NULL),
  -- Nest Ball
  (132, 14, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 14, NULL, NULL, NULL),
  -- Timer Ball
  (134, 14, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 14, NULL, NULL, NULL),
  -- Premier Ball
  (136, 14, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 14, NULL, NULL, NULL),
  -- Heal Ball
  (138, 14, NULL, NULL, NULL),
  -- Quick Ball
  (139, 14, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 14, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Dream Ball
  (141, 14, NULL, NULL, 'Dream Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Fossils
  -- Root Fossil
  (156, 14, NULL, NULL, NULL),
  -- Claw Fossil
  (157, 14, NULL, NULL, NULL),
  -- Old Amber
  (155, 14, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 14, 23, NULL, NULL),
  -- Armor Fossil
  (158, 14, 23, NULL, NULL),
  -- Plume Fossil
  (161, 14, 23, NULL, NULL),
  -- Helix Fossil
  (153, 14, 24, NULL, NULL),
  -- Skull Fossil
  (159, 14, 24, NULL, NULL),
  -- Cover Fossil
  (160, 14, 24, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 14, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 14, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 14, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 14, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 14, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 14, NULL, NULL, NULL),
  -- Oran Berry
  (184, 14, NULL, NULL, NULL),
  -- Persim Berry
  (185, 14, NULL, NULL, NULL),
  -- Lum Berry
  (186, 14, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 14, NULL, NULL, NULL),
  -- Figy Berry
  (188, 14, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 14, NULL, NULL, NULL),
  -- Mago Berry
  (190, 14, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 14, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 14, NULL, NULL, NULL),
  -- Razz Berry
  (193, 14, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 14, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 14, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 14, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 14, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 14, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 14, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 14, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 14, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 14, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 14, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 14, NULL, NULL, NULL),
  -- Magost Berry
  (205, 14, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 14, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 14, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 14, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 14, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 14, NULL, NULL, NULL),
  -- Durin Berry
  (211, 14, NULL, NULL, NULL),
  -- Belue Berry
  (212, 14, NULL, NULL, NULL),
  -- Occa Berry
  (213, 14, NULL, NULL, NULL),
  -- Passho Berry
  (214, 14, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 14, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 14, NULL, NULL, NULL),
  -- Yache Berry
  (217, 14, NULL, NULL, NULL),
  -- Chople Berry
  (218, 14, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 14, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 14, NULL, NULL, NULL),
  -- Coba Berry
  (221, 14, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 14, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 14, NULL, NULL, NULL),
  -- Charti Berry
  (224, 14, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 14, NULL, NULL, NULL),
  -- Haban Berry
  (226, 14, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 14, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 14, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 14, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 14, NULL, NULL, NULL),
  -- Ganlon Berry
  (231, 14, NULL, NULL, NULL),
  -- Salac Berry
  (232, 14, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 14, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 14, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 14, NULL, NULL, NULL),
  -- Starf Berry
  (236, 14, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 14, NULL, NULL, NULL),
  -- Kee Berry
  (243, 14, NULL, NULL, NULL),
  -- Maranga Berry
  (244, 14, NULL, NULL, NULL),
  -- Mega Stones
  -- Venusaurite
  (263, 14, NULL, NULL, NULL),
  -- Charizardite X
  (264, 14, NULL, NULL, NULL),
  -- Charizardite Y
  (265, 14, NULL, NULL, NULL),
  -- Blastoisinite
  (266, 14, NULL, NULL, NULL),
  -- Beedrillite
  (267, 14, NULL, NULL, NULL),
  -- Pidgeotite
  (268, 14, NULL, NULL, NULL),
  -- Alakazite
  (269, 14, NULL, NULL, NULL),
  -- Slowbronite
  (270, 14, NULL, NULL, NULL),
  -- Gengarite
  (271, 14, NULL, NULL, NULL),
  -- Kangaskhanite
  (272, 14, NULL, NULL, NULL),
  -- Pinsirite
  (273, 14, NULL, NULL, NULL),
  -- Gyaradosite
  (274, 14, NULL, NULL, NULL),
  -- Aerodactylite
  (275, 14, NULL, NULL, NULL),
  -- Mewtwonite X
  (276, 14, NULL, NULL, NULL),
  -- Mewtwonite Y
  (277, 14, NULL, NULL, NULL),
  -- Ampharosite
  (278, 14, NULL, NULL, NULL),
  -- Steelixite
  (279, 14, NULL, NULL, NULL),
  -- Scizorite
  (280, 14, NULL, NULL, NULL),
  -- Heracronite
  (281, 14, NULL, NULL, NULL),
  -- Houndoominite
  (282, 14, NULL, NULL, NULL),
  -- Tyranitarite
  (283, 14, NULL, NULL, NULL),
  -- Sceptilite
  (284, 14, NULL, NULL, NULL),
  -- Blazikenite
  (285, 14, NULL, NULL, NULL),
  -- Swampertite
  (286, 14, NULL, NULL, NULL),
  -- Gardevoirite
  (287, 14, NULL, NULL, NULL),
  -- Sablenite
  (288, 14, NULL, NULL, NULL),
  -- Mawilite
  (289, 14, NULL, NULL, NULL),
  -- Aggronite
  (290, 14, NULL, NULL, NULL),
  -- Medichamite
  (291, 14, NULL, NULL, NULL),
  -- Manectite
  (292, 14, NULL, NULL, NULL),
  -- Sharpedonite
  (293, 14, NULL, NULL, NULL),
  -- Cameruptite
  (294, 14, NULL, NULL, NULL),
  -- Altarianite
  (295, 14, NULL, NULL, NULL),
  -- Banettite
  (296, 14, NULL, NULL, NULL),
  -- Absolite
  (297, 14, NULL, NULL, NULL),
  -- Glalitite
  (298, 14, NULL, NULL, NULL),
  -- Salamencite
  (299, 14, NULL, NULL, NULL),
  -- Metagrossite
  (300, 14, NULL, NULL, NULL),
  -- Latiasite
  (301, 14, NULL, NULL, NULL),
  -- Latiosite
  (302, 14, NULL, NULL, NULL),
  -- Lopunnite
  (303, 14, NULL, NULL, NULL),
  -- Garchompite
  (304, 14, NULL, NULL, NULL),
  -- Lucarionite
  (305, 14, NULL, NULL, NULL),
  -- Abomasite
  (306, 14, NULL, NULL, NULL),
  -- Galladite
  (307, 14, NULL, NULL, NULL),
  -- Audinite
  (308, 14, NULL, NULL, NULL),
  -- General Held Items
  -- Black Glasses
  (311, 14, NULL, NULL, NULL),
  -- Charcoal
  (312, 14, NULL, NULL, NULL),
  -- Hard Stone
  (315, 14, NULL, NULL, NULL),
  -- Magnet
  (316, 14, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 14, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 14, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 14, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 14, NULL, NULL, NULL),
  -- Soft Sand
  (326, 14, NULL, NULL, NULL),
  -- Sea Incense
  (347, 14, NULL, NULL, NULL),
  -- Lax Incense
  (348, 14, NULL, NULL, NULL),
  -- Rose Incense
  (349, 14, NULL, NULL, NULL),
  -- Pure Incense
  (350, 14, NULL, NULL, NULL),
  -- Full Incense
  (351, 14, NULL, NULL, NULL),
  -- Luck Incense
  (352, 14, NULL, NULL, NULL),
  -- Odd Incense
  (353, 14, NULL, NULL, NULL),
  -- Rock Incense
  (354, 14, NULL, NULL, NULL),
  -- Wave Incense
  (355, 14, NULL, NULL, NULL),
  -- Adamant Orb
  (356, 14, NULL, NULL, NULL),
  -- Lustrous Orb
  (357, 14, NULL, NULL, NULL),
  -- Soul Dew
  (358, 14, NULL, NULL, NULL),
  -- Red Orb
  (359, 14, NULL, NULL, NULL),
  -- Blue Orb
  (360, 14, NULL, NULL, NULL),
  -- Light Ball
  (364, 14, NULL, NULL, NULL),
  -- Absorb Bulb
  (371, 14, NULL, NULL, NULL),
  -- Air Balloon
  (372, 14, NULL, NULL, NULL),
  -- Assault Vest
  (373, 14, NULL, NULL, NULL),
  -- Big Root
  (375, 14, NULL, NULL, NULL),
  -- Binding Band
  (376, 14, NULL, NULL, NULL),
  -- Bright Powder
  (379, 14, NULL, NULL, NULL),
  -- Cell Battery
  (380, 14, NULL, NULL, NULL),
  -- Choice Band
  (381, 14, NULL, NULL, NULL),
  -- Choice Scarf
  (382, 14, NULL, NULL, NULL),
  -- Choice Specs
  (383, 14, NULL, NULL, NULL),
  -- Damp Rock
  (386, 14, NULL, NULL, NULL),
  -- Eject Button
  (387, 14, NULL, NULL, NULL),
  -- Eviolite
  (390, 14, NULL, NULL, NULL),
  -- Expert Belt
  (391, 14, NULL, NULL, NULL),
  -- Flame Orb
  (392, 14, NULL, NULL, NULL),
  -- Float Stone
  (393, 14, NULL, NULL, NULL),
  -- Focus Band
  (394, 14, NULL, NULL, NULL),
  -- Focus Sash
  (395, 14, NULL, NULL, NULL),
  -- Heat Rock
  (398, 14, NULL, NULL, NULL),
  -- Icy Rock
  (400, 14, NULL, NULL, NULL),
  -- Iron Ball
  (401, 14, NULL, NULL, NULL),
  -- Leftovers
  (403, 14, NULL, NULL, NULL),
  -- Life Orb
  (404, 14, NULL, NULL, NULL),
  -- Luminous Moss
  (407, 14, NULL, NULL, NULL),
  -- Mental Herb
  (408, 14, NULL, NULL, NULL),
  -- Metronome
  (409, 14, NULL, NULL, NULL),
  -- Muscle Band
  (412, 14, NULL, NULL, NULL),
  -- Power Herb
  (413, 14, NULL, NULL, NULL),
  -- Quick Claw
  (417, 14, NULL, NULL, NULL),
  -- Red Card
  (418, 14, NULL, NULL, NULL),
  -- Ring Target
  (419, 14, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 14, NULL, NULL, NULL),
  -- Safety Goggles
  (422, 14, NULL, NULL, NULL),
  -- Scope Lens
  (423, 14, NULL, NULL, NULL),
  -- Shell Bell
  (425, 14, NULL, NULL, NULL),
  -- Smooth Rock
  (426, 14, NULL, NULL, NULL),
  -- Snowball
  (427, 14, NULL, NULL, NULL),
  -- Toxic Orb
  (431, 14, NULL, NULL, NULL),
  -- Weakness Policy
  (433, 14, NULL, NULL, NULL),
  -- White Herb
  (434, 14, NULL, NULL, NULL),
  -- Wide Lens
  (435, 14, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 14, NULL, NULL, NULL),
  -- Zoom Lens
  (437, 14, NULL, NULL, NULL),
  -- Macho Brace
  (438, 14, NULL, NULL, NULL),
  -- Power Weight
  (439, 14, NULL, NULL, NULL),
  -- Power Bracer
  (440, 14, NULL, NULL, NULL),
  -- Power Belt
  (441, 14, NULL, NULL, NULL),
  -- Power Lens
  (442, 14, NULL, NULL, NULL),
  -- Power Band
  (443, 14, NULL, NULL, NULL),
  -- Power Anklet
  (444, 14, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 14, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 14, NULL, NULL, NULL),
  -- Everstone
  (449, 14, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 14, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 14, NULL, NULL, NULL),
  -- Destiny Knot
  (452, 14, NULL, NULL, NULL),
  -- Blue Scarf
  (453, 14, NULL, NULL, NULL),
  -- Green Scarf
  (454, 14, NULL, NULL, NULL),
  -- Pink Scarf
  (455, 14, NULL, NULL, NULL),
  -- Red Scarf
  (456, 14, NULL, NULL, NULL),
  -- Yellow Scarf
  (457, 14, NULL, NULL, NULL);
