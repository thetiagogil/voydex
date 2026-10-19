-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope, plus TM108-TM160 rows for base ZA Pokémon/forms.
-- Delta note: Rows exclude Pokémon/forms already seeded in base ZA; base ZA TM machine rows are inherited through the parent content scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension learnset delta rows for species 101-150.
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
  -- Cubone - Tackle - Level 1
  (104, 10400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cubone - Tail Whip - Level 4
  (104, 10400, 39, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cubone - Leer - Level 7
  (104, 10400, 43, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cubone - False Swipe - Level 8
  (104, 10400, 206, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cubone - Headbutt - Level 12
  (104, 10400, 29, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cubone - Detect - Level 18
  (104, 10400, 197, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Cubone - Bulldoze - Level 24
  (104, 10400, 523, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Cubone - Brutal Swing - Level 29
  (104, 10400, 693, 27, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cubone - Focus Energy - Level 32
  (104, 10400, 116, 27, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Cubone - Bonemerang - Level 40
  (104, 10400, 155, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cubone - Swords Dance - Level 44
  (104, 10400, 14, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Cubone - Double-Edge - Level 48
  (104, 10400, 38, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cubone - Perish Song - Level 55
  (104, 10400, 195, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cubone - Headbutt - TM001
  (104, 10400, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Cubone - Brick Break - TM010
  (104, 10400, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Cubone - Rock Slide - TM012
  (104, 10400, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Cubone - Ice Beam - TM013
  (104, 10400, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Cubone - Protect - TM017
  (104, 10400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Cubone - Thunder Punch - TM023
  (104, 10400, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Cubone - Swift - TM027
  (104, 10400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Cubone - Dig - TM028
  (104, 10400, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Cubone - Fire Punch - TM029
  (104, 10400, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 23),
  -- Cubone - Swords Dance - TM030
  (104, 10400, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 24),
  -- Cubone - Body Slam - TM033
  (104, 10400, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Cubone - Endure - TM035
  (104, 10400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Cubone - Rock Tomb - TM036
  (104, 10400, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Cubone - Stealth Rock - TM037
  (104, 10400, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 28),
  -- Cubone - Fire Blast - TM038
  (104, 10400, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 29),
  -- Cubone - Icy Wind - TM049
  (104, 10400, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 30),
  -- Cubone - Earth Power - TM052
  (104, 10400, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Cubone - Double-Edge - TM056
  (104, 10400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Cubone - Iron Head - TM058
  (104, 10400, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Cubone - Flamethrower - TM062
  (104, 10400, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Cubone - Earthquake - TM069
  (104, 10400, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Cubone - Bulldoze - TM078
  (104, 10400, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Cubone - Iron Defense - TM080
  (104, 10400, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 37),
  -- Cubone - Substitute - TM085
  (104, 10400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Cubone - Iron Tail - TM087
  (104, 10400, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 39),
  -- Cubone - Curse - TM091
  (104, 10400, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Cubone - Blizzard - TM105
  (104, 10400, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 41),
  -- Cubone - Facade - TM109
  (104, 10400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 42),
  -- Cubone - Ancient Power - TM120
  (104, 10400, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 43),
  -- Cubone - False Swipe - TM122
  (104, 10400, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 44),
  -- Cubone - Scorching Sands - TM136
  (104, 10400, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 45),
  -- Cubone - Skull Bash - TM146
  (104, 10400, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 46),
  -- Marowak - Tackle - Level 1
  (105, 10500, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Tail Whip - Level 4
  (105, 10500, 39, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Marowak - Leer - Level 7
  (105, 10500, 43, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Marowak - False Swipe - Level 8
  (105, 10500, 206, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Marowak - Headbutt - Level 12
  (105, 10500, 29, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Marowak - Detect - Level 18
  (105, 10500, 197, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Marowak - Bulldoze - Level 24
  (105, 10500, 523, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Marowak - Brutal Swing - Level 29
  (105, 10500, 693, 27, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Marowak - Focus Energy - Level 32
  (105, 10500, 116, 27, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Marowak - Bonemerang - Level 40
  (105, 10500, 155, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Marowak - Swords Dance - Level 44
  (105, 10500, 14, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Marowak - Double-Edge - Level 48
  (105, 10500, 38, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Marowak - Perish Song - Level 55
  (105, 10500, 195, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Marowak - Headbutt - TM001
  (105, 10500, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Marowak - Brick Break - TM010
  (105, 10500, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Marowak - Rock Slide - TM012
  (105, 10500, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Marowak - Ice Beam - TM013
  (105, 10500, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Marowak - Protect - TM017
  (105, 10500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Marowak - Power-Up Punch - TM018
  (105, 10500, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Marowak - Thunder Punch - TM023
  (105, 10500, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Marowak - Swift - TM027
  (105, 10500, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Marowak - Dig - TM028
  (105, 10500, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Marowak - Fire Punch - TM029
  (105, 10500, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Marowak - Swords Dance - TM030
  (105, 10500, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Marowak - Body Slam - TM033
  (105, 10500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Marowak - Endure - TM035
  (105, 10500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Marowak - Rock Tomb - TM036
  (105, 10500, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Marowak - Stealth Rock - TM037
  (105, 10500, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 29),
  -- Marowak - Fire Blast - TM038
  (105, 10500, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Marowak - Hyper Beam - TM044
  (105, 10500, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Marowak - Icy Wind - TM049
  (105, 10500, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Marowak - Earth Power - TM052
  (105, 10500, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 33),
  -- Marowak - Giga Impact - TM055
  (105, 10500, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Marowak - Double-Edge - TM056
  (105, 10500, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Marowak - Iron Head - TM058
  (105, 10500, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Marowak - Flamethrower - TM062
  (105, 10500, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 37),
  -- Marowak - Stone Edge - TM065
  (105, 10500, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 38),
  -- Marowak - Earthquake - TM069
  (105, 10500, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 39),
  -- Marowak - Bulldoze - TM078
  (105, 10500, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 40),
  -- Marowak - Iron Defense - TM080
  (105, 10500, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 41),
  -- Marowak - Substitute - TM085
  (105, 10500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Marowak - Iron Tail - TM087
  (105, 10500, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Marowak - Curse - TM091
  (105, 10500, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 44),
  -- Marowak - Outrage - TM093
  (105, 10500, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 45),
  -- Marowak - Focus Blast - TM102
  (105, 10500, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 46),
  -- Marowak - Blizzard - TM105
  (105, 10500, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 47),
  -- Marowak - Facade - TM109
  (105, 10500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 48),
  -- Marowak - Ancient Power - TM120
  (105, 10500, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 49),
  -- Marowak - False Swipe - TM122
  (105, 10500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 50),
  -- Marowak - Scorching Sands - TM136
  (105, 10500, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 51),
  -- Marowak - Skull Bash - TM146
  (105, 10500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 52),
  -- Marowak - Fissure - TM154
  (105, 10500, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 53),
  -- Alolan Marowak - Tackle - Level 1
  (105, 10501, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Marowak - Growl - Level 1
  (105, 10501, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Marowak - Tail Whip - Level 4
  (105, 10501, 39, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Alolan Marowak - Leer - Level 7
  (105, 10501, 43, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Alolan Marowak - False Swipe - Level 8
  (105, 10501, 206, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Alolan Marowak - Headbutt - Level 12
  (105, 10501, 29, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Alolan Marowak - Detect - Level 18
  (105, 10501, 197, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Alolan Marowak - Bulldoze - Level 24
  (105, 10501, 523, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Alolan Marowak - Brutal Swing - Level 29
  (105, 10501, 693, 27, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Alolan Marowak - Focus Energy - Level 32
  (105, 10501, 116, 27, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Alolan Marowak - Bonemerang - Level 40
  (105, 10501, 155, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Alolan Marowak - Swords Dance - Level 44
  (105, 10501, 14, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Alolan Marowak - Double-Edge - Level 48
  (105, 10501, 38, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Alolan Marowak - Perish Song - Level 55
  (105, 10501, 195, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Alolan Marowak - Flare Blitz - Level 58
  (105, 10501, 394, 27, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Alolan Marowak - Flame Wheel - Evolution
  (105, 10501, 172, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Alolan Marowak - Shadow Bone - Evolution
  (105, 10501, 708, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Alolan Marowak - Headbutt - TM001
  (105, 10501, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Alolan Marowak - Brick Break - TM010
  (105, 10501, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Alolan Marowak - Rock Slide - TM012
  (105, 10501, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Alolan Marowak - Ice Beam - TM013
  (105, 10501, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Alolan Marowak - Protect - TM017
  (105, 10501, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Alolan Marowak - Power-Up Punch - TM018
  (105, 10501, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 23),
  -- Alolan Marowak - Thunder Punch - TM023
  (105, 10501, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Alolan Marowak - Swift - TM027
  (105, 10501, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Alolan Marowak - Dig - TM028
  (105, 10501, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Alolan Marowak - Fire Punch - TM029
  (105, 10501, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Alolan Marowak - Swords Dance - TM030
  (105, 10501, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 28),
  -- Alolan Marowak - Body Slam - TM033
  (105, 10501, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Alolan Marowak - Endure - TM035
  (105, 10501, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Alolan Marowak - Rock Tomb - TM036
  (105, 10501, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Alolan Marowak - Stealth Rock - TM037
  (105, 10501, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 32),
  -- Alolan Marowak - Fire Blast - TM038
  (105, 10501, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 33),
  -- Alolan Marowak - Hyper Beam - TM044
  (105, 10501, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 34),
  -- Alolan Marowak - Icy Wind - TM049
  (105, 10501, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Alolan Marowak - Earth Power - TM052
  (105, 10501, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 36),
  -- Alolan Marowak - Giga Impact - TM055
  (105, 10501, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Alolan Marowak - Double-Edge - TM056
  (105, 10501, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Alolan Marowak - Will-O-Wisp - TM057
  (105, 10501, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 39),
  -- Alolan Marowak - Iron Head - TM058
  (105, 10501, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 40),
  -- Alolan Marowak - Flamethrower - TM062
  (105, 10501, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 41),
  -- Alolan Marowak - Stone Edge - TM065
  (105, 10501, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 42),
  -- Alolan Marowak - Thunderbolt - TM067
  (105, 10501, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 43),
  -- Alolan Marowak - Heat Wave - TM068
  (105, 10501, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 44),
  -- Alolan Marowak - Earthquake - TM069
  (105, 10501, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 45),
  -- Alolan Marowak - Fire Spin - TM072
  (105, 10501, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 46),
  -- Alolan Marowak - Shadow Ball - TM074
  (105, 10501, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 47),
  -- Alolan Marowak - Bulldoze - TM078
  (105, 10501, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 48),
  -- Alolan Marowak - Iron Defense - TM080
  (105, 10501, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 49),
  -- Alolan Marowak - Substitute - TM085
  (105, 10501, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 50),
  -- Alolan Marowak - Iron Tail - TM087
  (105, 10501, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 51),
  -- Alolan Marowak - Dark Pulse - TM090
  (105, 10501, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 52),
  -- Alolan Marowak - Curse - TM091
  (105, 10501, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 53),
  -- Alolan Marowak - Outrage - TM093
  (105, 10501, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 54),
  -- Alolan Marowak - Focus Blast - TM102
  (105, 10501, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 55),
  -- Alolan Marowak - Flare Blitz - TM104
  (105, 10501, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 56),
  -- Alolan Marowak - Blizzard - TM105
  (105, 10501, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 57),
  -- Alolan Marowak - Thunder - TM106
  (105, 10501, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 58),
  -- Alolan Marowak - Facade - TM109
  (105, 10501, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 59),
  -- Alolan Marowak - Flame Charge - TM114
  (105, 10501, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 60),
  -- Alolan Marowak - Ancient Power - TM120
  (105, 10501, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 61),
  -- Alolan Marowak - False Swipe - TM122
  (105, 10501, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 62),
  -- Alolan Marowak - Scorching Sands - TM136
  (105, 10501, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 63),
  -- Alolan Marowak - Skull Bash - TM146
  (105, 10501, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 64),
  -- Alolan Marowak - Fissure - TM154
  (105, 10501, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 65),
  -- Kangaskhan - Comet Punch - TM108
  (115, 11500, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Kangaskhan - Facade - TM109
  (115, 11500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Kangaskhan - Circle Throw - TM129
  (115, 11500, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 3),
  -- Kangaskhan - Drain Punch - TM131
  (115, 11500, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 4),
  -- Kangaskhan - Double Hit - TM132
  (115, 11500, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 5),
  -- Kangaskhan - Dual Chop - TM135
  (115, 11500, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 6),
  -- Kangaskhan - Fake Out - TM141
  (115, 11500, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 7),
  -- Staryu - Facade - TM109
  (120, 12000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Staryu - Tri Attack - TM147
  (120, 12000, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 2),
  -- Staryu - Scald - TM148
  (120, 12000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 3),
  -- Starmie - Facade - TM109
  (121, 12100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Starmie - Chilling Water - TM110
  (121, 12100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Starmie - Ancient Power - TM120
  (121, 12100, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Starmie - Dream Eater - TM127
  (121, 12100, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Starmie - Charge Beam - TM130
  (121, 12100, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Starmie - Triple Axel - TM144
  (121, 12100, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 6),
  -- Starmie - Skull Bash - TM146
  (121, 12100, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 7),
  -- Starmie - Tri Attack - TM147
  (121, 12100, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 8),
  -- Starmie - Scald - TM148
  (121, 12100, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 9),
  -- Starmie - Meteor Beam - TM156
  (121, 12100, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 10),
  -- Mr. Mime - Tackle - Level 1
  (122, 12200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Hypnosis - Level 1
  (122, 12200, 95, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Confuse Ray - Level 1
  (122, 12200, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Ice Shard - Level 1
  (122, 12200, 420, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime - Charm - Level 8
  (122, 12200, 204, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mr. Mime - Confusion - Level 12
  (122, 12200, 93, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Mr. Mime - Dream Eater - Level 15
  (122, 12200, 138, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mr. Mime - Infestation - Level 17
  (122, 12200, 611, 27, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mr. Mime - Protect - Level 20
  (122, 12200, 182, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Mr. Mime - Stealth Rock - Level 24
  (122, 12200, 446, 27, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mr. Mime - Psybeam - Level 28
  (122, 12200, 60, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mr. Mime - Mimic - Level 32
  (122, 12200, 102, 27, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mr. Mime - Light Screen - Level 36
  (122, 12200, 113, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mr. Mime - Reflect - Level 36
  (122, 12200, 115, 27, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mr. Mime - Safeguard - Level 36
  (122, 12200, 219, 27, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mr. Mime - Freeze-Dry - Level 40
  (122, 12200, 573, 27, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mr. Mime - Mystical Fire - Level 40
  (122, 12200, 595, 27, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Mr. Mime - Dazzling Gleam - Level 44
  (122, 12200, 605, 27, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Mr. Mime - Psychic - Level 48
  (122, 12200, 94, 27, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Mr. Mime - Headbutt - TM001
  (122, 12200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 20),
  -- Mr. Mime - Psyshock - TM003
  (122, 12200, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 21),
  -- Mr. Mime - Calm Mind - TM006
  (122, 12200, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 22),
  -- Mr. Mime - Thunder Wave - TM008
  (122, 12200, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 23),
  -- Mr. Mime - Brick Break - TM010
  (122, 12200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 24),
  -- Mr. Mime - Ice Beam - TM013
  (122, 12200, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 25),
  -- Mr. Mime - Light Screen - TM016
  (122, 12200, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 26),
  -- Mr. Mime - Protect - TM017
  (122, 12200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 27),
  -- Mr. Mime - Play Rough - TM020
  (122, 12200, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 28),
  -- Mr. Mime - Thunder Punch - TM023
  (122, 12200, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 29),
  -- Mr. Mime - Ice Punch - TM024
  (122, 12200, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 30),
  -- Mr. Mime - Energy Ball - TM026
  (122, 12200, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 31),
  -- Mr. Mime - Fire Punch - TM029
  (122, 12200, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 32),
  -- Mr. Mime - Reflect - TM031
  (122, 12200, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 33),
  -- Mr. Mime - Body Slam - TM033
  (122, 12200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 34),
  -- Mr. Mime - Endure - TM035
  (122, 12200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 35),
  -- Mr. Mime - Stealth Rock - TM037
  (122, 12200, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Mr. Mime - Hyper Beam - TM044
  (122, 12200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 37),
  -- Mr. Mime - Icy Wind - TM049
  (122, 12200, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 38),
  -- Mr. Mime - Safeguard - TM051
  (122, 12200, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 39),
  -- Mr. Mime - Giga Impact - TM055
  (122, 12200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Mr. Mime - Zen Headbutt - TM059
  (122, 12200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 41),
  -- Mr. Mime - Future Sight - TM060
  (122, 12200, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 42),
  -- Mr. Mime - Psychic - TM063
  (122, 12200, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 43),
  -- Mr. Mime - Solar Beam - TM064
  (122, 12200, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 44),
  -- Mr. Mime - Thunderbolt - TM067
  (122, 12200, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 45),
  -- Mr. Mime - Shadow Ball - TM074
  (122, 12200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 46),
  -- Mr. Mime - Iron Defense - TM080
  (122, 12200, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 47),
  -- Mr. Mime - Nasty Plot - TM083
  (122, 12200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 48),
  -- Mr. Mime - Substitute - TM085
  (122, 12200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 49),
  -- Mr. Mime - Dazzling Gleam - TM092
  (122, 12200, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 50),
  -- Mr. Mime - Taunt - TM095
  (122, 12200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Mr. Mime - Heal Block - TM097
  (122, 12200, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 52),
  -- Mr. Mime - Metronome - TM099
  (122, 12200, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 53),
  -- Mr. Mime - Focus Blast - TM102
  (122, 12200, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 54),
  -- Mr. Mime - Blizzard - TM105
  (122, 12200, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 55),
  -- Mr. Mime - Thunder - TM106
  (122, 12200, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 56),
  -- Mr. Mime - Comet Punch - TM108
  (122, 12200, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 57),
  -- Mr. Mime - Facade - TM109
  (122, 12200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 58),
  -- Mr. Mime - Chilling Water - TM110
  (122, 12200, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 59),
  -- Mr. Mime - Torment - TM121
  (122, 12200, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 60),
  -- Mr. Mime - Mimic - TM125
  (122, 12200, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 61),
  -- Mr. Mime - Magnet Bomb - TM126
  (122, 12200, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 62),
  -- Mr. Mime - Dream Eater - TM127
  (122, 12200, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 63),
  -- Mr. Mime - Charge Beam - TM130
  (122, 12200, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 64),
  -- Mr. Mime - Drain Punch - TM131
  (122, 12200, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 65),
  -- Mr. Mime - Frost Breath - TM138
  (122, 12200, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 66),
  -- Mr. Mime - Swagger - TM139
  (122, 12200, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 67),
  -- Mr. Mime - Fake Out - TM141
  (122, 12200, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 68),
  -- Mr. Mime - First Impression - TM142
  (122, 12200, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 69),
  -- Mr. Mime - Triple Axel - TM144
  (122, 12200, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 70),
  -- Mr. Mime - Icicle Spear - TM149
  (122, 12200, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 71),
  -- Mr. Mime - Sheer Cold - TM155
  (122, 12200, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 72),
  -- Scyther - Facade - TM109
  (123, 12300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Scyther - Trailblaze - TM115
  (123, 12300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Scyther - Silver Wind - TM117
  (123, 12300, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 3),
  -- Scyther - False Swipe - TM122
  (123, 12300, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Scyther - Double Hit - TM132
  (123, 12300, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 5),
  -- Scyther - Dual Wingbeat - TM134
  (123, 12300, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 6),
  -- Scyther - Dual Chop - TM135
  (123, 12300, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 7),
  -- Scyther - Razor Wind - TM145
  (123, 12300, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 8),
  -- Scyther - Vacuum Wave - TM150
  (123, 12300, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 9),
  -- Pinsir - Facade - TM109
  (127, 12700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pinsir - False Swipe - TM122
  (127, 12700, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 2),
  -- Pinsir - Circle Throw - TM129
  (127, 12700, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 3),
  -- Pinsir - Double Hit - TM132
  (127, 12700, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 4),
  -- Pinsir - Dual Wingbeat - TM134
  (127, 12700, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 5),
  -- Pinsir - Storm Throw - TM137
  (127, 12700, 480, 27, NULL, 2, NULL, NULL, 27002137, NULL, 6),
  -- Magikarp - Facade - TM109
  (129, 12900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Gyarados - Facade - TM109
  (130, 13000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Gyarados - Chilling Water - TM110
  (130, 13000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Gyarados - Swagger - TM139
  (130, 13000, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 3),
  -- Gyarados - Muddy Water - TM140
  (130, 13000, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 4),
  -- Gyarados - Scale Shot - TM143
  (130, 13000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Gyarados - Skull Bash - TM146
  (130, 13000, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Gyarados - Scald - TM148
  (130, 13000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 7),
  -- Eevee - Facade - TM109
  (133, 13300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Eevee - Trailblaze - TM115
  (133, 13300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Eevee - Mimic - TM125
  (133, 13300, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 3),
  -- Vaporeon - Facade - TM109
  (134, 13400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Vaporeon - Chilling Water - TM110
  (134, 13400, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Vaporeon - Trailblaze - TM115
  (134, 13400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Vaporeon - Mimic - TM125
  (134, 13400, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 4),
  -- Vaporeon - Muddy Water - TM140
  (134, 13400, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 5),
  -- Vaporeon - Skull Bash - TM146
  (134, 13400, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Vaporeon - Scald - TM148
  (134, 13400, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 7),
  -- Jolteon - Facade - TM109
  (135, 13500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Jolteon - Trailblaze - TM115
  (135, 13500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Jolteon - False Swipe - TM122
  (135, 13500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Jolteon - Mimic - TM125
  (135, 13500, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 4),
  -- Jolteon - Charge Beam - TM130
  (135, 13500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Jolteon - Skull Bash - TM146
  (135, 13500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Flareon - Facade - TM109
  (136, 13600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Flareon - Flame Charge - TM114
  (136, 13600, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Flareon - Trailblaze - TM115
  (136, 13600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Flareon - Mimic - TM125
  (136, 13600, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 4),
  -- Flareon - Scorching Sands - TM136
  (136, 13600, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 5),
  -- Flareon - Skull Bash - TM146
  (136, 13600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Confuse Ray - Level 1
  (137, 13700, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Charge - Level 1
  (137, 13700, 268, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon - Eerie Impulse - Level 10
  (137, 13700, 598, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Porygon - Thunder Shock - Level 15
  (137, 13700, 84, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon - Psybeam - Level 20
  (137, 13700, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon - Conversion 2 - Level 25
  (137, 13700, 176, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon - Agility - Level 30
  (137, 13700, 97, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon - Recover - Level 35
  (137, 13700, 105, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon - Metal Sound - Level 45
  (137, 13700, 319, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon - Self-Destruct - Level 50
  (137, 13700, 120, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon - Zap Cannon - Level 55
  (137, 13700, 192, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon - Headbutt - TM001
  (137, 13700, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Porygon - Psyshock - TM003
  (137, 13700, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Porygon - Thunder Wave - TM008
  (137, 13700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Porygon - Ice Beam - TM013
  (137, 13700, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Porygon - Protect - TM017
  (137, 13700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Porygon - Swift - TM027
  (137, 13700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Porygon - Reflect - TM031
  (137, 13700, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Porygon - Endure - TM035
  (137, 13700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Porygon - Discharge - TM039
  (137, 13700, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Porygon - Hyper Beam - TM044
  (137, 13700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Porygon - Agility - TM047
  (137, 13700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Porygon - Self-Destruct - TM048
  (137, 13700, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Porygon - Icy Wind - TM049
  (137, 13700, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Porygon - Giga Impact - TM055
  (137, 13700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Porygon - Double-Edge - TM056
  (137, 13700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Porygon - Zen Headbutt - TM059
  (137, 13700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Porygon - Psychic - TM063
  (137, 13700, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Porygon - Solar Beam - TM064
  (137, 13700, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Porygon - Volt Switch - TM066
  (137, 13700, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 33),
  -- Porygon - Thunderbolt - TM067
  (137, 13700, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Porygon - Shadow Ball - TM074
  (137, 13700, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Porygon - Flash Cannon - TM084
  (137, 13700, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 36),
  -- Porygon - Substitute - TM085
  (137, 13700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Porygon - Iron Tail - TM087
  (137, 13700, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Porygon - Heal Block - TM097
  (137, 13700, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 39),
  -- Porygon - Electroweb - TM101
  (137, 13700, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 40),
  -- Porygon - Blizzard - TM105
  (137, 13700, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 41),
  -- Porygon - Thunder - TM106
  (137, 13700, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 42),
  -- Porygon - Facade - TM109
  (137, 13700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 43),
  -- Porygon - Magnet Bomb - TM126
  (137, 13700, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 44),
  -- Porygon - Charge Beam - TM130
  (137, 13700, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 45),
  -- Porygon - Skull Bash - TM146
  (137, 13700, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 46),
  -- Porygon - Tri Attack - TM147
  (137, 13700, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 47),
  -- Aerodactyl - Facade - TM109
  (142, 14200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aerodactyl - Ominous Wind - TM119
  (142, 14200, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 2),
  -- Aerodactyl - Ancient Power - TM120
  (142, 14200, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Aerodactyl - Psychic Fangs - TM124
  (142, 14200, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Aerodactyl - Dual Wingbeat - TM134
  (142, 14200, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 5),
  -- Aerodactyl - Swagger - TM139
  (142, 14200, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 6),
  -- Aerodactyl - Sky Attack - TM153
  (142, 14200, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 7),
  -- Aerodactyl - Meteor Beam - TM156
  (142, 14200, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 8),
  -- Dratini - Facade - TM109
  (147, 14700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Dratini - Chilling Water - TM110
  (147, 14700, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Dratini - Scale Shot - TM143
  (147, 14700, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 3),
  -- Dragonair - Facade - TM109
  (148, 14800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Dragonair - Chilling Water - TM110
  (148, 14800, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Dragonair - Scale Shot - TM143
  (148, 14800, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 3),
  -- Dragonite - Facade - TM109
  (149, 14900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Dragonite - Chilling Water - TM110
  (149, 14900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Dragonite - Dual Wingbeat - TM134
  (149, 14900, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 3),
  -- Dragonite - Scale Shot - TM143
  (149, 14900, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 4),
  -- Dragonite - Razor Wind - TM145
  (149, 14900, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 5),
  -- Dragonite - Skull Bash - TM146
  (149, 14900, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Dragonite - Vacuum Wave - TM150
  (149, 14900, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 7),
  -- Mewtwo - Comet Punch - TM108
  (150, 15000, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Mewtwo - Facade - TM109
  (150, 15000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Mewtwo - Chilling Water - TM110
  (150, 15000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 3),
  -- Mewtwo - Low Sweep - TM113
  (150, 15000, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 4),
  -- Mewtwo - Trailblaze - TM115
  (150, 15000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 5),
  -- Mewtwo - Pay Day - TM116
  (150, 15000, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 6),
  -- Mewtwo - Ancient Power - TM120
  (150, 15000, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 7),
  -- Mewtwo - Dream Eater - TM127
  (150, 15000, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 8),
  -- Mewtwo - Drain Punch - TM131
  (150, 15000, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 9),
  -- Mewtwo - Tri Attack - TM147
  (150, 15000, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 10),
  -- Mewtwo - Vacuum Wave - TM150
  (150, 15000, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 11);
