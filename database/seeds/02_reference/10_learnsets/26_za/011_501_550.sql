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
-- Pokémon Legends: Z-A learnsets for species 501-550.
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
  -- Patrat - Tackle - Level 1
  (504, 50400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Patrat - Leer - Level 3
  (504, 50400, 43, 26, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Patrat - Bite - Level 6
  (504, 50400, 44, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Patrat - Detect - Level 11
  (504, 50400, 197, 26, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Patrat - Crunch - Level 16
  (504, 50400, 242, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Patrat - Hypnosis - Level 18
  (504, 50400, 95, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Patrat - Super Fang - Level 21
  (504, 50400, 162, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Patrat - Focus Energy - Level 26
  (504, 50400, 116, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Patrat - Work Up - Level 28
  (504, 50400, 526, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Patrat - Nasty Plot - Level 33
  (504, 50400, 417, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Patrat - Toxic - TM007
  (504, 50400, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 11),
  -- Patrat - Protect - TM017
  (504, 50400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 12),
  -- Patrat - Crunch - TM025
  (504, 50400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 13),
  -- Patrat - Dig - TM028
  (504, 50400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 14),
  -- Patrat - Swords Dance - TM030
  (504, 50400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 15),
  -- Patrat - Double Team - TM032
  (504, 50400, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 16),
  -- Patrat - Endure - TM035
  (504, 50400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Patrat - Bullet Seed - TM040
  (504, 50400, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 18),
  -- Patrat - Mud Shot - TM046
  (504, 50400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 19),
  -- Patrat - Zen Headbutt - TM059
  (504, 50400, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 20),
  -- Patrat - Thunderbolt - TM067
  (504, 50400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 21),
  -- Patrat - Shadow Ball - TM074
  (504, 50400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 22),
  -- Patrat - Nasty Plot - TM083
  (504, 50400, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 23),
  -- Patrat - Substitute - TM085
  (504, 50400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Patrat - Gunk Shot - TM100
  (504, 50400, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 25),
  -- Patrat - Work Up - TM103
  (504, 50400, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 26),
  -- Patrat - Facade - TM109
  (504, 50400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 27),
  -- Patrat - Seed Bomb - TM128
  (504, 50400, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 28),
  -- Watchog - Tackle - Level 1
  (505, 50500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Watchog - Leer - Level 3
  (505, 50500, 43, 26, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Watchog - Bite - Level 6
  (505, 50500, 44, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Watchog - Detect - Level 11
  (505, 50500, 197, 26, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Watchog - Crunch - Level 16
  (505, 50500, 242, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Watchog - Hypnosis - Level 18
  (505, 50500, 95, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Watchog - Super Fang - Level 21
  (505, 50500, 162, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Watchog - Focus Energy - Level 26
  (505, 50500, 116, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Watchog - Work Up - Level 28
  (505, 50500, 526, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Watchog - Nasty Plot - Level 33
  (505, 50500, 417, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Watchog - Iron Tail - Level 40
  (505, 50500, 231, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Watchog - Take Down - Level 46
  (505, 50500, 36, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Watchog - Double-Edge - Level 50
  (505, 50500, 38, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Watchog - Confuse Ray - Evolution
  (505, 50500, 109, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Watchog - Rock Smash - TM004
  (505, 50500, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Watchog - Toxic - TM007
  (505, 50500, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Watchog - Thunder Wave - TM008
  (505, 50500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Watchog - Light Screen - TM016
  (505, 50500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Watchog - Protect - TM017
  (505, 50500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Watchog - Power-Up Punch - TM018
  (505, 50500, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Watchog - Thunder Punch - TM023
  (505, 50500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Watchog - Ice Punch - TM024
  (505, 50500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Watchog - Crunch - TM025
  (505, 50500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Watchog - Swift - TM027
  (505, 50500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Watchog - Dig - TM028
  (505, 50500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Watchog - Fire Punch - TM029
  (505, 50500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Watchog - Swords Dance - TM030
  (505, 50500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Watchog - Double Team - TM032
  (505, 50500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 28),
  -- Watchog - Endure - TM035
  (505, 50500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Watchog - Bullet Seed - TM040
  (505, 50500, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 30),
  -- Watchog - Hyper Beam - TM044
  (505, 50500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Watchog - Mud Shot - TM046
  (505, 50500, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 32),
  -- Watchog - Giga Impact - TM055
  (505, 50500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Watchog - Double-Edge - TM056
  (505, 50500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Watchog - Zen Headbutt - TM059
  (505, 50500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 35),
  -- Watchog - Flamethrower - TM062
  (505, 50500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 36),
  -- Watchog - Thunderbolt - TM067
  (505, 50500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 37),
  -- Watchog - Shadow Ball - TM074
  (505, 50500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 38),
  -- Watchog - Nasty Plot - TM083
  (505, 50500, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 39),
  -- Watchog - Substitute - TM085
  (505, 50500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Watchog - Iron Tail - TM087
  (505, 50500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 41),
  -- Watchog - Gunk Shot - TM100
  (505, 50500, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Watchog - Work Up - TM103
  (505, 50500, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 43),
  -- Watchog - Facade - TM109
  (505, 50500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 44),
  -- Watchog - Seed Bomb - TM128
  (505, 50500, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 45),
  -- Watchog - Skull Bash - TM146
  (505, 50500, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 46),
  -- Pansage - Tackle - Level 1
  (511, 51100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansage - Leech Seed - Level 1
  (511, 51100, 73, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansage - Work Up - Level 1
  (511, 51100, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pansage - Leer - Level 4
  (511, 51100, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pansage - Lick - Level 7
  (511, 51100, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Pansage - Vine Whip - Level 10
  (511, 51100, 22, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pansage - Bullet Seed - Level 16
  (511, 51100, 331, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansage - Bite - Level 19
  (511, 51100, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansage - Magical Leaf - Level 22
  (511, 51100, 345, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pansage - Headbutt - Level 28
  (511, 51100, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pansage - Leaf Storm - Level 32
  (511, 51100, 437, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Pansage - Crunch - Level 36
  (511, 51100, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pansage - Focus Blast - Level 43
  (511, 51100, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Pansage - Headbutt - TM001
  (511, 51100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Pansage - Toxic - TM007
  (511, 51100, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Pansage - Brick Break - TM010
  (511, 51100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Pansage - Rock Slide - TM012
  (511, 51100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Pansage - Protect - TM017
  (511, 51100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Pansage - Power-Up Punch - TM018
  (511, 51100, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 19),
  -- Pansage - Crunch - TM025
  (511, 51100, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Pansage - Energy Ball - TM026
  (511, 51100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 21),
  -- Pansage - Swift - TM027
  (511, 51100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Pansage - Dig - TM028
  (511, 51100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Pansage - Endure - TM035
  (511, 51100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Pansage - Rock Tomb - TM036
  (511, 51100, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Pansage - Bullet Seed - TM040
  (511, 51100, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Pansage - Giga Drain - TM042
  (511, 51100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Pansage - Mud Shot - TM046
  (511, 51100, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Pansage - Shadow Claw - TM061
  (511, 51100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 29),
  -- Pansage - Solar Beam - TM064
  (511, 51100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Pansage - Nasty Plot - TM083
  (511, 51100, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Pansage - Substitute - TM085
  (511, 51100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Pansage - Iron Tail - TM087
  (511, 51100, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Pansage - Taunt - TM095
  (511, 51100, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Pansage - Gunk Shot - TM100
  (511, 51100, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 35),
  -- Pansage - Focus Blast - TM102
  (511, 51100, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 36),
  -- Pansage - Work Up - TM103
  (511, 51100, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Pansage - Facade - TM109
  (511, 51100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Pansage - Low Sweep - TM113
  (511, 51100, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 39),
  -- Pansage - Trailblaze - TM115
  (511, 51100, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 40),
  -- Pansage - Torment - TM121
  (511, 51100, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 41),
  -- Pansage - Seed Bomb - TM128
  (511, 51100, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 42),
  -- Simisage - Tackle - Level 1
  (512, 51200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisage - Leech Seed - Level 1
  (512, 51200, 73, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisage - Work Up - Level 1
  (512, 51200, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisage - Leer - Level 4
  (512, 51200, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Simisage - Lick - Level 7
  (512, 51200, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Simisage - Vine Whip - Level 10
  (512, 51200, 22, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Simisage - Bullet Seed - Level 16
  (512, 51200, 331, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Simisage - Bite - Level 19
  (512, 51200, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Simisage - Magical Leaf - Level 22
  (512, 51200, 345, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Simisage - Headbutt - Level 28
  (512, 51200, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Simisage - Leaf Storm - Level 32
  (512, 51200, 437, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Simisage - Crunch - Level 36
  (512, 51200, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Simisage - Focus Blast - Level 43
  (512, 51200, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Simisage - Headbutt - TM001
  (512, 51200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Simisage - Toxic - TM007
  (512, 51200, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Simisage - Brick Break - TM010
  (512, 51200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Simisage - Rock Slide - TM012
  (512, 51200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Simisage - Protect - TM017
  (512, 51200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Simisage - Power-Up Punch - TM018
  (512, 51200, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 19),
  -- Simisage - Crunch - TM025
  (512, 51200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Simisage - Energy Ball - TM026
  (512, 51200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 21),
  -- Simisage - Swift - TM027
  (512, 51200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Simisage - Dig - TM028
  (512, 51200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Simisage - Endure - TM035
  (512, 51200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Simisage - Rock Tomb - TM036
  (512, 51200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Simisage - Bullet Seed - TM040
  (512, 51200, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Simisage - Giga Drain - TM042
  (512, 51200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Simisage - Hyper Beam - TM044
  (512, 51200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Simisage - Mud Shot - TM046
  (512, 51200, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Simisage - Giga Impact - TM055
  (512, 51200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Simisage - Shadow Claw - TM061
  (512, 51200, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Simisage - Solar Beam - TM064
  (512, 51200, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Simisage - Nasty Plot - TM083
  (512, 51200, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 33),
  -- Simisage - Substitute - TM085
  (512, 51200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Simisage - Iron Tail - TM087
  (512, 51200, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Simisage - Taunt - TM095
  (512, 51200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Simisage - Gunk Shot - TM100
  (512, 51200, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 37),
  -- Simisage - Focus Blast - TM102
  (512, 51200, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Simisage - Work Up - TM103
  (512, 51200, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 39),
  -- Simisage - Facade - TM109
  (512, 51200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Simisage - Low Sweep - TM113
  (512, 51200, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 41),
  -- Simisage - Trailblaze - TM115
  (512, 51200, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Simisage - Torment - TM121
  (512, 51200, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 43),
  -- Simisage - Seed Bomb - TM128
  (512, 51200, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 44),
  -- Simisage - Drain Punch - TM131
  (512, 51200, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 45),
  -- Simisage - Fake Out - TM141
  (512, 51200, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 46),
  -- Simisage - Solar Blade - TM152
  (512, 51200, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 47),
  -- Pansear - Tackle - Level 1
  (513, 51300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansear - Fire Spin - Level 1
  (513, 51300, 83, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansear - Work Up - Level 1
  (513, 51300, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pansear - Leer - Level 4
  (513, 51300, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pansear - Lick - Level 7
  (513, 51300, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Pansear - Ember - Level 10
  (513, 51300, 52, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pansear - Flame Wheel - Level 16
  (513, 51300, 172, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansear - Bite - Level 19
  (513, 51300, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansear - Amnesia - Level 25
  (513, 51300, 133, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pansear - Headbutt - Level 28
  (513, 51300, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pansear - Fire Blast - Level 32
  (513, 51300, 126, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Pansear - Crunch - Level 36
  (513, 51300, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pansear - Focus Blast - Level 43
  (513, 51300, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Pansear - Headbutt - TM001
  (513, 51300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Pansear - Brick Break - TM010
  (513, 51300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Pansear - Rock Slide - TM012
  (513, 51300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Pansear - Protect - TM017
  (513, 51300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Pansear - Power-Up Punch - TM018
  (513, 51300, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 18),
  -- Pansear - Crunch - TM025
  (513, 51300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Pansear - Swift - TM027
  (513, 51300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Pansear - Dig - TM028
  (513, 51300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Pansear - Fire Punch - TM029
  (513, 51300, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Pansear - Endure - TM035
  (513, 51300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Pansear - Rock Tomb - TM036
  (513, 51300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Pansear - Fire Blast - TM038
  (513, 51300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Pansear - Mud Shot - TM046
  (513, 51300, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Pansear - Overheat - TM050
  (513, 51300, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 27),
  -- Pansear - Will-O-Wisp - TM057
  (513, 51300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Pansear - Shadow Claw - TM061
  (513, 51300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 29),
  -- Pansear - Flamethrower - TM062
  (513, 51300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Pansear - Solar Beam - TM064
  (513, 51300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 31),
  -- Pansear - Heat Wave - TM068
  (513, 51300, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 32),
  -- Pansear - Fire Spin - TM072
  (513, 51300, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 33),
  -- Pansear - Nasty Plot - TM083
  (513, 51300, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 34),
  -- Pansear - Substitute - TM085
  (513, 51300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Pansear - Iron Tail - TM087
  (513, 51300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Pansear - Taunt - TM095
  (513, 51300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Pansear - Gunk Shot - TM100
  (513, 51300, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 38),
  -- Pansear - Focus Blast - TM102
  (513, 51300, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 39),
  -- Pansear - Work Up - TM103
  (513, 51300, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 40),
  -- Pansear - Flare Blitz - TM104
  (513, 51300, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 41),
  -- Pansear - Facade - TM109
  (513, 51300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Pansear - Low Sweep - TM113
  (513, 51300, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 43),
  -- Simisear - Tackle - Level 1
  (514, 51400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisear - Fire Spin - Level 1
  (514, 51400, 83, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisear - Work Up - Level 1
  (514, 51400, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisear - Leer - Level 4
  (514, 51400, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Simisear - Lick - Level 7
  (514, 51400, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Simisear - Ember - Level 10
  (514, 51400, 52, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Simisear - Flame Wheel - Level 16
  (514, 51400, 172, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Simisear - Bite - Level 19
  (514, 51400, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Simisear - Amnesia - Level 25
  (514, 51400, 133, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Simisear - Headbutt - Level 28
  (514, 51400, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Simisear - Fire Blast - Level 32
  (514, 51400, 126, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Simisear - Crunch - Level 36
  (514, 51400, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Simisear - Focus Blast - Level 43
  (514, 51400, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Simisear - Headbutt - TM001
  (514, 51400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Simisear - Brick Break - TM010
  (514, 51400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Simisear - Rock Slide - TM012
  (514, 51400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Simisear - Protect - TM017
  (514, 51400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Simisear - Power-Up Punch - TM018
  (514, 51400, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 18),
  -- Simisear - Crunch - TM025
  (514, 51400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Simisear - Swift - TM027
  (514, 51400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Simisear - Dig - TM028
  (514, 51400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Simisear - Fire Punch - TM029
  (514, 51400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Simisear - Endure - TM035
  (514, 51400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Simisear - Rock Tomb - TM036
  (514, 51400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Simisear - Fire Blast - TM038
  (514, 51400, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Simisear - Hyper Beam - TM044
  (514, 51400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Simisear - Mud Shot - TM046
  (514, 51400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Simisear - Overheat - TM050
  (514, 51400, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 28),
  -- Simisear - Giga Impact - TM055
  (514, 51400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Simisear - Will-O-Wisp - TM057
  (514, 51400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 30),
  -- Simisear - Shadow Claw - TM061
  (514, 51400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Simisear - Flamethrower - TM062
  (514, 51400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Simisear - Solar Beam - TM064
  (514, 51400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Simisear - Heat Wave - TM068
  (514, 51400, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 34),
  -- Simisear - Fire Spin - TM072
  (514, 51400, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 35),
  -- Simisear - Nasty Plot - TM083
  (514, 51400, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Simisear - Substitute - TM085
  (514, 51400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Simisear - Iron Tail - TM087
  (514, 51400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Simisear - Taunt - TM095
  (514, 51400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Simisear - Gunk Shot - TM100
  (514, 51400, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 40),
  -- Simisear - Focus Blast - TM102
  (514, 51400, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Simisear - Work Up - TM103
  (514, 51400, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 42),
  -- Simisear - Flare Blitz - TM104
  (514, 51400, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 43),
  -- Simisear - Facade - TM109
  (514, 51400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 44),
  -- Simisear - Low Sweep - TM113
  (514, 51400, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 45),
  -- Simisear - Flame Charge - TM114
  (514, 51400, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 46),
  -- Simisear - Blaze Kick - TM133
  (514, 51400, 299, 26, NULL, 2, NULL, NULL, 26002133, NULL, 47),
  -- Simisear - Scorching Sands - TM136
  (514, 51400, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 48),
  -- Simisear - Fake Out - TM141
  (514, 51400, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 49),
  -- Panpour - Tackle - Level 1
  (515, 51500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Panpour - Aqua Ring - Level 1
  (515, 51500, 392, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Panpour - Work Up - Level 1
  (515, 51500, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Panpour - Leer - Level 4
  (515, 51500, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Panpour - Lick - Level 7
  (515, 51500, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Panpour - Water Gun - Level 10
  (515, 51500, 55, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Panpour - Bubble Beam - Level 16
  (515, 51500, 61, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Panpour - Bite - Level 19
  (515, 51500, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Panpour - Taunt - Level 25
  (515, 51500, 269, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Panpour - Headbutt - Level 28
  (515, 51500, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Panpour - Hydro Pump - Level 32
  (515, 51500, 56, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Panpour - Crunch - Level 36
  (515, 51500, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Panpour - Focus Blast - Level 43
  (515, 51500, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Panpour - Headbutt - TM001
  (515, 51500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Panpour - Flip Turn - TM009
  (515, 51500, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Panpour - Brick Break - TM010
  (515, 51500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Panpour - Rock Slide - TM012
  (515, 51500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Panpour - Ice Beam - TM013
  (515, 51500, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Panpour - Protect - TM017
  (515, 51500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Panpour - Power-Up Punch - TM018
  (515, 51500, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Panpour - Ice Punch - TM024
  (515, 51500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Panpour - Crunch - TM025
  (515, 51500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Panpour - Swift - TM027
  (515, 51500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Panpour - Dig - TM028
  (515, 51500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Panpour - Endure - TM035
  (515, 51500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Panpour - Rock Tomb - TM036
  (515, 51500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Panpour - Mud Shot - TM046
  (515, 51500, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Panpour - Icy Wind - TM049
  (515, 51500, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Panpour - Shadow Claw - TM061
  (515, 51500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 29),
  -- Panpour - Surf - TM073
  (515, 51500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Panpour - Nasty Plot - TM083
  (515, 51500, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Panpour - Substitute - TM085
  (515, 51500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Panpour - Iron Tail - TM087
  (515, 51500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Panpour - Taunt - TM095
  (515, 51500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Panpour - Hydro Pump - TM096
  (515, 51500, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Panpour - Waterfall - TM098
  (515, 51500, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Panpour - Gunk Shot - TM100
  (515, 51500, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 37),
  -- Panpour - Focus Blast - TM102
  (515, 51500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Panpour - Work Up - TM103
  (515, 51500, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 39),
  -- Panpour - Blizzard - TM105
  (515, 51500, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 40),
  -- Panpour - Facade - TM109
  (515, 51500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Panpour - Chilling Water - TM110
  (515, 51500, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 42),
  -- Panpour - Low Sweep - TM113
  (515, 51500, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 43),
  -- Panpour - Scald - TM148
  (515, 51500, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 44),
  -- Simipour - Tackle - Level 1
  (516, 51600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simipour - Aqua Ring - Level 1
  (516, 51600, 392, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simipour - Work Up - Level 1
  (516, 51600, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simipour - Leer - Level 4
  (516, 51600, 43, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Simipour - Lick - Level 7
  (516, 51600, 122, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Simipour - Water Gun - Level 10
  (516, 51600, 55, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Simipour - Bubble Beam - Level 16
  (516, 51600, 61, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Simipour - Bite - Level 19
  (516, 51600, 44, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Simipour - Taunt - Level 25
  (516, 51600, 269, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Simipour - Headbutt - Level 28
  (516, 51600, 29, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Simipour - Hydro Pump - Level 32
  (516, 51600, 56, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Simipour - Crunch - Level 36
  (516, 51600, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Simipour - Focus Blast - Level 43
  (516, 51600, 411, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Simipour - Headbutt - TM001
  (516, 51600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Simipour - Flip Turn - TM009
  (516, 51600, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Simipour - Brick Break - TM010
  (516, 51600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Simipour - Rock Slide - TM012
  (516, 51600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Simipour - Ice Beam - TM013
  (516, 51600, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Simipour - Protect - TM017
  (516, 51600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Simipour - Power-Up Punch - TM018
  (516, 51600, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Simipour - Ice Punch - TM024
  (516, 51600, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Simipour - Crunch - TM025
  (516, 51600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Simipour - Swift - TM027
  (516, 51600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Simipour - Dig - TM028
  (516, 51600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Simipour - Endure - TM035
  (516, 51600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Simipour - Rock Tomb - TM036
  (516, 51600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Simipour - Hyper Beam - TM044
  (516, 51600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Simipour - Mud Shot - TM046
  (516, 51600, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Simipour - Icy Wind - TM049
  (516, 51600, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Simipour - Giga Impact - TM055
  (516, 51600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Simipour - Shadow Claw - TM061
  (516, 51600, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Simipour - Surf - TM073
  (516, 51600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Simipour - Liquidation - TM076
  (516, 51600, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 33),
  -- Simipour - Nasty Plot - TM083
  (516, 51600, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 34),
  -- Simipour - Substitute - TM085
  (516, 51600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Simipour - Iron Tail - TM087
  (516, 51600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Simipour - Taunt - TM095
  (516, 51600, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Simipour - Hydro Pump - TM096
  (516, 51600, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 38),
  -- Simipour - Waterfall - TM098
  (516, 51600, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 39),
  -- Simipour - Gunk Shot - TM100
  (516, 51600, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 40),
  -- Simipour - Focus Blast - TM102
  (516, 51600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Simipour - Work Up - TM103
  (516, 51600, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 42),
  -- Simipour - Blizzard - TM105
  (516, 51600, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 43),
  -- Simipour - Facade - TM109
  (516, 51600, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 44),
  -- Simipour - Chilling Water - TM110
  (516, 51600, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 45),
  -- Simipour - Low Sweep - TM113
  (516, 51600, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 46),
  -- Simipour - Fake Out - TM141
  (516, 51600, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 47),
  -- Simipour - Scald - TM148
  (516, 51600, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 48),
  -- Drilbur - Tackle - Level 1
  (529, 52900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drilbur - Leer - Level 1
  (529, 52900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drilbur - Mud Shot - Level 1
  (529, 52900, 341, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drilbur - Metal Claw - Level 7
  (529, 52900, 232, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Drilbur - Sand Tomb - Level 13
  (529, 52900, 328, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drilbur - Bulldoze - Level 18
  (529, 52900, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Drilbur - Slash - Level 24
  (529, 52900, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Drilbur - Dig - Level 28
  (529, 52900, 91, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Drilbur - Rock Slide - Level 32
  (529, 52900, 157, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Drilbur - Swords Dance - Level 36
  (529, 52900, 14, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Drilbur - Drill Run - Level 40
  (529, 52900, 529, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Drilbur - Earthquake - Level 46
  (529, 52900, 89, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Drilbur - Rock Smash - TM004
  (529, 52900, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Drilbur - Brick Break - TM010
  (529, 52900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Drilbur - Rock Slide - TM012
  (529, 52900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Drilbur - Protect - TM017
  (529, 52900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Drilbur - Dig - TM028
  (529, 52900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Drilbur - Swords Dance - TM030
  (529, 52900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Drilbur - Endure - TM035
  (529, 52900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Drilbur - Rock Tomb - TM036
  (529, 52900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 20),
  -- Drilbur - Mud Shot - TM046
  (529, 52900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Drilbur - Agility - TM047
  (529, 52900, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Drilbur - Sludge Bomb - TM053
  (529, 52900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Drilbur - Double-Edge - TM056
  (529, 52900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 24),
  -- Drilbur - Earthquake - TM069
  (529, 52900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 25),
  -- Drilbur - Poison Jab - TM077
  (529, 52900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 26),
  -- Drilbur - Bulldoze - TM078
  (529, 52900, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 27),
  -- Drilbur - Iron Defense - TM080
  (529, 52900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 28),
  -- Drilbur - X-Scissor - TM081
  (529, 52900, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 29),
  -- Drilbur - Substitute - TM085
  (529, 52900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Drilbur - Facade - TM109
  (529, 52900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 31),
  -- Drilbur - Scorching Sands - TM136
  (529, 52900, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 32),
  -- Drilbur - Fissure - TM154
  (529, 52900, 90, 26, NULL, 2, NULL, NULL, 26002154, NULL, 33),
  -- Excadrill - Tackle - Level 1
  (530, 53000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Excadrill - Leer - Level 1
  (530, 53000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Excadrill - Mud Shot - Level 1
  (530, 53000, 341, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Excadrill - Metal Claw - Level 7
  (530, 53000, 232, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Excadrill - Sand Tomb - Level 13
  (530, 53000, 328, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Excadrill - Rock Blast - Level 16
  (530, 53000, 350, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Excadrill - Bulldoze - Level 18
  (530, 53000, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Excadrill - Slash - Level 24
  (530, 53000, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Excadrill - X-Scissor - Level 26
  (530, 53000, 404, 26, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Excadrill - Dig - Level 28
  (530, 53000, 91, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Excadrill - Rock Slide - Level 32
  (530, 53000, 157, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Excadrill - Swords Dance - Level 36
  (530, 53000, 14, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Excadrill - Drill Run - Level 40
  (530, 53000, 529, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Excadrill - Earthquake - Level 46
  (530, 53000, 89, 26, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Excadrill - Megahorn - Level 50
  (530, 53000, 224, 26, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Excadrill - Rock Smash - TM004
  (530, 53000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Excadrill - Brick Break - TM010
  (530, 53000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Excadrill - Rock Slide - TM012
  (530, 53000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Excadrill - Protect - TM017
  (530, 53000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Excadrill - Dig - TM028
  (530, 53000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Excadrill - Swords Dance - TM030
  (530, 53000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Excadrill - Endure - TM035
  (530, 53000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Excadrill - Rock Tomb - TM036
  (530, 53000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Excadrill - Stealth Rock - TM037
  (530, 53000, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Excadrill - Hyper Beam - TM044
  (530, 53000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Excadrill - Mud Shot - TM046
  (530, 53000, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Excadrill - Agility - TM047
  (530, 53000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Excadrill - Earth Power - TM052
  (530, 53000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Excadrill - Sludge Bomb - TM053
  (530, 53000, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Excadrill - Giga Impact - TM055
  (530, 53000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Excadrill - Double-Edge - TM056
  (530, 53000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Excadrill - Iron Head - TM058
  (530, 53000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Excadrill - Earthquake - TM069
  (530, 53000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 33),
  -- Excadrill - Poison Jab - TM077
  (530, 53000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Excadrill - Bulldoze - TM078
  (530, 53000, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 35),
  -- Excadrill - Iron Defense - TM080
  (530, 53000, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Excadrill - X-Scissor - TM081
  (530, 53000, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Excadrill - Substitute - TM085
  (530, 53000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Excadrill - Focus Blast - TM102
  (530, 53000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 39),
  -- Excadrill - Facade - TM109
  (530, 53000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Excadrill - Scorching Sands - TM136
  (530, 53000, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 41),
  -- Excadrill - Skull Bash - TM146
  (530, 53000, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 42),
  -- Excadrill - Fissure - TM154
  (530, 53000, 90, 26, NULL, 2, NULL, NULL, 26002154, NULL, 43),
  -- Excadrill - Steel Beam - TM157
  (530, 53000, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 44),
  -- Audino - Tackle - Level 1
  (531, 53100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Audino - Growl - Level 1
  (531, 53100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Audino - Disarming Voice - Level 7
  (531, 53100, 574, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Audino - Icy Wind - Level 8
  (531, 53100, 196, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Audino - Draining Kiss - Level 16
  (531, 53100, 577, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Audino - Zen Headbutt - Level 20
  (531, 53100, 428, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Audino - Amnesia - Level 24
  (531, 53100, 133, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Audino - Take Down - Level 32
  (531, 53100, 36, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Audino - Wish - Level 36
  (531, 53100, 273, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Audino - Hyper Voice - Level 40
  (531, 53100, 304, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Audino - Double-Edge - Level 48
  (531, 53100, 38, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Audino - Psyshock - TM003
  (531, 53100, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Audino - Calm Mind - TM006
  (531, 53100, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Audino - Thunder Wave - TM008
  (531, 53100, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Audino - Ice Beam - TM013
  (531, 53100, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Audino - Light Screen - TM016
  (531, 53100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Audino - Protect - TM017
  (531, 53100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Audino - Power-Up Punch - TM018
  (531, 53100, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 18),
  -- Audino - Thunder Punch - TM023
  (531, 53100, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Audino - Ice Punch - TM024
  (531, 53100, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 20),
  -- Audino - Dig - TM028
  (531, 53100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Audino - Fire Punch - TM029
  (531, 53100, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Audino - Reflect - TM031
  (531, 53100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Audino - Body Slam - TM033
  (531, 53100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Audino - Endure - TM035
  (531, 53100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Audino - Fire Blast - TM038
  (531, 53100, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Audino - Hyper Beam - TM044
  (531, 53100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Audino - Icy Wind - TM049
  (531, 53100, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Audino - Safeguard - TM051
  (531, 53100, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 29),
  -- Audino - Giga Impact - TM055
  (531, 53100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Audino - Double-Edge - TM056
  (531, 53100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Audino - Zen Headbutt - TM059
  (531, 53100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Audino - Flamethrower - TM062
  (531, 53100, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 33),
  -- Audino - Psychic - TM063
  (531, 53100, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Audino - Solar Beam - TM064
  (531, 53100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Audino - Thunderbolt - TM067
  (531, 53100, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Audino - Hyper Voice - TM071
  (531, 53100, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 37),
  -- Audino - Surf - TM073
  (531, 53100, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 38),
  -- Audino - Shadow Ball - TM074
  (531, 53100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 39),
  -- Audino - Substitute - TM085
  (531, 53100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Audino - Wild Charge - TM086
  (531, 53100, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 41),
  -- Audino - Iron Tail - TM087
  (531, 53100, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 42),
  -- Audino - Dazzling Gleam - TM092
  (531, 53100, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 43),
  -- Audino - Work Up - TM103
  (531, 53100, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 44),
  -- Audino - Blizzard - TM105
  (531, 53100, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 45),
  -- Audino - Thunder - TM106
  (531, 53100, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 46),
  -- Audino - Facade - TM109
  (531, 53100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 47),
  -- Audino - Drain Punch - TM131
  (531, 53100, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 48),
  -- Audino - Tri Attack - TM147
  (531, 53100, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 49),
  -- Venipede - Poison Sting - Level 1
  (543, 54300, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venipede - Leer - Level 1
  (543, 54300, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venipede - Rollout - Level 4
  (543, 54300, 205, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Venipede - Protect - Level 8
  (543, 54300, 182, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Venipede - Infestation - Level 12
  (543, 54300, 611, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Venipede - Screech - Level 16
  (543, 54300, 103, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Venipede - Pin Missile - Level 20
  (543, 54300, 42, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Venipede - Take Down - Level 24
  (543, 54300, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Venipede - Poison Jab - Level 28
  (543, 54300, 398, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Venipede - Toxic - Level 36
  (543, 54300, 92, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Venipede - Agility - Level 48
  (543, 54300, 97, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Venipede - Double-Edge - Level 52
  (543, 54300, 38, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Venipede - Toxic - TM007
  (543, 54300, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 13),
  -- Venipede - Protect - TM017
  (543, 54300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Venipede - Endure - TM035
  (543, 54300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 15),
  -- Venipede - Rock Tomb - TM036
  (543, 54300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 16),
  -- Venipede - Agility - TM047
  (543, 54300, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 17),
  -- Venipede - Sludge Bomb - TM053
  (543, 54300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 18),
  -- Venipede - Double-Edge - TM056
  (543, 54300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 19),
  -- Venipede - Solar Beam - TM064
  (543, 54300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 20),
  -- Venipede - Poison Jab - TM077
  (543, 54300, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 21),
  -- Venipede - Iron Defense - TM080
  (543, 54300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 22),
  -- Venipede - Substitute - TM085
  (543, 54300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 23),
  -- Venipede - Spikes - TM088
  (543, 54300, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 24),
  -- Venipede - Toxic Spikes - TM089
  (543, 54300, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 25),
  -- Venipede - Facade - TM109
  (543, 54300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 26),
  -- Whirlipede - Poison Sting - Level 1
  (544, 54400, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whirlipede - Leer - Level 1
  (544, 54400, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whirlipede - Rollout - Level 4
  (544, 54400, 205, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Whirlipede - Protect - Level 8
  (544, 54400, 182, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Whirlipede - Infestation - Level 12
  (544, 54400, 611, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Whirlipede - Screech - Level 16
  (544, 54400, 103, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Whirlipede - Pin Missile - Level 20
  (544, 54400, 42, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Whirlipede - Take Down - Level 24
  (544, 54400, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Whirlipede - Poison Jab - Level 28
  (544, 54400, 398, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Whirlipede - Toxic - Level 36
  (544, 54400, 92, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Whirlipede - Agility - Level 48
  (544, 54400, 97, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Whirlipede - Double-Edge - Level 52
  (544, 54400, 38, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Whirlipede - Toxic - TM007
  (544, 54400, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 13),
  -- Whirlipede - Protect - TM017
  (544, 54400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Whirlipede - Endure - TM035
  (544, 54400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 15),
  -- Whirlipede - Rock Tomb - TM036
  (544, 54400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 16),
  -- Whirlipede - Agility - TM047
  (544, 54400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 17),
  -- Whirlipede - Sludge Bomb - TM053
  (544, 54400, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 18),
  -- Whirlipede - Double-Edge - TM056
  (544, 54400, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 19),
  -- Whirlipede - Solar Beam - TM064
  (544, 54400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 20),
  -- Whirlipede - Poison Jab - TM077
  (544, 54400, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 21),
  -- Whirlipede - Iron Defense - TM080
  (544, 54400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 22),
  -- Whirlipede - Substitute - TM085
  (544, 54400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 23),
  -- Whirlipede - Spikes - TM088
  (544, 54400, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 24),
  -- Whirlipede - Toxic Spikes - TM089
  (544, 54400, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 25),
  -- Whirlipede - Facade - TM109
  (544, 54400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 26),
  -- Scolipede - Poison Sting - Level 1
  (545, 54500, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scolipede - Leer - Level 1
  (545, 54500, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scolipede - Iron Defense - Level 1
  (545, 54500, 334, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scolipede - Rollout - Level 4
  (545, 54500, 205, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Scolipede - Protect - Level 8
  (545, 54500, 182, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Scolipede - Infestation - Level 12
  (545, 54500, 611, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Scolipede - Screech - Level 16
  (545, 54500, 103, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Scolipede - Pin Missile - Level 20
  (545, 54500, 42, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Scolipede - Take Down - Level 24
  (545, 54500, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Scolipede - Poison Jab - Level 28
  (545, 54500, 398, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Scolipede - Toxic - Level 36
  (545, 54500, 92, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scolipede - Iron Tail - Level 40
  (545, 54500, 231, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scolipede - X-Scissor - Level 44
  (545, 54500, 404, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scolipede - Agility - Level 48
  (545, 54500, 97, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scolipede - Double-Edge - Level 52
  (545, 54500, 38, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Scolipede - Megahorn - Level 56
  (545, 54500, 224, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Scolipede - Toxic - TM007
  (545, 54500, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Scolipede - Rock Slide - TM012
  (545, 54500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Scolipede - Protect - TM017
  (545, 54500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Scolipede - Dig - TM028
  (545, 54500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Scolipede - Swords Dance - TM030
  (545, 54500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Scolipede - Endure - TM035
  (545, 54500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Scolipede - Rock Tomb - TM036
  (545, 54500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Scolipede - Hyper Beam - TM044
  (545, 54500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Scolipede - Agility - TM047
  (545, 54500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Scolipede - Sludge Bomb - TM053
  (545, 54500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Scolipede - Giga Impact - TM055
  (545, 54500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Scolipede - Double-Edge - TM056
  (545, 54500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Scolipede - Solar Beam - TM064
  (545, 54500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 29),
  -- Scolipede - Earthquake - TM069
  (545, 54500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Scolipede - Poison Jab - TM077
  (545, 54500, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Scolipede - Iron Defense - TM080
  (545, 54500, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Scolipede - X-Scissor - TM081
  (545, 54500, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 33),
  -- Scolipede - U-turn - TM082
  (545, 54500, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 34),
  -- Scolipede - Substitute - TM085
  (545, 54500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Scolipede - Iron Tail - TM087
  (545, 54500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Scolipede - Spikes - TM088
  (545, 54500, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 37),
  -- Scolipede - Toxic Spikes - TM089
  (545, 54500, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 38),
  -- Scolipede - Gunk Shot - TM100
  (545, 54500, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 39),
  -- Scolipede - Facade - TM109
  (545, 54500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Scolipede - Acid Spray - TM112
  (545, 54500, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 41),
  -- Scolipede - Trailblaze - TM115
  (545, 54500, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Scolipede - Double Hit - TM132
  (545, 54500, 458, 26, NULL, 2, NULL, NULL, 26002132, NULL, 43),
  -- Scolipede - First Impression - TM142
  (545, 54500, 660, 26, NULL, 2, NULL, NULL, 26002142, NULL, 44),
  -- Scolipede - Skull Bash - TM146
  (545, 54500, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 45);
