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
-- Version Group: Mega Dimension
-- Scope: additive items available in this optional content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Drive Form Items
  -- Douse Drive
  (18, 27, NULL, NULL, NULL),
  -- Shock Drive
  (19, 27, NULL, NULL, NULL),
  -- Burn Drive
  (20, 27, NULL, NULL, NULL),
  -- Chill Drive
  (21, 27, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- Up-Grade
  (72, 27, NULL, NULL, NULL),
  -- Dubious Disc
  (82, 27, NULL, NULL, NULL),
  -- Prism Scale
  (86, 27, NULL, NULL, NULL),
  -- Special Evolution Items
  -- Malicious Armor
  (108, 27, NULL, NULL, NULL),
  -- Auspicious Armor
  (109, 27, NULL, NULL, NULL),
  -- Galarica Cuff
  (101, 27, NULL, NULL, NULL),
  -- Galarica Wreath
  (102, 27, NULL, NULL, NULL),
  -- Black Augurite
  (106, 27, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 27, NULL, NULL, NULL),
  -- Great Ball
  (118, 27, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 27, NULL, NULL, NULL),
  -- Safari Ball
  (121, 27, NULL, NULL, NULL),
  -- Fast Ball
  (122, 27, NULL, NULL, NULL),
  -- Level Ball
  (123, 27, NULL, NULL, NULL),
  -- Lure Ball
  (124, 27, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 27, NULL, NULL, NULL),
  -- Love Ball
  (126, 27, NULL, NULL, NULL),
  -- Friend Ball
  (127, 27, NULL, NULL, NULL),
  -- Moon Ball
  (128, 27, NULL, NULL, NULL),
  -- Sport Ball
  (129, 27, NULL, NULL, NULL),
  -- Net Ball
  (130, 27, NULL, NULL, NULL),
  -- Dive Ball
  (131, 27, NULL, NULL, NULL),
  -- Nest Ball
  (132, 27, NULL, NULL, NULL),
  -- Repeat Ball
  (133, 27, NULL, NULL, NULL),
  -- Timer Ball
  (134, 27, NULL, NULL, NULL),
  -- Luxury Ball
  (135, 27, NULL, NULL, NULL),
  -- Premier Ball
  (136, 27, NULL, NULL, NULL),
  -- Dusk Ball
  (137, 27, NULL, NULL, NULL),
  -- Heal Ball
  (138, 27, NULL, NULL, NULL),
  -- Quick Ball
  (139, 27, NULL, NULL, NULL),
  -- Dream Ball
  (141, 27, NULL, NULL, NULL),
  -- Beast Ball
  (142, 27, NULL, NULL, NULL),
  -- Primal Orbs
  -- Red Orb
  (359, 27, NULL, NULL, NULL),
  -- Blue Orb
  (360, 27, NULL, NULL, NULL),
  -- Mega Stones
  -- Heatranite
  (466, 27, NULL, NULL, NULL),
  -- Darkranite
  (467, 27, NULL, NULL, NULL),
  -- Zeraorite
  (485, 27, NULL, NULL, NULL),
  -- Raichunite X
  (487, 27, NULL, NULL, NULL),
  -- Raichunite Y
  (488, 27, NULL, NULL, NULL),
  -- Chimechite
  (489, 27, NULL, NULL, NULL),
  -- Absolite Z
  (490, 27, NULL, NULL, NULL),
  -- Staraptite
  (491, 27, NULL, NULL, NULL),
  -- Garchompite Z
  (492, 27, NULL, NULL, NULL),
  -- Lucarionite Z
  (493, 27, NULL, NULL, NULL),
  -- Golurkite
  (494, 27, NULL, NULL, NULL),
  -- Meowsticite
  (495, 27, NULL, NULL, NULL),
  -- Crabominite
  (496, 27, NULL, NULL, NULL),
  -- Golisopite
  (497, 27, NULL, NULL, NULL),
  -- Magearnite
  (498, 27, NULL, NULL, NULL),
  -- Scovillainite
  (499, 27, NULL, NULL, NULL),
  -- Baxcalibrite
  (500, 27, NULL, 11, 'Requires official online ranked match participation in Pokémon Legends: Z-A: Mega Dimension.'),
  -- Tatsugirinite
  (501, 27, NULL, NULL, NULL),
  -- Glimmoranite
  (502, 27, NULL, NULL, NULL);
