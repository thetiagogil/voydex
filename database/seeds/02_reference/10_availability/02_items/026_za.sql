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
-- Version Group: Pokémon Legends: Z-A
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones
  -- Moon Stone
  (63, 26, NULL, NULL, NULL),
  -- Fire Stone
  (64, 26, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 26, NULL, NULL, NULL),
  -- Water Stone
  (66, 26, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 26, NULL, NULL, NULL),
  -- Sun Stone
  (68, 26, NULL, NULL, NULL),
  -- Shiny Stone
  (75, 26, NULL, NULL, NULL),
  -- Dusk Stone
  (76, 26, NULL, NULL, NULL),
  -- Dawn Stone
  (77, 26, NULL, NULL, NULL),
  -- Ice Stone
  (89, 26, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 26, NULL, NULL, NULL),
  -- Metal Coat
  (70, 26, NULL, NULL, NULL),
  -- Sachet
  (87, 26, NULL, NULL, NULL),
  -- Whipped Dream
  (88, 26, NULL, NULL, NULL),
  -- Special Evolution Items
  -- Galarica Cuff
  (101, 26, NULL, NULL, NULL),
  -- Galarica Wreath
  (102, 26, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 26, NULL, NULL, NULL),
  -- Great Ball
  (118, 26, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 26, NULL, NULL, NULL),
  -- Master Ball
  (120, 26, NULL, NULL, NULL),
  -- Safari Ball
  (121, 26, NULL, NULL, NULL),
  -- Fast Ball
  (122, 26, NULL, NULL, NULL),
  -- Level Ball
  (123, 26, NULL, NULL, NULL),
  -- Lure Ball
  (124, 26, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 26, NULL, NULL, NULL),
  -- Love Ball
  (126, 26, NULL, NULL, NULL),
  -- Friend Ball
  (127, 26, NULL, NULL, NULL),
  -- Moon Ball
  (128, 26, NULL, NULL, NULL),
  -- Sport Ball
  (129, 26, NULL, NULL, NULL),
  -- Net Ball
  (130, 26, NULL, NULL, NULL),
  -- Dive Ball
  (131, 26, NULL, NULL, NULL),
  -- Nest Ball
  (132, 26, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 26, NULL, NULL, NULL),
  -- Timer Ball
  (134, 26, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 26, NULL, NULL, NULL),
  -- Premier Ball
  (136, 26, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 26, NULL, NULL, NULL),
  -- Heal Ball
  (138, 26, NULL, NULL, NULL),
  -- Quick Ball
  (139, 26, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 26, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Dream Ball
  (141, 26, NULL, NULL, NULL),
  -- Beast Ball
  (142, 26, NULL, NULL, NULL),
  -- Poke Ball (Hisui)
  (143, 26, NULL, NULL, 'Poke Ball (Hisui) exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Great Ball (Hisui)
  (144, 26, NULL, NULL, 'Great Ball (Hisui) exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Ultra Ball (Hisui)
  (145, 26, NULL, NULL, 'Ultra Ball (Hisui) exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Heavy Ball (Hisui)
  (146, 26, NULL, NULL, 'Heavy Ball (Hisui) exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Leaden Ball
  (147, 26, NULL, NULL, 'Leaden Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Gigaton Ball
  (148, 26, NULL, NULL, 'Gigaton Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Feather Ball
  (149, 26, NULL, NULL, 'Feather Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Wing Ball
  (150, 26, NULL, NULL, 'Wing Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Jet Ball
  (151, 26, NULL, NULL, 'Jet Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Origin Ball
  (152, 26, NULL, NULL, 'Origin Ball exists in this scope only on Pokémon brought in by transfer or trade.'),
  -- Fossils
  -- Old Amber
  (155, 26, NULL, NULL, NULL),
  -- Jaw Fossil
  (162, 26, NULL, NULL, NULL),
  -- Sail Fossil
  (163, 26, NULL, NULL, NULL),
  -- Modern Berries
  -- Cheri Berry
  (178, 26, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 26, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 26, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 26, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 26, NULL, NULL, NULL),
  -- Oran Berry
  (184, 26, NULL, NULL, NULL),
  -- Persim Berry
  (185, 26, NULL, NULL, NULL),
  -- Lum Berry
  (186, 26, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 26, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 26, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 26, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 26, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 26, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 26, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 26, NULL, NULL, NULL),
  -- Occa Berry
  (213, 26, NULL, NULL, NULL),
  -- Passho Berry
  (214, 26, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 26, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 26, NULL, NULL, NULL),
  -- Yache Berry
  (217, 26, NULL, NULL, NULL),
  -- Chople Berry
  (218, 26, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 26, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 26, NULL, NULL, NULL),
  -- Coba Berry
  (221, 26, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 26, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 26, NULL, NULL, NULL),
  -- Charti Berry
  (224, 26, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 26, NULL, NULL, NULL),
  -- Haban Berry
  (226, 26, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 26, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 26, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 26, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 26, NULL, NULL, NULL),
  -- Mega Stones
  -- Venusaurite
  (263, 26, NULL, NULL, NULL),
  -- Charizardite X
  (264, 26, NULL, NULL, NULL),
  -- Charizardite Y
  (265, 26, NULL, NULL, NULL),
  -- Blastoisinite
  (266, 26, NULL, NULL, NULL),
  -- Beedrillite
  (267, 26, NULL, NULL, NULL),
  -- Pidgeotite
  (268, 26, NULL, NULL, NULL),
  -- Alakazite
  (269, 26, NULL, NULL, NULL),
  -- Slowbronite
  (270, 26, NULL, NULL, NULL),
  -- Gengarite
  (271, 26, NULL, NULL, NULL),
  -- Kangaskhanite
  (272, 26, NULL, NULL, NULL),
  -- Pinsirite
  (273, 26, NULL, NULL, NULL),
  -- Gyaradosite
  (274, 26, NULL, NULL, NULL),
  -- Aerodactylite
  (275, 26, NULL, NULL, NULL),
  -- Ampharosite
  (278, 26, NULL, NULL, NULL),
  -- Steelixite
  (279, 26, NULL, NULL, NULL),
  -- Scizorite
  (280, 26, NULL, NULL, NULL),
  -- Heracronite
  (281, 26, NULL, NULL, NULL),
  -- Houndoominite
  (282, 26, NULL, NULL, NULL),
  -- Tyranitarite
  (283, 26, NULL, NULL, NULL),
  -- Sceptilite
  (284, 26, NULL, NULL, NULL),
  -- Blazikenite
  (285, 26, NULL, NULL, NULL),
  -- Swampertite
  (286, 26, NULL, NULL, NULL),
  -- Gardevoirite
  (287, 26, NULL, NULL, NULL),
  -- Sablenite
  (288, 26, NULL, NULL, NULL),
  -- Mawilite
  (289, 26, NULL, NULL, NULL),
  -- Aggronite
  (290, 26, NULL, NULL, NULL),
  -- Medichamite
  (291, 26, NULL, NULL, NULL),
  -- Manectite
  (292, 26, NULL, NULL, NULL),
  -- Sharpedonite
  (293, 26, NULL, NULL, NULL),
  -- Cameruptite
  (294, 26, NULL, NULL, NULL),
  -- Altarianite
  (295, 26, NULL, NULL, NULL),
  -- Banettite
  (296, 26, NULL, NULL, NULL),
  -- Absolite
  (297, 26, NULL, NULL, NULL),
  -- Glalitite
  (298, 26, NULL, NULL, NULL),
  -- Salamencite
  (299, 26, NULL, NULL, NULL),
  -- Metagrossite
  (300, 26, NULL, NULL, NULL),
  -- Latiasite
  (301, 26, NULL, NULL, NULL),
  -- Latiosite
  (302, 26, NULL, NULL, NULL),
  -- Lopunnite
  (303, 26, NULL, NULL, NULL),
  -- Garchompite
  (304, 26, NULL, NULL, NULL),
  -- Lucarionite
  (305, 26, NULL, NULL, NULL),
  -- Abomasite
  (306, 26, NULL, NULL, NULL),
  -- Galladite
  (307, 26, NULL, NULL, NULL),
  -- Audinite
  (308, 26, NULL, NULL, NULL),
  -- Clefablite
  (458, 26, NULL, NULL, NULL),
  -- Victreebelite
  (459, 26, NULL, NULL, NULL),
  -- Starminite
  (460, 26, NULL, NULL, NULL),
  -- Dragoninite
  (461, 26, NULL, NULL, NULL),
  -- Meganiumite
  (462, 26, NULL, NULL, NULL),
  -- Feraligite
  (463, 26, NULL, NULL, NULL),
  -- Skarmorite
  (464, 26, NULL, NULL, NULL),
  -- Froslassite
  (465, 26, NULL, NULL, NULL),
  -- Emboarite
  (468, 26, NULL, NULL, NULL),
  -- Excadrite
  (469, 26, NULL, NULL, NULL),
  -- Scolipite
  (470, 26, NULL, NULL, NULL),
  -- Scraftinite
  (471, 26, NULL, NULL, NULL),
  -- Eelektrossite
  (472, 26, NULL, NULL, NULL),
  -- Chandelurite
  (473, 26, NULL, NULL, NULL),
  -- Chesnaughtite
  (474, 26, NULL, 11, 'Requires official online ranked match participation in Pokémon Legends: Z-A.'),
  -- Delphoxite
  (475, 26, NULL, 11, 'Requires official online ranked match participation in Pokémon Legends: Z-A.'),
  -- Greninjite
  (476, 26, NULL, 11, 'Requires official online ranked match participation in Pokémon Legends: Z-A.'),
  -- Pyroarite
  (477, 26, NULL, NULL, NULL),
  -- Floettite
  (478, 26, NULL, NULL, NULL),
  -- Malamarite
  (479, 26, NULL, NULL, NULL),
  -- Barbaracite
  (480, 26, NULL, NULL, NULL),
  -- Dragalgite
  (481, 26, NULL, NULL, NULL),
  -- Hawluchanite
  (482, 26, NULL, NULL, NULL),
  -- Zygardite
  (483, 26, NULL, NULL, NULL),
  -- Drampanite
  (484, 26, NULL, NULL, NULL),
  -- Falinksite
  (486, 26, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 26, NULL, NULL, NULL),
  -- Black Glasses
  (311, 26, NULL, NULL, NULL),
  -- Charcoal
  (312, 26, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 26, NULL, NULL, NULL),
  -- Fairy Feather
  (314, 26, NULL, NULL, NULL),
  -- Hard Stone
  (315, 26, NULL, NULL, NULL),
  -- Magnet
  (316, 26, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 26, NULL, NULL, NULL),
  -- Mystic Water
  (318, 26, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 26, NULL, NULL, NULL),
  -- Poison Barb
  (321, 26, NULL, NULL, NULL),
  -- Sharp Beak
  (323, 26, NULL, NULL, NULL),
  -- Silk Scarf
  (324, 26, NULL, NULL, NULL),
  -- Silver Powder
  (325, 26, NULL, NULL, NULL),
  -- Soft Sand
  (326, 26, NULL, NULL, NULL),
  -- Spell Tag
  (327, 26, NULL, NULL, NULL),
  -- Twisted Spoon
  (328, 26, NULL, NULL, NULL),
  -- Normal Gem
  (329, 26, NULL, NULL, NULL),
  -- Leek
  (363, 26, NULL, NULL, NULL),
  -- Light Ball
  (364, 26, NULL, NULL, NULL),
  -- Thick Club
  (368, 26, NULL, NULL, NULL),
  -- Assault Vest
  (373, 26, NULL, NULL, NULL),
  -- Big Root
  (375, 26, NULL, NULL, NULL),
  -- Eviolite
  (390, 26, NULL, NULL, NULL),
  -- Expert Belt
  (391, 26, NULL, NULL, NULL),
  -- Focus Band
  (394, 26, NULL, NULL, NULL),
  -- Focus Sash
  (395, 26, NULL, NULL, NULL),
  -- Leftovers
  (403, 26, NULL, NULL, NULL),
  -- Life Orb
  (404, 26, NULL, NULL, NULL),
  -- Muscle Band
  (412, 26, NULL, NULL, NULL),
  -- Quick Claw
  (417, 26, NULL, NULL, NULL),
  -- Rocky Helmet
  (420, 26, NULL, NULL, NULL),
  -- Scope Lens
  (423, 26, NULL, NULL, NULL),
  -- Shell Bell
  (425, 26, NULL, NULL, NULL),
  -- Weakness Policy
  (433, 26, NULL, NULL, NULL),
  -- White Herb
  (434, 26, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 26, NULL, NULL, NULL),
  -- Power Weight
  (439, 26, NULL, NULL, NULL),
  -- Power Bracer
  (440, 26, NULL, NULL, NULL),
  -- Power Belt
  (441, 26, NULL, NULL, NULL),
  -- Power Lens
  (442, 26, NULL, NULL, NULL),
  -- Power Band
  (443, 26, NULL, NULL, NULL),
  -- Power Anklet
  (444, 26, NULL, NULL, NULL),
  -- Lucky Egg
  (446, 26, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 26, NULL, NULL, NULL);
