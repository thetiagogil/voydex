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
-- Scarlet / Violet learnsets for species 651-700.
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
  -- Quilladin - Vine Whip - Level 1
  (651, 65100, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilladin - Growl - Level 1
  (651, 65100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilladin - Rollout - Level 8
  (651, 65100, 205, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Quilladin - Bite - Level 11
  (651, 65100, 44, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Quilladin - Leech Seed - Level 15
  (651, 65100, 73, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Quilladin - Seed Bomb - Level 20
  (651, 65100, 402, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Quilladin - Pin Missile - Level 24
  (651, 65100, 42, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Quilladin - Take Down - Level 29
  (651, 65100, 36, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Quilladin - Mud Shot - Level 34
  (651, 65100, 341, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Quilladin - Bulk Up - Level 38
  (651, 65100, 339, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Quilladin - Body Slam - Level 43
  (651, 65100, 34, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Quilladin - Pain Split - Level 47
  (651, 65100, 220, 23, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Quilladin - Wood Hammer - Level 53
  (651, 65100, 452, 23, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Quilladin - Take Down - TM001
  (651, 65100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Quilladin - Protect - TM007
  (651, 65100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Quilladin - Low Kick - TM012
  (651, 65100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Quilladin - Trailblaze - TM020
  (651, 65100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Quilladin - Facade - TM025
  (651, 65100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Quilladin - Aerial Ace - TM027
  (651, 65100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Quilladin - Bulldoze - TM028
  (651, 65100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Quilladin - Metal Claw - TM031
  (651, 65100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 21),
  -- Quilladin - Swift - TM032
  (651, 65100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Quilladin - Magical Leaf - TM033
  (651, 65100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Quilladin - Mud Shot - TM035
  (651, 65100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Quilladin - Rock Tomb - TM036
  (651, 65100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Quilladin - Low Sweep - TM039
  (651, 65100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Quilladin - Fling - TM043
  (651, 65100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Quilladin - Endure - TM047
  (651, 65100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Quilladin - Sunny Day - TM049
  (651, 65100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Quilladin - Rain Dance - TM050
  (651, 65100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Quilladin - Dig - TM055
  (651, 65100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Quilladin - Bullet Seed - TM056
  (651, 65100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Quilladin - Brick Break - TM058
  (651, 65100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Quilladin - Zen Headbutt - TM059
  (651, 65100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Quilladin - Shadow Claw - TM061
  (651, 65100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Quilladin - Bulk Up - TM064
  (651, 65100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Quilladin - Body Slam - TM066
  (651, 65100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Quilladin - Thunder Punch - TM068
  (651, 65100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Quilladin - Sleep Talk - TM070
  (651, 65100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Quilladin - Seed Bomb - TM071
  (651, 65100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Quilladin - Drain Punch - TM073
  (651, 65100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Quilladin - Reflect - TM074
  (651, 65100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 42),
  -- Quilladin - Grass Knot - TM081
  (651, 65100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Quilladin - Poison Jab - TM083
  (651, 65100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Quilladin - Stomping Tantrum - TM084
  (651, 65100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Quilladin - Rest - TM085
  (651, 65100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Quilladin - Rock Slide - TM086
  (651, 65100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Quilladin - Taunt - TM087
  (651, 65100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Quilladin - Spikes - TM090
  (651, 65100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 49),
  -- Quilladin - Iron Head - TM099
  (651, 65100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 50),
  -- Quilladin - Substitute - TM103
  (651, 65100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Quilladin - Iron Defense - TM104
  (651, 65100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 52),
  -- Quilladin - Giga Drain - TM111
  (651, 65100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 53),
  -- Quilladin - Energy Ball - TM119
  (651, 65100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Quilladin - Helping Hand - TM130
  (651, 65100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Quilladin - Grassy Terrain - TM137
  (651, 65100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 56),
  -- Quilladin - Grass Pledge - TM146
  (651, 65100, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 57),
  -- Quilladin - Stone Edge - TM150
  (651, 65100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 58),
  -- Quilladin - Leaf Storm - TM159
  (651, 65100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 59),
  -- Quilladin - Solar Beam - TM168
  (651, 65100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 60),
  -- Quilladin - Tera Blast - TM171
  (651, 65100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Quilladin - Super Fang - Egg
  (651, 65100, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Quilladin - Curse - Egg
  (651, 65100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Quilladin - Belly Drum - Egg
  (651, 65100, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Quilladin - Spikes - Egg
  (651, 65100, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quilladin - Synthesis - Egg
  (651, 65100, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Quilladin - Wide Guard - Egg
  (651, 65100, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Quilladin - Quick Guard - Egg
  (651, 65100, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Chesnaught - Vine Whip - Level 1
  (652, 65200, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chesnaught - Tackle - Level 1
  (652, 65200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chesnaught - Growl - Level 1
  (652, 65200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chesnaught - Rollout - Level 1
  (652, 65200, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chesnaught - Hammer Arm - Level 1
  (652, 65200, 359, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chesnaught - Feint - Level 1
  (652, 65200, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chesnaught - Bite - Level 11
  (652, 65200, 44, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Chesnaught - Leech Seed - Level 15
  (652, 65200, 73, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Chesnaught - Pin Missile - Level 19
  (652, 65200, 42, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Chesnaught - Take Down - Level 29
  (652, 65200, 36, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Chesnaught - Seed Bomb - Level 35
  (652, 65200, 402, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Chesnaught - Mud Shot - Level 41
  (652, 65200, 341, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Chesnaught - Bulk Up - Level 48
  (652, 65200, 339, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Chesnaught - Body Slam - Level 54
  (652, 65200, 34, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Chesnaught - Pain Split - Level 60
  (652, 65200, 220, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Chesnaught - Wood Hammer - Level 66
  (652, 65200, 452, 23, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Chesnaught - Giga Impact - Level 78
  (652, 65200, 416, 23, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Chesnaught - Take Down - TM001
  (652, 65200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Chesnaught - Mud-Slap - TM005
  (652, 65200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Chesnaught - Scary Face - TM006
  (652, 65200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Chesnaught - Protect - TM007
  (652, 65200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Chesnaught - Low Kick - TM012
  (652, 65200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Chesnaught - Trailblaze - TM020
  (652, 65200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Chesnaught - Facade - TM025
  (652, 65200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Chesnaught - Aerial Ace - TM027
  (652, 65200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Chesnaught - Bulldoze - TM028
  (652, 65200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Chesnaught - Metal Claw - TM031
  (652, 65200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 27),
  -- Chesnaught - Swift - TM032
  (652, 65200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Chesnaught - Magical Leaf - TM033
  (652, 65200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 29),
  -- Chesnaught - Mud Shot - TM035
  (652, 65200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Chesnaught - Rock Tomb - TM036
  (652, 65200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Chesnaught - Low Sweep - TM039
  (652, 65200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Chesnaught - Fling - TM043
  (652, 65200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Chesnaught - Endure - TM047
  (652, 65200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Chesnaught - Sunny Day - TM049
  (652, 65200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Chesnaught - Rain Dance - TM050
  (652, 65200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Chesnaught - Dig - TM055
  (652, 65200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Chesnaught - Bullet Seed - TM056
  (652, 65200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 38),
  -- Chesnaught - Brick Break - TM058
  (652, 65200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 39),
  -- Chesnaught - Zen Headbutt - TM059
  (652, 65200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 40),
  -- Chesnaught - Shadow Claw - TM061
  (652, 65200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 41),
  -- Chesnaught - Bulk Up - TM064
  (652, 65200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 42),
  -- Chesnaught - Body Slam - TM066
  (652, 65200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Chesnaught - Thunder Punch - TM068
  (652, 65200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 44),
  -- Chesnaught - Sleep Talk - TM070
  (652, 65200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Chesnaught - Seed Bomb - TM071
  (652, 65200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 46),
  -- Chesnaught - Drain Punch - TM073
  (652, 65200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 47),
  -- Chesnaught - Reflect - TM074
  (652, 65200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 48),
  -- Chesnaught - Dragon Claw - TM078
  (652, 65200, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 49),
  -- Chesnaught - Grass Knot - TM081
  (652, 65200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 50),
  -- Chesnaught - Poison Jab - TM083
  (652, 65200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 51),
  -- Chesnaught - Stomping Tantrum - TM084
  (652, 65200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 52),
  -- Chesnaught - Rest - TM085
  (652, 65200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 53),
  -- Chesnaught - Rock Slide - TM086
  (652, 65200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 54),
  -- Chesnaught - Taunt - TM087
  (652, 65200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 55),
  -- Chesnaught - Swords Dance - TM088
  (652, 65200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 56),
  -- Chesnaught - Body Press - TM089
  (652, 65200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 57),
  -- Chesnaught - Spikes - TM090
  (652, 65200, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 58),
  -- Chesnaught - Iron Head - TM099
  (652, 65200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 59),
  -- Chesnaught - Substitute - TM103
  (652, 65200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Chesnaught - Iron Defense - TM104
  (652, 65200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Chesnaught - Crunch - TM108
  (652, 65200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 62),
  -- Chesnaught - Giga Drain - TM111
  (652, 65200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 63),
  -- Chesnaught - Energy Ball - TM119
  (652, 65200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 64),
  -- Chesnaught - Helping Hand - TM130
  (652, 65200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 65),
  -- Chesnaught - Reversal - TM134
  (652, 65200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 66),
  -- Chesnaught - Grassy Terrain - TM137
  (652, 65200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 67),
  -- Chesnaught - Grass Pledge - TM146
  (652, 65200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 68),
  -- Chesnaught - Earthquake - TM149
  (652, 65200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 69),
  -- Chesnaught - Stone Edge - TM150
  (652, 65200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 70),
  -- Chesnaught - Giga Impact - TM152
  (652, 65200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Chesnaught - Frenzy Plant - TM155
  (652, 65200, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 72),
  -- Chesnaught - Focus Blast - TM158
  (652, 65200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 73),
  -- Chesnaught - Leaf Storm - TM159
  (652, 65200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 74),
  -- Chesnaught - Hyper Beam - TM163
  (652, 65200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 75),
  -- Chesnaught - Close Combat - TM167
  (652, 65200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 76),
  -- Chesnaught - Solar Beam - TM168
  (652, 65200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 77),
  -- Chesnaught - Tera Blast - TM171
  (652, 65200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 78),
  -- Chesnaught - Super Fang - Egg
  (652, 65200, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Chesnaught - Curse - Egg
  (652, 65200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Chesnaught - Belly Drum - Egg
  (652, 65200, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Chesnaught - Spikes - Egg
  (652, 65200, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Chesnaught - Synthesis - Egg
  (652, 65200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Chesnaught - Wide Guard - Egg
  (652, 65200, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Chesnaught - Quick Guard - Egg
  (652, 65200, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Chesnaught - Spiky Shield - Evolution
  (652, 65200, 596, 23, NULL, 7, NULL, NULL, NULL, NULL, 86),
  -- Fennekin - Scratch - Level 1
  (653, 65300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fennekin - Tail Whip - Level 1
  (653, 65300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fennekin - Ember - Level 5
  (653, 65300, 52, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fennekin - Howl - Level 11
  (653, 65300, 336, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Fennekin - Flame Charge - Level 14
  (653, 65300, 488, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Fennekin - Psybeam - Level 17
  (653, 65300, 60, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Fennekin - Fire Spin - Level 20
  (653, 65300, 83, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Fennekin - Light Screen - Level 25
  (653, 65300, 113, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Fennekin - Psyshock - Level 31
  (653, 65300, 473, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Fennekin - Flamethrower - Level 35
  (653, 65300, 53, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Fennekin - Will-O-Wisp - Level 38
  (653, 65300, 261, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Fennekin - Psychic - Level 41
  (653, 65300, 94, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Fennekin - Sunny Day - Level 43
  (653, 65300, 241, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Fennekin - Fire Blast - Level 48
  (653, 65300, 126, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Fennekin - Take Down - TM001
  (653, 65300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Fennekin - Charm - TM002
  (653, 65300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Fennekin - Agility - TM004
  (653, 65300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Fennekin - Mud-Slap - TM005
  (653, 65300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Fennekin - Protect - TM007
  (653, 65300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Fennekin - Psybeam - TM016
  (653, 65300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Fennekin - Thief - TM018
  (653, 65300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Fennekin - Fire Spin - TM024
  (653, 65300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Fennekin - Facade - TM025
  (653, 65300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Fennekin - Swift - TM032
  (653, 65300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Fennekin - Mud Shot - TM035
  (653, 65300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Fennekin - Flame Charge - TM038
  (653, 65300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Fennekin - Stored Power - TM041
  (653, 65300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Fennekin - Endure - TM047
  (653, 65300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Fennekin - Sunny Day - TM049
  (653, 65300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Fennekin - Rain Dance - TM050
  (653, 65300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Fennekin - Psyshock - TM054
  (653, 65300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Fennekin - Foul Play - TM062
  (653, 65300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Fennekin - Sleep Talk - TM070
  (653, 65300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Fennekin - Light Screen - TM075
  (653, 65300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Fennekin - Grass Knot - TM081
  (653, 65300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Fennekin - Rest - TM085
  (653, 65300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Fennekin - Imprison - TM092
  (653, 65300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 37),
  -- Fennekin - Skill Swap - TM098
  (653, 65300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Fennekin - Substitute - TM103
  (653, 65300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Fennekin - Will-O-Wisp - TM107
  (653, 65300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Fennekin - Trick - TM109
  (653, 65300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Fennekin - Heat Wave - TM118
  (653, 65300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Fennekin - Psychic - TM120
  (653, 65300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Fennekin - Encore - TM122
  (653, 65300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 44),
  -- Fennekin - Flamethrower - TM125
  (653, 65300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Fennekin - Calm Mind - TM129
  (653, 65300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Fennekin - Helping Hand - TM130
  (653, 65300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Fennekin - Psychic Terrain - TM138
  (653, 65300, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 48),
  -- Fennekin - Fire Blast - TM141
  (653, 65300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Fennekin - Fire Pledge - TM144
  (653, 65300, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 50),
  -- Fennekin - Overheat - TM157
  (653, 65300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Fennekin - Trick Room - TM161
  (653, 65300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 52),
  -- Fennekin - Flare Blitz - TM165
  (653, 65300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Fennekin - Solar Beam - TM168
  (653, 65300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Fennekin - Tera Blast - TM171
  (653, 65300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Fennekin - Hypnosis - Egg
  (653, 65300, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Fennekin - Heat Wave - Egg
  (653, 65300, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Fennekin - Wish - Egg
  (653, 65300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Fennekin - Copycat - Egg
  (653, 65300, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Fennekin - Magic Room - Egg
  (653, 65300, 478, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Braixen - Scratch - Level 1
  (654, 65400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braixen - Tail Whip - Level 1
  (654, 65400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braixen - Ember - Level 1
  (654, 65400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braixen - Howl - Level 11
  (654, 65400, 336, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Braixen - Flame Charge - Level 14
  (654, 65400, 488, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Braixen - Psybeam - Level 18
  (654, 65400, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Braixen - Fire Spin - Level 22
  (654, 65400, 83, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Braixen - Light Screen - Level 28
  (654, 65400, 113, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Braixen - Psyshock - Level 36
  (654, 65400, 473, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Braixen - Flamethrower - Level 41
  (654, 65400, 53, 23, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Braixen - Will-O-Wisp - Level 45
  (654, 65400, 261, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Braixen - Psychic - Level 49
  (654, 65400, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Braixen - Sunny Day - Level 52
  (654, 65400, 241, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Braixen - Magic Room - Level 56
  (654, 65400, 478, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Braixen - Fire Blast - Level 59
  (654, 65400, 126, 23, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Braixen - Take Down - TM001
  (654, 65400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Braixen - Charm - TM002
  (654, 65400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Braixen - Agility - TM004
  (654, 65400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Braixen - Mud-Slap - TM005
  (654, 65400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Braixen - Protect - TM007
  (654, 65400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Braixen - Low Kick - TM012
  (654, 65400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Braixen - Psybeam - TM016
  (654, 65400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Braixen - Thief - TM018
  (654, 65400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Braixen - Fire Spin - TM024
  (654, 65400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 24),
  -- Braixen - Facade - TM025
  (654, 65400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Braixen - Swift - TM032
  (654, 65400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Braixen - Mud Shot - TM035
  (654, 65400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Braixen - Flame Charge - TM038
  (654, 65400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 28),
  -- Braixen - Stored Power - TM041
  (654, 65400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Braixen - Endure - TM047
  (654, 65400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Braixen - Sunny Day - TM049
  (654, 65400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Braixen - Rain Dance - TM050
  (654, 65400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Braixen - Psyshock - TM054
  (654, 65400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Braixen - Zen Headbutt - TM059
  (654, 65400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Braixen - Foul Play - TM062
  (654, 65400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Braixen - Fire Punch - TM067
  (654, 65400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Braixen - Thunder Punch - TM068
  (654, 65400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Braixen - Sleep Talk - TM070
  (654, 65400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Braixen - Light Screen - TM075
  (654, 65400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Braixen - Grass Knot - TM081
  (654, 65400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Braixen - Rest - TM085
  (654, 65400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Braixen - Imprison - TM092
  (654, 65400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Braixen - Skill Swap - TM098
  (654, 65400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Braixen - Substitute - TM103
  (654, 65400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Braixen - Will-O-Wisp - TM107
  (654, 65400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 45),
  -- Braixen - Trick - TM109
  (654, 65400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Braixen - Heat Wave - TM118
  (654, 65400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 47),
  -- Braixen - Psychic - TM120
  (654, 65400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Braixen - Encore - TM122
  (654, 65400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Braixen - Flamethrower - TM125
  (654, 65400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 50),
  -- Braixen - Calm Mind - TM129
  (654, 65400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Braixen - Helping Hand - TM130
  (654, 65400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Braixen - Psychic Terrain - TM138
  (654, 65400, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 53),
  -- Braixen - Fire Blast - TM141
  (654, 65400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Braixen - Fire Pledge - TM144
  (654, 65400, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 55),
  -- Braixen - Overheat - TM157
  (654, 65400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 56),
  -- Braixen - Trick Room - TM161
  (654, 65400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 57),
  -- Braixen - Flare Blitz - TM165
  (654, 65400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 58),
  -- Braixen - Solar Beam - TM168
  (654, 65400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Braixen - Tera Blast - TM171
  (654, 65400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Braixen - Hypnosis - Egg
  (654, 65400, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Braixen - Heat Wave - Egg
  (654, 65400, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Braixen - Wish - Egg
  (654, 65400, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Braixen - Copycat - Egg
  (654, 65400, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Braixen - Magic Room - Egg
  (654, 65400, 478, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Delphox - Scratch - Level 1
  (655, 65500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delphox - Tail Whip - Level 1
  (655, 65500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delphox - Ember - Level 1
  (655, 65500, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delphox - Shadow Ball - Level 1
  (655, 65500, 247, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delphox - Future Sight - Level 1
  (655, 65500, 248, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Delphox - Role Play - Level 1
  (655, 65500, 272, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Delphox - Howl - Level 1
  (655, 65500, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Delphox - Switcheroo - Level 1
  (655, 65500, 415, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Delphox - Flame Charge - Level 14
  (655, 65500, 488, 23, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Delphox - Psybeam - Level 18
  (655, 65500, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Delphox - Fire Spin - Level 22
  (655, 65500, 83, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Delphox - Light Screen - Level 28
  (655, 65500, 113, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Delphox - Psyshock - Level 38
  (655, 65500, 473, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Delphox - Flamethrower - Level 45
  (655, 65500, 53, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Delphox - Will-O-Wisp - Level 51
  (655, 65500, 261, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Delphox - Psychic - Level 57
  (655, 65500, 94, 23, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Delphox - Sunny Day - Level 62
  (655, 65500, 241, 23, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Delphox - Magic Room - Level 68
  (655, 65500, 478, 23, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Delphox - Fire Blast - Level 74
  (655, 65500, 126, 23, NULL, 1, 74, NULL, NULL, NULL, 19),
  -- Delphox - Take Down - TM001
  (655, 65500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Delphox - Charm - TM002
  (655, 65500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 21),
  -- Delphox - Agility - TM004
  (655, 65500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 22),
  -- Delphox - Mud-Slap - TM005
  (655, 65500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 23),
  -- Delphox - Protect - TM007
  (655, 65500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Delphox - Low Kick - TM012
  (655, 65500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 25),
  -- Delphox - Psybeam - TM016
  (655, 65500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 26),
  -- Delphox - Confuse Ray - TM017
  (655, 65500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 27),
  -- Delphox - Thief - TM018
  (655, 65500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Delphox - Fire Spin - TM024
  (655, 65500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 29),
  -- Delphox - Facade - TM025
  (655, 65500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Delphox - Hex - TM029
  (655, 65500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 31),
  -- Delphox - Swift - TM032
  (655, 65500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Delphox - Mud Shot - TM035
  (655, 65500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 33),
  -- Delphox - Flame Charge - TM038
  (655, 65500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 34),
  -- Delphox - Stored Power - TM041
  (655, 65500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Delphox - Night Shade - TM042
  (655, 65500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 36),
  -- Delphox - Endure - TM047
  (655, 65500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Delphox - Sunny Day - TM049
  (655, 65500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Delphox - Rain Dance - TM050
  (655, 65500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Delphox - Psyshock - TM054
  (655, 65500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 40),
  -- Delphox - Zen Headbutt - TM059
  (655, 65500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 41),
  -- Delphox - Foul Play - TM062
  (655, 65500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 42),
  -- Delphox - Fire Punch - TM067
  (655, 65500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 43),
  -- Delphox - Thunder Punch - TM068
  (655, 65500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 44),
  -- Delphox - Sleep Talk - TM070
  (655, 65500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Delphox - Reflect - TM074
  (655, 65500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 46),
  -- Delphox - Light Screen - TM075
  (655, 65500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 47),
  -- Delphox - Dazzling Gleam - TM079
  (655, 65500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 48),
  -- Delphox - Metronome - TM080
  (655, 65500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 49),
  -- Delphox - Grass Knot - TM081
  (655, 65500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 50),
  -- Delphox - Rest - TM085
  (655, 65500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Delphox - Imprison - TM092
  (655, 65500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 52),
  -- Delphox - Skill Swap - TM098
  (655, 65500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 53),
  -- Delphox - Substitute - TM103
  (655, 65500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Delphox - Will-O-Wisp - TM107
  (655, 65500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 55),
  -- Delphox - Trick - TM109
  (655, 65500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 56),
  -- Delphox - Shadow Ball - TM114
  (655, 65500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Delphox - Hyper Voice - TM117
  (655, 65500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 58),
  -- Delphox - Heat Wave - TM118
  (655, 65500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 59),
  -- Delphox - Psychic - TM120
  (655, 65500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 60),
  -- Delphox - Encore - TM122
  (655, 65500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 61),
  -- Delphox - Flamethrower - TM125
  (655, 65500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 62),
  -- Delphox - Calm Mind - TM129
  (655, 65500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 63),
  -- Delphox - Helping Hand - TM130
  (655, 65500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 64),
  -- Delphox - Psychic Terrain - TM138
  (655, 65500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 65),
  -- Delphox - Nasty Plot - TM140
  (655, 65500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 66),
  -- Delphox - Fire Blast - TM141
  (655, 65500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 67),
  -- Delphox - Fire Pledge - TM144
  (655, 65500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 68),
  -- Delphox - Giga Impact - TM152
  (655, 65500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 69),
  -- Delphox - Blast Burn - TM153
  (655, 65500, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 70),
  -- Delphox - Overheat - TM157
  (655, 65500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 71),
  -- Delphox - Focus Blast - TM158
  (655, 65500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 72),
  -- Delphox - Trick Room - TM161
  (655, 65500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 73),
  -- Delphox - Hyper Beam - TM163
  (655, 65500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 74),
  -- Delphox - Flare Blitz - TM165
  (655, 65500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 75),
  -- Delphox - Solar Beam - TM168
  (655, 65500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 76),
  -- Delphox - Tera Blast - TM171
  (655, 65500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 77),
  -- Delphox - Hypnosis - Egg
  (655, 65500, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Delphox - Heat Wave - Egg
  (655, 65500, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Delphox - Wish - Egg
  (655, 65500, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Delphox - Copycat - Egg
  (655, 65500, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Delphox - Magic Room - Egg
  (655, 65500, 478, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Delphox - Mystical Fire - Evolution
  (655, 65500, 595, 23, NULL, 7, NULL, NULL, NULL, NULL, 83),
  -- Froakie - Pound - Level 1
  (656, 65600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froakie - Growl - Level 1
  (656, 65600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froakie - Water Gun - Level 5
  (656, 65600, 55, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Froakie - Quick Attack - Level 8
  (656, 65600, 98, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Froakie - Lick - Level 10
  (656, 65600, 122, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Froakie - Water Pulse - Level 14
  (656, 65600, 352, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Froakie - Smokescreen - Level 18
  (656, 65600, 108, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Froakie - Round - Level 21
  (656, 65600, 496, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Froakie - Fling - Level 25
  (656, 65600, 374, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Froakie - Smack Down - Level 29
  (656, 65600, 479, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Froakie - Substitute - Level 35
  (656, 65600, 164, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Froakie - Bounce - Level 39
  (656, 65600, 340, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Froakie - Double Team - Level 43
  (656, 65600, 104, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Froakie - Hydro Pump - Level 48
  (656, 65600, 56, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Froakie - Take Down - TM001
  (656, 65600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Froakie - Mud-Slap - TM005
  (656, 65600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Froakie - Protect - TM007
  (656, 65600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Froakie - Water Pulse - TM011
  (656, 65600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Froakie - Acrobatics - TM014
  (656, 65600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Froakie - Thief - TM018
  (656, 65600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Froakie - Trailblaze - TM020
  (656, 65600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Froakie - Chilling Water - TM022
  (656, 65600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Froakie - Facade - TM025
  (656, 65600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Froakie - Aerial Ace - TM027
  (656, 65600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Froakie - Swift - TM032
  (656, 65600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Froakie - Icy Wind - TM034
  (656, 65600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Froakie - Mud Shot - TM035
  (656, 65600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Froakie - Rock Tomb - TM036
  (656, 65600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Froakie - Fling - TM043
  (656, 65600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Froakie - Endure - TM047
  (656, 65600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Froakie - Rain Dance - TM050
  (656, 65600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Froakie - Snowscape - TM052
  (656, 65600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Froakie - Dig - TM055
  (656, 65600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Froakie - False Swipe - TM057
  (656, 65600, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Froakie - U-turn - TM060
  (656, 65600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Froakie - Sleep Talk - TM070
  (656, 65600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Froakie - Waterfall - TM077
  (656, 65600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 37),
  -- Froakie - Grass Knot - TM081
  (656, 65600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Froakie - Rest - TM085
  (656, 65600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Froakie - Rock Slide - TM086
  (656, 65600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Froakie - Taunt - TM087
  (656, 65600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Froakie - Spikes - TM090
  (656, 65600, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 42),
  -- Froakie - Toxic Spikes - TM091
  (656, 65600, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 43),
  -- Froakie - Substitute - TM103
  (656, 65600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Froakie - Liquidation - TM110
  (656, 65600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 45),
  -- Froakie - Surf - TM123
  (656, 65600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 46),
  -- Froakie - Helping Hand - TM130
  (656, 65600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Froakie - Ice Beam - TM135
  (656, 65600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Froakie - Hydro Pump - TM142
  (656, 65600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Froakie - Blizzard - TM143
  (656, 65600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Froakie - Water Pledge - TM145
  (656, 65600, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 51),
  -- Froakie - Tera Blast - TM171
  (656, 65600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Froakie - Counter - Egg
  (656, 65600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Froakie - Spikes - Egg
  (656, 65600, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Froakie - Toxic Spikes - Egg
  (656, 65600, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Froakie - Switcheroo - Egg
  (656, 65600, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Froakie - Retaliate - Egg
  (656, 65600, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Frogadier - Pound - Level 1
  (657, 65700, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frogadier - Growl - Level 1
  (657, 65700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frogadier - Water Gun - Level 1
  (657, 65700, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Frogadier - Quick Attack - Level 8
  (657, 65700, 98, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Frogadier - Lick - Level 10
  (657, 65700, 122, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Frogadier - Water Pulse - Level 14
  (657, 65700, 352, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Frogadier - Smokescreen - Level 19
  (657, 65700, 108, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Frogadier - Round - Level 23
  (657, 65700, 496, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Frogadier - Fling - Level 28
  (657, 65700, 374, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Frogadier - Smack Down - Level 33
  (657, 65700, 479, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Frogadier - Substitute - Level 40
  (657, 65700, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Frogadier - Bounce - Level 45
  (657, 65700, 340, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Frogadier - Double Team - Level 50
  (657, 65700, 104, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Frogadier - Hydro Pump - Level 56
  (657, 65700, 56, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Frogadier - Take Down - TM001
  (657, 65700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Frogadier - Mud-Slap - TM005
  (657, 65700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Frogadier - Protect - TM007
  (657, 65700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Frogadier - Water Pulse - TM011
  (657, 65700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Frogadier - Low Kick - TM012
  (657, 65700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Frogadier - Acrobatics - TM014
  (657, 65700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Frogadier - Thief - TM018
  (657, 65700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Frogadier - Trailblaze - TM020
  (657, 65700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Frogadier - Chilling Water - TM022
  (657, 65700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Frogadier - Facade - TM025
  (657, 65700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Frogadier - Aerial Ace - TM027
  (657, 65700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Frogadier - Swift - TM032
  (657, 65700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Frogadier - Icy Wind - TM034
  (657, 65700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Frogadier - Mud Shot - TM035
  (657, 65700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Frogadier - Rock Tomb - TM036
  (657, 65700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Frogadier - Fling - TM043
  (657, 65700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Frogadier - Endure - TM047
  (657, 65700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Frogadier - Rain Dance - TM050
  (657, 65700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Frogadier - Snowscape - TM052
  (657, 65700, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Frogadier - Dig - TM055
  (657, 65700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Frogadier - False Swipe - TM057
  (657, 65700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 35),
  -- Frogadier - U-turn - TM060
  (657, 65700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Frogadier - Ice Punch - TM069
  (657, 65700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Frogadier - Sleep Talk - TM070
  (657, 65700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Frogadier - Waterfall - TM077
  (657, 65700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Frogadier - Grass Knot - TM081
  (657, 65700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Frogadier - Rest - TM085
  (657, 65700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Frogadier - Rock Slide - TM086
  (657, 65700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Frogadier - Taunt - TM087
  (657, 65700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Frogadier - Swords Dance - TM088
  (657, 65700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Frogadier - Spikes - TM090
  (657, 65700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 45),
  -- Frogadier - Toxic Spikes - TM091
  (657, 65700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 46),
  -- Frogadier - Gunk Shot - TM102
  (657, 65700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 47),
  -- Frogadier - Substitute - TM103
  (657, 65700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Frogadier - Liquidation - TM110
  (657, 65700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 49),
  -- Frogadier - Surf - TM123
  (657, 65700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 50),
  -- Frogadier - Helping Hand - TM130
  (657, 65700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Frogadier - Ice Beam - TM135
  (657, 65700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Frogadier - Hydro Pump - TM142
  (657, 65700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Frogadier - Blizzard - TM143
  (657, 65700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Frogadier - Water Pledge - TM145
  (657, 65700, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 55),
  -- Frogadier - Tera Blast - TM171
  (657, 65700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Frogadier - Counter - Egg
  (657, 65700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Frogadier - Spikes - Egg
  (657, 65700, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Frogadier - Toxic Spikes - Egg
  (657, 65700, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Frogadier - Switcheroo - Egg
  (657, 65700, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Frogadier - Retaliate - Egg
  (657, 65700, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Greninja - Pound - Level 1
  (658, 65800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greninja - Growl - Level 1
  (658, 65800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greninja - Water Gun - Level 1
  (658, 65800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Greninja - Quick Attack - Level 1
  (658, 65800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Greninja - Haze - Level 1
  (658, 65800, 114, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Greninja - Role Play - Level 1
  (658, 65800, 272, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Greninja - Night Slash - Level 1
  (658, 65800, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Greninja - Lick - Level 10
  (658, 65800, 122, 23, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Greninja - Water Pulse - Level 14
  (658, 65800, 352, 23, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Greninja - Smokescreen - Level 19
  (658, 65800, 108, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Greninja - Shadow Sneak - Level 23
  (658, 65800, 425, 23, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Greninja - Spikes - Level 28
  (658, 65800, 191, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Greninja - Aerial Ace - Level 33
  (658, 65800, 332, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Greninja - Substitute - Level 42
  (658, 65800, 164, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Greninja - Extrasensory - Level 49
  (658, 65800, 326, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Greninja - Double Team - Level 56
  (658, 65800, 104, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Greninja - Hydro Pump - Level 68
  (658, 65800, 56, 23, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Greninja - Take Down - TM001
  (658, 65800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Greninja - Mud-Slap - TM005
  (658, 65800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Greninja - Protect - TM007
  (658, 65800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Greninja - Water Pulse - TM011
  (658, 65800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Greninja - Low Kick - TM012
  (658, 65800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Greninja - Acrobatics - TM014
  (658, 65800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Greninja - Thief - TM018
  (658, 65800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Greninja - Trailblaze - TM020
  (658, 65800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Greninja - Chilling Water - TM022
  (658, 65800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Greninja - Facade - TM025
  (658, 65800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Greninja - Aerial Ace - TM027
  (658, 65800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Greninja - Swift - TM032
  (658, 65800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Greninja - Icy Wind - TM034
  (658, 65800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Greninja - Mud Shot - TM035
  (658, 65800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Greninja - Rock Tomb - TM036
  (658, 65800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 32),
  -- Greninja - Low Sweep - TM039
  (658, 65800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 33),
  -- Greninja - Fling - TM043
  (658, 65800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 34),
  -- Greninja - Endure - TM047
  (658, 65800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Greninja - Rain Dance - TM050
  (658, 65800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Greninja - Snowscape - TM052
  (658, 65800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 37),
  -- Greninja - Dig - TM055
  (658, 65800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 38),
  -- Greninja - False Swipe - TM057
  (658, 65800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 39),
  -- Greninja - Brick Break - TM058
  (658, 65800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Greninja - U-turn - TM060
  (658, 65800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 41),
  -- Greninja - Ice Punch - TM069
  (658, 65800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Greninja - Sleep Talk - TM070
  (658, 65800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Greninja - Waterfall - TM077
  (658, 65800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 44),
  -- Greninja - Grass Knot - TM081
  (658, 65800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Greninja - Rest - TM085
  (658, 65800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Greninja - Rock Slide - TM086
  (658, 65800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Greninja - Taunt - TM087
  (658, 65800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Greninja - Swords Dance - TM088
  (658, 65800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Greninja - Spikes - TM090
  (658, 65800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 50),
  -- Greninja - Toxic Spikes - TM091
  (658, 65800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 51),
  -- Greninja - Dark Pulse - TM094
  (658, 65800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 52),
  -- Greninja - Gunk Shot - TM102
  (658, 65800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 53),
  -- Greninja - Substitute - TM103
  (658, 65800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Greninja - Liquidation - TM110
  (658, 65800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 55),
  -- Greninja - Surf - TM123
  (658, 65800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 56),
  -- Greninja - Helping Hand - TM130
  (658, 65800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Greninja - Ice Beam - TM135
  (658, 65800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 58),
  -- Greninja - Hydro Pump - TM142
  (658, 65800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 59),
  -- Greninja - Blizzard - TM143
  (658, 65800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 60),
  -- Greninja - Water Pledge - TM145
  (658, 65800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 61),
  -- Greninja - Giga Impact - TM152
  (658, 65800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Greninja - Hydro Cannon - TM154
  (658, 65800, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 63),
  -- Greninja - Hyper Beam - TM163
  (658, 65800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Greninja - Tera Blast - TM171
  (658, 65800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Greninja - Counter - Egg
  (658, 65800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Greninja - Spikes - Egg
  (658, 65800, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Greninja - Toxic Spikes - Egg
  (658, 65800, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Greninja - Switcheroo - Egg
  (658, 65800, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Greninja - Retaliate - Egg
  (658, 65800, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Greninja - Water Shuriken - Evolution
  (658, 65800, 594, 23, NULL, 7, NULL, NULL, NULL, NULL, 71),
  -- Fletchling - Growl - Level 1
  (661, 66100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchling - Peck - Level 1
  (661, 66100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchling - Quick Attack - Level 5
  (661, 66100, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fletchling - Ember - Level 10
  (661, 66100, 52, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fletchling - Flail - Level 15
  (661, 66100, 175, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Fletchling - Acrobatics - Level 20
  (661, 66100, 512, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fletchling - Agility - Level 25
  (661, 66100, 97, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fletchling - Aerial Ace - Level 30
  (661, 66100, 332, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fletchling - Tailwind - Level 35
  (661, 66100, 366, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fletchling - Steel Wing - Level 40
  (661, 66100, 211, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fletchling - Roost - Level 45
  (661, 66100, 355, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fletchling - Fly - Level 50
  (661, 66100, 19, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Fletchling - Take Down - TM001
  (661, 66100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Fletchling - Agility - TM004
  (661, 66100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Fletchling - Protect - TM007
  (661, 66100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Fletchling - Acrobatics - TM014
  (661, 66100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Fletchling - Thief - TM018
  (661, 66100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Fletchling - Facade - TM025
  (661, 66100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Fletchling - Aerial Ace - TM027
  (661, 66100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Fletchling - Swift - TM032
  (661, 66100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Fletchling - Flame Charge - TM038
  (661, 66100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 21),
  -- Fletchling - Air Cutter - TM040
  (661, 66100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 22),
  -- Fletchling - Endure - TM047
  (661, 66100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Fletchling - Sunny Day - TM049
  (661, 66100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Fletchling - Rain Dance - TM050
  (661, 66100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Fletchling - U-turn - TM060
  (661, 66100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Fletchling - Air Slash - TM065
  (661, 66100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Fletchling - Sleep Talk - TM070
  (661, 66100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Fletchling - Rest - TM085
  (661, 66100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Fletchling - Taunt - TM087
  (661, 66100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 30),
  -- Fletchling - Swords Dance - TM088
  (661, 66100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Fletchling - Fly - TM097
  (661, 66100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 32),
  -- Fletchling - Substitute - TM103
  (661, 66100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Fletchling - Tailwind - TM113
  (661, 66100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Fletchling - Heat Wave - TM118
  (661, 66100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 35),
  -- Fletchling - Overheat - TM157
  (661, 66100, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 36),
  -- Fletchling - Hurricane - TM160
  (661, 66100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 37),
  -- Fletchling - Brave Bird - TM164
  (661, 66100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 38),
  -- Fletchling - Flare Blitz - TM165
  (661, 66100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 39),
  -- Fletchling - Tera Blast - TM171
  (661, 66100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Fletchling - Defog - Egg
  (661, 66100, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fletchling - Flame Charge - Egg
  (661, 66100, 488, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fletchling - Quick Guard - Egg
  (661, 66100, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Fletchinder - Growl - Level 1
  (662, 66200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchinder - Ember - Level 1
  (662, 66200, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchinder - Peck - Level 1
  (662, 66200, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fletchinder - Quick Attack - Level 1
  (662, 66200, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fletchinder - Feint - Level 1
  (662, 66200, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Fletchinder - Flail - Level 15
  (662, 66200, 175, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Fletchinder - Acrobatics - Level 22
  (662, 66200, 512, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Fletchinder - Agility - Level 29
  (662, 66200, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Fletchinder - Aerial Ace - Level 36
  (662, 66200, 332, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Fletchinder - Tailwind - Level 43
  (662, 66200, 366, 23, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Fletchinder - Steel Wing - Level 50
  (662, 66200, 211, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Fletchinder - Roost - Level 57
  (662, 66200, 355, 23, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Fletchinder - Fly - Level 64
  (662, 66200, 19, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Fletchinder - Take Down - TM001
  (662, 66200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Fletchinder - Agility - TM004
  (662, 66200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Fletchinder - Protect - TM007
  (662, 66200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Fletchinder - Acrobatics - TM014
  (662, 66200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Fletchinder - Thief - TM018
  (662, 66200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Fletchinder - Fire Spin - TM024
  (662, 66200, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Fletchinder - Facade - TM025
  (662, 66200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Fletchinder - Aerial Ace - TM027
  (662, 66200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Fletchinder - Swift - TM032
  (662, 66200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Fletchinder - Flame Charge - TM038
  (662, 66200, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Fletchinder - Air Cutter - TM040
  (662, 66200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Fletchinder - Endure - TM047
  (662, 66200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Fletchinder - Sunny Day - TM049
  (662, 66200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Fletchinder - Rain Dance - TM050
  (662, 66200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Fletchinder - U-turn - TM060
  (662, 66200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Fletchinder - Air Slash - TM065
  (662, 66200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 29),
  -- Fletchinder - Sleep Talk - TM070
  (662, 66200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Fletchinder - Rest - TM085
  (662, 66200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Fletchinder - Taunt - TM087
  (662, 66200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 32),
  -- Fletchinder - Swords Dance - TM088
  (662, 66200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Fletchinder - Fly - TM097
  (662, 66200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 34),
  -- Fletchinder - Substitute - TM103
  (662, 66200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Fletchinder - Will-O-Wisp - TM107
  (662, 66200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Fletchinder - Tailwind - TM113
  (662, 66200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 37),
  -- Fletchinder - Heat Wave - TM118
  (662, 66200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Fletchinder - Flamethrower - TM125
  (662, 66200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Fletchinder - Fire Blast - TM141
  (662, 66200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 40),
  -- Fletchinder - Overheat - TM157
  (662, 66200, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 41),
  -- Fletchinder - Hurricane - TM160
  (662, 66200, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 42),
  -- Fletchinder - Brave Bird - TM164
  (662, 66200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 43),
  -- Fletchinder - Flare Blitz - TM165
  (662, 66200, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Fletchinder - Tera Blast - TM171
  (662, 66200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Fletchinder - Defog - Egg
  (662, 66200, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Fletchinder - Flame Charge - Egg
  (662, 66200, 488, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Fletchinder - Quick Guard - Egg
  (662, 66200, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Fletchinder - Flame Charge - Evolution
  (662, 66200, 488, 23, NULL, 7, NULL, NULL, NULL, NULL, 49),
  -- Talonflame - Growl - Level 1
  (663, 66300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Talonflame - Ember - Level 1
  (663, 66300, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Talonflame - Peck - Level 1
  (663, 66300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Talonflame - Quick Attack - Level 1
  (663, 66300, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Talonflame - Feint - Level 1
  (663, 66300, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Talonflame - Flare Blitz - Level 1
  (663, 66300, 394, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Talonflame - Flame Charge - Level 1
  (663, 66300, 488, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Talonflame - Flail - Level 15
  (663, 66300, 175, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Talonflame - Acrobatics - Level 22
  (663, 66300, 512, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Talonflame - Agility - Level 29
  (663, 66300, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Talonflame - Aerial Ace - Level 38
  (663, 66300, 332, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Talonflame - Tailwind - Level 47
  (663, 66300, 366, 23, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Talonflame - Steel Wing - Level 56
  (663, 66300, 211, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Talonflame - Roost - Level 65
  (663, 66300, 355, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Talonflame - Fly - Level 74
  (663, 66300, 19, 23, NULL, 1, 74, NULL, NULL, NULL, 15),
  -- Talonflame - Brave Bird - Level 83
  (663, 66300, 413, 23, NULL, 1, 83, NULL, NULL, NULL, 16),
  -- Talonflame - Take Down - TM001
  (663, 66300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Talonflame - Agility - TM004
  (663, 66300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Talonflame - Protect - TM007
  (663, 66300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Talonflame - Acrobatics - TM014
  (663, 66300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Talonflame - Thief - TM018
  (663, 66300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Talonflame - Fire Spin - TM024
  (663, 66300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Talonflame - Facade - TM025
  (663, 66300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Talonflame - Aerial Ace - TM027
  (663, 66300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Talonflame - Swift - TM032
  (663, 66300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Talonflame - Flame Charge - TM038
  (663, 66300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Talonflame - Air Cutter - TM040
  (663, 66300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Talonflame - Endure - TM047
  (663, 66300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Talonflame - Sunny Day - TM049
  (663, 66300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Talonflame - Rain Dance - TM050
  (663, 66300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Talonflame - U-turn - TM060
  (663, 66300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Talonflame - Bulk Up - TM064
  (663, 66300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Talonflame - Air Slash - TM065
  (663, 66300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Talonflame - Sleep Talk - TM070
  (663, 66300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Talonflame - Rest - TM085
  (663, 66300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Talonflame - Taunt - TM087
  (663, 66300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Talonflame - Swords Dance - TM088
  (663, 66300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Talonflame - Fly - TM097
  (663, 66300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Talonflame - Substitute - TM103
  (663, 66300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Talonflame - Will-O-Wisp - TM107
  (663, 66300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Talonflame - Tailwind - TM113
  (663, 66300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Talonflame - Heat Wave - TM118
  (663, 66300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Talonflame - Flamethrower - TM125
  (663, 66300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Talonflame - Fire Blast - TM141
  (663, 66300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Talonflame - Giga Impact - TM152
  (663, 66300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Talonflame - Overheat - TM157
  (663, 66300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 46),
  -- Talonflame - Hurricane - TM160
  (663, 66300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 47),
  -- Talonflame - Hyper Beam - TM163
  (663, 66300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Talonflame - Brave Bird - TM164
  (663, 66300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 49),
  -- Talonflame - Flare Blitz - TM165
  (663, 66300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 50),
  -- Talonflame - Solar Beam - TM168
  (663, 66300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Talonflame - Tera Blast - TM171
  (663, 66300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Talonflame - Defog - Egg
  (663, 66300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Talonflame - Flame Charge - Egg
  (663, 66300, 488, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Talonflame - Quick Guard - Egg
  (663, 66300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scatterbug - Tackle - Level 1
  (664, 66400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scatterbug - String Shot - Level 1
  (664, 66400, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scatterbug - Stun Spore - Level 6
  (664, 66400, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scatterbug - Bug Bite - Level 15
  (664, 66400, 450, 23, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Scatterbug - Struggle Bug - TM015
  (664, 66400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 5),
  -- Scatterbug - Pounce - TM021
  (664, 66400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 6),
  -- Scatterbug - Tera Blast - TM171
  (664, 66400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 7),
  -- Scatterbug - Poison Powder - Egg
  (664, 66400, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 8),
  -- Scatterbug - Rage Powder - Egg
  (664, 66400, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 9),
  -- Spewpa - Harden - Level 1
  (665, 66500, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spewpa - Protect - TM007
  (665, 66500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 2),
  -- Spewpa - Struggle Bug - TM015
  (665, 66500, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 3),
  -- Spewpa - Pounce - TM021
  (665, 66500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 4),
  -- Spewpa - Iron Defense - TM104
  (665, 66500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 5),
  -- Spewpa - Tera Blast - TM171
  (665, 66500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 6),
  -- Spewpa - Poison Powder - Egg
  (665, 66500, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 7),
  -- Spewpa - Rage Powder - Egg
  (665, 66500, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 8),
  -- Spewpa - Protect - Evolution
  (665, 66500, 182, 23, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Vivillon - Poison Powder - Level 1
  (666, 66600, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vivillon - Stun Spore - Level 1
  (666, 66600, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vivillon - Sleep Powder - Level 1
  (666, 66600, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vivillon - Struggle Bug - Level 1
  (666, 66600, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vivillon - Light Screen - Level 12
  (666, 66600, 113, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vivillon - Psybeam - Level 17
  (666, 66600, 60, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vivillon - Supersonic - Level 21
  (666, 66600, 48, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vivillon - Draining Kiss - Level 25
  (666, 66600, 577, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Vivillon - Safeguard - Level 31
  (666, 66600, 219, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Vivillon - Bug Buzz - Level 35
  (666, 66600, 405, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Vivillon - Quiver Dance - Level 45
  (666, 66600, 483, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Vivillon - Hurricane - Level 50
  (666, 66600, 542, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Vivillon - Protect - TM007
  (666, 66600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Vivillon - Acrobatics - TM014
  (666, 66600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 14),
  -- Vivillon - Struggle Bug - TM015
  (666, 66600, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 15),
  -- Vivillon - Psybeam - TM016
  (666, 66600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 16),
  -- Vivillon - Confuse Ray - TM017
  (666, 66600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Vivillon - Thief - TM018
  (666, 66600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Vivillon - Pounce - TM021
  (666, 66600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Vivillon - Facade - TM025
  (666, 66600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Vivillon - Swift - TM032
  (666, 66600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Vivillon - Draining Kiss - TM037
  (666, 66600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 22),
  -- Vivillon - Air Cutter - TM040
  (666, 66600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Vivillon - Endure - TM047
  (666, 66600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Vivillon - Sunny Day - TM049
  (666, 66600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Vivillon - Rain Dance - TM050
  (666, 66600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Vivillon - U-turn - TM060
  (666, 66600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Vivillon - Air Slash - TM065
  (666, 66600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 28),
  -- Vivillon - Sleep Talk - TM070
  (666, 66600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Vivillon - Light Screen - TM075
  (666, 66600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Vivillon - Rest - TM085
  (666, 66600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Vivillon - Substitute - TM103
  (666, 66600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Vivillon - Iron Defense - TM104
  (666, 66600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Vivillon - Giga Drain - TM111
  (666, 66600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Vivillon - Tailwind - TM113
  (666, 66600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 35),
  -- Vivillon - Energy Ball - TM119
  (666, 66600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Vivillon - Psychic - TM120
  (666, 66600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Vivillon - Pollen Puff - TM131
  (666, 66600, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 38),
  -- Vivillon - Giga Impact - TM152
  (666, 66600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 39),
  -- Vivillon - Hurricane - TM160
  (666, 66600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 40),
  -- Vivillon - Bug Buzz - TM162
  (666, 66600, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 41),
  -- Vivillon - Hyper Beam - TM163
  (666, 66600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Vivillon - Solar Beam - TM168
  (666, 66600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Vivillon - Tera Blast - TM171
  (666, 66600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Vivillon - Poison Powder - Egg
  (666, 66600, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vivillon - Rage Powder - Egg
  (666, 66600, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vivillon - Gust - Evolution
  (666, 66600, 16, 23, NULL, 7, NULL, NULL, NULL, NULL, 47),
  -- Litleo - Tackle - Level 1
  (667, 66700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litleo - Leer - Level 1
  (667, 66700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litleo - Ember - Level 5
  (667, 66700, 52, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Litleo - Work Up - Level 8
  (667, 66700, 526, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Litleo - Headbutt - Level 11
  (667, 66700, 29, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Litleo - Noble Roar - Level 15
  (667, 66700, 568, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Litleo - Take Down - Level 20
  (667, 66700, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Litleo - Fire Fang - Level 23
  (667, 66700, 424, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Litleo - Endeavor - Level 28
  (667, 66700, 283, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Litleo - Echoed Voice - Level 33
  (667, 66700, 497, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Litleo - Flamethrower - Level 36
  (667, 66700, 53, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Litleo - Crunch - Level 39
  (667, 66700, 242, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Litleo - Hyper Voice - Level 43
  (667, 66700, 304, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Litleo - Incinerate - Level 46
  (667, 66700, 510, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Litleo - Overheat - Level 50
  (667, 66700, 315, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Litleo - Take Down - TM001
  (667, 66700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Litleo - Mud-Slap - TM005
  (667, 66700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Litleo - Protect - TM007
  (667, 66700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Litleo - Fire Fang - TM008
  (667, 66700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Litleo - Thunder Fang - TM009
  (667, 66700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Litleo - Acrobatics - TM014
  (667, 66700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Litleo - Thief - TM018
  (667, 66700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Litleo - Trailblaze - TM020
  (667, 66700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Litleo - Fire Spin - TM024
  (667, 66700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 24),
  -- Litleo - Facade - TM025
  (667, 66700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Litleo - Bulldoze - TM028
  (667, 66700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Litleo - Snarl - TM030
  (667, 66700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Litleo - Swift - TM032
  (667, 66700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Litleo - Flame Charge - TM038
  (667, 66700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Litleo - Endure - TM047
  (667, 66700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Litleo - Sunny Day - TM049
  (667, 66700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Litleo - Rain Dance - TM050
  (667, 66700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Litleo - Dig - TM055
  (667, 66700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Litleo - Psychic Fangs - TM063
  (667, 66700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 34),
  -- Litleo - Body Slam - TM066
  (667, 66700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Litleo - Sleep Talk - TM070
  (667, 66700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Litleo - Rest - TM085
  (667, 66700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Litleo - Taunt - TM087
  (667, 66700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Litleo - Substitute - TM103
  (667, 66700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Litleo - Will-O-Wisp - TM107
  (667, 66700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Litleo - Crunch - TM108
  (667, 66700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Litleo - Hyper Voice - TM117
  (667, 66700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 42),
  -- Litleo - Heat Wave - TM118
  (667, 66700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 43),
  -- Litleo - Flamethrower - TM125
  (667, 66700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Litleo - Helping Hand - TM130
  (667, 66700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Litleo - Fire Blast - TM141
  (667, 66700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Litleo - Wild Charge - TM147
  (667, 66700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Litleo - Overheat - TM157
  (667, 66700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 48),
  -- Litleo - Flare Blitz - TM165
  (667, 66700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 49),
  -- Litleo - Solar Beam - TM168
  (667, 66700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 50),
  -- Litleo - Tera Blast - TM171
  (667, 66700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Litleo - Fire Spin - Egg
  (667, 66700, 83, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Litleo - Yawn - Egg
  (667, 66700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Litleo - Flare Blitz - Egg
  (667, 66700, 394, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Litleo - Entrainment - Egg
  (667, 66700, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pyroar - Tackle - Level 1
  (668, 66800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pyroar - Leer - Level 1
  (668, 66800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pyroar - Ember - Level 1
  (668, 66800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pyroar - Hyper Beam - Level 1
  (668, 66800, 63, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pyroar - Work Up - Level 1
  (668, 66800, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pyroar - Headbutt - Level 11
  (668, 66800, 29, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pyroar - Noble Roar - Level 15
  (668, 66800, 568, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pyroar - Take Down - Level 20
  (668, 66800, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pyroar - Fire Fang - Level 23
  (668, 66800, 424, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pyroar - Endeavor - Level 28
  (668, 66800, 283, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pyroar - Echoed Voice - Level 33
  (668, 66800, 497, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pyroar - Flamethrower - Level 38
  (668, 66800, 53, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Pyroar - Crunch - Level 42
  (668, 66800, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pyroar - Hyper Voice - Level 48
  (668, 66800, 304, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Pyroar - Incinerate - Level 51
  (668, 66800, 510, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Pyroar - Overheat - Level 57
  (668, 66800, 315, 23, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Pyroar - Take Down - TM001
  (668, 66800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Pyroar - Mud-Slap - TM005
  (668, 66800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Pyroar - Protect - TM007
  (668, 66800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Pyroar - Fire Fang - TM008
  (668, 66800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Pyroar - Thunder Fang - TM009
  (668, 66800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Pyroar - Acrobatics - TM014
  (668, 66800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Pyroar - Thief - TM018
  (668, 66800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Pyroar - Trailblaze - TM020
  (668, 66800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Pyroar - Fire Spin - TM024
  (668, 66800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Pyroar - Facade - TM025
  (668, 66800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Pyroar - Bulldoze - TM028
  (668, 66800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Pyroar - Snarl - TM030
  (668, 66800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Pyroar - Swift - TM032
  (668, 66800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Pyroar - Flame Charge - TM038
  (668, 66800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 30),
  -- Pyroar - Endure - TM047
  (668, 66800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Pyroar - Sunny Day - TM049
  (668, 66800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Pyroar - Rain Dance - TM050
  (668, 66800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Pyroar - Dig - TM055
  (668, 66800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Pyroar - Psychic Fangs - TM063
  (668, 66800, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 35),
  -- Pyroar - Body Slam - TM066
  (668, 66800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Pyroar - Sleep Talk - TM070
  (668, 66800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Pyroar - Rest - TM085
  (668, 66800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Pyroar - Taunt - TM087
  (668, 66800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Pyroar - Dark Pulse - TM094
  (668, 66800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Pyroar - Substitute - TM103
  (668, 66800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Pyroar - Will-O-Wisp - TM107
  (668, 66800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Pyroar - Crunch - TM108
  (668, 66800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Pyroar - Hyper Voice - TM117
  (668, 66800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Pyroar - Heat Wave - TM118
  (668, 66800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Pyroar - Flamethrower - TM125
  (668, 66800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Pyroar - Helping Hand - TM130
  (668, 66800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Pyroar - Fire Blast - TM141
  (668, 66800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 48),
  -- Pyroar - Wild Charge - TM147
  (668, 66800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Pyroar - Giga Impact - TM152
  (668, 66800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Pyroar - Overheat - TM157
  (668, 66800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Pyroar - Hyper Beam - TM163
  (668, 66800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Pyroar - Flare Blitz - TM165
  (668, 66800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Pyroar - Solar Beam - TM168
  (668, 66800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Pyroar - Tera Blast - TM171
  (668, 66800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Pyroar - Fire Spin - Egg
  (668, 66800, 83, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pyroar - Yawn - Egg
  (668, 66800, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pyroar - Flare Blitz - Egg
  (668, 66800, 394, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pyroar - Entrainment - Egg
  (668, 66800, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Flabebe - Vine Whip - Level 1
  (669, 66900, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flabebe - Tackle - Level 1
  (669, 66900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flabebe - Fairy Wind - Level 6
  (669, 66900, 584, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Flabebe - Safeguard - Level 10
  (669, 66900, 219, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Flabebe - Razor Leaf - Level 15
  (669, 66900, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flabebe - Wish - Level 20
  (669, 66900, 273, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Flabebe - Magical Leaf - Level 22
  (669, 66900, 345, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Flabebe - Grassy Terrain - Level 24
  (669, 66900, 580, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Flabebe - Petal Blizzard - Level 28
  (669, 66900, 572, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Flabebe - Synthesis - Level 33
  (669, 66900, 235, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Flabebe - Misty Terrain - Level 37
  (669, 66900, 581, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Flabebe - Moonblast - Level 41
  (669, 66900, 585, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Flabebe - Petal Dance - Level 45
  (669, 66900, 80, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Flabebe - Solar Beam - Level 48
  (669, 66900, 76, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Flabebe - Charm - TM002
  (669, 66900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Flabebe - Protect - TM007
  (669, 66900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Flabebe - Disarming Voice - TM019
  (669, 66900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 17),
  -- Flabebe - Trailblaze - TM020
  (669, 66900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Flabebe - Chilling Water - TM022
  (669, 66900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Flabebe - Facade - TM025
  (669, 66900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Flabebe - Swift - TM032
  (669, 66900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Flabebe - Magical Leaf - TM033
  (669, 66900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Flabebe - Draining Kiss - TM037
  (669, 66900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Flabebe - Stored Power - TM041
  (669, 66900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Flabebe - Endure - TM047
  (669, 66900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Flabebe - Sunny Day - TM049
  (669, 66900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Flabebe - Rain Dance - TM050
  (669, 66900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Flabebe - Sleep Talk - TM070
  (669, 66900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Flabebe - Seed Bomb - TM071
  (669, 66900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Flabebe - Light Screen - TM075
  (669, 66900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Flabebe - Dazzling Gleam - TM079
  (669, 66900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Flabebe - Grass Knot - TM081
  (669, 66900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Flabebe - Rest - TM085
  (669, 66900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Flabebe - Substitute - TM103
  (669, 66900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Flabebe - Giga Drain - TM111
  (669, 66900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Flabebe - Energy Ball - TM119
  (669, 66900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Flabebe - Psychic - TM120
  (669, 66900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Flabebe - Calm Mind - TM129
  (669, 66900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 38),
  -- Flabebe - Helping Hand - TM130
  (669, 66900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Flabebe - Pollen Puff - TM131
  (669, 66900, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 40),
  -- Flabebe - Baton Pass - TM132
  (669, 66900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Flabebe - Grassy Terrain - TM137
  (669, 66900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Flabebe - Misty Terrain - TM139
  (669, 66900, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 43),
  -- Flabebe - Solar Beam - TM168
  (669, 66900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Flabebe - Tera Blast - TM171
  (669, 66900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Flabebe - Endeavor - Egg
  (669, 66900, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Flabebe - Copycat - Egg
  (669, 66900, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Flabebe - Tearful Look - Egg
  (669, 66900, 715, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Floette - Vine Whip - Level 1
  (670, 67000, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floette - Tackle - Level 1
  (670, 67000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floette - Fairy Wind - Level 1
  (670, 67000, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floette - Safeguard - Level 10
  (670, 67000, 219, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Floette - Razor Leaf - Level 15
  (670, 67000, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Floette - Wish - Level 20
  (670, 67000, 273, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Floette - Magical Leaf - Level 25
  (670, 67000, 345, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Floette - Grassy Terrain - Level 27
  (670, 67000, 580, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Floette - Petal Blizzard - Level 33
  (670, 67000, 572, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Floette - Synthesis - Level 38
  (670, 67000, 235, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Floette - Misty Terrain - Level 43
  (670, 67000, 581, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Floette - Moonblast - Level 46
  (670, 67000, 585, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Floette - Petal Dance - Level 51
  (670, 67000, 80, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Floette - Solar Beam - Level 58
  (670, 67000, 76, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Floette - Charm - TM002
  (670, 67000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Floette - Protect - TM007
  (670, 67000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Floette - Disarming Voice - TM019
  (670, 67000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 17),
  -- Floette - Trailblaze - TM020
  (670, 67000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Floette - Chilling Water - TM022
  (670, 67000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Floette - Facade - TM025
  (670, 67000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Floette - Swift - TM032
  (670, 67000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Floette - Magical Leaf - TM033
  (670, 67000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Floette - Draining Kiss - TM037
  (670, 67000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Floette - Stored Power - TM041
  (670, 67000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Floette - Endure - TM047
  (670, 67000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Floette - Sunny Day - TM049
  (670, 67000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Floette - Rain Dance - TM050
  (670, 67000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Floette - Sleep Talk - TM070
  (670, 67000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Floette - Seed Bomb - TM071
  (670, 67000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Floette - Light Screen - TM075
  (670, 67000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Floette - Dazzling Gleam - TM079
  (670, 67000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Floette - Metronome - TM080
  (670, 67000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 32),
  -- Floette - Grass Knot - TM081
  (670, 67000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 33),
  -- Floette - Rest - TM085
  (670, 67000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Floette - Skill Swap - TM098
  (670, 67000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 35),
  -- Floette - Substitute - TM103
  (670, 67000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Floette - Trick - TM109
  (670, 67000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 37),
  -- Floette - Giga Drain - TM111
  (670, 67000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 38),
  -- Floette - Energy Ball - TM119
  (670, 67000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 39),
  -- Floette - Psychic - TM120
  (670, 67000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Floette - Calm Mind - TM129
  (670, 67000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 41),
  -- Floette - Helping Hand - TM130
  (670, 67000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Floette - Pollen Puff - TM131
  (670, 67000, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 43),
  -- Floette - Baton Pass - TM132
  (670, 67000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 44),
  -- Floette - Grassy Terrain - TM137
  (670, 67000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Floette - Misty Terrain - TM139
  (670, 67000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 46),
  -- Floette - Solar Beam - TM168
  (670, 67000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Floette - Tera Blast - TM171
  (670, 67000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Floette - Endeavor - Egg
  (670, 67000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Floette - Copycat - Egg
  (670, 67000, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Floette - Tearful Look - Egg
  (670, 67000, 715, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Florges - Solar Beam - Level 1
  (671, 67100, 76, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Florges - Petal Dance - Level 1
  (671, 67100, 80, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Florges - Safeguard - Level 1
  (671, 67100, 219, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Florges - Synthesis - Level 1
  (671, 67100, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Florges - Wish - Level 1
  (671, 67100, 273, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Florges - Magical Leaf - Level 1
  (671, 67100, 345, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Florges - Grass Knot - Level 1
  (671, 67100, 447, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Florges - Petal Blizzard - Level 1
  (671, 67100, 572, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Florges - Disarming Voice - Level 1
  (671, 67100, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Florges - Grassy Terrain - Level 1
  (671, 67100, 580, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Florges - Misty Terrain - Level 1
  (671, 67100, 581, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Florges - Moonblast - Level 5
  (671, 67100, 585, 23, NULL, 1, 5, NULL, NULL, NULL, 12),
  -- Florges - Charm - TM002
  (671, 67100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Florges - Protect - TM007
  (671, 67100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Florges - Disarming Voice - TM019
  (671, 67100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Florges - Trailblaze - TM020
  (671, 67100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Florges - Chilling Water - TM022
  (671, 67100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Florges - Facade - TM025
  (671, 67100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Florges - Swift - TM032
  (671, 67100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 19),
  -- Florges - Magical Leaf - TM033
  (671, 67100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Florges - Draining Kiss - TM037
  (671, 67100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 21),
  -- Florges - Stored Power - TM041
  (671, 67100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 22),
  -- Florges - Endure - TM047
  (671, 67100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Florges - Sunny Day - TM049
  (671, 67100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Florges - Rain Dance - TM050
  (671, 67100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Florges - Sleep Talk - TM070
  (671, 67100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Florges - Seed Bomb - TM071
  (671, 67100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Florges - Light Screen - TM075
  (671, 67100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Florges - Dazzling Gleam - TM079
  (671, 67100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 29),
  -- Florges - Metronome - TM080
  (671, 67100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 30),
  -- Florges - Grass Knot - TM081
  (671, 67100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Florges - Rest - TM085
  (671, 67100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Florges - Skill Swap - TM098
  (671, 67100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 33),
  -- Florges - Substitute - TM103
  (671, 67100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Florges - Trick - TM109
  (671, 67100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 35),
  -- Florges - Giga Drain - TM111
  (671, 67100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Florges - Energy Ball - TM119
  (671, 67100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Florges - Psychic - TM120
  (671, 67100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Florges - Calm Mind - TM129
  (671, 67100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 39),
  -- Florges - Helping Hand - TM130
  (671, 67100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Florges - Pollen Puff - TM131
  (671, 67100, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 41),
  -- Florges - Baton Pass - TM132
  (671, 67100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Florges - Grassy Terrain - TM137
  (671, 67100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 43),
  -- Florges - Misty Terrain - TM139
  (671, 67100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 44),
  -- Florges - Giga Impact - TM152
  (671, 67100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Florges - Hyper Beam - TM163
  (671, 67100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Florges - Solar Beam - TM168
  (671, 67100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Florges - Tera Blast - TM171
  (671, 67100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Florges - Endeavor - Egg
  (671, 67100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Florges - Copycat - Egg
  (671, 67100, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Florges - Tearful Look - Egg
  (671, 67100, 715, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skiddo - Tackle - Level 1
  (672, 67200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiddo - Growth - Level 1
  (672, 67200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiddo - Vine Whip - Level 7
  (672, 67200, 22, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Skiddo - Tail Whip - Level 9
  (672, 67200, 39, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skiddo - Leech Seed - Level 12
  (672, 67200, 73, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skiddo - Razor Leaf - Level 13
  (672, 67200, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skiddo - Worry Seed - Level 16
  (672, 67200, 388, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skiddo - Synthesis - Level 20
  (672, 67200, 235, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skiddo - Take Down - Level 22
  (672, 67200, 36, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skiddo - Bulldoze - Level 26
  (672, 67200, 523, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Skiddo - Seed Bomb - Level 30
  (672, 67200, 402, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skiddo - Bulk Up - Level 34
  (672, 67200, 339, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skiddo - Double-Edge - Level 38
  (672, 67200, 38, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skiddo - Horn Leech - Level 42
  (672, 67200, 532, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Skiddo - Leaf Blade - Level 45
  (672, 67200, 348, 23, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Skiddo - Take Down - TM001
  (672, 67200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Skiddo - Mud-Slap - TM005
  (672, 67200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Skiddo - Protect - TM007
  (672, 67200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Skiddo - Trailblaze - TM020
  (672, 67200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Skiddo - Facade - TM025
  (672, 67200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Skiddo - Bulldoze - TM028
  (672, 67200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Skiddo - Magical Leaf - TM033
  (672, 67200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Skiddo - Mud Shot - TM035
  (672, 67200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Skiddo - Endure - TM047
  (672, 67200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Skiddo - Sunny Day - TM049
  (672, 67200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Skiddo - Rain Dance - TM050
  (672, 67200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Skiddo - Dig - TM055
  (672, 67200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Skiddo - Bullet Seed - TM056
  (672, 67200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Skiddo - Brick Break - TM058
  (672, 67200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Skiddo - Zen Headbutt - TM059
  (672, 67200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Skiddo - Bulk Up - TM064
  (672, 67200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Skiddo - Body Slam - TM066
  (672, 67200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Skiddo - Sleep Talk - TM070
  (672, 67200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Skiddo - Seed Bomb - TM071
  (672, 67200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Skiddo - Grass Knot - TM081
  (672, 67200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Skiddo - Stomping Tantrum - TM084
  (672, 67200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Skiddo - Rest - TM085
  (672, 67200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Skiddo - Rock Slide - TM086
  (672, 67200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Skiddo - Substitute - TM103
  (672, 67200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Skiddo - Giga Drain - TM111
  (672, 67200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Skiddo - Energy Ball - TM119
  (672, 67200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Skiddo - Surf - TM123
  (672, 67200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 42),
  -- Skiddo - Play Rough - TM127
  (672, 67200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Skiddo - Helping Hand - TM130
  (672, 67200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Skiddo - Grassy Terrain - TM137
  (672, 67200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Skiddo - Wild Charge - TM147
  (672, 67200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Skiddo - Leaf Storm - TM159
  (672, 67200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Skiddo - Solar Beam - TM168
  (672, 67200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 48),
  -- Skiddo - Tera Blast - TM171
  (672, 67200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Skiddo - Defense Curl - Egg
  (672, 67200, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skiddo - Rollout - Egg
  (672, 67200, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skiddo - Milk Drink - Egg
  (672, 67200, 208, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skiddo - Grassy Terrain - Egg
  (672, 67200, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gogoat - Vine Whip - Level 1
  (673, 67300, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gogoat - Tackle - Level 1
  (673, 67300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gogoat - Tail Whip - Level 1
  (673, 67300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gogoat - Growth - Level 1
  (673, 67300, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gogoat - Earthquake - Level 1
  (673, 67300, 89, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gogoat - Leech Seed - Level 12
  (673, 67300, 73, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gogoat - Razor Leaf - Level 13
  (673, 67300, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Gogoat - Worry Seed - Level 16
  (673, 67300, 388, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Gogoat - Synthesis - Level 20
  (673, 67300, 235, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gogoat - Take Down - Level 22
  (673, 67300, 36, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gogoat - Bulldoze - Level 26
  (673, 67300, 523, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Gogoat - Seed Bomb - Level 30
  (673, 67300, 402, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gogoat - Bulk Up - Level 34
  (673, 67300, 339, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Gogoat - Double-Edge - Level 40
  (673, 67300, 38, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Gogoat - Horn Leech - Level 47
  (673, 67300, 532, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Gogoat - Leaf Blade - Level 55
  (673, 67300, 348, 23, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gogoat - Milk Drink - Level 58
  (673, 67300, 208, 23, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Gogoat - Take Down - TM001
  (673, 67300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Gogoat - Mud-Slap - TM005
  (673, 67300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Gogoat - Protect - TM007
  (673, 67300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Gogoat - Trailblaze - TM020
  (673, 67300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Gogoat - Facade - TM025
  (673, 67300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Gogoat - Aerial Ace - TM027
  (673, 67300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Gogoat - Bulldoze - TM028
  (673, 67300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Gogoat - Magical Leaf - TM033
  (673, 67300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Gogoat - Mud Shot - TM035
  (673, 67300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Gogoat - Endure - TM047
  (673, 67300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Gogoat - Sunny Day - TM049
  (673, 67300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Gogoat - Rain Dance - TM050
  (673, 67300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Gogoat - Dig - TM055
  (673, 67300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Gogoat - Bullet Seed - TM056
  (673, 67300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Gogoat - Brick Break - TM058
  (673, 67300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Gogoat - Zen Headbutt - TM059
  (673, 67300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Gogoat - Bulk Up - TM064
  (673, 67300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Gogoat - Body Slam - TM066
  (673, 67300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Gogoat - Sleep Talk - TM070
  (673, 67300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Gogoat - Seed Bomb - TM071
  (673, 67300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Gogoat - Grass Knot - TM081
  (673, 67300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Gogoat - Stomping Tantrum - TM084
  (673, 67300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Gogoat - Rest - TM085
  (673, 67300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Gogoat - Rock Slide - TM086
  (673, 67300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Gogoat - Substitute - TM103
  (673, 67300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Gogoat - Giga Drain - TM111
  (673, 67300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Gogoat - Energy Ball - TM119
  (673, 67300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Gogoat - Surf - TM123
  (673, 67300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Gogoat - Play Rough - TM127
  (673, 67300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Gogoat - Helping Hand - TM130
  (673, 67300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Gogoat - Grassy Terrain - TM137
  (673, 67300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 48),
  -- Gogoat - Wild Charge - TM147
  (673, 67300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Gogoat - Earthquake - TM149
  (673, 67300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Gogoat - Giga Impact - TM152
  (673, 67300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Gogoat - Leaf Storm - TM159
  (673, 67300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Gogoat - Hyper Beam - TM163
  (673, 67300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Gogoat - Solar Beam - TM168
  (673, 67300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Gogoat - Tera Blast - TM171
  (673, 67300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Gogoat - Defense Curl - Egg
  (673, 67300, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gogoat - Rollout - Egg
  (673, 67300, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gogoat - Milk Drink - Egg
  (673, 67300, 208, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gogoat - Grassy Terrain - Egg
  (673, 67300, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gogoat - Aerial Ace - Evolution
  (673, 67300, 332, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Espurr - Scratch - Level 1
  (677, 67700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espurr - Leer - Level 1
  (677, 67700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espurr - Fake Out - Level 3
  (677, 67700, 252, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Espurr - Disarming Voice - Level 6
  (677, 67700, 574, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Espurr - Confusion - Level 9
  (677, 67700, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Espurr - Covet - Level 18
  (677, 67700, 343, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Espurr - Psybeam - Level 21
  (677, 67700, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Espurr - Light Screen - Level 30
  (677, 67700, 113, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Espurr - Reflect - Level 30
  (677, 67700, 115, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Espurr - Psyshock - Level 33
  (677, 67700, 473, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Espurr - Charm - TM002
  (677, 67700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 11),
  -- Espurr - Fake Tears - TM003
  (677, 67700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 12),
  -- Espurr - Protect - TM007
  (677, 67700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Espurr - Psybeam - TM016
  (677, 67700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 14),
  -- Espurr - Disarming Voice - TM019
  (677, 67700, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Espurr - Charge Beam - TM023
  (677, 67700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 16),
  -- Espurr - Facade - TM025
  (677, 67700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Espurr - Swift - TM032
  (677, 67700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Espurr - Endure - TM047
  (677, 67700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Espurr - Sunny Day - TM049
  (677, 67700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Espurr - Rain Dance - TM050
  (677, 67700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Espurr - Psyshock - TM054
  (677, 67700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 22),
  -- Espurr - Zen Headbutt - TM059
  (677, 67700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 23),
  -- Espurr - Sleep Talk - TM070
  (677, 67700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Espurr - Reflect - TM074
  (677, 67700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 25),
  -- Espurr - Light Screen - TM075
  (677, 67700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 26),
  -- Espurr - Thunder Wave - TM082
  (677, 67700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 27),
  -- Espurr - Rest - TM085
  (677, 67700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Espurr - Dark Pulse - TM094
  (677, 67700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 29),
  -- Espurr - Skill Swap - TM098
  (677, 67700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 30),
  -- Espurr - Substitute - TM103
  (677, 67700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Espurr - Trick - TM109
  (677, 67700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 32),
  -- Espurr - Shadow Ball - TM114
  (677, 67700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 33),
  -- Espurr - Energy Ball - TM119
  (677, 67700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 34),
  -- Espurr - Psychic - TM120
  (677, 67700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 35),
  -- Espurr - Thunderbolt - TM126
  (677, 67700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 36),
  -- Espurr - Play Rough - TM127
  (677, 67700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Espurr - Calm Mind - TM129
  (677, 67700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 38),
  -- Espurr - Helping Hand - TM130
  (677, 67700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Espurr - Nasty Plot - TM140
  (677, 67700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 40),
  -- Espurr - Trick Room - TM161
  (677, 67700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 41),
  -- Espurr - Tera Blast - TM171
  (677, 67700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Espurr - Yawn - Egg
  (677, 67700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Espurr - Tickle - Egg
  (677, 67700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Meowstic - Scratch - Level 1
  (678, 67800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic - Leer - Level 1
  (678, 67800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic - Mean Look - Level 1
  (678, 67800, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic - Fake Out - Level 1
  (678, 67800, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic - Magical Leaf - Level 1
  (678, 67800, 345, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic - Disarming Voice - Level 1
  (678, 67800, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Meowstic - Confusion - Level 9
  (678, 67800, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowstic - Helping Hand - Level 12
  (678, 67800, 270, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Meowstic - Stored Power - Level 12
  (678, 67800, 500, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Meowstic - Charm - Level 15
  (678, 67800, 204, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Meowstic - Charge Beam - Level 15
  (678, 67800, 451, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Meowstic - Covet - Level 18
  (678, 67800, 343, 23, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Meowstic - Psybeam - Level 21
  (678, 67800, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Meowstic - Sucker Punch - Level 24
  (678, 67800, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Meowstic - Role Play - Level 29
  (678, 67800, 272, 23, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Meowstic - Light Screen - Level 34
  (678, 67800, 113, 23, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Meowstic - Reflect - Level 34
  (678, 67800, 115, 23, NULL, 1, 34, NULL, NULL, NULL, 17),
  -- Meowstic - Psyshock - Level 39
  (678, 67800, 473, 23, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Meowstic - Imprison - Level 44
  (678, 67800, 286, 23, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Meowstic - Extrasensory - Level 44
  (678, 67800, 326, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Meowstic - Shadow Ball - Level 49
  (678, 67800, 247, 23, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Meowstic - Quick Guard - Level 49
  (678, 67800, 501, 23, NULL, 1, 49, NULL, NULL, NULL, 22),
  -- Meowstic - Psychic - Level 54
  (678, 67800, 94, 23, NULL, 1, 54, NULL, NULL, NULL, 23),
  -- Meowstic - Future Sight - Level 59
  (678, 67800, 248, 23, NULL, 1, 59, NULL, NULL, NULL, 24),
  -- Meowstic - Misty Terrain - Level 59
  (678, 67800, 581, 23, NULL, 1, 59, NULL, NULL, NULL, 25),
  -- Meowstic - Charm - TM002
  (678, 67800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 26),
  -- Meowstic - Fake Tears - TM003
  (678, 67800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 27),
  -- Meowstic - Protect - TM007
  (678, 67800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Meowstic - Psybeam - TM016
  (678, 67800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 29),
  -- Meowstic - Disarming Voice - TM019
  (678, 67800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 30),
  -- Meowstic - Trailblaze - TM020
  (678, 67800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Meowstic - Charge Beam - TM023
  (678, 67800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 32),
  -- Meowstic - Facade - TM025
  (678, 67800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 33),
  -- Meowstic - Swift - TM032
  (678, 67800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 34),
  -- Meowstic - Magical Leaf - TM033
  (678, 67800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 35),
  -- Meowstic - Stored Power - TM041
  (678, 67800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Meowstic - Endure - TM047
  (678, 67800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Meowstic - Sunny Day - TM049
  (678, 67800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Meowstic - Rain Dance - TM050
  (678, 67800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Meowstic - Psyshock - TM054
  (678, 67800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 40),
  -- Meowstic - Dig - TM055
  (678, 67800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 41),
  -- Meowstic - Zen Headbutt - TM059
  (678, 67800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 42),
  -- Meowstic - Sleep Talk - TM070
  (678, 67800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Meowstic - Reflect - TM074
  (678, 67800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Meowstic - Light Screen - TM075
  (678, 67800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Meowstic - Thunder Wave - TM082
  (678, 67800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Meowstic - Rest - TM085
  (678, 67800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Meowstic - Imprison - TM092
  (678, 67800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Meowstic - Dark Pulse - TM094
  (678, 67800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Meowstic - Skill Swap - TM098
  (678, 67800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Meowstic - Substitute - TM103
  (678, 67800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Meowstic - Trick - TM109
  (678, 67800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Meowstic - Shadow Ball - TM114
  (678, 67800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Meowstic - Energy Ball - TM119
  (678, 67800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Meowstic - Psychic - TM120
  (678, 67800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Meowstic - Thunderbolt - TM126
  (678, 67800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Meowstic - Play Rough - TM127
  (678, 67800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Meowstic - Calm Mind - TM129
  (678, 67800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Meowstic - Helping Hand - TM130
  (678, 67800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Meowstic - Baton Pass - TM132
  (678, 67800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Meowstic - Psychic Terrain - TM138
  (678, 67800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 61),
  -- Meowstic - Misty Terrain - TM139
  (678, 67800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 62),
  -- Meowstic - Nasty Plot - TM140
  (678, 67800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Meowstic - Giga Impact - TM152
  (678, 67800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Meowstic - Trick Room - TM161
  (678, 67800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Meowstic - Hyper Beam - TM163
  (678, 67800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Meowstic - Tera Blast - TM171
  (678, 67800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Meowstic - Yawn - Egg
  (678, 67800, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Meowstic - Tickle - Egg
  (678, 67800, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Meowstic (Female) - Scratch - Level 1
  (678, 67801, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic (Female) - Leer - Level 1
  (678, 67801, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic (Female) - Mean Look - Level 1
  (678, 67801, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic (Female) - Fake Out - Level 1
  (678, 67801, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic (Female) - Magical Leaf - Level 1
  (678, 67801, 345, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic (Female) - Disarming Voice - Level 1
  (678, 67801, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Meowstic (Female) - Confusion - Level 9
  (678, 67801, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowstic (Female) - Helping Hand - Level 12
  (678, 67801, 270, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Meowstic (Female) - Stored Power - Level 12
  (678, 67801, 500, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Meowstic (Female) - Charm - Level 15
  (678, 67801, 204, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Meowstic (Female) - Charge Beam - Level 15
  (678, 67801, 451, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Meowstic (Female) - Covet - Level 18
  (678, 67801, 343, 23, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Meowstic (Female) - Psybeam - Level 21
  (678, 67801, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Meowstic (Female) - Sucker Punch - Level 24
  (678, 67801, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Meowstic (Female) - Role Play - Level 29
  (678, 67801, 272, 23, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Meowstic (Female) - Light Screen - Level 34
  (678, 67801, 113, 23, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Meowstic (Female) - Reflect - Level 34
  (678, 67801, 115, 23, NULL, 1, 34, NULL, NULL, NULL, 17),
  -- Meowstic (Female) - Psyshock - Level 39
  (678, 67801, 473, 23, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Meowstic (Female) - Imprison - Level 44
  (678, 67801, 286, 23, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Meowstic (Female) - Extrasensory - Level 44
  (678, 67801, 326, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Meowstic (Female) - Shadow Ball - Level 49
  (678, 67801, 247, 23, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Meowstic (Female) - Quick Guard - Level 49
  (678, 67801, 501, 23, NULL, 1, 49, NULL, NULL, NULL, 22),
  -- Meowstic (Female) - Psychic - Level 54
  (678, 67801, 94, 23, NULL, 1, 54, NULL, NULL, NULL, 23),
  -- Meowstic (Female) - Future Sight - Level 59
  (678, 67801, 248, 23, NULL, 1, 59, NULL, NULL, NULL, 24),
  -- Meowstic (Female) - Misty Terrain - Level 59
  (678, 67801, 581, 23, NULL, 1, 59, NULL, NULL, NULL, 25),
  -- Meowstic (Female) - Charm - TM002
  (678, 67801, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 26),
  -- Meowstic (Female) - Fake Tears - TM003
  (678, 67801, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 27),
  -- Meowstic (Female) - Protect - TM007
  (678, 67801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Meowstic (Female) - Psybeam - TM016
  (678, 67801, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 29),
  -- Meowstic (Female) - Disarming Voice - TM019
  (678, 67801, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 30),
  -- Meowstic (Female) - Trailblaze - TM020
  (678, 67801, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Meowstic (Female) - Charge Beam - TM023
  (678, 67801, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 32),
  -- Meowstic (Female) - Facade - TM025
  (678, 67801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 33),
  -- Meowstic (Female) - Swift - TM032
  (678, 67801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 34),
  -- Meowstic (Female) - Magical Leaf - TM033
  (678, 67801, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 35),
  -- Meowstic (Female) - Stored Power - TM041
  (678, 67801, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Meowstic (Female) - Endure - TM047
  (678, 67801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Meowstic (Female) - Sunny Day - TM049
  (678, 67801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Meowstic (Female) - Rain Dance - TM050
  (678, 67801, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Meowstic (Female) - Psyshock - TM054
  (678, 67801, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 40),
  -- Meowstic (Female) - Dig - TM055
  (678, 67801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 41),
  -- Meowstic (Female) - Zen Headbutt - TM059
  (678, 67801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 42),
  -- Meowstic (Female) - Sleep Talk - TM070
  (678, 67801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Meowstic (Female) - Reflect - TM074
  (678, 67801, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Meowstic (Female) - Light Screen - TM075
  (678, 67801, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Meowstic (Female) - Thunder Wave - TM082
  (678, 67801, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Meowstic (Female) - Rest - TM085
  (678, 67801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Meowstic (Female) - Imprison - TM092
  (678, 67801, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Meowstic (Female) - Dark Pulse - TM094
  (678, 67801, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Meowstic (Female) - Skill Swap - TM098
  (678, 67801, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Meowstic (Female) - Substitute - TM103
  (678, 67801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Meowstic (Female) - Trick - TM109
  (678, 67801, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Meowstic (Female) - Shadow Ball - TM114
  (678, 67801, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Meowstic (Female) - Energy Ball - TM119
  (678, 67801, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Meowstic (Female) - Psychic - TM120
  (678, 67801, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Meowstic (Female) - Thunderbolt - TM126
  (678, 67801, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Meowstic (Female) - Play Rough - TM127
  (678, 67801, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Meowstic (Female) - Calm Mind - TM129
  (678, 67801, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Meowstic (Female) - Helping Hand - TM130
  (678, 67801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Meowstic (Female) - Baton Pass - TM132
  (678, 67801, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Meowstic (Female) - Psychic Terrain - TM138
  (678, 67801, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 61),
  -- Meowstic (Female) - Misty Terrain - TM139
  (678, 67801, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 62),
  -- Meowstic (Female) - Nasty Plot - TM140
  (678, 67801, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Meowstic (Female) - Giga Impact - TM152
  (678, 67801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Meowstic (Female) - Trick Room - TM161
  (678, 67801, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Meowstic (Female) - Hyper Beam - TM163
  (678, 67801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Meowstic (Female) - Tera Blast - TM171
  (678, 67801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Meowstic (Female) - Yawn - Egg
  (678, 67801, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Meowstic (Female) - Tickle - Egg
  (678, 67801, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Inkay - Tackle - Level 1
  (686, 68600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inkay - Peck - Level 1
  (686, 68600, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inkay - Hypnosis - Level 3
  (686, 68600, 95, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Inkay - Wrap - Level 6
  (686, 68600, 35, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Inkay - Payback - Level 9
  (686, 68600, 371, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Inkay - Pluck - Level 12
  (686, 68600, 365, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Inkay - Psybeam - Level 15
  (686, 68600, 60, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Inkay - Swagger - Level 18
  (686, 68600, 207, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Inkay - Slash - Level 21
  (686, 68600, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Inkay - Night Slash - Level 24
  (686, 68600, 400, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Inkay - Psycho Cut - Level 27
  (686, 68600, 427, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Inkay - Switcheroo - Level 31
  (686, 68600, 415, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Inkay - Foul Play - Level 33
  (686, 68600, 492, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Inkay - Topsy-Turvy - Level 36
  (686, 68600, 576, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Inkay - Superpower - Level 39
  (686, 68600, 276, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Inkay - Fake Tears - TM003
  (686, 68600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Inkay - Protect - TM007
  (686, 68600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Inkay - Psybeam - TM016
  (686, 68600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Inkay - Thief - TM018
  (686, 68600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Inkay - Facade - TM025
  (686, 68600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Inkay - Aerial Ace - TM027
  (686, 68600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Inkay - Swift - TM032
  (686, 68600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Inkay - Stored Power - TM041
  (686, 68600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Inkay - Fling - TM043
  (686, 68600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Inkay - Endure - TM047
  (686, 68600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Inkay - Sunny Day - TM049
  (686, 68600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Inkay - Rain Dance - TM050
  (686, 68600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Inkay - Psyshock - TM054
  (686, 68600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Inkay - Foul Play - TM062
  (686, 68600, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Inkay - Sleep Talk - TM070
  (686, 68600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Inkay - Reflect - TM074
  (686, 68600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Inkay - Light Screen - TM075
  (686, 68600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Inkay - Rest - TM085
  (686, 68600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Inkay - Rock Slide - TM086
  (686, 68600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Inkay - Taunt - TM087
  (686, 68600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Inkay - Dark Pulse - TM094
  (686, 68600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Inkay - Skill Swap - TM098
  (686, 68600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 37),
  -- Inkay - Substitute - TM103
  (686, 68600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Inkay - Trick - TM109
  (686, 68600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Inkay - Liquidation - TM110
  (686, 68600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Inkay - Psychic - TM120
  (686, 68600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Inkay - Flamethrower - TM125
  (686, 68600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Inkay - Thunderbolt - TM126
  (686, 68600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Inkay - Calm Mind - TM129
  (686, 68600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Inkay - Helping Hand - TM130
  (686, 68600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Inkay - Baton Pass - TM132
  (686, 68600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Inkay - Nasty Plot - TM140
  (686, 68600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 47),
  -- Inkay - Trick Room - TM161
  (686, 68600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 48),
  -- Inkay - Tera Blast - TM171
  (686, 68600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Inkay - Disable - Egg
  (686, 68600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Inkay - Destiny Bond - Egg
  (686, 68600, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Inkay - Acupressure - Egg
  (686, 68600, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Malamar - Tackle - Level 1
  (687, 68700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Malamar - Wrap - Level 1
  (687, 68700, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Malamar - Peck - Level 1
  (687, 68700, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Malamar - Hypnosis - Level 1
  (687, 68700, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Malamar - Reversal - Level 1
  (687, 68700, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Malamar - Payback - Level 9
  (687, 68700, 371, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Malamar - Pluck - Level 12
  (687, 68700, 365, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Malamar - Psybeam - Level 15
  (687, 68700, 60, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Malamar - Swagger - Level 18
  (687, 68700, 207, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Malamar - Slash - Level 21
  (687, 68700, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Malamar - Night Slash - Level 24
  (687, 68700, 400, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Malamar - Psycho Cut - Level 27
  (687, 68700, 427, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Malamar - Switcheroo - Level 33
  (687, 68700, 415, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Malamar - Foul Play - Level 37
  (687, 68700, 492, 23, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Malamar - Topsy-Turvy - Level 42
  (687, 68700, 576, 23, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Malamar - Superpower - Level 47
  (687, 68700, 276, 23, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Malamar - Fake Tears - TM003
  (687, 68700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Malamar - Scary Face - TM006
  (687, 68700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Malamar - Protect - TM007
  (687, 68700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Malamar - Psybeam - TM016
  (687, 68700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Malamar - Thief - TM018
  (687, 68700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Malamar - Trailblaze - TM020
  (687, 68700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Malamar - Facade - TM025
  (687, 68700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Malamar - Aerial Ace - TM027
  (687, 68700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Malamar - Swift - TM032
  (687, 68700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Malamar - Stored Power - TM041
  (687, 68700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Malamar - Fling - TM043
  (687, 68700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Malamar - Endure - TM047
  (687, 68700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Malamar - Sunny Day - TM049
  (687, 68700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Malamar - Rain Dance - TM050
  (687, 68700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Malamar - Psyshock - TM054
  (687, 68700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Malamar - Foul Play - TM062
  (687, 68700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Malamar - Sleep Talk - TM070
  (687, 68700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Malamar - Reflect - TM074
  (687, 68700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Malamar - Light Screen - TM075
  (687, 68700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Malamar - Rest - TM085
  (687, 68700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Malamar - Rock Slide - TM086
  (687, 68700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Malamar - Taunt - TM087
  (687, 68700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Malamar - Dark Pulse - TM094
  (687, 68700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Malamar - Skill Swap - TM098
  (687, 68700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Malamar - Substitute - TM103
  (687, 68700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Malamar - Trick - TM109
  (687, 68700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Malamar - Liquidation - TM110
  (687, 68700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Malamar - Psychic - TM120
  (687, 68700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Malamar - Flamethrower - TM125
  (687, 68700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Malamar - Thunderbolt - TM126
  (687, 68700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Malamar - Calm Mind - TM129
  (687, 68700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Malamar - Helping Hand - TM130
  (687, 68700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Malamar - Baton Pass - TM132
  (687, 68700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Malamar - Reversal - TM134
  (687, 68700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Malamar - Nasty Plot - TM140
  (687, 68700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Malamar - Giga Impact - TM152
  (687, 68700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Malamar - Trick Room - TM161
  (687, 68700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Malamar - Hyper Beam - TM163
  (687, 68700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Malamar - Tera Blast - TM171
  (687, 68700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Malamar - Disable - Egg
  (687, 68700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Malamar - Destiny Bond - Egg
  (687, 68700, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Malamar - Acupressure - Egg
  (687, 68700, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skrelp - Tackle - Level 1
  (690, 69000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skrelp - Smokescreen - Level 1
  (690, 69000, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skrelp - Acid - Level 5
  (690, 69000, 51, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Skrelp - Water Gun - Level 10
  (690, 69000, 55, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Skrelp - Tail Whip - Level 15
  (690, 69000, 39, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Skrelp - Double Team - Level 20
  (690, 69000, 104, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Skrelp - Poison Tail - Level 25
  (690, 69000, 342, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Skrelp - Water Pulse - Level 30
  (690, 69000, 352, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Skrelp - Toxic - Level 35
  (690, 69000, 92, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Skrelp - Dragon Pulse - Level 40
  (690, 69000, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Skrelp - Aqua Tail - Level 45
  (690, 69000, 401, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Skrelp - Sludge Bomb - Level 50
  (690, 69000, 188, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Skrelp - Hydro Pump - Level 55
  (690, 69000, 56, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Skrelp - Take Down - TM001
  (690, 69000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Skrelp - Mud-Slap - TM005
  (690, 69000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Skrelp - Scary Face - TM006
  (690, 69000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Skrelp - Protect - TM007
  (690, 69000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Skrelp - Water Pulse - TM011
  (690, 69000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Skrelp - Acid Spray - TM013
  (690, 69000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Skrelp - Thief - TM018
  (690, 69000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Skrelp - Chilling Water - TM022
  (690, 69000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Skrelp - Facade - TM025
  (690, 69000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Skrelp - Poison Tail - TM026
  (690, 69000, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 23),
  -- Skrelp - Icy Wind - TM034
  (690, 69000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Skrelp - Mud Shot - TM035
  (690, 69000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Skrelp - Dragon Tail - TM044
  (690, 69000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Skrelp - Venoshock - TM045
  (690, 69000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 27),
  -- Skrelp - Endure - TM047
  (690, 69000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Skrelp - Rain Dance - TM050
  (690, 69000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Skrelp - Snowscape - TM052
  (690, 69000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Skrelp - Sleep Talk - TM070
  (690, 69000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Skrelp - Waterfall - TM077
  (690, 69000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 32),
  -- Skrelp - Rest - TM085
  (690, 69000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Skrelp - Toxic Spikes - TM091
  (690, 69000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 34),
  -- Skrelp - Gunk Shot - TM102
  (690, 69000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 35),
  -- Skrelp - Substitute - TM103
  (690, 69000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Skrelp - Liquidation - TM110
  (690, 69000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Skrelp - Shadow Ball - TM114
  (690, 69000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Skrelp - Dragon Pulse - TM115
  (690, 69000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 39),
  -- Skrelp - Surf - TM123
  (690, 69000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Skrelp - Thunderbolt - TM126
  (690, 69000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Skrelp - Play Rough - TM127
  (690, 69000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Skrelp - Hydro Pump - TM142
  (690, 69000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Skrelp - Sludge Bomb - TM148
  (690, 69000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 44),
  -- Skrelp - Outrage - TM156
  (690, 69000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 45),
  -- Skrelp - Tera Blast - TM171
  (690, 69000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Skrelp - Haze - Egg
  (690, 69000, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Skrelp - Acid Armor - Egg
  (690, 69000, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Skrelp - Twister - Egg
  (690, 69000, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skrelp - Dragon Tail - Egg
  (690, 69000, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dragalge - Tackle - Level 1
  (691, 69100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragalge - Acid - Level 1
  (691, 69100, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragalge - Water Gun - Level 1
  (691, 69100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragalge - Smokescreen - Level 1
  (691, 69100, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragalge - Tail Whip - Level 15
  (691, 69100, 39, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragalge - Double Team - Level 20
  (691, 69100, 104, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragalge - Poison Tail - Level 25
  (691, 69100, 342, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragalge - Water Pulse - Level 30
  (691, 69100, 352, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dragalge - Toxic - Level 35
  (691, 69100, 92, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dragalge - Dragon Pulse - Level 40
  (691, 69100, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dragalge - Aqua Tail - Level 45
  (691, 69100, 401, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dragalge - Sludge Bomb - Level 52
  (691, 69100, 188, 23, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Dragalge - Hydro Pump - Level 59
  (691, 69100, 56, 23, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Dragalge - Outrage - Level 66
  (691, 69100, 200, 23, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Dragalge - Take Down - TM001
  (691, 69100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Dragalge - Mud-Slap - TM005
  (691, 69100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Dragalge - Scary Face - TM006
  (691, 69100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Dragalge - Protect - TM007
  (691, 69100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Dragalge - Water Pulse - TM011
  (691, 69100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Dragalge - Acid Spray - TM013
  (691, 69100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Dragalge - Thief - TM018
  (691, 69100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dragalge - Chilling Water - TM022
  (691, 69100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Dragalge - Facade - TM025
  (691, 69100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Dragalge - Poison Tail - TM026
  (691, 69100, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Dragalge - Icy Wind - TM034
  (691, 69100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Dragalge - Mud Shot - TM035
  (691, 69100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Dragalge - Venoshock - TM045
  (691, 69100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 27),
  -- Dragalge - Endure - TM047
  (691, 69100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Dragalge - Rain Dance - TM050
  (691, 69100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Dragalge - Snowscape - TM052
  (691, 69100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Dragalge - Sleep Talk - TM070
  (691, 69100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Dragalge - Waterfall - TM077
  (691, 69100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 32),
  -- Dragalge - Rest - TM085
  (691, 69100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Dragalge - Toxic Spikes - TM091
  (691, 69100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 34),
  -- Dragalge - Gunk Shot - TM102
  (691, 69100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 35),
  -- Dragalge - Substitute - TM103
  (691, 69100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Dragalge - Liquidation - TM110
  (691, 69100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Dragalge - Shadow Ball - TM114
  (691, 69100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Dragalge - Dragon Pulse - TM115
  (691, 69100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 39),
  -- Dragalge - Surf - TM123
  (691, 69100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Dragalge - Thunderbolt - TM126
  (691, 69100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Dragalge - Play Rough - TM127
  (691, 69100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Dragalge - Hydro Pump - TM142
  (691, 69100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Dragalge - Sludge Bomb - TM148
  (691, 69100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 44),
  -- Dragalge - Giga Impact - TM152
  (691, 69100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Dragalge - Outrage - TM156
  (691, 69100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Dragalge - Focus Blast - TM158
  (691, 69100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 47),
  -- Dragalge - Hyper Beam - TM163
  (691, 69100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Dragalge - Thunder - TM166
  (691, 69100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Dragalge - Draco Meteor - TM169
  (691, 69100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Dragalge - Tera Blast - TM171
  (691, 69100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Dragalge - Haze - Egg
  (691, 69100, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dragalge - Acid Armor - Egg
  (691, 69100, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dragalge - Twister - Egg
  (691, 69100, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dragalge - Dragon Tail - Egg
  (691, 69100, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Clauncher - Water Gun - Level 1
  (692, 69200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clauncher - Splash - Level 1
  (692, 69200, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clauncher - Vise Grip - Level 5
  (692, 69200, 11, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clauncher - Flail - Level 10
  (692, 69200, 175, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Clauncher - Aqua Jet - Level 15
  (692, 69200, 453, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Clauncher - Smack Down - Level 20
  (692, 69200, 479, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Clauncher - Hone Claws - Level 25
  (692, 69200, 468, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Clauncher - Water Pulse - Level 30
  (692, 69200, 352, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Clauncher - Swords Dance - Level 35
  (692, 69200, 14, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Clauncher - Aura Sphere - Level 40
  (692, 69200, 396, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Clauncher - Bounce - Level 45
  (692, 69200, 340, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Clauncher - Muddy Water - Level 50
  (692, 69200, 330, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Clauncher - Crabhammer - Level 55
  (692, 69200, 152, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Clauncher - Take Down - TM001
  (692, 69200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Clauncher - Mud-Slap - TM005
  (692, 69200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Clauncher - Protect - TM007
  (692, 69200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Clauncher - Water Pulse - TM011
  (692, 69200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Clauncher - Thief - TM018
  (692, 69200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Clauncher - Pounce - TM021
  (692, 69200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Clauncher - Chilling Water - TM022
  (692, 69200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Clauncher - Facade - TM025
  (692, 69200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Clauncher - Icy Wind - TM034
  (692, 69200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Clauncher - Mud Shot - TM035
  (692, 69200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Clauncher - Venoshock - TM045
  (692, 69200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 24),
  -- Clauncher - Endure - TM047
  (692, 69200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Clauncher - Rain Dance - TM050
  (692, 69200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Clauncher - U-turn - TM060
  (692, 69200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Clauncher - Sleep Talk - TM070
  (692, 69200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Clauncher - Waterfall - TM077
  (692, 69200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Clauncher - Rest - TM085
  (692, 69200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Clauncher - Rock Slide - TM086
  (692, 69200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 31),
  -- Clauncher - Swords Dance - TM088
  (692, 69200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Clauncher - Flash Cannon - TM093
  (692, 69200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Clauncher - Dark Pulse - TM094
  (692, 69200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Clauncher - Substitute - TM103
  (692, 69200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Clauncher - Liquidation - TM110
  (692, 69200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Clauncher - Aura Sphere - TM112
  (692, 69200, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 37),
  -- Clauncher - Dragon Pulse - TM115
  (692, 69200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 38),
  -- Clauncher - Surf - TM123
  (692, 69200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Clauncher - Helping Hand - TM130
  (692, 69200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Clauncher - Ice Beam - TM135
  (692, 69200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Clauncher - Hydro Pump - TM142
  (692, 69200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Clauncher - Blizzard - TM143
  (692, 69200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Clauncher - Tera Blast - TM171
  (692, 69200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Clauncher - Bubble Beam - Egg
  (692, 69200, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Clauncher - Aqua Tail - Egg
  (692, 69200, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Clauncher - Entrainment - Egg
  (692, 69200, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Clawitzer - Vise Grip - Level 1
  (693, 69300, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clawitzer - Water Gun - Level 1
  (693, 69300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clawitzer - Splash - Level 1
  (693, 69300, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clawitzer - Flail - Level 1
  (693, 69300, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clawitzer - Dark Pulse - Level 1
  (693, 69300, 399, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clawitzer - Dragon Pulse - Level 1
  (693, 69300, 406, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clawitzer - Heal Pulse - Level 1
  (693, 69300, 505, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Clawitzer - Aqua Jet - Level 15
  (693, 69300, 453, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Clawitzer - Smack Down - Level 20
  (693, 69300, 479, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Clawitzer - Hone Claws - Level 25
  (693, 69300, 468, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Clawitzer - Water Pulse - Level 30
  (693, 69300, 352, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Clawitzer - Swords Dance - Level 35
  (693, 69300, 14, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Clawitzer - Aura Sphere - Level 42
  (693, 69300, 396, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Clawitzer - Bounce - Level 49
  (693, 69300, 340, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Clawitzer - Muddy Water - Level 56
  (693, 69300, 330, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Clawitzer - Crabhammer - Level 63
  (693, 69300, 152, 23, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Clawitzer - Take Down - TM001
  (693, 69300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Clawitzer - Mud-Slap - TM005
  (693, 69300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Clawitzer - Scary Face - TM006
  (693, 69300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Clawitzer - Protect - TM007
  (693, 69300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Clawitzer - Water Pulse - TM011
  (693, 69300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Clawitzer - Thief - TM018
  (693, 69300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Clawitzer - Pounce - TM021
  (693, 69300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Clawitzer - Chilling Water - TM022
  (693, 69300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Clawitzer - Facade - TM025
  (693, 69300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Clawitzer - Icy Wind - TM034
  (693, 69300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Clawitzer - Mud Shot - TM035
  (693, 69300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Clawitzer - Venoshock - TM045
  (693, 69300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Clawitzer - Endure - TM047
  (693, 69300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Clawitzer - Rain Dance - TM050
  (693, 69300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Clawitzer - U-turn - TM060
  (693, 69300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Clawitzer - Body Slam - TM066
  (693, 69300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Clawitzer - Sleep Talk - TM070
  (693, 69300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Clawitzer - Waterfall - TM077
  (693, 69300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Clawitzer - Rest - TM085
  (693, 69300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Clawitzer - Rock Slide - TM086
  (693, 69300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Clawitzer - Swords Dance - TM088
  (693, 69300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Clawitzer - Flash Cannon - TM093
  (693, 69300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Clawitzer - Dark Pulse - TM094
  (693, 69300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Clawitzer - Substitute - TM103
  (693, 69300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Clawitzer - Liquidation - TM110
  (693, 69300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Clawitzer - Aura Sphere - TM112
  (693, 69300, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 42),
  -- Clawitzer - Shadow Ball - TM114
  (693, 69300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Clawitzer - Dragon Pulse - TM115
  (693, 69300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 44),
  -- Clawitzer - Surf - TM123
  (693, 69300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Clawitzer - Helping Hand - TM130
  (693, 69300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Clawitzer - Ice Beam - TM135
  (693, 69300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Clawitzer - Hydro Pump - TM142
  (693, 69300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 48),
  -- Clawitzer - Blizzard - TM143
  (693, 69300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 49),
  -- Clawitzer - Sludge Bomb - TM148
  (693, 69300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Clawitzer - Giga Impact - TM152
  (693, 69300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Clawitzer - Focus Blast - TM158
  (693, 69300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Clawitzer - Hyper Beam - TM163
  (693, 69300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Clawitzer - Tera Blast - TM171
  (693, 69300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Clawitzer - Bubble Beam - Egg
  (693, 69300, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Clawitzer - Aqua Tail - Egg
  (693, 69300, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Clawitzer - Entrainment - Egg
  (693, 69300, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sylveon - Tackle - Level 1
  (700, 70000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sylveon - Take Down - Level 1
  (700, 70000, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sylveon - Double-Edge - Level 1
  (700, 70000, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sylveon - Tail Whip - Level 1
  (700, 70000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sylveon - Bite - Level 1
  (700, 70000, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sylveon - Growl - Level 1
  (700, 70000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sylveon - Charm - Level 1
  (700, 70000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sylveon - Baton Pass - Level 1
  (700, 70000, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Sylveon - Helping Hand - Level 1
  (700, 70000, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Sylveon - Covet - Level 1
  (700, 70000, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Sylveon - Copycat - Level 1
  (700, 70000, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Sylveon - Sand Attack - Level 5
  (700, 70000, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 12),
  -- Sylveon - Quick Attack - Level 10
  (700, 70000, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 13),
  -- Sylveon - Baby-Doll Eyes - Level 15
  (700, 70000, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Sylveon - Swift - Level 20
  (700, 70000, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Sylveon - Light Screen - Level 25
  (700, 70000, 113, 23, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Sylveon - Draining Kiss - Level 30
  (700, 70000, 577, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Sylveon - Misty Terrain - Level 35
  (700, 70000, 581, 23, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Sylveon - Skill Swap - Level 40
  (700, 70000, 285, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Sylveon - Psych Up - Level 45
  (700, 70000, 244, 23, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Sylveon - Moonblast - Level 50
  (700, 70000, 585, 23, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Sylveon - Last Resort - Level 55
  (700, 70000, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Sylveon - Take Down - TM001
  (700, 70000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Sylveon - Charm - TM002
  (700, 70000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Sylveon - Fake Tears - TM003
  (700, 70000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 25),
  -- Sylveon - Mud-Slap - TM005
  (700, 70000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Sylveon - Protect - TM007
  (700, 70000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 27),
  -- Sylveon - Disarming Voice - TM019
  (700, 70000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 28),
  -- Sylveon - Trailblaze - TM020
  (700, 70000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Sylveon - Facade - TM025
  (700, 70000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Sylveon - Swift - TM032
  (700, 70000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Sylveon - Magical Leaf - TM033
  (700, 70000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 32),
  -- Sylveon - Draining Kiss - TM037
  (700, 70000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 33),
  -- Sylveon - Stored Power - TM041
  (700, 70000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 34),
  -- Sylveon - Endure - TM047
  (700, 70000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Sylveon - Sunny Day - TM049
  (700, 70000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 36),
  -- Sylveon - Rain Dance - TM050
  (700, 70000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 37),
  -- Sylveon - Psyshock - TM054
  (700, 70000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 38),
  -- Sylveon - Dig - TM055
  (700, 70000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Sylveon - Body Slam - TM066
  (700, 70000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Sylveon - Sleep Talk - TM070
  (700, 70000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Sylveon - Reflect - TM074
  (700, 70000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 42),
  -- Sylveon - Light Screen - TM075
  (700, 70000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 43),
  -- Sylveon - Dazzling Gleam - TM079
  (700, 70000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 44),
  -- Sylveon - Rest - TM085
  (700, 70000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Sylveon - Skill Swap - TM098
  (700, 70000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 46),
  -- Sylveon - Substitute - TM103
  (700, 70000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Sylveon - Shadow Ball - TM114
  (700, 70000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Sylveon - Hyper Voice - TM117
  (700, 70000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Sylveon - Psychic - TM120
  (700, 70000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 50),
  -- Sylveon - Play Rough - TM127
  (700, 70000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 51),
  -- Sylveon - Calm Mind - TM129
  (700, 70000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 52),
  -- Sylveon - Helping Hand - TM130
  (700, 70000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Sylveon - Baton Pass - TM132
  (700, 70000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Sylveon - Misty Terrain - TM139
  (700, 70000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 55),
  -- Sylveon - Giga Impact - TM152
  (700, 70000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Sylveon - Hyper Beam - TM163
  (700, 70000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Sylveon - Tera Blast - TM171
  (700, 70000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Sylveon - Double Kick - Egg
  (700, 70000, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sylveon - Curse - Egg
  (700, 70000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sylveon - Flail - Egg
  (700, 70000, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sylveon - Mud-Slap - Egg
  (700, 70000, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sylveon - Detect - Egg
  (700, 70000, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sylveon - Wish - Egg
  (700, 70000, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sylveon - Yawn - Egg
  (700, 70000, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sylveon - Tickle - Egg
  (700, 70000, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sylveon - Disarming Voice - Evolution
  (700, 70000, 574, 23, NULL, 7, NULL, NULL, NULL, NULL, 67);
