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
-- Generation: 8
-- Version Group: The Crown Tundra
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 20, NULL, NULL, NULL),
  -- Metal Coat
  (70, 20, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 20, NULL, NULL, NULL),
  -- Electirizer
  (80, 20, NULL, NULL, NULL),
  -- Magmarizer
  (81, 20, NULL, NULL, NULL),
  -- Prism Scale
  (86, 20, NULL, NULL, NULL),
  -- Special Evolution Items
  -- Galarica Wreath
  (102, 20, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 20, NULL, NULL, NULL),
  -- Great Ball
  (118, 20, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 20, NULL, NULL, NULL),
  -- Master Ball
  (120, 20, NULL, NULL, NULL),
  -- Fast Ball
  (122, 20, NULL, NULL, NULL),
  -- Level Ball
  (123, 20, NULL, NULL, NULL),
  -- Lure Ball
  (124, 20, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 20, NULL, NULL, NULL),
  -- Love Ball
  (126, 20, NULL, NULL, NULL),
  -- Friend Ball
  (127, 20, NULL, NULL, NULL),
  -- Moon Ball
  (128, 20, NULL, NULL, NULL),
  -- Net Ball
  (130, 20, NULL, NULL, NULL),
  -- Dive Ball
  (131, 20, NULL, NULL, NULL),
  -- Nest Ball
  (132, 20, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 20, NULL, NULL, NULL),
  -- Timer Ball
  (134, 20, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 20, NULL, NULL, NULL),
  -- Premier Ball
  (136, 20, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 20, NULL, NULL, NULL),
  -- Heal Ball
  (138, 20, NULL, NULL, NULL),
  -- Quick Ball
  (139, 20, NULL, NULL, NULL),
  -- Dream Ball
  (141, 20, NULL, NULL, NULL),
  -- Beast Ball
  (142, 20, NULL, NULL, NULL),
  -- Fossils
  -- Fossilized Bird
  (164, 20, NULL, NULL, NULL),
  -- Fossilized Fish
  (165, 20, NULL, NULL, NULL),
  -- Fossilized Drake
  (166, 20, NULL, NULL, NULL),
  -- Fossilized Dino
  (167, 20, NULL, NULL, NULL),
  -- Modern Berries
  -- Chesto Berry
  (179, 20, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 20, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 20, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 20, NULL, NULL, NULL),
  -- Oran Berry
  (184, 20, NULL, NULL, NULL),
  -- Persim Berry
  (185, 20, NULL, NULL, NULL),
  -- Lum Berry
  (186, 20, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 20, NULL, NULL, NULL),
  -- Figy Berry
  (188, 20, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 20, NULL, NULL, NULL),
  -- Mago Berry
  (190, 20, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 20, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 20, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 20, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 20, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 20, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 20, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 20, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 20, NULL, NULL, NULL),
  -- Occa Berry
  (213, 20, NULL, NULL, NULL),
  -- Passho Berry
  (214, 20, NULL, NULL, NULL),
  -- Wacan Berry
  (215, 20, NULL, NULL, NULL),
  -- Rindo Berry
  (216, 20, NULL, NULL, NULL),
  -- Yache Berry
  (217, 20, NULL, NULL, NULL),
  -- Chople Berry
  (218, 20, NULL, NULL, NULL),
  -- Kebia Berry
  (219, 20, NULL, NULL, NULL),
  -- Shuca Berry
  (220, 20, NULL, NULL, NULL),
  -- Coba Berry
  (221, 20, NULL, NULL, NULL),
  -- Payapa Berry
  (222, 20, NULL, NULL, NULL),
  -- Tanga Berry
  (223, 20, NULL, NULL, NULL),
  -- Charti Berry
  (224, 20, NULL, NULL, NULL),
  -- Kasib Berry
  (225, 20, NULL, NULL, NULL),
  -- Haban Berry
  (226, 20, NULL, NULL, NULL),
  -- Colbur Berry
  (227, 20, NULL, NULL, NULL),
  -- Babiri Berry
  (228, 20, NULL, NULL, NULL),
  -- Chilan Berry
  (229, 20, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 20, NULL, NULL, NULL),
  -- Salac Berry
  (232, 20, NULL, NULL, NULL),
  -- Petaya Berry
  (233, 20, NULL, NULL, NULL),
  -- Apicot Berry
  (234, 20, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 20, NULL, NULL, NULL),
  -- Starf Berry
  (236, 20, NULL, NULL, NULL),
  -- Enigma Berry
  (237, 20, NULL, NULL, NULL),
  -- Micle Berry
  (238, 20, NULL, NULL, NULL),
  -- Custap Berry
  (239, 20, NULL, NULL, NULL),
  -- Jaboca Berry
  (240, 20, NULL, NULL, NULL),
  -- Rowap Berry
  (241, 20, NULL, NULL, NULL),
  -- Roseli Berry
  (242, 20, NULL, NULL, NULL),
  -- Kee Berry
  (243, 20, NULL, NULL, NULL),
  -- Maranga Berry
  (244, 20, NULL, NULL, NULL),
  -- General Held Items
  -- Charcoal
  (312, 20, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 20, NULL, NULL, NULL),
  -- Hard Stone
  (315, 20, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 20, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 20, NULL, NULL, NULL),
  -- Poison Barb
  (321, 20, NULL, NULL, NULL),
  -- Soft Sand
  (326, 20, NULL, NULL, NULL),
  -- Normal Gem
  (329, 20, NULL, NULL, NULL),
  -- Odd Incense
  (353, 20, NULL, NULL, NULL),
  -- Thick Club
  (368, 20, NULL, NULL, NULL),
  -- Assault Vest
  (373, 20, NULL, NULL, NULL),
  -- Big Root
  (375, 20, NULL, NULL, NULL),
  -- Binding Band
  (376, 20, NULL, NULL, NULL),
  -- Blunder Policy
  (378, 20, NULL, NULL, NULL),
  -- Eject Pack
  (388, 20, NULL, NULL, NULL),
  -- Float Stone
  (393, 20, NULL, NULL, NULL),
  -- Focus Sash
  (395, 20, NULL, NULL, NULL),
  -- Heavy-Duty Boots
  (399, 20, NULL, NULL, NULL),
  -- Iron Ball
  (401, 20, NULL, NULL, NULL),
  -- Life Orb
  (404, 20, NULL, NULL, NULL),
  -- Mental Herb
  (408, 20, NULL, NULL, NULL),
  -- Metronome
  (409, 20, NULL, NULL, NULL),
  -- Room Service
  (421, 20, NULL, NULL, NULL),
  -- Safety Goggles
  (422, 20, NULL, NULL, NULL),
  -- Shell Bell
  (425, 20, NULL, NULL, NULL),
  -- Snowball
  (427, 20, NULL, NULL, NULL),
  -- Sticky Barb
  (428, 20, NULL, NULL, NULL),
  -- Throat Spray
  (430, 20, NULL, NULL, NULL),
  -- Utility Umbrella
  (432, 20, NULL, NULL, NULL),
  -- Wise Glasses
  (436, 20, NULL, NULL, NULL),
  -- Everstone
  (449, 20, NULL, NULL, NULL),
  -- Soothe Bell
  (450, 20, NULL, NULL, NULL);
