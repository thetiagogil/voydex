-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 501-550.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Oshawott - Tackle - Level 1
  (501, 50100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oshawott - Tail Whip - Level 5
  (501, 50100, 39, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Oshawott - Water Gun - Level 7
  (501, 50100, 55, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Oshawott - Soak - Level 11
  (501, 50100, 487, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Oshawott - Focus Energy - Level 13
  (501, 50100, 116, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oshawott - Razor Shell - Level 17
  (501, 50100, 534, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Oshawott - Fury Cutter - Level 19
  (501, 50100, 210, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Oshawott - Water Pulse - Level 23
  (501, 50100, 352, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oshawott - Aerial Ace - Level 25
  (501, 50100, 332, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Oshawott - Aqua Jet - Level 29
  (501, 50100, 453, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Oshawott - Encore - Level 31
  (501, 50100, 227, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Oshawott - Aqua Tail - Level 35
  (501, 50100, 401, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Oshawott - Retaliate - Level 37
  (501, 50100, 514, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Oshawott - Swords Dance - Level 41
  (501, 50100, 14, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Oshawott - Hydro Pump - Level 43
  (501, 50100, 56, 23, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Oshawott - Take Down - TM001
  (501, 50100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Oshawott - Protect - TM007
  (501, 50100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Oshawott - Water Pulse - TM011
  (501, 50100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Oshawott - Thief - TM018
  (501, 50100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Oshawott - Chilling Water - TM022
  (501, 50100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Oshawott - Facade - TM025
  (501, 50100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Oshawott - Aerial Ace - TM027
  (501, 50100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Oshawott - Swift - TM032
  (501, 50100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Oshawott - Icy Wind - TM034
  (501, 50100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Oshawott - Fling - TM043
  (501, 50100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Oshawott - Avalanche - TM046
  (501, 50100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Oshawott - Endure - TM047
  (501, 50100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oshawott - Rain Dance - TM050
  (501, 50100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Oshawott - Snowscape - TM052
  (501, 50100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Oshawott - Dig - TM055
  (501, 50100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Oshawott - False Swipe - TM057
  (501, 50100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 31),
  -- Oshawott - Air Slash - TM065
  (501, 50100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Oshawott - Sleep Talk - TM070
  (501, 50100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Oshawott - Waterfall - TM077
  (501, 50100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Oshawott - Grass Knot - TM081
  (501, 50100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Oshawott - Rest - TM085
  (501, 50100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Oshawott - Taunt - TM087
  (501, 50100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Oshawott - Swords Dance - TM088
  (501, 50100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Oshawott - Substitute - TM103
  (501, 50100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Oshawott - X-Scissor - TM105
  (501, 50100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 40),
  -- Oshawott - Liquidation - TM110
  (501, 50100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Oshawott - Encore - TM122
  (501, 50100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 42),
  -- Oshawott - Surf - TM123
  (501, 50100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Oshawott - Helping Hand - TM130
  (501, 50100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Oshawott - Ice Beam - TM135
  (501, 50100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Oshawott - Hydro Pump - TM142
  (501, 50100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 46),
  -- Oshawott - Blizzard - TM143
  (501, 50100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 47),
  -- Oshawott - Water Pledge - TM145
  (501, 50100, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 48),
  -- Oshawott - Tera Blast - TM171
  (501, 50100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Oshawott - Screech - Egg
  (501, 50100, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oshawott - Detect - Egg
  (501, 50100, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Oshawott - Knock Off - Egg
  (501, 50100, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Oshawott - Copycat - Egg
  (501, 50100, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Oshawott - Night Slash - Egg
  (501, 50100, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Oshawott - Air Slash - Egg
  (501, 50100, 403, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Oshawott - Sacred Sword - Egg
  (501, 50100, 533, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Oshawott - Aqua Cutter - Egg
  (501, 50100, 895, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dewott - Tackle - Level 1
  (502, 50200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewott - Tail Whip - Level 1
  (502, 50200, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewott - Water Gun - Level 1
  (502, 50200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewott - Soak - Level 1
  (502, 50200, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewott - Focus Energy - Level 13
  (502, 50200, 116, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Dewott - Razor Shell - Level 18
  (502, 50200, 534, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Dewott - Fury Cutter - Level 21
  (502, 50200, 210, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dewott - Water Pulse - Level 26
  (502, 50200, 352, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Dewott - Aerial Ace - Level 29
  (502, 50200, 332, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Dewott - Aqua Jet - Level 34
  (502, 50200, 453, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Dewott - Encore - Level 37
  (502, 50200, 227, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Dewott - Aqua Tail - Level 42
  (502, 50200, 401, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Dewott - Retaliate - Level 45
  (502, 50200, 514, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Dewott - Swords Dance - Level 50
  (502, 50200, 14, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Dewott - Hydro Pump - Level 53
  (502, 50200, 56, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Dewott - Take Down - TM001
  (502, 50200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dewott - Protect - TM007
  (502, 50200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Dewott - Water Pulse - TM011
  (502, 50200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Dewott - Thief - TM018
  (502, 50200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Dewott - Chilling Water - TM022
  (502, 50200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Dewott - Facade - TM025
  (502, 50200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Dewott - Aerial Ace - TM027
  (502, 50200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Dewott - Swift - TM032
  (502, 50200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Dewott - Icy Wind - TM034
  (502, 50200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Dewott - Fling - TM043
  (502, 50200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Dewott - Avalanche - TM046
  (502, 50200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Dewott - Endure - TM047
  (502, 50200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Dewott - Rain Dance - TM050
  (502, 50200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Dewott - Snowscape - TM052
  (502, 50200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Dewott - Dig - TM055
  (502, 50200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Dewott - False Swipe - TM057
  (502, 50200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 31),
  -- Dewott - Brick Break - TM058
  (502, 50200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Dewott - Air Slash - TM065
  (502, 50200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Dewott - Sleep Talk - TM070
  (502, 50200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Dewott - Waterfall - TM077
  (502, 50200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Dewott - Grass Knot - TM081
  (502, 50200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Dewott - Rest - TM085
  (502, 50200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Dewott - Taunt - TM087
  (502, 50200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Dewott - Swords Dance - TM088
  (502, 50200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Dewott - Substitute - TM103
  (502, 50200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Dewott - X-Scissor - TM105
  (502, 50200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 41),
  -- Dewott - Liquidation - TM110
  (502, 50200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 42),
  -- Dewott - Encore - TM122
  (502, 50200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Dewott - Surf - TM123
  (502, 50200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 44),
  -- Dewott - Helping Hand - TM130
  (502, 50200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Dewott - Ice Beam - TM135
  (502, 50200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Dewott - Hydro Pump - TM142
  (502, 50200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Dewott - Blizzard - TM143
  (502, 50200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Dewott - Water Pledge - TM145
  (502, 50200, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 49),
  -- Dewott - Tera Blast - TM171
  (502, 50200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Dewott - Screech - Egg
  (502, 50200, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dewott - Detect - Egg
  (502, 50200, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dewott - Knock Off - Egg
  (502, 50200, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dewott - Copycat - Egg
  (502, 50200, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dewott - Night Slash - Egg
  (502, 50200, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dewott - Air Slash - Egg
  (502, 50200, 403, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dewott - Sacred Sword - Egg
  (502, 50200, 533, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dewott - Aqua Cutter - Egg
  (502, 50200, 895, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Samurott - Tackle - Level 1
  (503, 50300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Samurott - Tail Whip - Level 1
  (503, 50300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Samurott - Water Gun - Level 1
  (503, 50300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Samurott - Megahorn - Level 1
  (503, 50300, 224, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Samurott - Soak - Level 1
  (503, 50300, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Samurott - Focus Energy - Level 13
  (503, 50300, 116, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Samurott - Razor Shell - Level 18
  (503, 50300, 534, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Samurott - Fury Cutter - Level 21
  (503, 50300, 210, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Samurott - Water Pulse - Level 25
  (503, 50300, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Samurott - Aerial Ace - Level 29
  (503, 50300, 332, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Samurott - Aqua Jet - Level 34
  (503, 50300, 453, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Samurott - Encore - Level 39
  (503, 50300, 227, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Samurott - Aqua Tail - Level 46
  (503, 50300, 401, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Samurott - Retaliate - Level 51
  (503, 50300, 514, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Samurott - Swords Dance - Level 58
  (503, 50300, 14, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Samurott - Hydro Pump - Level 63
  (503, 50300, 56, 23, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Samurott - Take Down - TM001
  (503, 50300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Samurott - Scary Face - TM006
  (503, 50300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Samurott - Protect - TM007
  (503, 50300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Samurott - Water Pulse - TM011
  (503, 50300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Samurott - Thief - TM018
  (503, 50300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Samurott - Chilling Water - TM022
  (503, 50300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Samurott - Facade - TM025
  (503, 50300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Samurott - Aerial Ace - TM027
  (503, 50300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Samurott - Bulldoze - TM028
  (503, 50300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Samurott - Swift - TM032
  (503, 50300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Samurott - Icy Wind - TM034
  (503, 50300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Samurott - Fling - TM043
  (503, 50300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Samurott - Avalanche - TM046
  (503, 50300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Samurott - Endure - TM047
  (503, 50300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Samurott - Rain Dance - TM050
  (503, 50300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Samurott - Snowscape - TM052
  (503, 50300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Samurott - Smart Strike - TM053
  (503, 50300, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 33),
  -- Samurott - Dig - TM055
  (503, 50300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Samurott - False Swipe - TM057
  (503, 50300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 35),
  -- Samurott - Brick Break - TM058
  (503, 50300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Samurott - Air Slash - TM065
  (503, 50300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Samurott - Body Slam - TM066
  (503, 50300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Samurott - Sleep Talk - TM070
  (503, 50300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Samurott - Waterfall - TM077
  (503, 50300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 40),
  -- Samurott - Grass Knot - TM081
  (503, 50300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Samurott - Rest - TM085
  (503, 50300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Samurott - Taunt - TM087
  (503, 50300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Samurott - Swords Dance - TM088
  (503, 50300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Samurott - Substitute - TM103
  (503, 50300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Samurott - X-Scissor - TM105
  (503, 50300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Samurott - Drill Run - TM106
  (503, 50300, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 47),
  -- Samurott - Liquidation - TM110
  (503, 50300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Samurott - Encore - TM122
  (503, 50300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Samurott - Surf - TM123
  (503, 50300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 50),
  -- Samurott - Helping Hand - TM130
  (503, 50300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Samurott - Ice Beam - TM135
  (503, 50300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Samurott - Hydro Pump - TM142
  (503, 50300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Samurott - Blizzard - TM143
  (503, 50300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Samurott - Water Pledge - TM145
  (503, 50300, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 55),
  -- Samurott - Giga Impact - TM152
  (503, 50300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Samurott - Hydro Cannon - TM154
  (503, 50300, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 57),
  -- Samurott - Hyper Beam - TM163
  (503, 50300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Samurott - Tera Blast - TM171
  (503, 50300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Samurott - Screech - Egg
  (503, 50300, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Samurott - Detect - Egg
  (503, 50300, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Samurott - Knock Off - Egg
  (503, 50300, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Samurott - Copycat - Egg
  (503, 50300, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Samurott - Night Slash - Egg
  (503, 50300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Samurott - Air Slash - Egg
  (503, 50300, 403, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Samurott - Sacred Sword - Egg
  (503, 50300, 533, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Samurott - Aqua Cutter - Egg
  (503, 50300, 895, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Samurott - Slash - Evolution
  (503, 50300, 163, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Samurott (Hisuian Samurott) - Tackle - Level 1
  (503, 50301, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Samurott (Hisuian Samurott) - Tail Whip - Level 1
  (503, 50301, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Samurott (Hisuian Samurott) - Water Gun - Level 1
  (503, 50301, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Samurott (Hisuian Samurott) - Slash - Level 1
  (503, 50301, 163, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Samurott (Hisuian Samurott) - Megahorn - Level 1
  (503, 50301, 224, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Samurott (Hisuian Samurott) - Sucker Punch - Level 1
  (503, 50301, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Samurott (Hisuian Samurott) - Focus Energy - Level 13
  (503, 50301, 116, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Samurott (Hisuian Samurott) - Razor Shell - Level 18
  (503, 50301, 534, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Samurott (Hisuian Samurott) - Fury Cutter - Level 21
  (503, 50301, 210, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Samurott (Hisuian Samurott) - Water Pulse - Level 25
  (503, 50301, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Samurott (Hisuian Samurott) - Aerial Ace - Level 29
  (503, 50301, 332, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Samurott (Hisuian Samurott) - Aqua Jet - Level 34
  (503, 50301, 453, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Samurott (Hisuian Samurott) - Encore - Level 39
  (503, 50301, 227, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Samurott (Hisuian Samurott) - Aqua Tail - Level 46
  (503, 50301, 401, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Samurott (Hisuian Samurott) - Retaliate - Level 51
  (503, 50301, 514, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Samurott (Hisuian Samurott) - Swords Dance - Level 58
  (503, 50301, 14, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Samurott (Hisuian Samurott) - Hydro Pump - Level 63
  (503, 50301, 56, 23, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Samurott (Hisuian Samurott) - Take Down - TM001
  (503, 50301, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Samurott (Hisuian Samurott) - Scary Face - TM006
  (503, 50301, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Samurott (Hisuian Samurott) - Protect - TM007
  (503, 50301, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Samurott (Hisuian Samurott) - Water Pulse - TM011
  (503, 50301, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Samurott (Hisuian Samurott) - Thief - TM018
  (503, 50301, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Samurott (Hisuian Samurott) - Chilling Water - TM022
  (503, 50301, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Samurott (Hisuian Samurott) - Facade - TM025
  (503, 50301, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Samurott (Hisuian Samurott) - Aerial Ace - TM027
  (503, 50301, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Samurott (Hisuian Samurott) - Bulldoze - TM028
  (503, 50301, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Samurott (Hisuian Samurott) - Snarl - TM030
  (503, 50301, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Samurott (Hisuian Samurott) - Swift - TM032
  (503, 50301, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Samurott (Hisuian Samurott) - Icy Wind - TM034
  (503, 50301, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Samurott (Hisuian Samurott) - Fling - TM043
  (503, 50301, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Samurott (Hisuian Samurott) - Avalanche - TM046
  (503, 50301, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 31),
  -- Samurott (Hisuian Samurott) - Endure - TM047
  (503, 50301, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Samurott (Hisuian Samurott) - Rain Dance - TM050
  (503, 50301, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Samurott (Hisuian Samurott) - Snowscape - TM052
  (503, 50301, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 34),
  -- Samurott (Hisuian Samurott) - Smart Strike - TM053
  (503, 50301, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 35),
  -- Samurott (Hisuian Samurott) - Dig - TM055
  (503, 50301, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Samurott (Hisuian Samurott) - False Swipe - TM057
  (503, 50301, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 37),
  -- Samurott (Hisuian Samurott) - Brick Break - TM058
  (503, 50301, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Samurott (Hisuian Samurott) - Air Slash - TM065
  (503, 50301, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 39),
  -- Samurott (Hisuian Samurott) - Body Slam - TM066
  (503, 50301, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Samurott (Hisuian Samurott) - Sleep Talk - TM070
  (503, 50301, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Samurott (Hisuian Samurott) - Waterfall - TM077
  (503, 50301, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 42),
  -- Samurott (Hisuian Samurott) - Grass Knot - TM081
  (503, 50301, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Samurott (Hisuian Samurott) - Rest - TM085
  (503, 50301, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Samurott (Hisuian Samurott) - Taunt - TM087
  (503, 50301, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Samurott (Hisuian Samurott) - Swords Dance - TM088
  (503, 50301, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Samurott (Hisuian Samurott) - Dark Pulse - TM094
  (503, 50301, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Samurott (Hisuian Samurott) - Substitute - TM103
  (503, 50301, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Samurott (Hisuian Samurott) - X-Scissor - TM105
  (503, 50301, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Samurott (Hisuian Samurott) - Drill Run - TM106
  (503, 50301, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 50),
  -- Samurott (Hisuian Samurott) - Liquidation - TM110
  (503, 50301, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 51),
  -- Samurott (Hisuian Samurott) - Encore - TM122
  (503, 50301, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Samurott (Hisuian Samurott) - Surf - TM123
  (503, 50301, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 53),
  -- Samurott (Hisuian Samurott) - Helping Hand - TM130
  (503, 50301, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Samurott (Hisuian Samurott) - Ice Beam - TM135
  (503, 50301, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 55),
  -- Samurott (Hisuian Samurott) - Hydro Pump - TM142
  (503, 50301, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 56),
  -- Samurott (Hisuian Samurott) - Blizzard - TM143
  (503, 50301, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 57),
  -- Samurott (Hisuian Samurott) - Water Pledge - TM145
  (503, 50301, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 58),
  -- Samurott (Hisuian Samurott) - Giga Impact - TM152
  (503, 50301, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Samurott (Hisuian Samurott) - Hydro Cannon - TM154
  (503, 50301, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 60),
  -- Samurott (Hisuian Samurott) - Hyper Beam - TM163
  (503, 50301, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Samurott (Hisuian Samurott) - Tera Blast - TM171
  (503, 50301, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Samurott (Hisuian Samurott) - Screech - Egg
  (503, 50301, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Samurott (Hisuian Samurott) - Detect - Egg
  (503, 50301, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Samurott (Hisuian Samurott) - Knock Off - Egg
  (503, 50301, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Samurott (Hisuian Samurott) - Copycat - Egg
  (503, 50301, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Samurott (Hisuian Samurott) - Night Slash - Egg
  (503, 50301, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Samurott (Hisuian Samurott) - Air Slash - Egg
  (503, 50301, 403, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Samurott (Hisuian Samurott) - Sacred Sword - Egg
  (503, 50301, 533, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Samurott (Hisuian Samurott) - Aqua Cutter - Egg
  (503, 50301, 895, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Samurott (Hisuian Samurott) - Ceaseless Edge - Evolution
  (503, 50301, 845, 23, NULL, 7, NULL, NULL, NULL, NULL, 71),
  -- Blitzle - Quick Attack - Level 1
  (522, 52200, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blitzle - Tail Whip - Level 4
  (522, 52200, 39, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Blitzle - Charge - Level 8
  (522, 52200, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Blitzle - Shock Wave - Level 11
  (522, 52200, 351, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Blitzle - Thunder Wave - Level 15
  (522, 52200, 86, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Blitzle - Flame Charge - Level 18
  (522, 52200, 488, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Blitzle - Spark - Level 22
  (522, 52200, 209, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Blitzle - Stomp - Level 25
  (522, 52200, 23, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Blitzle - Discharge - Level 29
  (522, 52200, 435, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Blitzle - Agility - Level 33
  (522, 52200, 97, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Blitzle - Wild Charge - Level 35
  (522, 52200, 528, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Blitzle - Thrash - Level 40
  (522, 52200, 37, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Blitzle - Take Down - TM001
  (522, 52200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Blitzle - Agility - TM004
  (522, 52200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Blitzle - Protect - TM007
  (522, 52200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Blitzle - Low Kick - TM012
  (522, 52200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Blitzle - Trailblaze - TM020
  (522, 52200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Blitzle - Charge Beam - TM023
  (522, 52200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Blitzle - Facade - TM025
  (522, 52200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Blitzle - Swift - TM032
  (522, 52200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Blitzle - Flame Charge - TM038
  (522, 52200, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 21),
  -- Blitzle - Endure - TM047
  (522, 52200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Blitzle - Volt Switch - TM048
  (522, 52200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 23),
  -- Blitzle - Sunny Day - TM049
  (522, 52200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Blitzle - Rain Dance - TM050
  (522, 52200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Blitzle - Smart Strike - TM053
  (522, 52200, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 26),
  -- Blitzle - Body Slam - TM066
  (522, 52200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Blitzle - Sleep Talk - TM070
  (522, 52200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Blitzle - Electro Ball - TM072
  (522, 52200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Blitzle - Light Screen - TM075
  (522, 52200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Blitzle - Thunder Wave - TM082
  (522, 52200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Blitzle - Rest - TM085
  (522, 52200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Blitzle - Eerie Impulse - TM096
  (522, 52200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 33),
  -- Blitzle - Substitute - TM103
  (522, 52200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Blitzle - Thunderbolt - TM126
  (522, 52200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 35),
  -- Blitzle - Helping Hand - TM130
  (522, 52200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Blitzle - Baton Pass - TM132
  (522, 52200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 37),
  -- Blitzle - Electric Terrain - TM136
  (522, 52200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 38),
  -- Blitzle - Wild Charge - TM147
  (522, 52200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 39),
  -- Blitzle - Thunder - TM166
  (522, 52200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 40),
  -- Blitzle - Tera Blast - TM171
  (522, 52200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Blitzle - Double Kick - Egg
  (522, 52200, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Blitzle - Sand Attack - Egg
  (522, 52200, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Blitzle - Screech - Egg
  (522, 52200, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Blitzle - Feint - Egg
  (522, 52200, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Zebstrika - Tail Whip - Level 1
  (523, 52300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zebstrika - Thunder Wave - Level 1
  (523, 52300, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zebstrika - Quick Attack - Level 1
  (523, 52300, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zebstrika - Charge - Level 1
  (523, 52300, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zebstrika - Shock Wave - Level 11
  (523, 52300, 351, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Zebstrika - Flame Charge - Level 18
  (523, 52300, 488, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Zebstrika - Spark - Level 25
  (523, 52300, 209, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zebstrika - Stomp - Level 31
  (523, 52300, 23, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Zebstrika - Discharge - Level 36
  (523, 52300, 435, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Zebstrika - Agility - Level 42
  (523, 52300, 97, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Zebstrika - Wild Charge - Level 47
  (523, 52300, 528, 23, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Zebstrika - Thrash - Level 53
  (523, 52300, 37, 23, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Zebstrika - Take Down - TM001
  (523, 52300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Zebstrika - Agility - TM004
  (523, 52300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Zebstrika - Protect - TM007
  (523, 52300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Zebstrika - Low Kick - TM012
  (523, 52300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Zebstrika - Trailblaze - TM020
  (523, 52300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Zebstrika - Charge Beam - TM023
  (523, 52300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Zebstrika - Facade - TM025
  (523, 52300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Zebstrika - Bulldoze - TM028
  (523, 52300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Zebstrika - Swift - TM032
  (523, 52300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Zebstrika - Flame Charge - TM038
  (523, 52300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Zebstrika - Endure - TM047
  (523, 52300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Zebstrika - Volt Switch - TM048
  (523, 52300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Zebstrika - Sunny Day - TM049
  (523, 52300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Zebstrika - Rain Dance - TM050
  (523, 52300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Zebstrika - Smart Strike - TM053
  (523, 52300, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 27),
  -- Zebstrika - Body Slam - TM066
  (523, 52300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Zebstrika - Sleep Talk - TM070
  (523, 52300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Zebstrika - Electro Ball - TM072
  (523, 52300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 30),
  -- Zebstrika - Light Screen - TM075
  (523, 52300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Zebstrika - Thunder Wave - TM082
  (523, 52300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Zebstrika - Rest - TM085
  (523, 52300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Zebstrika - Taunt - TM087
  (523, 52300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Zebstrika - Eerie Impulse - TM096
  (523, 52300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Zebstrika - Substitute - TM103
  (523, 52300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Zebstrika - Thunderbolt - TM126
  (523, 52300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Zebstrika - Helping Hand - TM130
  (523, 52300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Zebstrika - Baton Pass - TM132
  (523, 52300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 39),
  -- Zebstrika - Electric Terrain - TM136
  (523, 52300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 40),
  -- Zebstrika - Wild Charge - TM147
  (523, 52300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 41),
  -- Zebstrika - Giga Impact - TM152
  (523, 52300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Zebstrika - Overheat - TM157
  (523, 52300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 43),
  -- Zebstrika - Hyper Beam - TM163
  (523, 52300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Zebstrika - Thunder - TM166
  (523, 52300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Zebstrika - Tera Blast - TM171
  (523, 52300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Zebstrika - Double Kick - Egg
  (523, 52300, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zebstrika - Sand Attack - Egg
  (523, 52300, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zebstrika - Screech - Egg
  (523, 52300, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zebstrika - Feint - Egg
  (523, 52300, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drilbur - Mud-Slap - Level 1
  (529, 52900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drilbur - Rapid Spin - Level 1
  (529, 52900, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drilbur - Scratch - Level 4
  (529, 52900, 10, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drilbur - Hone Claws - Level 8
  (529, 52900, 468, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drilbur - Fury Swipes - Level 12
  (529, 52900, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drilbur - Metal Claw - Level 16
  (529, 52900, 232, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drilbur - Sandstorm - Level 20
  (529, 52900, 201, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drilbur - Crush Claw - Level 24
  (529, 52900, 306, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drilbur - Rock Slide - Level 28
  (529, 52900, 157, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Drilbur - Dig - Level 32
  (529, 52900, 91, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drilbur - Swords Dance - Level 36
  (529, 52900, 14, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Drilbur - Drill Run - Level 40
  (529, 52900, 529, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Drilbur - Earthquake - Level 44
  (529, 52900, 89, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Drilbur - Fissure - Level 48
  (529, 52900, 90, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Drilbur - Take Down - TM001
  (529, 52900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Drilbur - Mud-Slap - TM005
  (529, 52900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Drilbur - Protect - TM007
  (529, 52900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Drilbur - Facade - TM025
  (529, 52900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Drilbur - Aerial Ace - TM027
  (529, 52900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Drilbur - Bulldoze - TM028
  (529, 52900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Drilbur - Metal Claw - TM031
  (529, 52900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 21),
  -- Drilbur - Mud Shot - TM035
  (529, 52900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Drilbur - Rock Tomb - TM036
  (529, 52900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Drilbur - Fling - TM043
  (529, 52900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Drilbur - Endure - TM047
  (529, 52900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Drilbur - Sunny Day - TM049
  (529, 52900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Drilbur - Sandstorm - TM051
  (529, 52900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Drilbur - Dig - TM055
  (529, 52900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Drilbur - Brick Break - TM058
  (529, 52900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Drilbur - Shadow Claw - TM061
  (529, 52900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Drilbur - Sleep Talk - TM070
  (529, 52900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Drilbur - Poison Jab - TM083
  (529, 52900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 32),
  -- Drilbur - Stomping Tantrum - TM084
  (529, 52900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Drilbur - Rest - TM085
  (529, 52900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Drilbur - Rock Slide - TM086
  (529, 52900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Drilbur - Swords Dance - TM088
  (529, 52900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Drilbur - Substitute - TM103
  (529, 52900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Drilbur - Iron Defense - TM104
  (529, 52900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Drilbur - X-Scissor - TM105
  (529, 52900, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 39),
  -- Drilbur - Drill Run - TM106
  (529, 52900, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 40),
  -- Drilbur - Stealth Rock - TM116
  (529, 52900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Drilbur - Helping Hand - TM130
  (529, 52900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Drilbur - Earth Power - TM133
  (529, 52900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Drilbur - Earthquake - TM149
  (529, 52900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Drilbur - Tera Blast - TM171
  (529, 52900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Drilbur - Slash - Egg
  (529, 52900, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Drilbur - Metal Sound - Egg
  (529, 52900, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Excadrill - Scratch - Level 1
  (530, 53000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Excadrill - Mud-Slap - Level 1
  (530, 53000, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Excadrill - Rapid Spin - Level 1
  (530, 53000, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Excadrill - Hone Claws - Level 1
  (530, 53000, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Excadrill - Fury Swipes - Level 12
  (530, 53000, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Excadrill - Metal Claw - Level 16
  (530, 53000, 232, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Excadrill - Sandstorm - Level 20
  (530, 53000, 201, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Excadrill - Crush Claw - Level 24
  (530, 53000, 306, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Excadrill - Rock Slide - Level 28
  (530, 53000, 157, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Excadrill - Dig - Level 34
  (530, 53000, 91, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Excadrill - Swords Dance - Level 40
  (530, 53000, 14, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Excadrill - Drill Run - Level 46
  (530, 53000, 529, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Excadrill - Earthquake - Level 52
  (530, 53000, 89, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Excadrill - Fissure - Level 58
  (530, 53000, 90, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Excadrill - Take Down - TM001
  (530, 53000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Excadrill - Mud-Slap - TM005
  (530, 53000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Excadrill - Scary Face - TM006
  (530, 53000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Excadrill - Protect - TM007
  (530, 53000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Excadrill - Facade - TM025
  (530, 53000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Excadrill - Aerial Ace - TM027
  (530, 53000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Excadrill - Bulldoze - TM028
  (530, 53000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Excadrill - Metal Claw - TM031
  (530, 53000, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Excadrill - Mud Shot - TM035
  (530, 53000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Excadrill - Rock Tomb - TM036
  (530, 53000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Excadrill - Fling - TM043
  (530, 53000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Excadrill - Endure - TM047
  (530, 53000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Excadrill - Sunny Day - TM049
  (530, 53000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Excadrill - Sandstorm - TM051
  (530, 53000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Excadrill - Smart Strike - TM053
  (530, 53000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 29),
  -- Excadrill - Dig - TM055
  (530, 53000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Excadrill - Brick Break - TM058
  (530, 53000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Excadrill - Shadow Claw - TM061
  (530, 53000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 32),
  -- Excadrill - Body Slam - TM066
  (530, 53000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Excadrill - Sleep Talk - TM070
  (530, 53000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Excadrill - Rock Blast - TM076
  (530, 53000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 35),
  -- Excadrill - Poison Jab - TM083
  (530, 53000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Excadrill - Stomping Tantrum - TM084
  (530, 53000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Excadrill - Rest - TM085
  (530, 53000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Excadrill - Rock Slide - TM086
  (530, 53000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Excadrill - Swords Dance - TM088
  (530, 53000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Excadrill - Iron Head - TM099
  (530, 53000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Excadrill - Substitute - TM103
  (530, 53000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Excadrill - Iron Defense - TM104
  (530, 53000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Excadrill - X-Scissor - TM105
  (530, 53000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Excadrill - Drill Run - TM106
  (530, 53000, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 45),
  -- Excadrill - Stealth Rock - TM116
  (530, 53000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Excadrill - Helping Hand - TM130
  (530, 53000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Excadrill - Earth Power - TM133
  (530, 53000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Excadrill - Earthquake - TM149
  (530, 53000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Excadrill - Giga Impact - TM152
  (530, 53000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Excadrill - Focus Blast - TM158
  (530, 53000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Excadrill - Hyper Beam - TM163
  (530, 53000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Excadrill - Steel Beam - TM170
  (530, 53000, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 53),
  -- Excadrill - Tera Blast - TM171
  (530, 53000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Excadrill - Slash - Egg
  (530, 53000, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Excadrill - Metal Sound - Egg
  (530, 53000, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Excadrill - Horn Drill - Evolution
  (530, 53000, 32, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Timburr - Pound - Level 1
  (532, 53200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Timburr - Leer - Level 1
  (532, 53200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Timburr - Low Kick - Level 4
  (532, 53200, 67, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Timburr - Rock Throw - Level 8
  (532, 53200, 88, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Timburr - Focus Energy - Level 12
  (532, 53200, 116, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Timburr - Bulk Up - Level 16
  (532, 53200, 339, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Timburr - Rock Slide - Level 20
  (532, 53200, 157, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Timburr - Slam - Level 24
  (532, 53200, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Timburr - Scary Face - Level 28
  (532, 53200, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Timburr - Dynamic Punch - Level 32
  (532, 53200, 223, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Timburr - Hammer Arm - Level 36
  (532, 53200, 359, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Timburr - Stone Edge - Level 40
  (532, 53200, 444, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Timburr - Superpower - Level 44
  (532, 53200, 276, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Timburr - Focus Punch - Level 48
  (532, 53200, 264, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Timburr - Take Down - TM001
  (532, 53200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Timburr - Scary Face - TM006
  (532, 53200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Timburr - Protect - TM007
  (532, 53200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Timburr - Low Kick - TM012
  (532, 53200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Timburr - Thief - TM018
  (532, 53200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Timburr - Facade - TM025
  (532, 53200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Timburr - Rock Tomb - TM036
  (532, 53200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Timburr - Low Sweep - TM039
  (532, 53200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 22),
  -- Timburr - Fling - TM043
  (532, 53200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Timburr - Endure - TM047
  (532, 53200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Timburr - Sunny Day - TM049
  (532, 53200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Timburr - Rain Dance - TM050
  (532, 53200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Timburr - Dig - TM055
  (532, 53200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Timburr - Brick Break - TM058
  (532, 53200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Timburr - Bulk Up - TM064
  (532, 53200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 29),
  -- Timburr - Fire Punch - TM067
  (532, 53200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Timburr - Thunder Punch - TM068
  (532, 53200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Timburr - Ice Punch - TM069
  (532, 53200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 32),
  -- Timburr - Sleep Talk - TM070
  (532, 53200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Timburr - Drain Punch - TM073
  (532, 53200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 34),
  -- Timburr - Grass Knot - TM081
  (532, 53200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Timburr - Poison Jab - TM083
  (532, 53200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Timburr - Rest - TM085
  (532, 53200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Timburr - Rock Slide - TM086
  (532, 53200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Timburr - Taunt - TM087
  (532, 53200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Timburr - Substitute - TM103
  (532, 53200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Timburr - Helping Hand - TM130
  (532, 53200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Timburr - Reversal - TM134
  (532, 53200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Timburr - Stone Edge - TM150
  (532, 53200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 43),
  -- Timburr - Focus Blast - TM158
  (532, 53200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 44),
  -- Timburr - Close Combat - TM167
  (532, 53200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 45),
  -- Timburr - Tera Blast - TM171
  (532, 53200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Timburr - Counter - Egg
  (532, 53200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Timburr - Mach Punch - Egg
  (532, 53200, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Timburr - Detect - Egg
  (532, 53200, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Timburr - Defog - Egg
  (532, 53200, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Timburr - Wide Guard - Egg
  (532, 53200, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gurdurr - Pound - Level 1
  (533, 53300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gurdurr - Leer - Level 1
  (533, 53300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gurdurr - Low Kick - Level 1
  (533, 53300, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gurdurr - Rock Throw - Level 1
  (533, 53300, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gurdurr - Focus Energy - Level 12
  (533, 53300, 116, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gurdurr - Bulk Up - Level 16
  (533, 53300, 339, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gurdurr - Rock Slide - Level 20
  (533, 53300, 157, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gurdurr - Slam - Level 24
  (533, 53300, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gurdurr - Scary Face - Level 30
  (533, 53300, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Gurdurr - Dynamic Punch - Level 36
  (533, 53300, 223, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Gurdurr - Hammer Arm - Level 42
  (533, 53300, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Gurdurr - Stone Edge - Level 48
  (533, 53300, 444, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Gurdurr - Superpower - Level 54
  (533, 53300, 276, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gurdurr - Focus Punch - Level 60
  (533, 53300, 264, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Gurdurr - Take Down - TM001
  (533, 53300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Gurdurr - Scary Face - TM006
  (533, 53300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Gurdurr - Protect - TM007
  (533, 53300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Gurdurr - Low Kick - TM012
  (533, 53300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Gurdurr - Thief - TM018
  (533, 53300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Gurdurr - Facade - TM025
  (533, 53300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Gurdurr - Rock Tomb - TM036
  (533, 53300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Gurdurr - Low Sweep - TM039
  (533, 53300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 22),
  -- Gurdurr - Fling - TM043
  (533, 53300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Gurdurr - Endure - TM047
  (533, 53300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Gurdurr - Sunny Day - TM049
  (533, 53300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Gurdurr - Rain Dance - TM050
  (533, 53300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Gurdurr - Dig - TM055
  (533, 53300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Gurdurr - Brick Break - TM058
  (533, 53300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Gurdurr - Bulk Up - TM064
  (533, 53300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 29),
  -- Gurdurr - Fire Punch - TM067
  (533, 53300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Gurdurr - Thunder Punch - TM068
  (533, 53300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Gurdurr - Ice Punch - TM069
  (533, 53300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 32),
  -- Gurdurr - Sleep Talk - TM070
  (533, 53300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Gurdurr - Drain Punch - TM073
  (533, 53300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 34),
  -- Gurdurr - Grass Knot - TM081
  (533, 53300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Gurdurr - Poison Jab - TM083
  (533, 53300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Gurdurr - Rest - TM085
  (533, 53300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Gurdurr - Rock Slide - TM086
  (533, 53300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Gurdurr - Taunt - TM087
  (533, 53300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Gurdurr - Substitute - TM103
  (533, 53300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Gurdurr - Helping Hand - TM130
  (533, 53300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Gurdurr - Reversal - TM134
  (533, 53300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Gurdurr - Stone Edge - TM150
  (533, 53300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 43),
  -- Gurdurr - Focus Blast - TM158
  (533, 53300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 44),
  -- Gurdurr - Close Combat - TM167
  (533, 53300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 45),
  -- Gurdurr - Tera Blast - TM171
  (533, 53300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Gurdurr - Counter - Egg
  (533, 53300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gurdurr - Mach Punch - Egg
  (533, 53300, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gurdurr - Detect - Egg
  (533, 53300, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gurdurr - Defog - Egg
  (533, 53300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gurdurr - Wide Guard - Egg
  (533, 53300, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Conkeldurr - Pound - Level 1
  (534, 53400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Conkeldurr - Leer - Level 1
  (534, 53400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Conkeldurr - Low Kick - Level 1
  (534, 53400, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Conkeldurr - Rock Throw - Level 1
  (534, 53400, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Conkeldurr - Focus Energy - Level 12
  (534, 53400, 116, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Conkeldurr - Bulk Up - Level 16
  (534, 53400, 339, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Conkeldurr - Rock Slide - Level 20
  (534, 53400, 157, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Conkeldurr - Slam - Level 24
  (534, 53400, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Conkeldurr - Scary Face - Level 30
  (534, 53400, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Conkeldurr - Dynamic Punch - Level 36
  (534, 53400, 223, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Conkeldurr - Hammer Arm - Level 42
  (534, 53400, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Conkeldurr - Stone Edge - Level 48
  (534, 53400, 444, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Conkeldurr - Superpower - Level 54
  (534, 53400, 276, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Conkeldurr - Focus Punch - Level 60
  (534, 53400, 264, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Conkeldurr - Take Down - TM001
  (534, 53400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Conkeldurr - Scary Face - TM006
  (534, 53400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Conkeldurr - Protect - TM007
  (534, 53400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Conkeldurr - Low Kick - TM012
  (534, 53400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Conkeldurr - Thief - TM018
  (534, 53400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Conkeldurr - Facade - TM025
  (534, 53400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Conkeldurr - Bulldoze - TM028
  (534, 53400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Conkeldurr - Rock Tomb - TM036
  (534, 53400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Conkeldurr - Low Sweep - TM039
  (534, 53400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 23),
  -- Conkeldurr - Fling - TM043
  (534, 53400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Conkeldurr - Endure - TM047
  (534, 53400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Conkeldurr - Sunny Day - TM049
  (534, 53400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Conkeldurr - Rain Dance - TM050
  (534, 53400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Conkeldurr - Dig - TM055
  (534, 53400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Conkeldurr - Brick Break - TM058
  (534, 53400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Conkeldurr - Bulk Up - TM064
  (534, 53400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 30),
  -- Conkeldurr - Body Slam - TM066
  (534, 53400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Conkeldurr - Fire Punch - TM067
  (534, 53400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Conkeldurr - Thunder Punch - TM068
  (534, 53400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Conkeldurr - Ice Punch - TM069
  (534, 53400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Conkeldurr - Sleep Talk - TM070
  (534, 53400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Conkeldurr - Drain Punch - TM073
  (534, 53400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 36),
  -- Conkeldurr - Rock Blast - TM076
  (534, 53400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Conkeldurr - Grass Knot - TM081
  (534, 53400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Conkeldurr - Poison Jab - TM083
  (534, 53400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Conkeldurr - Stomping Tantrum - TM084
  (534, 53400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Conkeldurr - Rest - TM085
  (534, 53400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Conkeldurr - Rock Slide - TM086
  (534, 53400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Conkeldurr - Taunt - TM087
  (534, 53400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Conkeldurr - Substitute - TM103
  (534, 53400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Conkeldurr - Helping Hand - TM130
  (534, 53400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Conkeldurr - Reversal - TM134
  (534, 53400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 46),
  -- Conkeldurr - Earthquake - TM149
  (534, 53400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Conkeldurr - Stone Edge - TM150
  (534, 53400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Conkeldurr - Giga Impact - TM152
  (534, 53400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Conkeldurr - Focus Blast - TM158
  (534, 53400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Conkeldurr - Hyper Beam - TM163
  (534, 53400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Conkeldurr - Close Combat - TM167
  (534, 53400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 52),
  -- Conkeldurr - Tera Blast - TM171
  (534, 53400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Conkeldurr - Counter - Egg
  (534, 53400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Conkeldurr - Mach Punch - Egg
  (534, 53400, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Conkeldurr - Detect - Egg
  (534, 53400, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Conkeldurr - Defog - Egg
  (534, 53400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Conkeldurr - Wide Guard - Egg
  (534, 53400, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sewaddle - Tackle - Level 1
  (540, 54000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sewaddle - String Shot - Level 1
  (540, 54000, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sewaddle - Bug Bite - Level 8
  (540, 54000, 450, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Sewaddle - Razor Leaf - Level 15
  (540, 54000, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sewaddle - Struggle Bug - Level 22
  (540, 54000, 522, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Sewaddle - Endure - Level 29
  (540, 54000, 203, 23, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Sewaddle - Sticky Web - Level 31
  (540, 54000, 564, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Sewaddle - Bug Buzz - Level 36
  (540, 54000, 405, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sewaddle - Flail - Level 43
  (540, 54000, 175, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Sewaddle - Take Down - TM001
  (540, 54000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 10),
  -- Sewaddle - Charm - TM002
  (540, 54000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 11),
  -- Sewaddle - Protect - TM007
  (540, 54000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Sewaddle - Struggle Bug - TM015
  (540, 54000, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 13),
  -- Sewaddle - Trailblaze - TM020
  (540, 54000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 14),
  -- Sewaddle - Pounce - TM021
  (540, 54000, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 15),
  -- Sewaddle - Facade - TM025
  (540, 54000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Sewaddle - Magical Leaf - TM033
  (540, 54000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Sewaddle - Endure - TM047
  (540, 54000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Sewaddle - Sunny Day - TM049
  (540, 54000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Sewaddle - Rain Dance - TM050
  (540, 54000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Sewaddle - Sleep Talk - TM070
  (540, 54000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Sewaddle - Seed Bomb - TM071
  (540, 54000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 22),
  -- Sewaddle - Grass Knot - TM081
  (540, 54000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 23),
  -- Sewaddle - Rest - TM085
  (540, 54000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 24),
  -- Sewaddle - Substitute - TM103
  (540, 54000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 25),
  -- Sewaddle - Iron Defense - TM104
  (540, 54000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 26),
  -- Sewaddle - Giga Drain - TM111
  (540, 54000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 27),
  -- Sewaddle - Energy Ball - TM119
  (540, 54000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 28),
  -- Sewaddle - Baton Pass - TM132
  (540, 54000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 29),
  -- Sewaddle - Grassy Terrain - TM137
  (540, 54000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 30),
  -- Sewaddle - Bug Buzz - TM162
  (540, 54000, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 31),
  -- Sewaddle - Solar Beam - TM168
  (540, 54000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 32),
  -- Sewaddle - Tera Blast - TM171
  (540, 54000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Sewaddle - Screech - Egg
  (540, 54000, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sewaddle - Snore - Egg
  (540, 54000, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sewaddle - Synthesis - Egg
  (540, 54000, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sewaddle - Worry Seed - Egg
  (540, 54000, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sewaddle - Switcheroo - Egg
  (540, 54000, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Swadloon - Tackle - Level 1
  (541, 54100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swadloon - Razor Leaf - Level 1
  (541, 54100, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swadloon - String Shot - Level 1
  (541, 54100, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swadloon - Bug Bite - Level 1
  (541, 54100, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swadloon - Struggle Bug - Level 22
  (541, 54100, 522, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Swadloon - Endure - Level 29
  (541, 54100, 203, 23, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Swadloon - Sticky Web - Level 31
  (541, 54100, 564, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Swadloon - Bug Buzz - Level 36
  (541, 54100, 405, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Swadloon - Flail - Level 43
  (541, 54100, 175, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Swadloon - Take Down - TM001
  (541, 54100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 10),
  -- Swadloon - Charm - TM002
  (541, 54100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 11),
  -- Swadloon - Protect - TM007
  (541, 54100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Swadloon - Struggle Bug - TM015
  (541, 54100, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 13),
  -- Swadloon - Trailblaze - TM020
  (541, 54100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 14),
  -- Swadloon - Pounce - TM021
  (541, 54100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 15),
  -- Swadloon - Facade - TM025
  (541, 54100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Swadloon - Magical Leaf - TM033
  (541, 54100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Swadloon - Endure - TM047
  (541, 54100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Swadloon - Sunny Day - TM049
  (541, 54100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Swadloon - Rain Dance - TM050
  (541, 54100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Swadloon - Sleep Talk - TM070
  (541, 54100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Swadloon - Seed Bomb - TM071
  (541, 54100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 22),
  -- Swadloon - Light Screen - TM075
  (541, 54100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 23),
  -- Swadloon - Grass Knot - TM081
  (541, 54100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 24),
  -- Swadloon - Rest - TM085
  (541, 54100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Swadloon - Substitute - TM103
  (541, 54100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 26),
  -- Swadloon - Iron Defense - TM104
  (541, 54100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 27),
  -- Swadloon - Giga Drain - TM111
  (541, 54100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 28),
  -- Swadloon - Energy Ball - TM119
  (541, 54100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 29),
  -- Swadloon - Baton Pass - TM132
  (541, 54100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 30),
  -- Swadloon - Grassy Terrain - TM137
  (541, 54100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 31),
  -- Swadloon - Bug Buzz - TM162
  (541, 54100, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 32),
  -- Swadloon - Solar Beam - TM168
  (541, 54100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 33),
  -- Swadloon - Tera Blast - TM171
  (541, 54100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 34),
  -- Swadloon - Screech - Egg
  (541, 54100, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Swadloon - Snore - Egg
  (541, 54100, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Swadloon - Synthesis - Egg
  (541, 54100, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Swadloon - Worry Seed - Egg
  (541, 54100, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Swadloon - Switcheroo - Egg
  (541, 54100, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Swadloon - Protect - Evolution
  (541, 54100, 182, 23, NULL, 7, NULL, NULL, NULL, NULL, 40),
  -- Leavanny - Tackle - Level 1
  (542, 54200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leavanny - Razor Leaf - Level 1
  (542, 54200, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leavanny - String Shot - Level 1
  (542, 54200, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leavanny - False Swipe - Level 1
  (542, 54200, 206, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leavanny - Struggle Bug - Level 22
  (542, 54200, 522, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Leavanny - Fell Stinger - Level 29
  (542, 54200, 565, 23, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Leavanny - Helping Hand - Level 32
  (542, 54200, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Leavanny - Leaf Blade - Level 36
  (542, 54200, 348, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Leavanny - X-Scissor - Level 39
  (542, 54200, 404, 23, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Leavanny - Entrainment - Level 43
  (542, 54200, 494, 23, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Leavanny - Swords Dance - Level 46
  (542, 54200, 14, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Leavanny - Leaf Storm - Level 50
  (542, 54200, 437, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Leavanny - Take Down - TM001
  (542, 54200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Leavanny - Charm - TM002
  (542, 54200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Leavanny - Agility - TM004
  (542, 54200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Leavanny - Protect - TM007
  (542, 54200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Leavanny - Low Kick - TM012
  (542, 54200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Leavanny - Struggle Bug - TM015
  (542, 54200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Leavanny - Trailblaze - TM020
  (542, 54200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Leavanny - Pounce - TM021
  (542, 54200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Leavanny - Facade - TM025
  (542, 54200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Leavanny - Magical Leaf - TM033
  (542, 54200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Leavanny - Endure - TM047
  (542, 54200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Leavanny - Sunny Day - TM049
  (542, 54200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Leavanny - Rain Dance - TM050
  (542, 54200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Leavanny - Bullet Seed - TM056
  (542, 54200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Leavanny - False Swipe - TM057
  (542, 54200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Leavanny - Shadow Claw - TM061
  (542, 54200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Leavanny - Air Slash - TM065
  (542, 54200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 29),
  -- Leavanny - Sleep Talk - TM070
  (542, 54200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Leavanny - Seed Bomb - TM071
  (542, 54200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Leavanny - Reflect - TM074
  (542, 54200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Leavanny - Light Screen - TM075
  (542, 54200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Leavanny - Grass Knot - TM081
  (542, 54200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Leavanny - Poison Jab - TM083
  (542, 54200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Leavanny - Rest - TM085
  (542, 54200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Leavanny - Swords Dance - TM088
  (542, 54200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Leavanny - Substitute - TM103
  (542, 54200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Leavanny - Iron Defense - TM104
  (542, 54200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Leavanny - X-Scissor - TM105
  (542, 54200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 40),
  -- Leavanny - Giga Drain - TM111
  (542, 54200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Leavanny - Energy Ball - TM119
  (542, 54200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Leavanny - Calm Mind - TM129
  (542, 54200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Leavanny - Helping Hand - TM130
  (542, 54200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Leavanny - Pollen Puff - TM131
  (542, 54200, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 45),
  -- Leavanny - Baton Pass - TM132
  (542, 54200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Leavanny - Grassy Terrain - TM137
  (542, 54200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 47),
  -- Leavanny - Giga Impact - TM152
  (542, 54200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Leavanny - Leaf Storm - TM159
  (542, 54200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 49),
  -- Leavanny - Bug Buzz - TM162
  (542, 54200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 50),
  -- Leavanny - Hyper Beam - TM163
  (542, 54200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Leavanny - Solar Beam - TM168
  (542, 54200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Leavanny - Tera Blast - TM171
  (542, 54200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Leavanny - Screech - Egg
  (542, 54200, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Leavanny - Snore - Egg
  (542, 54200, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Leavanny - Synthesis - Egg
  (542, 54200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Leavanny - Worry Seed - Egg
  (542, 54200, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Leavanny - Switcheroo - Egg
  (542, 54200, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Leavanny - Slash - Evolution
  (542, 54200, 163, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Leavanny - Bug Bite - Reminder
  (542, 54200, 450, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Cottonee - Absorb - Level 1
  (546, 54600, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cottonee - Helping Hand - Level 1
  (546, 54600, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cottonee - Fairy Wind - Level 3
  (546, 54600, 584, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Cottonee - Stun Spore - Level 6
  (546, 54600, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Cottonee - Mega Drain - Level 12
  (546, 54600, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cottonee - Razor Leaf - Level 15
  (546, 54600, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cottonee - Growth - Level 18
  (546, 54600, 74, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Cottonee - Poison Powder - Level 21
  (546, 54600, 77, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Cottonee - Giga Drain - Level 24
  (546, 54600, 202, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cottonee - Charm - Level 27
  (546, 54600, 204, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Cottonee - Leech Seed - Level 30
  (546, 54600, 73, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cottonee - Cotton Spore - Level 33
  (546, 54600, 178, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Cottonee - Energy Ball - Level 36
  (546, 54600, 412, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Cottonee - Sunny Day - Level 39
  (546, 54600, 241, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Cottonee - Endeavor - Level 42
  (546, 54600, 283, 23, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Cottonee - Cotton Guard - Level 45
  (546, 54600, 538, 23, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Cottonee - Solar Beam - Level 48
  (546, 54600, 76, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Cottonee - Charm - TM002
  (546, 54600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Cottonee - Fake Tears - TM003
  (546, 54600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Cottonee - Protect - TM007
  (546, 54600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Cottonee - Facade - TM025
  (546, 54600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Cottonee - Swift - TM032
  (546, 54600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Cottonee - Endure - TM047
  (546, 54600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Cottonee - Sunny Day - TM049
  (546, 54600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Cottonee - Sleep Talk - TM070
  (546, 54600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Cottonee - Seed Bomb - TM071
  (546, 54600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Cottonee - Dazzling Gleam - TM079
  (546, 54600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 27),
  -- Cottonee - Grass Knot - TM081
  (546, 54600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 28),
  -- Cottonee - Rest - TM085
  (546, 54600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Cottonee - Taunt - TM087
  (546, 54600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 30),
  -- Cottonee - Substitute - TM103
  (546, 54600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Cottonee - Giga Drain - TM111
  (546, 54600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 32),
  -- Cottonee - Energy Ball - TM119
  (546, 54600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 33),
  -- Cottonee - Encore - TM122
  (546, 54600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 34),
  -- Cottonee - Helping Hand - TM130
  (546, 54600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 35),
  -- Cottonee - Grassy Terrain - TM137
  (546, 54600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 36),
  -- Cottonee - Misty Terrain - TM139
  (546, 54600, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 37),
  -- Cottonee - Solar Beam - TM168
  (546, 54600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 38),
  -- Cottonee - Tera Blast - TM171
  (546, 54600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Cottonee - Beat Up - Egg
  (546, 54600, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cottonee - Memento - Egg
  (546, 54600, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cottonee - Tickle - Egg
  (546, 54600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cottonee - Worry Seed - Egg
  (546, 54600, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cottonee - Switcheroo - Egg
  (546, 54600, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whimsicott - Gust - Level 1
  (547, 54700, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whimsicott - Absorb - Level 1
  (547, 54700, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whimsicott - Mega Drain - Level 1
  (547, 54700, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whimsicott - Leech Seed - Level 1
  (547, 54700, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whimsicott - Growth - Level 1
  (547, 54700, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whimsicott - Razor Leaf - Level 1
  (547, 54700, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Whimsicott - Solar Beam - Level 1
  (547, 54700, 76, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Whimsicott - Poison Powder - Level 1
  (547, 54700, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Whimsicott - Stun Spore - Level 1
  (547, 54700, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Whimsicott - Cotton Spore - Level 1
  (547, 54700, 178, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Whimsicott - Giga Drain - Level 1
  (547, 54700, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Whimsicott - Charm - Level 1
  (547, 54700, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Whimsicott - Sunny Day - Level 1
  (547, 54700, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Whimsicott - Memento - Level 1
  (547, 54700, 262, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Whimsicott - Helping Hand - Level 1
  (547, 54700, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Whimsicott - Endeavor - Level 1
  (547, 54700, 283, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Whimsicott - Tailwind - Level 1
  (547, 54700, 366, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Whimsicott - Energy Ball - Level 1
  (547, 54700, 412, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Whimsicott - Cotton Guard - Level 1
  (547, 54700, 538, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Whimsicott - Hurricane - Level 1
  (547, 54700, 542, 23, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Whimsicott - Fairy Wind - Level 1
  (547, 54700, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Whimsicott - Moonblast - Level 1
  (547, 54700, 585, 23, NULL, 1, 1, NULL, NULL, NULL, 22),
  -- Whimsicott - Charm - TM002
  (547, 54700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 23),
  -- Whimsicott - Fake Tears - TM003
  (547, 54700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 24),
  -- Whimsicott - Protect - TM007
  (547, 54700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Whimsicott - Thief - TM018
  (547, 54700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Whimsicott - Facade - TM025
  (547, 54700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Whimsicott - Swift - TM032
  (547, 54700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Whimsicott - Fling - TM043
  (547, 54700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Whimsicott - Endure - TM047
  (547, 54700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Whimsicott - Sunny Day - TM049
  (547, 54700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Whimsicott - U-turn - TM060
  (547, 54700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Whimsicott - Sleep Talk - TM070
  (547, 54700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Whimsicott - Seed Bomb - TM071
  (547, 54700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Whimsicott - Light Screen - TM075
  (547, 54700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Whimsicott - Dazzling Gleam - TM079
  (547, 54700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Whimsicott - Grass Knot - TM081
  (547, 54700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Whimsicott - Rest - TM085
  (547, 54700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Whimsicott - Taunt - TM087
  (547, 54700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Whimsicott - Substitute - TM103
  (547, 54700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Whimsicott - Giga Drain - TM111
  (547, 54700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Whimsicott - Tailwind - TM113
  (547, 54700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 42),
  -- Whimsicott - Shadow Ball - TM114
  (547, 54700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Whimsicott - Energy Ball - TM119
  (547, 54700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Whimsicott - Psychic - TM120
  (547, 54700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Whimsicott - Encore - TM122
  (547, 54700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Whimsicott - Play Rough - TM127
  (547, 54700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Whimsicott - Helping Hand - TM130
  (547, 54700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Whimsicott - Grassy Terrain - TM137
  (547, 54700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 49),
  -- Whimsicott - Misty Terrain - TM139
  (547, 54700, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 50),
  -- Whimsicott - Giga Impact - TM152
  (547, 54700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Whimsicott - Hurricane - TM160
  (547, 54700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 52),
  -- Whimsicott - Trick Room - TM161
  (547, 54700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Whimsicott - Hyper Beam - TM163
  (547, 54700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Whimsicott - Solar Beam - TM168
  (547, 54700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Whimsicott - Tera Blast - TM171
  (547, 54700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Whimsicott - Beat Up - Egg
  (547, 54700, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Whimsicott - Memento - Egg
  (547, 54700, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Whimsicott - Tickle - Egg
  (547, 54700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Whimsicott - Worry Seed - Egg
  (547, 54700, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Whimsicott - Switcheroo - Egg
  (547, 54700, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Petilil - Absorb - Level 1
  (548, 54800, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Petilil - Growth - Level 1
  (548, 54800, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Petilil - Helping Hand - Level 3
  (548, 54800, 270, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Petilil - Stun Spore - Level 6
  (548, 54800, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Petilil - Mega Drain - Level 9
  (548, 54800, 72, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Petilil - Charm - Level 12
  (548, 54800, 204, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Petilil - Magical Leaf - Level 15
  (548, 54800, 345, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Petilil - Sleep Powder - Level 18
  (548, 54800, 79, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Petilil - Giga Drain - Level 21
  (548, 54800, 202, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Petilil - Leech Seed - Level 24
  (548, 54800, 73, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Petilil - After You - Level 27
  (548, 54800, 495, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Petilil - Energy Ball - Level 30
  (548, 54800, 412, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Petilil - Synthesis - Level 33
  (548, 54800, 235, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Petilil - Sunny Day - Level 36
  (548, 54800, 241, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Petilil - Entrainment - Level 39
  (548, 54800, 494, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Petilil - Leaf Storm - Level 42
  (548, 54800, 437, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Petilil - Charm - TM002
  (548, 54800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Petilil - Protect - TM007
  (548, 54800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Petilil - Trailblaze - TM020
  (548, 54800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Petilil - Facade - TM025
  (548, 54800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Petilil - Magical Leaf - TM033
  (548, 54800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Petilil - Endure - TM047
  (548, 54800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Petilil - Sunny Day - TM049
  (548, 54800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Petilil - Bullet Seed - TM056
  (548, 54800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Petilil - Sleep Talk - TM070
  (548, 54800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Petilil - Seed Bomb - TM071
  (548, 54800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Petilil - Grass Knot - TM081
  (548, 54800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Petilil - Rest - TM085
  (548, 54800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Petilil - Substitute - TM103
  (548, 54800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Petilil - Giga Drain - TM111
  (548, 54800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 30),
  -- Petilil - Energy Ball - TM119
  (548, 54800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 31),
  -- Petilil - Encore - TM122
  (548, 54800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 32),
  -- Petilil - Helping Hand - TM130
  (548, 54800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Petilil - Pollen Puff - TM131
  (548, 54800, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 34),
  -- Petilil - Leaf Storm - TM159
  (548, 54800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Petilil - Solar Beam - TM168
  (548, 54800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Petilil - Tera Blast - TM171
  (548, 54800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Petilil - Sweet Scent - Egg
  (548, 54800, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Petilil - Ingrain - Egg
  (548, 54800, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Petilil - Healing Wish - Egg
  (548, 54800, 361, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Petilil - Worry Seed - Egg
  (548, 54800, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lilligant - Absorb - Level 1
  (549, 54900, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant - Mega Drain - Level 1
  (549, 54900, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lilligant - Leech Seed - Level 1
  (549, 54900, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lilligant - Growth - Level 1
  (549, 54900, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lilligant - Stun Spore - Level 1
  (549, 54900, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lilligant - Sleep Powder - Level 1
  (549, 54900, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lilligant - Giga Drain - Level 1
  (549, 54900, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lilligant - Charm - Level 1
  (549, 54900, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lilligant - Synthesis - Level 1
  (549, 54900, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lilligant - Sunny Day - Level 1
  (549, 54900, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lilligant - Helping Hand - Level 1
  (549, 54900, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lilligant - Teeter Dance - Level 1
  (549, 54900, 298, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lilligant - Energy Ball - Level 1
  (549, 54900, 412, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Lilligant - Leaf Storm - Level 1
  (549, 54900, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Lilligant - Quiver Dance - Level 1
  (549, 54900, 483, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Lilligant - Entrainment - Level 1
  (549, 54900, 494, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Lilligant - After You - Level 1
  (549, 54900, 495, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Lilligant - Petal Blizzard - Level 1
  (549, 54900, 572, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Lilligant - Magical Leaf - Level 5
  (549, 54900, 345, 23, NULL, 1, 5, NULL, NULL, NULL, 19),
  -- Lilligant - Charm - TM002
  (549, 54900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Lilligant - Protect - TM007
  (549, 54900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Lilligant - Trailblaze - TM020
  (549, 54900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Lilligant - Facade - TM025
  (549, 54900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Lilligant - Magical Leaf - TM033
  (549, 54900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Lilligant - Endure - TM047
  (549, 54900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Lilligant - Sunny Day - TM049
  (549, 54900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Lilligant - Bullet Seed - TM056
  (549, 54900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Lilligant - Sleep Talk - TM070
  (549, 54900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Lilligant - Seed Bomb - TM071
  (549, 54900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Lilligant - Light Screen - TM075
  (549, 54900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Lilligant - Grass Knot - TM081
  (549, 54900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Lilligant - Rest - TM085
  (549, 54900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Lilligant - Swords Dance - TM088
  (549, 54900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Lilligant - Substitute - TM103
  (549, 54900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Lilligant - Giga Drain - TM111
  (549, 54900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Lilligant - Energy Ball - TM119
  (549, 54900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Lilligant - Encore - TM122
  (549, 54900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Lilligant - Helping Hand - TM130
  (549, 54900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Lilligant - Pollen Puff - TM131
  (549, 54900, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 39),
  -- Lilligant - Grassy Terrain - TM137
  (549, 54900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Lilligant - Giga Impact - TM152
  (549, 54900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Lilligant - Leaf Storm - TM159
  (549, 54900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 42),
  -- Lilligant - Hyper Beam - TM163
  (549, 54900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Lilligant - Solar Beam - TM168
  (549, 54900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Lilligant - Tera Blast - TM171
  (549, 54900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Lilligant - Sweet Scent - Egg
  (549, 54900, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lilligant - Ingrain - Egg
  (549, 54900, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lilligant - Healing Wish - Egg
  (549, 54900, 361, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lilligant - Worry Seed - Egg
  (549, 54900, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lilligant - Petal Dance - Evolution
  (549, 54900, 80, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Lilligant (Hisuian Lilligant) - Mega Kick - Level 1
  (549, 54901, 25, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant (Hisuian Lilligant) - Absorb - Level 1
  (549, 54901, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lilligant (Hisuian Lilligant) - Mega Drain - Level 1
  (549, 54901, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Leech Seed - Level 1
  (549, 54901, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lilligant (Hisuian Lilligant) - Growth - Level 1
  (549, 54901, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lilligant (Hisuian Lilligant) - Stun Spore - Level 1
  (549, 54901, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lilligant (Hisuian Lilligant) - Sleep Powder - Level 1
  (549, 54901, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lilligant (Hisuian Lilligant) - Giga Drain - Level 1
  (549, 54901, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lilligant (Hisuian Lilligant) - Synthesis - Level 1
  (549, 54901, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lilligant (Hisuian Lilligant) - Sunny Day - Level 1
  (549, 54901, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lilligant (Hisuian Lilligant) - Helping Hand - Level 1
  (549, 54901, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lilligant (Hisuian Lilligant) - Teeter Dance - Level 1
  (549, 54901, 298, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lilligant (Hisuian Lilligant) - Magical Leaf - Level 1
  (549, 54901, 345, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Lilligant (Hisuian Lilligant) - Leaf Blade - Level 1
  (549, 54901, 348, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Lilligant (Hisuian Lilligant) - Energy Ball - Level 1
  (549, 54901, 412, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Lilligant (Hisuian Lilligant) - Defog - Level 1
  (549, 54901, 432, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Lilligant (Hisuian Lilligant) - Leaf Storm - Level 1
  (549, 54901, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Lilligant (Hisuian Lilligant) - Entrainment - Level 1
  (549, 54901, 494, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Lilligant (Hisuian Lilligant) - After You - Level 1
  (549, 54901, 495, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Lilligant (Hisuian Lilligant) - Petal Blizzard - Level 1
  (549, 54901, 572, 23, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Lilligant (Hisuian Lilligant) - Solar Blade - Level 1
  (549, 54901, 669, 23, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Lilligant (Hisuian Lilligant) - Axe Kick - Level 5
  (549, 54901, 853, 23, NULL, 1, 5, NULL, NULL, NULL, 22),
  -- Lilligant (Hisuian Lilligant) - Take Down - TM001
  (549, 54901, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Lilligant (Hisuian Lilligant) - Charm - TM002
  (549, 54901, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Lilligant (Hisuian Lilligant) - Protect - TM007
  (549, 54901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Lilligant (Hisuian Lilligant) - Low Kick - TM012
  (549, 54901, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 26),
  -- Lilligant (Hisuian Lilligant) - Acrobatics - TM014
  (549, 54901, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 27),
  -- Lilligant (Hisuian Lilligant) - Trailblaze - TM020
  (549, 54901, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Lilligant (Hisuian Lilligant) - Facade - TM025
  (549, 54901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Lilligant (Hisuian Lilligant) - Aerial Ace - TM027
  (549, 54901, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 30),
  -- Lilligant (Hisuian Lilligant) - Magical Leaf - TM033
  (549, 54901, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 31),
  -- Lilligant (Hisuian Lilligant) - Low Sweep - TM039
  (549, 54901, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Lilligant (Hisuian Lilligant) - Endure - TM047
  (549, 54901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Lilligant (Hisuian Lilligant) - Sunny Day - TM049
  (549, 54901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Lilligant (Hisuian Lilligant) - Rain Dance - TM050
  (549, 54901, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Lilligant (Hisuian Lilligant) - Bullet Seed - TM056
  (549, 54901, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 36),
  -- Lilligant (Hisuian Lilligant) - Brick Break - TM058
  (549, 54901, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Lilligant (Hisuian Lilligant) - Air Slash - TM065
  (549, 54901, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Lilligant (Hisuian Lilligant) - Sleep Talk - TM070
  (549, 54901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Lilligant (Hisuian Lilligant) - Seed Bomb - TM071
  (549, 54901, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Lilligant (Hisuian Lilligant) - Metronome - TM080
  (549, 54901, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Lilligant (Hisuian Lilligant) - Grass Knot - TM081
  (549, 54901, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Lilligant (Hisuian Lilligant) - Poison Jab - TM083
  (549, 54901, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Lilligant (Hisuian Lilligant) - Rest - TM085
  (549, 54901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Lilligant (Hisuian Lilligant) - Swords Dance - TM088
  (549, 54901, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Lilligant (Hisuian Lilligant) - Substitute - TM103
  (549, 54901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Lilligant (Hisuian Lilligant) - Giga Drain - TM111
  (549, 54901, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Lilligant (Hisuian Lilligant) - Energy Ball - TM119
  (549, 54901, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 48),
  -- Lilligant (Hisuian Lilligant) - Encore - TM122
  (549, 54901, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Lilligant (Hisuian Lilligant) - Ice Spinner - TM124
  (549, 54901, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Lilligant (Hisuian Lilligant) - Helping Hand - TM130
  (549, 54901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Lilligant (Hisuian Lilligant) - Pollen Puff - TM131
  (549, 54901, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 52),
  -- Lilligant (Hisuian Lilligant) - Grassy Terrain - TM137
  (549, 54901, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 53),
  -- Lilligant (Hisuian Lilligant) - Giga Impact - TM152
  (549, 54901, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Lilligant (Hisuian Lilligant) - Leaf Storm - TM159
  (549, 54901, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 55),
  -- Lilligant (Hisuian Lilligant) - Hurricane - TM160
  (549, 54901, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 56),
  -- Lilligant (Hisuian Lilligant) - Hyper Beam - TM163
  (549, 54901, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Lilligant (Hisuian Lilligant) - Close Combat - TM167
  (549, 54901, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 58),
  -- Lilligant (Hisuian Lilligant) - Solar Beam - TM168
  (549, 54901, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Lilligant (Hisuian Lilligant) - Tera Blast - TM171
  (549, 54901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Lilligant (Hisuian Lilligant) - Victory Dance - Evolution
  (549, 54901, 837, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Basculin - Tail Whip - Level 1
  (550, 55000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin - Water Gun - Level 1
  (550, 55000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin - Tackle - Level 4
  (550, 55000, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin - Flail - Level 8
  (550, 55000, 175, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Basculin - Aqua Jet - Level 12
  (550, 55000, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Basculin - Bite - Level 16
  (550, 55000, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Basculin - Scary Face - Level 20
  (550, 55000, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Basculin - Headbutt - Level 24
  (550, 55000, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Basculin - Soak - Level 28
  (550, 55000, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Basculin - Crunch - Level 32
  (550, 55000, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Basculin - Take Down - Level 36
  (550, 55000, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Basculin - Uproar - Level 40
  (550, 55000, 253, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Basculin - Final Gambit - Level 40
  (550, 55000, 515, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Basculin - Wave Crash - Level 44
  (550, 55000, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Basculin - Thrash - Level 48
  (550, 55000, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Basculin - Double-Edge - Level 52
  (550, 55000, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Basculin - Head Smash - Level 56
  (550, 55000, 457, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Basculin - Take Down - TM001
  (550, 55000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Basculin - Agility - TM004
  (550, 55000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Basculin - Scary Face - TM006
  (550, 55000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Basculin - Protect - TM007
  (550, 55000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Basculin - Ice Fang - TM010
  (550, 55000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Basculin - Water Pulse - TM011
  (550, 55000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Basculin - Chilling Water - TM022
  (550, 55000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Basculin - Facade - TM025
  (550, 55000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Basculin - Swift - TM032
  (550, 55000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Basculin - Icy Wind - TM034
  (550, 55000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Basculin - Mud Shot - TM035
  (550, 55000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Basculin - Endure - TM047
  (550, 55000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Basculin - Rain Dance - TM050
  (550, 55000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Basculin - Snowscape - TM052
  (550, 55000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Basculin - Zen Headbutt - TM059
  (550, 55000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Basculin - Psychic Fangs - TM063
  (550, 55000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Basculin - Sleep Talk - TM070
  (550, 55000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Basculin - Waterfall - TM077
  (550, 55000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Basculin - Rest - TM085
  (550, 55000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Basculin - Taunt - TM087
  (550, 55000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Basculin - Substitute - TM103
  (550, 55000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Basculin - Crunch - TM108
  (550, 55000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Basculin - Liquidation - TM110
  (550, 55000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Basculin - Surf - TM123
  (550, 55000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 41),
  -- Basculin - Reversal - TM134
  (550, 55000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Basculin - Ice Beam - TM135
  (550, 55000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Basculin - Hydro Pump - TM142
  (550, 55000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Basculin - Blizzard - TM143
  (550, 55000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Basculin - Giga Impact - TM152
  (550, 55000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Basculin - Hyper Beam - TM163
  (550, 55000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Basculin - Tera Blast - TM171
  (550, 55000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Basculin - Bubble Beam - Egg
  (550, 55000, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin - Endeavor - Egg
  (550, 55000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Basculin - Last Respects - Egg
  (550, 55000, 854, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Basculin (Blue-Striped) - Tail Whip - Level 1
  (550, 55001, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Tackle - Level 4
  (550, 55001, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Flail - Level 8
  (550, 55001, 175, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 12
  (550, 55001, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Bite - Level 16
  (550, 55001, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Scary Face - Level 20
  (550, 55001, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Headbutt - Level 24
  (550, 55001, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Soak - Level 28
  (550, 55001, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Crunch - Level 32
  (550, 55001, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Take Down - Level 36
  (550, 55001, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Uproar - Level 40
  (550, 55001, 253, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Final Gambit - Level 40
  (550, 55001, 515, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Wave Crash - Level 44
  (550, 55001, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Thrash - Level 48
  (550, 55001, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Double-Edge - Level 52
  (550, 55001, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Head Smash - Level 56
  (550, 55001, 457, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Basculin (Blue-Striped) - Take Down - TM001
  (550, 55001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Basculin (Blue-Striped) - Agility - TM004
  (550, 55001, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Basculin (Blue-Striped) - Scary Face - TM006
  (550, 55001, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Basculin (Blue-Striped) - Protect - TM007
  (550, 55001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Basculin (Blue-Striped) - Ice Fang - TM010
  (550, 55001, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Basculin (Blue-Striped) - Water Pulse - TM011
  (550, 55001, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Basculin (Blue-Striped) - Chilling Water - TM022
  (550, 55001, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Basculin (Blue-Striped) - Facade - TM025
  (550, 55001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Basculin (Blue-Striped) - Swift - TM032
  (550, 55001, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Basculin (Blue-Striped) - Icy Wind - TM034
  (550, 55001, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Basculin (Blue-Striped) - Mud Shot - TM035
  (550, 55001, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Basculin (Blue-Striped) - Endure - TM047
  (550, 55001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Basculin (Blue-Striped) - Rain Dance - TM050
  (550, 55001, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Basculin (Blue-Striped) - Snowscape - TM052
  (550, 55001, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Basculin (Blue-Striped) - Zen Headbutt - TM059
  (550, 55001, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Basculin (Blue-Striped) - Psychic Fangs - TM063
  (550, 55001, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Basculin (Blue-Striped) - Sleep Talk - TM070
  (550, 55001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Basculin (Blue-Striped) - Waterfall - TM077
  (550, 55001, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Basculin (Blue-Striped) - Rest - TM085
  (550, 55001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Basculin (Blue-Striped) - Taunt - TM087
  (550, 55001, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Basculin (Blue-Striped) - Substitute - TM103
  (550, 55001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Basculin (Blue-Striped) - Crunch - TM108
  (550, 55001, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Basculin (Blue-Striped) - Liquidation - TM110
  (550, 55001, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Basculin (Blue-Striped) - Surf - TM123
  (550, 55001, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 41),
  -- Basculin (Blue-Striped) - Reversal - TM134
  (550, 55001, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Basculin (Blue-Striped) - Ice Beam - TM135
  (550, 55001, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Basculin (Blue-Striped) - Hydro Pump - TM142
  (550, 55001, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Basculin (Blue-Striped) - Blizzard - TM143
  (550, 55001, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Basculin (Blue-Striped) - Giga Impact - TM152
  (550, 55001, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Basculin (Blue-Striped) - Hyper Beam - TM163
  (550, 55001, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Basculin (Blue-Striped) - Tera Blast - TM171
  (550, 55001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg
  (550, 55001, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin (Blue-Striped) - Endeavor - Egg
  (550, 55001, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Basculin (Blue-Striped) - Last Respects - Egg
  (550, 55001, 854, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Basculin (White-Striped) - Tail Whip - Level 1
  (550, 55002, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (White-Striped) - Water Gun - Level 1
  (550, 55002, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (White-Striped) - Tackle - Level 4
  (550, 55002, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin (White-Striped) - Flail - Level 8
  (550, 55002, 175, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Basculin (White-Striped) - Aqua Jet - Level 12
  (550, 55002, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Basculin (White-Striped) - Bite - Level 16
  (550, 55002, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Basculin (White-Striped) - Scary Face - Level 20
  (550, 55002, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Basculin (White-Striped) - Headbutt - Level 24
  (550, 55002, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Basculin (White-Striped) - Soak - Level 28
  (550, 55002, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Basculin (White-Striped) - Crunch - Level 32
  (550, 55002, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Basculin (White-Striped) - Take Down - Level 36
  (550, 55002, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Basculin (White-Striped) - Uproar - Level 40
  (550, 55002, 253, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Basculin (White-Striped) - Final Gambit - Level 40
  (550, 55002, 515, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Basculin (White-Striped) - Wave Crash - Level 44
  (550, 55002, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Basculin (White-Striped) - Thrash - Level 48
  (550, 55002, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Basculin (White-Striped) - Double-Edge - Level 52
  (550, 55002, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Basculin (White-Striped) - Head Smash - Level 56
  (550, 55002, 457, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Basculin (White-Striped) - Take Down - TM001
  (550, 55002, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Basculin (White-Striped) - Agility - TM004
  (550, 55002, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Basculin (White-Striped) - Scary Face - TM006
  (550, 55002, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Basculin (White-Striped) - Protect - TM007
  (550, 55002, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Basculin (White-Striped) - Ice Fang - TM010
  (550, 55002, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Basculin (White-Striped) - Water Pulse - TM011
  (550, 55002, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Basculin (White-Striped) - Chilling Water - TM022
  (550, 55002, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Basculin (White-Striped) - Facade - TM025
  (550, 55002, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Basculin (White-Striped) - Swift - TM032
  (550, 55002, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Basculin (White-Striped) - Icy Wind - TM034
  (550, 55002, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Basculin (White-Striped) - Mud Shot - TM035
  (550, 55002, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Basculin (White-Striped) - Endure - TM047
  (550, 55002, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Basculin (White-Striped) - Rain Dance - TM050
  (550, 55002, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Basculin (White-Striped) - Snowscape - TM052
  (550, 55002, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Basculin (White-Striped) - Zen Headbutt - TM059
  (550, 55002, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Basculin (White-Striped) - Psychic Fangs - TM063
  (550, 55002, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Basculin (White-Striped) - Sleep Talk - TM070
  (550, 55002, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Basculin (White-Striped) - Waterfall - TM077
  (550, 55002, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Basculin (White-Striped) - Rest - TM085
  (550, 55002, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Basculin (White-Striped) - Taunt - TM087
  (550, 55002, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Basculin (White-Striped) - Substitute - TM103
  (550, 55002, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Basculin (White-Striped) - Crunch - TM108
  (550, 55002, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Basculin (White-Striped) - Liquidation - TM110
  (550, 55002, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Basculin (White-Striped) - Surf - TM123
  (550, 55002, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 41),
  -- Basculin (White-Striped) - Reversal - TM134
  (550, 55002, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Basculin (White-Striped) - Ice Beam - TM135
  (550, 55002, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Basculin (White-Striped) - Hydro Pump - TM142
  (550, 55002, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Basculin (White-Striped) - Blizzard - TM143
  (550, 55002, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Basculin (White-Striped) - Giga Impact - TM152
  (550, 55002, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Basculin (White-Striped) - Hyper Beam - TM163
  (550, 55002, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Basculin (White-Striped) - Tera Blast - TM171
  (550, 55002, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Basculin (White-Striped) - Bubble Beam - Egg
  (550, 55002, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin (White-Striped) - Endeavor - Egg
  (550, 55002, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Basculin (White-Striped) - Last Respects - Egg
  (550, 55002, 854, 23, NULL, 5, NULL, NULL, NULL, NULL, 51);
