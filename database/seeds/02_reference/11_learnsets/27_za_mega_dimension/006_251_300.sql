-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and inherited ZA TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope.
-- Delta note: Rows exclude Pokémon/forms already seeded in base ZA; base ZA TM machine rows are inherited through the parent content scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension learnset delta rows for species 251-300.
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
  -- Treecko - Tackle - Level 1
  (252, 25200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Leafage - Level 3
  (252, 25200, 670, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 6
  (252, 25200, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Treecko - Absorb - Level 9
  (252, 25200, 71, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Treecko - Detect - Level 12
  (252, 25200, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Treecko - Leech Seed - Level 14
  (252, 25200, 73, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Treecko - Giga Drain - Level 21
  (252, 25200, 202, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Treecko - Double Team - Level 27
  (252, 25200, 104, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Treecko - Dragon Breath - Level 30
  (252, 25200, 225, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Treecko - Energy Ball - Level 33
  (252, 25200, 412, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Treecko - Slash - Level 35
  (252, 25200, 163, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Treecko - Screech - Level 40
  (252, 25200, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Treecko - Synthesis - Level 50
  (252, 25200, 235, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Treecko - Leaf Storm - Level 55
  (252, 25200, 437, 27, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Treecko - Brick Break - TM010
  (252, 25200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Treecko - Rock Slide - TM012
  (252, 25200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Treecko - Protect - TM017
  (252, 25200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Treecko - Aerial Ace - TM022
  (252, 25200, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Treecko - Thunder Punch - TM023
  (252, 25200, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Treecko - Crunch - TM025
  (252, 25200, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Treecko - Energy Ball - TM026
  (252, 25200, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 22),
  -- Treecko - Swift - TM027
  (252, 25200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Treecko - Dig - TM028
  (252, 25200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Treecko - Swords Dance - TM030
  (252, 25200, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Treecko - Double Team - TM032
  (252, 25200, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Treecko - Body Slam - TM033
  (252, 25200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Treecko - Night Slash - TM034
  (252, 25200, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 28),
  -- Treecko - Endure - TM035
  (252, 25200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Treecko - Rock Tomb - TM036
  (252, 25200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Treecko - Bullet Seed - TM040
  (252, 25200, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 31),
  -- Treecko - Giga Drain - TM042
  (252, 25200, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 32),
  -- Treecko - Agility - TM047
  (252, 25200, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 33),
  -- Treecko - Safeguard - TM051
  (252, 25200, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 34),
  -- Treecko - Solar Beam - TM064
  (252, 25200, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Treecko - Substitute - TM085
  (252, 25200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Treecko - Iron Tail - TM087
  (252, 25200, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Treecko - Work Up - TM103
  (252, 25200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 38),
  -- Treecko - Facade - TM109
  (252, 25200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Treecko - Trailblaze - TM115
  (252, 25200, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 40),
  -- Treecko - Seed Bomb - TM128
  (252, 25200, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 41),
  -- Treecko - Drain Punch - TM131
  (252, 25200, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 42),
  -- Grovyle - Tackle - Level 1
  (253, 25300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - X-Scissor - Level 1
  (253, 25300, 404, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Leafage - Level 3
  (253, 25300, 670, 27, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Grovyle - Quick Attack - Level 6
  (253, 25300, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grovyle - Absorb - Level 9
  (253, 25300, 71, 27, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Grovyle - Detect - Level 12
  (253, 25300, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Grovyle - Leech Seed - Level 14
  (253, 25300, 73, 27, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Grovyle - Giga Drain - Level 21
  (253, 25300, 202, 27, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Grovyle - Double Team - Level 27
  (253, 25300, 104, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Grovyle - Dragon Breath - Level 30
  (253, 25300, 225, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Grovyle - Energy Ball - Level 33
  (253, 25300, 412, 27, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Grovyle - Slash - Level 35
  (253, 25300, 163, 27, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Grovyle - Leaf Blade - Level 38
  (253, 25300, 348, 27, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Grovyle - Screech - Level 40
  (253, 25300, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Grovyle - Dragon Rush - Level 44
  (253, 25300, 407, 27, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Grovyle - Synthesis - Level 50
  (253, 25300, 235, 27, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Grovyle - Leaf Storm - Level 55
  (253, 25300, 437, 27, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Grovyle - Dragon Claw - TM002
  (253, 25300, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 19),
  -- Grovyle - Brick Break - TM010
  (253, 25300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Grovyle - Rock Slide - TM012
  (253, 25300, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Grovyle - Protect - TM017
  (253, 25300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Grovyle - Aerial Ace - TM022
  (253, 25300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Grovyle - Thunder Punch - TM023
  (253, 25300, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Grovyle - Crunch - TM025
  (253, 25300, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Grovyle - Energy Ball - TM026
  (253, 25300, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 26),
  -- Grovyle - Swift - TM027
  (253, 25300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Grovyle - Dig - TM028
  (253, 25300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 28),
  -- Grovyle - Swords Dance - TM030
  (253, 25300, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 29),
  -- Grovyle - Double Team - TM032
  (253, 25300, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 30),
  -- Grovyle - Body Slam - TM033
  (253, 25300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Grovyle - Night Slash - TM034
  (253, 25300, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 32),
  -- Grovyle - Endure - TM035
  (253, 25300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 33),
  -- Grovyle - Rock Tomb - TM036
  (253, 25300, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 34),
  -- Grovyle - Bullet Seed - TM040
  (253, 25300, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 35),
  -- Grovyle - Giga Drain - TM042
  (253, 25300, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 36),
  -- Grovyle - Agility - TM047
  (253, 25300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 37),
  -- Grovyle - Safeguard - TM051
  (253, 25300, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 38),
  -- Grovyle - Solar Beam - TM064
  (253, 25300, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 39),
  -- Grovyle - Dragon Pulse - TM075
  (253, 25300, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 40),
  -- Grovyle - X-Scissor - TM081
  (253, 25300, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 41),
  -- Grovyle - Substitute - TM085
  (253, 25300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Grovyle - Iron Tail - TM087
  (253, 25300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Grovyle - Work Up - TM103
  (253, 25300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 44),
  -- Grovyle - Facade - TM109
  (253, 25300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Grovyle - Low Sweep - TM113
  (253, 25300, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 46),
  -- Grovyle - Trailblaze - TM115
  (253, 25300, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 47),
  -- Grovyle - False Swipe - TM122
  (253, 25300, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 48),
  -- Grovyle - Seed Bomb - TM128
  (253, 25300, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 49),
  -- Grovyle - Drain Punch - TM131
  (253, 25300, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 50),
  -- Grovyle - Vacuum Wave - TM150
  (253, 25300, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 51),
  -- Grovyle - Solar Blade - TM152
  (253, 25300, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 52),
  -- Sceptile - Tackle - Level 1
  (254, 25400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - X-Scissor - Level 1
  (254, 25400, 404, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Leafage - Level 3
  (254, 25400, 670, 27, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Sceptile - Quick Attack - Level 6
  (254, 25400, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Sceptile - Absorb - Level 9
  (254, 25400, 71, 27, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sceptile - Detect - Level 12
  (254, 25400, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Sceptile - Leech Seed - Level 14
  (254, 25400, 73, 27, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Sceptile - Giga Drain - Level 21
  (254, 25400, 202, 27, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sceptile - Double Team - Level 27
  (254, 25400, 104, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Sceptile - Dragon Breath - Level 30
  (254, 25400, 225, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Sceptile - Energy Ball - Level 33
  (254, 25400, 412, 27, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Sceptile - Slash - Level 35
  (254, 25400, 163, 27, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Sceptile - Leaf Blade - Level 38
  (254, 25400, 348, 27, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Sceptile - Screech - Level 40
  (254, 25400, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sceptile - Dragon Rush - Level 44
  (254, 25400, 407, 27, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Sceptile - Synthesis - Level 50
  (254, 25400, 235, 27, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Sceptile - Leaf Storm - Level 55
  (254, 25400, 437, 27, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Sceptile - Dragon Claw - TM002
  (254, 25400, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 19),
  -- Sceptile - Roar - TM005
  (254, 25400, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 20),
  -- Sceptile - Brick Break - TM010
  (254, 25400, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 21),
  -- Sceptile - Rock Slide - TM012
  (254, 25400, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 22),
  -- Sceptile - Protect - TM017
  (254, 25400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Sceptile - Aerial Ace - TM022
  (254, 25400, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Sceptile - Thunder Punch - TM023
  (254, 25400, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Sceptile - Crunch - TM025
  (254, 25400, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 26),
  -- Sceptile - Energy Ball - TM026
  (254, 25400, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 27),
  -- Sceptile - Swift - TM027
  (254, 25400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 28),
  -- Sceptile - Dig - TM028
  (254, 25400, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 29),
  -- Sceptile - Swords Dance - TM030
  (254, 25400, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 30),
  -- Sceptile - Double Team - TM032
  (254, 25400, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 31),
  -- Sceptile - Body Slam - TM033
  (254, 25400, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 32),
  -- Sceptile - Night Slash - TM034
  (254, 25400, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 33),
  -- Sceptile - Endure - TM035
  (254, 25400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 34),
  -- Sceptile - Rock Tomb - TM036
  (254, 25400, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 35),
  -- Sceptile - Bullet Seed - TM040
  (254, 25400, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 36),
  -- Sceptile - Giga Drain - TM042
  (254, 25400, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 37),
  -- Sceptile - Hyper Beam - TM044
  (254, 25400, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 38),
  -- Sceptile - Agility - TM047
  (254, 25400, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 39),
  -- Sceptile - Safeguard - TM051
  (254, 25400, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 40),
  -- Sceptile - Giga Impact - TM055
  (254, 25400, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 41),
  -- Sceptile - Double-Edge - TM056
  (254, 25400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 42),
  -- Sceptile - Solar Beam - TM064
  (254, 25400, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 43),
  -- Sceptile - Earthquake - TM069
  (254, 25400, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 44),
  -- Sceptile - Dragon Pulse - TM075
  (254, 25400, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 45),
  -- Sceptile - Bulldoze - TM078
  (254, 25400, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 46),
  -- Sceptile - X-Scissor - TM081
  (254, 25400, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 47),
  -- Sceptile - Substitute - TM085
  (254, 25400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 48),
  -- Sceptile - Iron Tail - TM087
  (254, 25400, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 49),
  -- Sceptile - Outrage - TM093
  (254, 25400, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 50),
  -- Sceptile - Focus Blast - TM102
  (254, 25400, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 51),
  -- Sceptile - Work Up - TM103
  (254, 25400, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 52),
  -- Sceptile - Facade - TM109
  (254, 25400, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 53),
  -- Sceptile - Low Sweep - TM113
  (254, 25400, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 54),
  -- Sceptile - Trailblaze - TM115
  (254, 25400, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 55),
  -- Sceptile - False Swipe - TM122
  (254, 25400, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 56),
  -- Sceptile - Seed Bomb - TM128
  (254, 25400, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 57),
  -- Sceptile - Drain Punch - TM131
  (254, 25400, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 58),
  -- Sceptile - Dual Chop - TM135
  (254, 25400, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 59),
  -- Sceptile - Scale Shot - TM143
  (254, 25400, 799, 27, NULL, 2, NULL, NULL, 26002143, NULL, 60),
  -- Sceptile - Razor Wind - TM145
  (254, 25400, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 61),
  -- Sceptile - Vacuum Wave - TM150
  (254, 25400, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 62),
  -- Sceptile - Solar Blade - TM152
  (254, 25400, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 63),
  -- Sceptile - Frenzy Plant - TM160
  (254, 25400, 338, 27, NULL, 2, NULL, NULL, 26002160, NULL, 64),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Peck - Level 1
  (255, 25500, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Ember - Level 3
  (255, 25500, 52, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Torchic - Quick Attack - Level 6
  (255, 25500, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Torchic - Flame Charge - Level 9
  (255, 25500, 488, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torchic - Detect - Level 12
  (255, 25500, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torchic - Aerial Ace - Level 18
  (255, 25500, 332, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Torchic - Slash - Level 21
  (255, 25500, 163, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Torchic - Bounce - Level 24
  (255, 25500, 340, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Torchic - Focus Energy - Level 27
  (255, 25500, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Torchic - Flamethrower - Level 33
  (255, 25500, 53, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Torchic - Feather Dance - Level 50
  (255, 25500, 297, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Torchic - Flare Blitz - Level 55
  (255, 25500, 394, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Torchic - Rock Slide - TM012
  (255, 25500, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Torchic - Protect - TM017
  (255, 25500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Torchic - Aerial Ace - TM022
  (255, 25500, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Torchic - Swift - TM027
  (255, 25500, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Torchic - Dig - TM028
  (255, 25500, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Torchic - Swords Dance - TM030
  (255, 25500, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Torchic - Body Slam - TM033
  (255, 25500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Torchic - Night Slash - TM034
  (255, 25500, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 21),
  -- Torchic - Endure - TM035
  (255, 25500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Torchic - Rock Tomb - TM036
  (255, 25500, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Torchic - Fire Blast - TM038
  (255, 25500, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Torchic - Agility - TM047
  (255, 25500, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Torchic - Overheat - TM050
  (255, 25500, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 26),
  -- Torchic - Double-Edge - TM056
  (255, 25500, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Torchic - Will-O-Wisp - TM057
  (255, 25500, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Torchic - Shadow Claw - TM061
  (255, 25500, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 29),
  -- Torchic - Flamethrower - TM062
  (255, 25500, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Torchic - Heat Wave - TM068
  (255, 25500, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 31),
  -- Torchic - Fire Spin - TM072
  (255, 25500, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 32),
  -- Torchic - Substitute - TM085
  (255, 25500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Torchic - Curse - TM091
  (255, 25500, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Torchic - Work Up - TM103
  (255, 25500, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 35),
  -- Torchic - Flare Blitz - TM104
  (255, 25500, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 36),
  -- Torchic - Facade - TM109
  (255, 25500, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 37),
  -- Torchic - Flame Charge - TM114
  (255, 25500, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 38),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Peck - Level 1
  (256, 25600, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Ember - Level 3
  (256, 25600, 52, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Combusken - Quick Attack - Level 6
  (256, 25600, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Combusken - Flame Charge - Level 9
  (256, 25600, 488, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Combusken - Detect - Level 12
  (256, 25600, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Combusken - Aerial Ace - Level 18
  (256, 25600, 332, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Combusken - Slash - Level 21
  (256, 25600, 163, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Combusken - Bounce - Level 24
  (256, 25600, 340, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Combusken - Focus Energy - Level 27
  (256, 25600, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Combusken - Flamethrower - Level 33
  (256, 25600, 53, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Combusken - Bulk Up - Level 40
  (256, 25600, 339, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Combusken - Blaze Kick - Level 44
  (256, 25600, 299, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Combusken - Feather Dance - Level 50
  (256, 25600, 297, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Flare Blitz - Level 55
  (256, 25600, 394, 27, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Combusken - Brick Break - TM010
  (256, 25600, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Combusken - Bulk Up - TM011
  (256, 25600, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Combusken - Rock Slide - TM012
  (256, 25600, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Combusken - Protect - TM017
  (256, 25600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Combusken - Power-Up Punch - TM018
  (256, 25600, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Combusken - Aerial Ace - TM022
  (256, 25600, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Combusken - Thunder Punch - TM023
  (256, 25600, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Combusken - Swift - TM027
  (256, 25600, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Combusken - Dig - TM028
  (256, 25600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Combusken - Fire Punch - TM029
  (256, 25600, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Combusken - Swords Dance - TM030
  (256, 25600, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Combusken - Body Slam - TM033
  (256, 25600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Combusken - Night Slash - TM034
  (256, 25600, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 28),
  -- Combusken - Endure - TM035
  (256, 25600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Combusken - Rock Tomb - TM036
  (256, 25600, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Combusken - Fire Blast - TM038
  (256, 25600, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 31),
  -- Combusken - Agility - TM047
  (256, 25600, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 32),
  -- Combusken - Overheat - TM050
  (256, 25600, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 33),
  -- Combusken - Double-Edge - TM056
  (256, 25600, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Combusken - Will-O-Wisp - TM057
  (256, 25600, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 35),
  -- Combusken - Shadow Claw - TM061
  (256, 25600, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 36),
  -- Combusken - Flamethrower - TM062
  (256, 25600, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 37),
  -- Combusken - Heat Wave - TM068
  (256, 25600, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 38),
  -- Combusken - Fire Spin - TM072
  (256, 25600, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 39),
  -- Combusken - Poison Jab - TM077
  (256, 25600, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Combusken - Substitute - TM085
  (256, 25600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Combusken - Curse - TM091
  (256, 25600, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 42),
  -- Combusken - Focus Blast - TM102
  (256, 25600, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 43),
  -- Combusken - Work Up - TM103
  (256, 25600, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 44),
  -- Combusken - Flare Blitz - TM104
  (256, 25600, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 45),
  -- Combusken - Close Combat - TM107
  (256, 25600, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 46),
  -- Combusken - Comet Punch - TM108
  (256, 25600, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 47),
  -- Combusken - Facade - TM109
  (256, 25600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 48),
  -- Combusken - Low Sweep - TM113
  (256, 25600, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 49),
  -- Combusken - Flame Charge - TM114
  (256, 25600, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 50),
  -- Combusken - Circle Throw - TM129
  (256, 25600, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 51),
  -- Combusken - Blaze Kick - TM133
  (256, 25600, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 52),
  -- Combusken - Dual Chop - TM135
  (256, 25600, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 53),
  -- Combusken - Vacuum Wave - TM150
  (256, 25600, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 54),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Peck - Level 1
  (257, 25700, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Ember - Level 3
  (257, 25700, 52, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Blaziken - Quick Attack - Level 6
  (257, 25700, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Blaziken - Flame Charge - Level 9
  (257, 25700, 488, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Blaziken - Detect - Level 12
  (257, 25700, 197, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Blaziken - Aerial Ace - Level 18
  (257, 25700, 332, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Blaziken - Slash - Level 21
  (257, 25700, 163, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Blaziken - Bounce - Level 24
  (257, 25700, 340, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Blaziken - Focus Energy - Level 27
  (257, 25700, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Blaziken - Flamethrower - Level 33
  (257, 25700, 53, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Blaziken - Bulk Up - Level 40
  (257, 25700, 339, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Blaziken - Blaze Kick - Level 44
  (257, 25700, 299, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Blaziken - Feather Dance - Level 50
  (257, 25700, 297, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Blaziken - Flare Blitz - Level 55
  (257, 25700, 394, 27, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Blaziken - Brave Bird - Level 58
  (257, 25700, 413, 27, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Blaziken - Roar - TM005
  (257, 25700, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Blaziken - Brick Break - TM010
  (257, 25700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Blaziken - Bulk Up - TM011
  (257, 25700, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Blaziken - Rock Slide - TM012
  (257, 25700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Blaziken - Protect - TM017
  (257, 25700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Blaziken - Power-Up Punch - TM018
  (257, 25700, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 22),
  -- Blaziken - Aerial Ace - TM022
  (257, 25700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Blaziken - Thunder Punch - TM023
  (257, 25700, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Blaziken - Swift - TM027
  (257, 25700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Blaziken - Dig - TM028
  (257, 25700, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Blaziken - Fire Punch - TM029
  (257, 25700, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Blaziken - Swords Dance - TM030
  (257, 25700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 28),
  -- Blaziken - Body Slam - TM033
  (257, 25700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Blaziken - Night Slash - TM034
  (257, 25700, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 30),
  -- Blaziken - Endure - TM035
  (257, 25700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Blaziken - Rock Tomb - TM036
  (257, 25700, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 32),
  -- Blaziken - Fire Blast - TM038
  (257, 25700, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 33),
  -- Blaziken - Hyper Beam - TM044
  (257, 25700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 34),
  -- Blaziken - Knock Off - TM045
  (257, 25700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 35),
  -- Blaziken - Agility - TM047
  (257, 25700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 36),
  -- Blaziken - Overheat - TM050
  (257, 25700, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 37),
  -- Blaziken - Giga Impact - TM055
  (257, 25700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Blaziken - Double-Edge - TM056
  (257, 25700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 39),
  -- Blaziken - Will-O-Wisp - TM057
  (257, 25700, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 40),
  -- Blaziken - Shadow Claw - TM061
  (257, 25700, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 41),
  -- Blaziken - Flamethrower - TM062
  (257, 25700, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 42),
  -- Blaziken - Solar Beam - TM064
  (257, 25700, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 43),
  -- Blaziken - Stone Edge - TM065
  (257, 25700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 44),
  -- Blaziken - Heat Wave - TM068
  (257, 25700, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 45),
  -- Blaziken - Earthquake - TM069
  (257, 25700, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 46),
  -- Blaziken - Fire Spin - TM072
  (257, 25700, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 47),
  -- Blaziken - Poison Jab - TM077
  (257, 25700, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 48),
  -- Blaziken - Bulldoze - TM078
  (257, 25700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 49),
  -- Blaziken - U-turn - TM082
  (257, 25700, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 50),
  -- Blaziken - Substitute - TM085
  (257, 25700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 51),
  -- Blaziken - Curse - TM091
  (257, 25700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 52),
  -- Blaziken - Focus Blast - TM102
  (257, 25700, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Blaziken - Work Up - TM103
  (257, 25700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 54),
  -- Blaziken - Flare Blitz - TM104
  (257, 25700, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 55),
  -- Blaziken - Close Combat - TM107
  (257, 25700, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 56),
  -- Blaziken - Comet Punch - TM108
  (257, 25700, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 57),
  -- Blaziken - Facade - TM109
  (257, 25700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 58),
  -- Blaziken - Low Sweep - TM113
  (257, 25700, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 59),
  -- Blaziken - Flame Charge - TM114
  (257, 25700, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 60),
  -- Blaziken - Circle Throw - TM129
  (257, 25700, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 61),
  -- Blaziken - Drain Punch - TM131
  (257, 25700, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 62),
  -- Blaziken - Blaze Kick - TM133
  (257, 25700, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 63),
  -- Blaziken - Dual Chop - TM135
  (257, 25700, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 64),
  -- Blaziken - Scorching Sands - TM136
  (257, 25700, 815, 27, NULL, 2, NULL, NULL, 26002136, NULL, 65),
  -- Blaziken - Vacuum Wave - TM150
  (257, 25700, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 66),
  -- Blaziken - Blast Burn - TM158
  (257, 25700, 307, 27, NULL, 2, NULL, NULL, 26002158, NULL, 67),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Bite - Level 1
  (258, 25800, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mudkip - Water Gun - Level 3
  (258, 25800, 55, 27, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Mudkip - Rock Smash - Level 6
  (258, 25800, 249, 27, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Mudkip - Rock Throw - Level 11
  (258, 25800, 88, 27, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Mudkip - Protect - Level 14
  (258, 25800, 182, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Mudkip - Supersonic - Level 18
  (258, 25800, 48, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mudkip - Bubble Beam - Level 22
  (258, 25800, 61, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mudkip - Rock Slide - Level 26
  (258, 25800, 157, 27, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Mudkip - Take Down - Level 28
  (258, 25800, 36, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mudkip - Amnesia - Level 30
  (258, 25800, 133, 27, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Mudkip - Surf - Level 36
  (258, 25800, 57, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mudkip - Screech - Level 38
  (258, 25800, 103, 27, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Mudkip - Sludge Bomb - Level 40
  (258, 25800, 188, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Mudkip - Muddy Water - Level 46
  (258, 25800, 330, 27, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Mudkip - Hydro Pump - Level 55
  (258, 25800, 56, 27, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Mudkip - Rock Smash - TM004
  (258, 25800, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Mudkip - Roar - TM005
  (258, 25800, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Mudkip - Rock Slide - TM012
  (258, 25800, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Mudkip - Ice Beam - TM013
  (258, 25800, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Mudkip - Protect - TM017
  (258, 25800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Mudkip - Dig - TM028
  (258, 25800, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Mudkip - Body Slam - TM033
  (258, 25800, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Mudkip - Endure - TM035
  (258, 25800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Mudkip - Rock Tomb - TM036
  (258, 25800, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Mudkip - Water Pulse - TM041
  (258, 25800, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 27),
  -- Mudkip - Mud Shot - TM046
  (258, 25800, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Mudkip - Icy Wind - TM049
  (258, 25800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Mudkip - Earth Power - TM052
  (258, 25800, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 30),
  -- Mudkip - Sludge Bomb - TM053
  (258, 25800, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Mudkip - Double-Edge - TM056
  (258, 25800, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Mudkip - Whirlpool - TM070
  (258, 25800, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 33),
  -- Mudkip - Surf - TM073
  (258, 25800, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 34),
  -- Mudkip - Liquidation - TM076
  (258, 25800, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 35),
  -- Mudkip - Substitute - TM085
  (258, 25800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Mudkip - Iron Tail - TM087
  (258, 25800, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Mudkip - Curse - TM091
  (258, 25800, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 38),
  -- Mudkip - Hydro Pump - TM096
  (258, 25800, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 39),
  -- Mudkip - Waterfall - TM098
  (258, 25800, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 40),
  -- Mudkip - Work Up - TM103
  (258, 25800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Mudkip - Blizzard - TM105
  (258, 25800, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Mudkip - Facade - TM109
  (258, 25800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Mudkip - Chilling Water - TM110
  (258, 25800, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 44),
  -- Mudkip - Ancient Power - TM120
  (258, 25800, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 45),
  -- Mudkip - Muddy Water - TM140
  (258, 25800, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 46),
  -- Mudkip - Scald - TM148
  (258, 25800, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 47),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Bite - Level 1
  (259, 25900, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Mud Shot - Level 1
  (259, 25900, 341, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Water Gun - Level 3
  (259, 25900, 55, 27, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Marshtomp - Rock Smash - Level 6
  (259, 25900, 249, 27, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Marshtomp - Rock Throw - Level 11
  (259, 25900, 88, 27, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Marshtomp - Protect - Level 14
  (259, 25900, 182, 27, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Marshtomp - Supersonic - Level 18
  (259, 25900, 48, 27, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Marshtomp - Bubble Beam - Level 22
  (259, 25900, 61, 27, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Marshtomp - Rock Slide - Level 26
  (259, 25900, 157, 27, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Marshtomp - Take Down - Level 28
  (259, 25900, 36, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Marshtomp - Amnesia - Level 30
  (259, 25900, 133, 27, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Marshtomp - Aqua Ring - Level 33
  (259, 25900, 392, 27, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Marshtomp - Surf - Level 36
  (259, 25900, 57, 27, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Marshtomp - Screech - Level 38
  (259, 25900, 103, 27, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Marshtomp - Sludge Bomb - Level 40
  (259, 25900, 188, 27, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Marshtomp - Muddy Water - Level 46
  (259, 25900, 330, 27, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Marshtomp - Earthquake - Level 50
  (259, 25900, 89, 27, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Marshtomp - Hydro Pump - Level 55
  (259, 25900, 56, 27, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Marshtomp - Rock Smash - TM004
  (259, 25900, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 21),
  -- Marshtomp - Roar - TM005
  (259, 25900, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 22),
  -- Marshtomp - Brick Break - TM010
  (259, 25900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 23),
  -- Marshtomp - Rock Slide - TM012
  (259, 25900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 24),
  -- Marshtomp - Ice Beam - TM013
  (259, 25900, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 25),
  -- Marshtomp - Protect - TM017
  (259, 25900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 26),
  -- Marshtomp - Ice Punch - TM024
  (259, 25900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 27),
  -- Marshtomp - Dig - TM028
  (259, 25900, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 28),
  -- Marshtomp - Body Slam - TM033
  (259, 25900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Marshtomp - Endure - TM035
  (259, 25900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Marshtomp - Rock Tomb - TM036
  (259, 25900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Marshtomp - Stealth Rock - TM037
  (259, 25900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 32),
  -- Marshtomp - Water Pulse - TM041
  (259, 25900, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 33),
  -- Marshtomp - Mud Shot - TM046
  (259, 25900, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 34),
  -- Marshtomp - Icy Wind - TM049
  (259, 25900, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Marshtomp - Earth Power - TM052
  (259, 25900, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 36),
  -- Marshtomp - Sludge Bomb - TM053
  (259, 25900, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 37),
  -- Marshtomp - Double-Edge - TM056
  (259, 25900, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Marshtomp - Earthquake - TM069
  (259, 25900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 39),
  -- Marshtomp - Whirlpool - TM070
  (259, 25900, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 40),
  -- Marshtomp - Surf - TM073
  (259, 25900, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 41),
  -- Marshtomp - Liquidation - TM076
  (259, 25900, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 42),
  -- Marshtomp - Bulldoze - TM078
  (259, 25900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 43),
  -- Marshtomp - Substitute - TM085
  (259, 25900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Marshtomp - Iron Tail - TM087
  (259, 25900, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 45),
  -- Marshtomp - Curse - TM091
  (259, 25900, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 46),
  -- Marshtomp - Hydro Pump - TM096
  (259, 25900, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 47),
  -- Marshtomp - Waterfall - TM098
  (259, 25900, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 48),
  -- Marshtomp - Work Up - TM103
  (259, 25900, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 49),
  -- Marshtomp - Blizzard - TM105
  (259, 25900, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 50),
  -- Marshtomp - Facade - TM109
  (259, 25900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 51),
  -- Marshtomp - Chilling Water - TM110
  (259, 25900, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 52),
  -- Marshtomp - Ancient Power - TM120
  (259, 25900, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 53),
  -- Marshtomp - Muddy Water - TM140
  (259, 25900, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 54),
  -- Marshtomp - Scald - TM148
  (259, 25900, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 55),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Bite - Level 1
  (260, 26000, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Sand Tomb - Level 1
  (260, 26000, 328, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Water Gun - Level 3
  (260, 26000, 55, 27, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Swampert - Rock Smash - Level 6
  (260, 26000, 249, 27, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Swampert - Rock Throw - Level 11
  (260, 26000, 88, 27, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Swampert - Protect - Level 14
  (260, 26000, 182, 27, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Swampert - Supersonic - Level 18
  (260, 26000, 48, 27, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Swampert - Bubble Beam - Level 22
  (260, 26000, 61, 27, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Swampert - Rock Slide - Level 26
  (260, 26000, 157, 27, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Swampert - Take Down - Level 28
  (260, 26000, 36, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Swampert - Amnesia - Level 30
  (260, 26000, 133, 27, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Swampert - Aqua Ring - Level 33
  (260, 26000, 392, 27, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Swampert - Surf - Level 36
  (260, 26000, 57, 27, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Swampert - Screech - Level 38
  (260, 26000, 103, 27, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Swampert - Sludge Bomb - Level 40
  (260, 26000, 188, 27, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Swampert - Muddy Water - Level 46
  (260, 26000, 330, 27, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Swampert - Earthquake - Level 50
  (260, 26000, 89, 27, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Swampert - Hydro Pump - Level 55
  (260, 26000, 56, 27, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Swampert - Sludge Wave - Level 60
  (260, 26000, 482, 27, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Swampert - Mud Shot - Evolution
  (260, 26000, 341, 27, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Swampert - Rock Smash - TM004
  (260, 26000, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 23),
  -- Swampert - Roar - TM005
  (260, 26000, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 24),
  -- Swampert - Flip Turn - TM009
  (260, 26000, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 25),
  -- Swampert - Brick Break - TM010
  (260, 26000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 26),
  -- Swampert - Bulk Up - TM011
  (260, 26000, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 27),
  -- Swampert - Rock Slide - TM012
  (260, 26000, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 28),
  -- Swampert - Ice Beam - TM013
  (260, 26000, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 29),
  -- Swampert - Protect - TM017
  (260, 26000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 30),
  -- Swampert - Ice Punch - TM024
  (260, 26000, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 31),
  -- Swampert - Dig - TM028
  (260, 26000, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 32),
  -- Swampert - Body Slam - TM033
  (260, 26000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 33),
  -- Swampert - Endure - TM035
  (260, 26000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 34),
  -- Swampert - Rock Tomb - TM036
  (260, 26000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 35),
  -- Swampert - Stealth Rock - TM037
  (260, 26000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Swampert - Water Pulse - TM041
  (260, 26000, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 37),
  -- Swampert - Hyper Beam - TM044
  (260, 26000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 38),
  -- Swampert - Knock Off - TM045
  (260, 26000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 39),
  -- Swampert - Mud Shot - TM046
  (260, 26000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 40),
  -- Swampert - Icy Wind - TM049
  (260, 26000, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 41),
  -- Swampert - Earth Power - TM052
  (260, 26000, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 42),
  -- Swampert - Sludge Bomb - TM053
  (260, 26000, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 43),
  -- Swampert - Giga Impact - TM055
  (260, 26000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 44),
  -- Swampert - Double-Edge - TM056
  (260, 26000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 45),
  -- Swampert - Stone Edge - TM065
  (260, 26000, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 46),
  -- Swampert - Earthquake - TM069
  (260, 26000, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 47),
  -- Swampert - Whirlpool - TM070
  (260, 26000, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 48),
  -- Swampert - Surf - TM073
  (260, 26000, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 49),
  -- Swampert - Liquidation - TM076
  (260, 26000, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 50),
  -- Swampert - Poison Jab - TM077
  (260, 26000, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 51),
  -- Swampert - Bulldoze - TM078
  (260, 26000, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 52),
  -- Swampert - Substitute - TM085
  (260, 26000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 53),
  -- Swampert - Iron Tail - TM087
  (260, 26000, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 54),
  -- Swampert - Curse - TM091
  (260, 26000, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 55),
  -- Swampert - Outrage - TM093
  (260, 26000, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 56),
  -- Swampert - Hydro Pump - TM096
  (260, 26000, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 57),
  -- Swampert - Waterfall - TM098
  (260, 26000, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 58),
  -- Swampert - Focus Blast - TM102
  (260, 26000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 59),
  -- Swampert - Work Up - TM103
  (260, 26000, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 60),
  -- Swampert - Blizzard - TM105
  (260, 26000, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 61),
  -- Swampert - Facade - TM109
  (260, 26000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 62),
  -- Swampert - Chilling Water - TM110
  (260, 26000, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 63),
  -- Swampert - Ancient Power - TM120
  (260, 26000, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 64),
  -- Swampert - Muddy Water - TM140
  (260, 26000, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 65),
  -- Swampert - Scald - TM148
  (260, 26000, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 66),
  -- Swampert - Fissure - TM154
  (260, 26000, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 67),
  -- Swampert - Hydro Cannon - TM159
  (260, 26000, 308, 27, NULL, 2, NULL, NULL, 26002159, NULL, 68);
