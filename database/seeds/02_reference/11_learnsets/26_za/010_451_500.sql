-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 451-500.
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
  -- Snover - Leer - Level 1
  (459, 45900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Leafage - Level 1
  (459, 45900, 670, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Mist - Level 10
  (459, 45900, 54, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Snover - Ice Shard - Level 15
  (459, 45900, 420, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Snover - Razor Leaf - Level 20
  (459, 45900, 75, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Snover - Icy Wind - Level 25
  (459, 45900, 196, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Snover - Growth - Level 30
  (459, 45900, 74, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Snover - Leech Seed - Level 35
  (459, 45900, 73, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Snover - Wood Hammer - Level 41
  (459, 45900, 452, 26, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Snover - Blizzard - Level 45
  (459, 45900, 59, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Snover - Leaf Storm - Level 53
  (459, 45900, 437, 26, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Snover - Ice Beam - TM013
  (459, 45900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 12),
  -- Snover - Protect - TM017
  (459, 45900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 13),
  -- Snover - Ice Punch - TM024
  (459, 45900, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 14),
  -- Snover - Energy Ball - TM026
  (459, 45900, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 15),
  -- Snover - Swords Dance - TM030
  (459, 45900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 16),
  -- Snover - Body Slam - TM033
  (459, 45900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 17),
  -- Snover - Endure - TM035
  (459, 45900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Snover - Bullet Seed - TM040
  (459, 45900, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 19),
  -- Snover - Water Pulse - TM041
  (459, 45900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Snover - Giga Drain - TM042
  (459, 45900, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 21),
  -- Snover - Icy Wind - TM049
  (459, 45900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Snover - Solar Beam - TM064
  (459, 45900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 23),
  -- Snover - Substitute - TM085
  (459, 45900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Snover - Blizzard - TM105
  (459, 45900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 25),
  -- Snover - Facade - TM109
  (459, 45900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 26),
  -- Snover - Chilling Water - TM110
  (459, 45900, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 27),
  -- Snover - Trailblaze - TM115
  (459, 45900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 28),
  -- Snover - Seed Bomb - TM128
  (459, 45900, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 29),
  -- Snover - Swagger - TM139
  (459, 45900, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 30),
  -- Snover - Icicle Spear - TM149
  (459, 45900, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 31),
  -- Snover - Sheer Cold - TM155
  (459, 45900, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 32),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leafage - Level 1
  (460, 46000, 670, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Mist - Level 10
  (460, 46000, 54, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Abomasnow - Ice Shard - Level 15
  (460, 46000, 420, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Abomasnow - Razor Leaf - Level 20
  (460, 46000, 75, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Abomasnow - Icy Wind - Level 25
  (460, 46000, 196, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Abomasnow - Growth - Level 30
  (460, 46000, 74, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Abomasnow - Leech Seed - Level 35
  (460, 46000, 73, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Abomasnow - Wood Hammer - Level 41
  (460, 46000, 452, 26, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Abomasnow - Blizzard - Level 45
  (460, 46000, 59, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Abomasnow - Leaf Storm - Level 53
  (460, 46000, 437, 26, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Abomasnow - Ice Punch - Evolution
  (460, 46000, 8, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Abomasnow - Brick Break - TM010
  (460, 46000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Abomasnow - Rock Slide - TM012
  (460, 46000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Abomasnow - Ice Beam - TM013
  (460, 46000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Abomasnow - Protect - TM017
  (460, 46000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Abomasnow - Ice Punch - TM024
  (460, 46000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 17),
  -- Abomasnow - Energy Ball - TM026
  (460, 46000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Abomasnow - Swords Dance - TM030
  (460, 46000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Abomasnow - Body Slam - TM033
  (460, 46000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Abomasnow - Endure - TM035
  (460, 46000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Abomasnow - Rock Tomb - TM036
  (460, 46000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Abomasnow - Bullet Seed - TM040
  (460, 46000, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 23),
  -- Abomasnow - Water Pulse - TM041
  (460, 46000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Abomasnow - Giga Drain - TM042
  (460, 46000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Abomasnow - Hyper Beam - TM044
  (460, 46000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Abomasnow - Icy Wind - TM049
  (460, 46000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Abomasnow - Earth Power - TM052
  (460, 46000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Abomasnow - Giga Impact - TM055
  (460, 46000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Abomasnow - Double-Edge - TM056
  (460, 46000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Abomasnow - Solar Beam - TM064
  (460, 46000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 31),
  -- Abomasnow - Earthquake - TM069
  (460, 46000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Abomasnow - Substitute - TM085
  (460, 46000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Abomasnow - Curse - TM091
  (460, 46000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Abomasnow - Outrage - TM093
  (460, 46000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 35),
  -- Abomasnow - Focus Blast - TM102
  (460, 46000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 36),
  -- Abomasnow - Blizzard - TM105
  (460, 46000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Abomasnow - Facade - TM109
  (460, 46000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Abomasnow - Chilling Water - TM110
  (460, 46000, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 39),
  -- Abomasnow - Trailblaze - TM115
  (460, 46000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 40),
  -- Abomasnow - Seed Bomb - TM128
  (460, 46000, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 41),
  -- Abomasnow - Frost Breath - TM138
  (460, 46000, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 42),
  -- Abomasnow - Swagger - TM139
  (460, 46000, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 43),
  -- Abomasnow - Icicle Spear - TM149
  (460, 46000, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 44),
  -- Abomasnow - Sheer Cold - TM155
  (460, 46000, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 45),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Bite - Level 1
  (470, 47000, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Growl - Level 1
  (470, 47000, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leafeon - Quick Attack - Level 10
  (470, 47000, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Leafeon - Disarming Voice - Level 15
  (470, 47000, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Leafeon - Leech Seed - Level 20
  (470, 47000, 73, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Leafeon - Magical Leaf - Level 25
  (470, 47000, 345, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Leafeon - Synthesis - Level 30
  (470, 47000, 235, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Leafeon - Leaf Blade - Level 35
  (470, 47000, 348, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Leafeon - Giga Drain - Level 40
  (470, 47000, 202, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Leafeon - Swords Dance - Level 45
  (470, 47000, 14, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Leafeon - Leaf Storm - Level 50
  (470, 47000, 437, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Leafeon - Razor Leaf - Evolution
  (470, 47000, 75, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Leafeon - Roar - TM005
  (470, 47000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Leafeon - Calm Mind - TM006
  (470, 47000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Leafeon - Protect - TM017
  (470, 47000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Leafeon - Aerial Ace - TM022
  (470, 47000, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Leafeon - Energy Ball - TM026
  (470, 47000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Leafeon - Swift - TM027
  (470, 47000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Leafeon - Dig - TM028
  (470, 47000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Leafeon - Swords Dance - TM030
  (470, 47000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Leafeon - Body Slam - TM033
  (470, 47000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Leafeon - Endure - TM035
  (470, 47000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Leafeon - Bullet Seed - TM040
  (470, 47000, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 25),
  -- Leafeon - Giga Drain - TM042
  (470, 47000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 26),
  -- Leafeon - Hyper Beam - TM044
  (470, 47000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Leafeon - Giga Impact - TM055
  (470, 47000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Leafeon - Double-Edge - TM056
  (470, 47000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Leafeon - Solar Beam - TM064
  (470, 47000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Leafeon - Hyper Voice - TM071
  (470, 47000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Leafeon - Shadow Ball - TM074
  (470, 47000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 32),
  -- Leafeon - X-Scissor - TM081
  (470, 47000, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 33),
  -- Leafeon - Substitute - TM085
  (470, 47000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Leafeon - Iron Tail - TM087
  (470, 47000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Leafeon - Taunt - TM095
  (470, 47000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Leafeon - Facade - TM109
  (470, 47000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 37),
  -- Leafeon - Trailblaze - TM115
  (470, 47000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 38),
  -- Leafeon - Mimic - TM125
  (470, 47000, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 39),
  -- Leafeon - Seed Bomb - TM128
  (470, 47000, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 40),
  -- Leafeon - Skull Bash - TM146
  (470, 47000, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 41),
  -- Leafeon - Petal Dance - TM151
  (470, 47000, 80, 26, NULL, 2, NULL, NULL, 26002151, NULL, 42),
  -- Leafeon - Solar Blade - TM152
  (470, 47000, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 43),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Bite - Level 1
  (471, 47100, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Growl - Level 1
  (471, 47100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glaceon - Quick Attack - Level 10
  (471, 47100, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Glaceon - Disarming Voice - Level 15
  (471, 47100, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Glaceon - Mist - Level 18
  (471, 47100, 54, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Glaceon - Ice Shard - Level 23
  (471, 47100, 420, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Fang - Level 27
  (471, 47100, 423, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Glaceon - Ice Beam - Level 36
  (471, 47100, 58, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Glaceon - Freeze-Dry - Level 40
  (471, 47100, 573, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Glaceon - Blizzard - Level 50
  (471, 47100, 59, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Glaceon - Icy Wind - Evolution
  (471, 47100, 196, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Glaceon - Roar - TM005
  (471, 47100, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Glaceon - Calm Mind - TM006
  (471, 47100, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Glaceon - Ice Beam - TM013
  (471, 47100, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Glaceon - Ice Fang - TM015
  (471, 47100, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Glaceon - Protect - TM017
  (471, 47100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Glaceon - Swift - TM027
  (471, 47100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Glaceon - Dig - TM028
  (471, 47100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Glaceon - Body Slam - TM033
  (471, 47100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Glaceon - Endure - TM035
  (471, 47100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Glaceon - Hyper Beam - TM044
  (471, 47100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Glaceon - Icy Wind - TM049
  (471, 47100, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 24),
  -- Glaceon - Giga Impact - TM055
  (471, 47100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Glaceon - Double-Edge - TM056
  (471, 47100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 26),
  -- Glaceon - Hyper Voice - TM071
  (471, 47100, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Glaceon - Shadow Ball - TM074
  (471, 47100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Glaceon - Substitute - TM085
  (471, 47100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Glaceon - Iron Tail - TM087
  (471, 47100, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 30),
  -- Glaceon - Taunt - TM095
  (471, 47100, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 31),
  -- Glaceon - Blizzard - TM105
  (471, 47100, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 32),
  -- Glaceon - Facade - TM109
  (471, 47100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Glaceon - Chilling Water - TM110
  (471, 47100, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 34),
  -- Glaceon - Trailblaze - TM115
  (471, 47100, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 35),
  -- Glaceon - Mimic - TM125
  (471, 47100, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 36),
  -- Glaceon - Frost Breath - TM138
  (471, 47100, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 37),
  -- Glaceon - Triple Axel - TM144
  (471, 47100, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 38),
  -- Glaceon - Skull Bash - TM146
  (471, 47100, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 39),
  -- Glaceon - Icicle Spear - TM149
  (471, 47100, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 40),
  -- Glaceon - Sheer Cold - TM155
  (471, 47100, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 41),
  -- Gallade - Growl - Level 1
  (475, 47500, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Psybeam - Level 1
  (475, 47500, 60, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Hypnosis - Level 1
  (475, 47500, 95, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Disarming Voice - Level 1
  (475, 47500, 574, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Confusion - Level 6
  (475, 47500, 93, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Gallade - Teleport - Level 15
  (475, 47500, 100, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gallade - Aerial Ace - Level 18
  (475, 47500, 332, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Gallade - Protect - Level 28
  (475, 47500, 182, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Gallade - Double Team - Level 30
  (475, 47500, 104, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Gallade - Swords Dance - Level 35
  (475, 47500, 14, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gallade - Psycho Cut - Level 42
  (475, 47500, 427, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Gallade - Leaf Blade - Level 50
  (475, 47500, 348, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Gallade - Close Combat - Level 58
  (475, 47500, 370, 26, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Gallade - Psyshock - TM003
  (475, 47500, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Gallade - Calm Mind - TM006
  (475, 47500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Gallade - Thunder Wave - TM008
  (475, 47500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Gallade - Brick Break - TM010
  (475, 47500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Gallade - Bulk Up - TM011
  (475, 47500, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Gallade - Light Screen - TM016
  (475, 47500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Gallade - Protect - TM017
  (475, 47500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Gallade - Aerial Ace - TM022
  (475, 47500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Gallade - Thunder Punch - TM023
  (475, 47500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 23),
  -- Gallade - Ice Punch - TM024
  (475, 47500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 24),
  -- Gallade - Energy Ball - TM026
  (475, 47500, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 25),
  -- Gallade - Swift - TM027
  (475, 47500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Gallade - Fire Punch - TM029
  (475, 47500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Gallade - Swords Dance - TM030
  (475, 47500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 28),
  -- Gallade - Reflect - TM031
  (475, 47500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 29),
  -- Gallade - Double Team - TM032
  (475, 47500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 30),
  -- Gallade - Body Slam - TM033
  (475, 47500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Gallade - Night Slash - TM034
  (475, 47500, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 32),
  -- Gallade - Endure - TM035
  (475, 47500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 33),
  -- Gallade - Rock Tomb - TM036
  (475, 47500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 34),
  -- Gallade - Hyper Beam - TM044
  (475, 47500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Gallade - Knock Off - TM045
  (475, 47500, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 36),
  -- Gallade - Agility - TM047
  (475, 47500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 37),
  -- Gallade - Icy Wind - TM049
  (475, 47500, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 38),
  -- Gallade - Safeguard - TM051
  (475, 47500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 39),
  -- Gallade - Giga Impact - TM055
  (475, 47500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Gallade - Will-O-Wisp - TM057
  (475, 47500, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 41),
  -- Gallade - Zen Headbutt - TM059
  (475, 47500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 42),
  -- Gallade - Future Sight - TM060
  (475, 47500, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 43),
  -- Gallade - Shadow Claw - TM061
  (475, 47500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 44),
  -- Gallade - Psychic - TM063
  (475, 47500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 45),
  -- Gallade - Stone Edge - TM065
  (475, 47500, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 46),
  -- Gallade - Thunderbolt - TM067
  (475, 47500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 47),
  -- Gallade - Earthquake - TM069
  (475, 47500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 48),
  -- Gallade - Hyper Voice - TM071
  (475, 47500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 49),
  -- Gallade - Shadow Ball - TM074
  (475, 47500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 50),
  -- Gallade - X-Scissor - TM081
  (475, 47500, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 51),
  -- Gallade - Substitute - TM085
  (475, 47500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 52),
  -- Gallade - Dazzling Gleam - TM092
  (475, 47500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 53),
  -- Gallade - Taunt - TM095
  (475, 47500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 54),
  -- Gallade - Metronome - TM099
  (475, 47500, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 55),
  -- Gallade - Close Combat - TM107
  (475, 47500, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 56),
  -- Gallade - Comet Punch - TM108
  (475, 47500, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 57),
  -- Gallade - Facade - TM109
  (475, 47500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 58),
  -- Gallade - Low Sweep - TM113
  (475, 47500, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 59),
  -- Gallade - False Swipe - TM122
  (475, 47500, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 60),
  -- Gallade - Dream Eater - TM127
  (475, 47500, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 61),
  -- Gallade - Charge Beam - TM130
  (475, 47500, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 62),
  -- Gallade - Drain Punch - TM131
  (475, 47500, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 63),
  -- Gallade - Dual Chop - TM135
  (475, 47500, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 64),
  -- Gallade - Triple Axel - TM144
  (475, 47500, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 65),
  -- Gallade - Razor Wind - TM145
  (475, 47500, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 66),
  -- Gallade - Vacuum Wave - TM150
  (475, 47500, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 67),
  -- Gallade - Solar Blade - TM152
  (475, 47500, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 68),
  -- Froslass - Headbutt - Level 1
  (478, 47800, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Bite - Level 1
  (478, 47800, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Ice Shard - Level 10
  (478, 47800, 420, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Froslass - Confuse Ray - Level 15
  (478, 47800, 109, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Froslass - Icy Wind - Level 20
  (478, 47800, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Froslass - Fake Tears - Level 25
  (478, 47800, 313, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Froslass - Haze - Level 30
  (478, 47800, 114, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Froslass - Ice Beam - Level 35
  (478, 47800, 58, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Froslass - Shadow Ball - Level 40
  (478, 47800, 247, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Froslass - Will-O-Wisp - Level 45
  (478, 47800, 261, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Froslass - Blizzard - Level 50
  (478, 47800, 59, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Froslass - Phantom Force - Level 55
  (478, 47800, 566, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Froslass - Curse - Level 60
  (478, 47800, 174, 26, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Froslass - Draining Kiss - Evolution
  (478, 47800, 577, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Froslass - Headbutt - TM001
  (478, 47800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Froslass - Thunder Wave - TM008
  (478, 47800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Froslass - Ice Beam - TM013
  (478, 47800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Froslass - Ice Fang - TM015
  (478, 47800, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Froslass - Light Screen - TM016
  (478, 47800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Froslass - Protect - TM017
  (478, 47800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Froslass - Ice Punch - TM024
  (478, 47800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Froslass - Crunch - TM025
  (478, 47800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Froslass - Reflect - TM031
  (478, 47800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Froslass - Double Team - TM032
  (478, 47800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Froslass - Body Slam - TM033
  (478, 47800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Froslass - Endure - TM035
  (478, 47800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Froslass - Water Pulse - TM041
  (478, 47800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 29),
  -- Froslass - Hyper Beam - TM044
  (478, 47800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Froslass - Icy Wind - TM049
  (478, 47800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Froslass - Giga Impact - TM055
  (478, 47800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Froslass - Will-O-Wisp - TM057
  (478, 47800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 33),
  -- Froslass - Psychic - TM063
  (478, 47800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Froslass - Thunderbolt - TM067
  (478, 47800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Froslass - Shadow Ball - TM074
  (478, 47800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Froslass - Nasty Plot - TM083
  (478, 47800, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Froslass - Substitute - TM085
  (478, 47800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Froslass - Spikes - TM088
  (478, 47800, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 39),
  -- Froslass - Curse - TM091
  (478, 47800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Froslass - Taunt - TM095
  (478, 47800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 41),
  -- Froslass - Heal Block - TM097
  (478, 47800, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 42),
  -- Froslass - Blizzard - TM105
  (478, 47800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 43),
  -- Froslass - Thunder - TM106
  (478, 47800, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 44),
  -- Froslass - Facade - TM109
  (478, 47800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Froslass - Chilling Water - TM110
  (478, 47800, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 46),
  -- Froslass - Trailblaze - TM115
  (478, 47800, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 47),
  -- Froslass - Frost Breath - TM138
  (478, 47800, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 48),
  -- Froslass - Triple Axel - TM144
  (478, 47800, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 49),
  -- Froslass - Icicle Spear - TM149
  (478, 47800, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 50),
  -- Froslass - Petal Dance - TM151
  (478, 47800, 80, 26, NULL, 2, NULL, NULL, 26002151, NULL, 51),
  -- Froslass - Sheer Cold - TM155
  (478, 47800, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 52),
  -- Tepig - Tackle - Level 1
  (498, 49800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tepig - Tail Whip - Level 1
  (498, 49800, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tepig - Ember - Level 6
  (498, 49800, 52, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tepig - Rollout - Level 10
  (498, 49800, 205, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tepig - Smokescreen - Level 13
  (498, 49800, 108, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tepig - Flame Wheel - Level 15
  (498, 49800, 172, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tepig - Fire Spin - Level 20
  (498, 49800, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tepig - Focus Energy - Level 24
  (498, 49800, 116, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tepig - Flamethrower - Level 29
  (498, 49800, 53, 26, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tepig - Take Down - Level 32
  (498, 49800, 36, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tepig - Flare Blitz - Level 50
  (498, 49800, 394, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Tepig - Head Smash - Level 56
  (498, 49800, 457, 26, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Tepig - Headbutt - TM001
  (498, 49800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Tepig - Roar - TM005
  (498, 49800, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Tepig - Protect - TM017
  (498, 49800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Tepig - Dig - TM028
  (498, 49800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 16),
  -- Tepig - Double Team - TM032
  (498, 49800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Tepig - Endure - TM035
  (498, 49800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Tepig - Fire Blast - TM038
  (498, 49800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Tepig - Overheat - TM050
  (498, 49800, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 20),
  -- Tepig - Will-O-Wisp - TM057
  (498, 49800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 21),
  -- Tepig - Flamethrower - TM062
  (498, 49800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 22),
  -- Tepig - Heat Wave - TM068
  (498, 49800, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 23),
  -- Tepig - Fire Spin - TM072
  (498, 49800, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 24),
  -- Tepig - Substitute - TM085
  (498, 49800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Tepig - Wild Charge - TM086
  (498, 49800, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 26),
  -- Tepig - Taunt - TM095
  (498, 49800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 27),
  -- Tepig - Work Up - TM103
  (498, 49800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 28),
  -- Tepig - Flare Blitz - TM104
  (498, 49800, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 29),
  -- Tepig - Facade - TM109
  (498, 49800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 30),
  -- Tepig - Flame Charge - TM114
  (498, 49800, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 31),
  -- Tepig - Trailblaze - TM115
  (498, 49800, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 32),
  -- Pignite - Tackle - Level 1
  (499, 49900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pignite - Tail Whip - Level 1
  (499, 49900, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pignite - Ember - Level 6
  (499, 49900, 52, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pignite - Rollout - Level 10
  (499, 49900, 205, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pignite - Smokescreen - Level 13
  (499, 49900, 108, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pignite - Flame Wheel - Level 15
  (499, 49900, 172, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pignite - Fire Spin - Level 20
  (499, 49900, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pignite - Focus Energy - Level 24
  (499, 49900, 116, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pignite - Flamethrower - Level 29
  (499, 49900, 53, 26, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pignite - Take Down - Level 32
  (499, 49900, 36, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pignite - Bulk Up - Level 36
  (499, 49900, 339, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pignite - Flare Blitz - Level 50
  (499, 49900, 394, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pignite - Head Smash - Level 56
  (499, 49900, 457, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Pignite - Power-Up Punch - Evolution
  (499, 49900, 612, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Pignite - Headbutt - TM001
  (499, 49900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Pignite - Rock Smash - TM004
  (499, 49900, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Pignite - Roar - TM005
  (499, 49900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Pignite - Brick Break - TM010
  (499, 49900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Pignite - Bulk Up - TM011
  (499, 49900, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Pignite - Rock Slide - TM012
  (499, 49900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Pignite - Protect - TM017
  (499, 49900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Pignite - Power-Up Punch - TM018
  (499, 49900, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 22),
  -- Pignite - Dig - TM028
  (499, 49900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Pignite - Fire Punch - TM029
  (499, 49900, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Pignite - Double Team - TM032
  (499, 49900, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 25),
  -- Pignite - Endure - TM035
  (499, 49900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Pignite - Rock Tomb - TM036
  (499, 49900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Pignite - Fire Blast - TM038
  (499, 49900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Pignite - Knock Off - TM045
  (499, 49900, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Pignite - Overheat - TM050
  (499, 49900, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 30),
  -- Pignite - Double-Edge - TM056
  (499, 49900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Pignite - Will-O-Wisp - TM057
  (499, 49900, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 32),
  -- Pignite - Zen Headbutt - TM059
  (499, 49900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Pignite - Flamethrower - TM062
  (499, 49900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Pignite - Stone Edge - TM065
  (499, 49900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Pignite - Heat Wave - TM068
  (499, 49900, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 36),
  -- Pignite - Fire Spin - TM072
  (499, 49900, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 37),
  -- Pignite - Poison Jab - TM077
  (499, 49900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Pignite - Substitute - TM085
  (499, 49900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Pignite - Wild Charge - TM086
  (499, 49900, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 40),
  -- Pignite - Taunt - TM095
  (499, 49900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 41),
  -- Pignite - Focus Blast - TM102
  (499, 49900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 42),
  -- Pignite - Work Up - TM103
  (499, 49900, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 43),
  -- Pignite - Flare Blitz - TM104
  (499, 49900, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 44),
  -- Pignite - Facade - TM109
  (499, 49900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Pignite - Low Sweep - TM113
  (499, 49900, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 46),
  -- Pignite - Flame Charge - TM114
  (499, 49900, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Pignite - Trailblaze - TM115
  (499, 49900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 48),
  -- Pignite - Drain Punch - TM131
  (499, 49900, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 49),
  -- Emboar - Tackle - Level 1
  (500, 50000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emboar - Tail Whip - Level 1
  (500, 50000, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emboar - Ember - Level 6
  (500, 50000, 52, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Emboar - Rollout - Level 10
  (500, 50000, 205, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Emboar - Smokescreen - Level 13
  (500, 50000, 108, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Emboar - Flame Wheel - Level 15
  (500, 50000, 172, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Emboar - Fire Spin - Level 20
  (500, 50000, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Emboar - Focus Energy - Level 24
  (500, 50000, 116, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Emboar - Flamethrower - Level 29
  (500, 50000, 53, 26, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Emboar - Take Down - Level 32
  (500, 50000, 36, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Emboar - Bulk Up - Level 36
  (500, 50000, 339, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Emboar - Close Combat - Level 45
  (500, 50000, 370, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Emboar - Flare Blitz - Level 50
  (500, 50000, 394, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Emboar - Head Smash - Level 56
  (500, 50000, 457, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Emboar - Heat Crash - Evolution
  (500, 50000, 535, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Emboar - Headbutt - TM001
  (500, 50000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Emboar - Rock Smash - TM004
  (500, 50000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Emboar - Roar - TM005
  (500, 50000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Emboar - Brick Break - TM010
  (500, 50000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Emboar - Bulk Up - TM011
  (500, 50000, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Emboar - Rock Slide - TM012
  (500, 50000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Emboar - Protect - TM017
  (500, 50000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Emboar - Power-Up Punch - TM018
  (500, 50000, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 23),
  -- Emboar - Thunder Punch - TM023
  (500, 50000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Emboar - Dig - TM028
  (500, 50000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Emboar - Fire Punch - TM029
  (500, 50000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Emboar - Double Team - TM032
  (500, 50000, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 27),
  -- Emboar - Endure - TM035
  (500, 50000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Emboar - Rock Tomb - TM036
  (500, 50000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Emboar - Fire Blast - TM038
  (500, 50000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Emboar - Hyper Beam - TM044
  (500, 50000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Emboar - Knock Off - TM045
  (500, 50000, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 32),
  -- Emboar - Overheat - TM050
  (500, 50000, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 33),
  -- Emboar - Giga Impact - TM055
  (500, 50000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Emboar - Double-Edge - TM056
  (500, 50000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Emboar - Will-O-Wisp - TM057
  (500, 50000, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 36),
  -- Emboar - Iron Head - TM058
  (500, 50000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 37),
  -- Emboar - Zen Headbutt - TM059
  (500, 50000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 38),
  -- Emboar - Flamethrower - TM062
  (500, 50000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 39),
  -- Emboar - Stone Edge - TM065
  (500, 50000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Emboar - Heat Wave - TM068
  (500, 50000, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 41),
  -- Emboar - Earthquake - TM069
  (500, 50000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 42),
  -- Emboar - Fire Spin - TM072
  (500, 50000, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 43),
  -- Emboar - Poison Jab - TM077
  (500, 50000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 44),
  -- Emboar - Substitute - TM085
  (500, 50000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Emboar - Wild Charge - TM086
  (500, 50000, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 46),
  -- Emboar - Curse - TM091
  (500, 50000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 47),
  -- Emboar - Taunt - TM095
  (500, 50000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 48),
  -- Emboar - Focus Blast - TM102
  (500, 50000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 49),
  -- Emboar - Work Up - TM103
  (500, 50000, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 50),
  -- Emboar - Flare Blitz - TM104
  (500, 50000, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 51),
  -- Emboar - Close Combat - TM107
  (500, 50000, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 52),
  -- Emboar - Comet Punch - TM108
  (500, 50000, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 53),
  -- Emboar - Facade - TM109
  (500, 50000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 54),
  -- Emboar - Low Sweep - TM113
  (500, 50000, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 55),
  -- Emboar - Flame Charge - TM114
  (500, 50000, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 56),
  -- Emboar - Trailblaze - TM115
  (500, 50000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 57),
  -- Emboar - Circle Throw - TM129
  (500, 50000, 509, 26, NULL, 2, NULL, NULL, 26002129, NULL, 58),
  -- Emboar - Drain Punch - TM131
  (500, 50000, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 59),
  -- Emboar - Dual Chop - TM135
  (500, 50000, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 60),
  -- Emboar - Storm Throw - TM137
  (500, 50000, 480, 26, NULL, 2, NULL, NULL, 26002137, NULL, 61),
  -- Emboar - Scald - TM148
  (500, 50000, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 62),
  -- Emboar - Vacuum Wave - TM150
  (500, 50000, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 63),
  -- Emboar - Solar Blade - TM152
  (500, 50000, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 64),
  -- Emboar - Blast Burn - TM158
  (500, 50000, 307, 26, NULL, 2, NULL, NULL, 26002158, NULL, 65);
