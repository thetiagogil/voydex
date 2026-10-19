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
-- Scarlet / Violet learnsets for species 1001-1050.
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
  -- Wo-Chien - Absorb - Level 1
  (1001, 100100, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wo-Chien - Spite - Level 1
  (1001, 100100, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wo-Chien - Mean Look - Level 1
  (1001, 100100, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wo-Chien - Tickle - Level 5
  (1001, 100100, 321, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Wo-Chien - Payback - Level 10
  (1001, 100100, 371, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Wo-Chien - Poison Powder - Level 15
  (1001, 100100, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wo-Chien - Stun Spore - Level 15
  (1001, 100100, 78, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wo-Chien - Mega Drain - Level 20
  (1001, 100100, 72, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wo-Chien - Leech Seed - Level 25
  (1001, 100100, 73, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wo-Chien - Growth - Level 30
  (1001, 100100, 74, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wo-Chien - Ingrain - Level 35
  (1001, 100100, 275, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Wo-Chien - Dark Pulse - Level 40
  (1001, 100100, 399, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wo-Chien - Giga Drain - Level 45
  (1001, 100100, 202, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Wo-Chien - Ruination - Level 50
  (1001, 100100, 877, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Wo-Chien - Foul Play - Level 55
  (1001, 100100, 492, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Wo-Chien - Power Whip - Level 60
  (1001, 100100, 438, 23, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Wo-Chien - Grassy Terrain - Level 65
  (1001, 100100, 580, 23, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Wo-Chien - Knock Off - Level 70
  (1001, 100100, 282, 23, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Wo-Chien - Leaf Storm - Level 75
  (1001, 100100, 437, 23, NULL, 1, 75, NULL, NULL, NULL, 19),
  -- Wo-Chien - Take Down - TM001
  (1001, 100100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Wo-Chien - Mud-Slap - TM005
  (1001, 100100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Wo-Chien - Scary Face - TM006
  (1001, 100100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Wo-Chien - Protect - TM007
  (1001, 100100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Wo-Chien - Trailblaze - TM020
  (1001, 100100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Wo-Chien - Facade - TM025
  (1001, 100100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Wo-Chien - Hex - TM029
  (1001, 100100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Wo-Chien - Snarl - TM030
  (1001, 100100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Wo-Chien - Magical Leaf - TM033
  (1001, 100100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 28),
  -- Wo-Chien - Mud Shot - TM035
  (1001, 100100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Wo-Chien - Endure - TM047
  (1001, 100100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Wo-Chien - Sunny Day - TM049
  (1001, 100100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Wo-Chien - Rain Dance - TM050
  (1001, 100100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Wo-Chien - Bullet Seed - TM056
  (1001, 100100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Wo-Chien - Zen Headbutt - TM059
  (1001, 100100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Wo-Chien - Foul Play - TM062
  (1001, 100100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Wo-Chien - Body Slam - TM066
  (1001, 100100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Wo-Chien - Sleep Talk - TM070
  (1001, 100100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Wo-Chien - Seed Bomb - TM071
  (1001, 100100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Wo-Chien - Reflect - TM074
  (1001, 100100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Wo-Chien - Light Screen - TM075
  (1001, 100100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Wo-Chien - Grass Knot - TM081
  (1001, 100100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Wo-Chien - Rest - TM085
  (1001, 100100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Wo-Chien - Taunt - TM087
  (1001, 100100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Wo-Chien - Body Press - TM089
  (1001, 100100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Wo-Chien - Dark Pulse - TM094
  (1001, 100100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 45),
  -- Wo-Chien - Substitute - TM103
  (1001, 100100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Wo-Chien - Giga Drain - TM111
  (1001, 100100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Wo-Chien - Energy Ball - TM119
  (1001, 100100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 48),
  -- Wo-Chien - Pollen Puff - TM131
  (1001, 100100, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 49),
  -- Wo-Chien - Grassy Terrain - TM137
  (1001, 100100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 50),
  -- Wo-Chien - Giga Impact - TM152
  (1001, 100100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Wo-Chien - Leaf Storm - TM159
  (1001, 100100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Wo-Chien - Hyper Beam - TM163
  (1001, 100100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Wo-Chien - Solar Beam - TM168
  (1001, 100100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Wo-Chien - Tera Blast - TM171
  (1001, 100100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Chien-Pao - Spite - Level 1
  (1002, 100200, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chien-Pao - Powder Snow - Level 1
  (1002, 100200, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chien-Pao - Mean Look - Level 1
  (1002, 100200, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chien-Pao - Icy Wind - Level 5
  (1002, 100200, 196, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Chien-Pao - Payback - Level 10
  (1002, 100200, 371, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Chien-Pao - Mist - Level 15
  (1002, 100200, 54, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chien-Pao - Haze - Level 15
  (1002, 100200, 114, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Chien-Pao - Ice Shard - Level 20
  (1002, 100200, 420, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Chien-Pao - Swords Dance - Level 25
  (1002, 100200, 14, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Chien-Pao - Snowscape - Level 30
  (1002, 100200, 883, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Chien-Pao - Night Slash - Level 35
  (1002, 100200, 400, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Chien-Pao - Dark Pulse - Level 40
  (1002, 100200, 399, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Chien-Pao - Icicle Crash - Level 45
  (1002, 100200, 556, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Chien-Pao - Ruination - Level 50
  (1002, 100200, 877, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Chien-Pao - Sucker Punch - Level 55
  (1002, 100200, 389, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Chien-Pao - Sacred Sword - Level 60
  (1002, 100200, 533, 23, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Chien-Pao - Recover - Level 65
  (1002, 100200, 105, 23, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Chien-Pao - Throat Chop - Level 70
  (1002, 100200, 675, 23, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Chien-Pao - Sheer Cold - Level 75
  (1002, 100200, 329, 23, NULL, 1, 75, NULL, NULL, NULL, 19),
  -- Chien-Pao - Take Down - TM001
  (1002, 100200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Chien-Pao - Scary Face - TM006
  (1002, 100200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Chien-Pao - Protect - TM007
  (1002, 100200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Chien-Pao - Ice Fang - TM010
  (1002, 100200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Chien-Pao - Acrobatics - TM014
  (1002, 100200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 24),
  -- Chien-Pao - Facade - TM025
  (1002, 100200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Chien-Pao - Aerial Ace - TM027
  (1002, 100200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Chien-Pao - Hex - TM029
  (1002, 100200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Chien-Pao - Snarl - TM030
  (1002, 100200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Chien-Pao - Icy Wind - TM034
  (1002, 100200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Chien-Pao - Avalanche - TM046
  (1002, 100200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 30),
  -- Chien-Pao - Endure - TM047
  (1002, 100200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Chien-Pao - Rain Dance - TM050
  (1002, 100200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Chien-Pao - Snowscape - TM052
  (1002, 100200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Chien-Pao - False Swipe - TM057
  (1002, 100200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Chien-Pao - Brick Break - TM058
  (1002, 100200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Chien-Pao - Psychic Fangs - TM063
  (1002, 100200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Chien-Pao - Sleep Talk - TM070
  (1002, 100200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Chien-Pao - Rest - TM085
  (1002, 100200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Chien-Pao - Taunt - TM087
  (1002, 100200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Chien-Pao - Swords Dance - TM088
  (1002, 100200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Chien-Pao - Dark Pulse - TM094
  (1002, 100200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Chien-Pao - Substitute - TM103
  (1002, 100200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Chien-Pao - Crunch - TM108
  (1002, 100200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Chien-Pao - Ice Spinner - TM124
  (1002, 100200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 44),
  -- Chien-Pao - Blizzard - TM143
  (1002, 100200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Chien-Pao - Giga Impact - TM152
  (1002, 100200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Chien-Pao - Hyper Beam - TM163
  (1002, 100200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Chien-Pao - Tera Blast - TM171
  (1002, 100200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Ting-Lu - Spite - Level 1
  (1003, 100300, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ting-Lu - Mean Look - Level 1
  (1003, 100300, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ting-Lu - Sand Tomb - Level 1
  (1003, 100300, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ting-Lu - Spikes - Level 5
  (1003, 100300, 191, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Ting-Lu - Payback - Level 10
  (1003, 100300, 371, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Ting-Lu - Stomp - Level 15
  (1003, 100300, 23, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ting-Lu - Bulldoze - Level 20
  (1003, 100300, 523, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ting-Lu - Whirlwind - Level 25
  (1003, 100300, 18, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ting-Lu - Taunt - Level 30
  (1003, 100300, 269, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ting-Lu - Thrash - Level 35
  (1003, 100300, 37, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Ting-Lu - Dark Pulse - Level 40
  (1003, 100300, 399, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Ting-Lu - Stomping Tantrum - Level 45
  (1003, 100300, 707, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Ting-Lu - Ruination - Level 50
  (1003, 100300, 877, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Ting-Lu - Throat Chop - Level 55
  (1003, 100300, 675, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Ting-Lu - Rock Slide - Level 60
  (1003, 100300, 157, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Ting-Lu - Memento - Level 65
  (1003, 100300, 262, 23, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Ting-Lu - Earthquake - Level 70
  (1003, 100300, 89, 23, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Ting-Lu - Fissure - Level 75
  (1003, 100300, 90, 23, NULL, 1, 75, NULL, NULL, NULL, 18),
  -- Ting-Lu - Take Down - TM001
  (1003, 100300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Ting-Lu - Mud-Slap - TM005
  (1003, 100300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Ting-Lu - Scary Face - TM006
  (1003, 100300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Ting-Lu - Protect - TM007
  (1003, 100300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Ting-Lu - Facade - TM025
  (1003, 100300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Ting-Lu - Bulldoze - TM028
  (1003, 100300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Ting-Lu - Hex - TM029
  (1003, 100300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Ting-Lu - Snarl - TM030
  (1003, 100300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Ting-Lu - Mud Shot - TM035
  (1003, 100300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Ting-Lu - Rock Tomb - TM036
  (1003, 100300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Ting-Lu - Endure - TM047
  (1003, 100300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Ting-Lu - Sunny Day - TM049
  (1003, 100300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Ting-Lu - Sandstorm - TM051
  (1003, 100300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Ting-Lu - Dig - TM055
  (1003, 100300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Ting-Lu - Zen Headbutt - TM059
  (1003, 100300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Ting-Lu - Body Slam - TM066
  (1003, 100300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Ting-Lu - Sleep Talk - TM070
  (1003, 100300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Ting-Lu - Stomping Tantrum - TM084
  (1003, 100300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Ting-Lu - Rest - TM085
  (1003, 100300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Ting-Lu - Rock Slide - TM086
  (1003, 100300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Ting-Lu - Taunt - TM087
  (1003, 100300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Ting-Lu - Body Press - TM089
  (1003, 100300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Ting-Lu - Spikes - TM090
  (1003, 100300, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Ting-Lu - Dark Pulse - TM094
  (1003, 100300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Ting-Lu - Substitute - TM103
  (1003, 100300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Ting-Lu - Stealth Rock - TM116
  (1003, 100300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Ting-Lu - Heavy Slam - TM121
  (1003, 100300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Ting-Lu - Earth Power - TM133
  (1003, 100300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Ting-Lu - Earthquake - TM149
  (1003, 100300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Ting-Lu - Stone Edge - TM150
  (1003, 100300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Ting-Lu - Giga Impact - TM152
  (1003, 100300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Ting-Lu - Hyper Beam - TM163
  (1003, 100300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Ting-Lu - Tera Blast - TM171
  (1003, 100300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Chi-Yu - Ember - Level 1
  (1004, 100400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chi-Yu - Spite - Level 1
  (1004, 100400, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chi-Yu - Mean Look - Level 1
  (1004, 100400, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chi-Yu - Flame Wheel - Level 5
  (1004, 100400, 172, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Chi-Yu - Payback - Level 10
  (1004, 100400, 371, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Chi-Yu - Will-O-Wisp - Level 15
  (1004, 100400, 261, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chi-Yu - Flame Charge - Level 20
  (1004, 100400, 488, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chi-Yu - Incinerate - Level 25
  (1004, 100400, 510, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chi-Yu - Confuse Ray - Level 30
  (1004, 100400, 109, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Chi-Yu - Nasty Plot - Level 35
  (1004, 100400, 417, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Chi-Yu - Dark Pulse - Level 40
  (1004, 100400, 399, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Chi-Yu - Lava Plume - Level 45
  (1004, 100400, 436, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Chi-Yu - Ruination - Level 50
  (1004, 100400, 877, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Chi-Yu - Bounce - Level 55
  (1004, 100400, 340, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Chi-Yu - Swagger - Level 60
  (1004, 100400, 207, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Chi-Yu - Inferno - Level 65
  (1004, 100400, 517, 23, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Chi-Yu - Memento - Level 70
  (1004, 100400, 262, 23, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Chi-Yu - Overheat - Level 75
  (1004, 100400, 315, 23, NULL, 1, 75, NULL, NULL, NULL, 18),
  -- Chi-Yu - Take Down - TM001
  (1004, 100400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Chi-Yu - Scary Face - TM006
  (1004, 100400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Chi-Yu - Protect - TM007
  (1004, 100400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Chi-Yu - Confuse Ray - TM017
  (1004, 100400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Chi-Yu - Fire Spin - TM024
  (1004, 100400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Chi-Yu - Facade - TM025
  (1004, 100400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Chi-Yu - Hex - TM029
  (1004, 100400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Chi-Yu - Snarl - TM030
  (1004, 100400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Chi-Yu - Flame Charge - TM038
  (1004, 100400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 27),
  -- Chi-Yu - Endure - TM047
  (1004, 100400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Chi-Yu - Sunny Day - TM049
  (1004, 100400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Chi-Yu - Zen Headbutt - TM059
  (1004, 100400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Chi-Yu - Sleep Talk - TM070
  (1004, 100400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Chi-Yu - Reflect - TM074
  (1004, 100400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Chi-Yu - Light Screen - TM075
  (1004, 100400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Chi-Yu - Rest - TM085
  (1004, 100400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Chi-Yu - Taunt - TM087
  (1004, 100400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Chi-Yu - Dark Pulse - TM094
  (1004, 100400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Chi-Yu - Substitute - TM103
  (1004, 100400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Chi-Yu - Will-O-Wisp - TM107
  (1004, 100400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Chi-Yu - Crunch - TM108
  (1004, 100400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Chi-Yu - Heat Wave - TM118
  (1004, 100400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Chi-Yu - Psychic - TM120
  (1004, 100400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Chi-Yu - Flamethrower - TM125
  (1004, 100400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Chi-Yu - Nasty Plot - TM140
  (1004, 100400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 43),
  -- Chi-Yu - Fire Blast - TM141
  (1004, 100400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Chi-Yu - Giga Impact - TM152
  (1004, 100400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Chi-Yu - Overheat - TM157
  (1004, 100400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 46),
  -- Chi-Yu - Hyper Beam - TM163
  (1004, 100400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Chi-Yu - Flare Blitz - TM165
  (1004, 100400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 48),
  -- Chi-Yu - Tera Blast - TM171
  (1004, 100400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Roaring Moon - Leer - Level 1
  (1005, 100500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roaring Moon - Bite - Level 1
  (1005, 100500, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roaring Moon - Focus Energy - Level 1
  (1005, 100500, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roaring Moon - Dragon Breath - Level 1
  (1005, 100500, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roaring Moon - Incinerate - Level 7
  (1005, 100500, 510, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Roaring Moon - Headbutt - Level 14
  (1005, 100500, 29, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Roaring Moon - Scary Face - Level 21
  (1005, 100500, 184, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Roaring Moon - Dragon Claw - Level 28
  (1005, 100500, 337, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Roaring Moon - Zen Headbutt - Level 35
  (1005, 100500, 428, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Roaring Moon - Flamethrower - Level 42
  (1005, 100500, 53, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Roaring Moon - Night Slash - Level 49
  (1005, 100500, 400, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Roaring Moon - Dragon Dance - Level 56
  (1005, 100500, 349, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Roaring Moon - Dragon Rush - Level 63
  (1005, 100500, 407, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Roaring Moon - Fly - Level 70
  (1005, 100500, 19, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Roaring Moon - Throat Chop - Level 77
  (1005, 100500, 675, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Roaring Moon - Roost - Level 84
  (1005, 100500, 355, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Roaring Moon - Double-Edge - Level 91
  (1005, 100500, 38, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Roaring Moon - Take Down - TM001
  (1005, 100500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Roaring Moon - Scary Face - TM006
  (1005, 100500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Roaring Moon - Protect - TM007
  (1005, 100500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Roaring Moon - Fire Fang - TM008
  (1005, 100500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Roaring Moon - Thunder Fang - TM009
  (1005, 100500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Roaring Moon - Acrobatics - TM014
  (1005, 100500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Roaring Moon - Fire Spin - TM024
  (1005, 100500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 24),
  -- Roaring Moon - Facade - TM025
  (1005, 100500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Roaring Moon - Aerial Ace - TM027
  (1005, 100500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Roaring Moon - Snarl - TM030
  (1005, 100500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Roaring Moon - Metal Claw - TM031
  (1005, 100500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Roaring Moon - Dragon Tail - TM044
  (1005, 100500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Roaring Moon - Endure - TM047
  (1005, 100500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Roaring Moon - Sunny Day - TM049
  (1005, 100500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Roaring Moon - Dig - TM055
  (1005, 100500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Roaring Moon - Brick Break - TM058
  (1005, 100500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Roaring Moon - Zen Headbutt - TM059
  (1005, 100500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Roaring Moon - U-turn - TM060
  (1005, 100500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Roaring Moon - Shadow Claw - TM061
  (1005, 100500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Roaring Moon - Air Slash - TM065
  (1005, 100500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Roaring Moon - Body Slam - TM066
  (1005, 100500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Roaring Moon - Sleep Talk - TM070
  (1005, 100500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Roaring Moon - Dragon Claw - TM078
  (1005, 100500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Roaring Moon - Stomping Tantrum - TM084
  (1005, 100500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 41),
  -- Roaring Moon - Rest - TM085
  (1005, 100500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Roaring Moon - Rock Slide - TM086
  (1005, 100500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Roaring Moon - Taunt - TM087
  (1005, 100500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Roaring Moon - Body Press - TM089
  (1005, 100500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 45),
  -- Roaring Moon - Dark Pulse - TM094
  (1005, 100500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Roaring Moon - Fly - TM097
  (1005, 100500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 47),
  -- Roaring Moon - Iron Head - TM099
  (1005, 100500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Roaring Moon - Dragon Dance - TM100
  (1005, 100500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 49),
  -- Roaring Moon - Substitute - TM103
  (1005, 100500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Roaring Moon - X-Scissor - TM105
  (1005, 100500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 51),
  -- Roaring Moon - Crunch - TM108
  (1005, 100500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 52),
  -- Roaring Moon - Tailwind - TM113
  (1005, 100500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 53),
  -- Roaring Moon - Dragon Pulse - TM115
  (1005, 100500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 54),
  -- Roaring Moon - Hyper Voice - TM117
  (1005, 100500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 55),
  -- Roaring Moon - Heat Wave - TM118
  (1005, 100500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 56),
  -- Roaring Moon - Flamethrower - TM125
  (1005, 100500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 57),
  -- Roaring Moon - Fire Blast - TM141
  (1005, 100500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 58),
  -- Roaring Moon - Hydro Pump - TM142
  (1005, 100500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 59),
  -- Roaring Moon - Earthquake - TM149
  (1005, 100500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Roaring Moon - Stone Edge - TM150
  (1005, 100500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Roaring Moon - Giga Impact - TM152
  (1005, 100500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Roaring Moon - Outrage - TM156
  (1005, 100500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 63),
  -- Roaring Moon - Hurricane - TM160
  (1005, 100500, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 64),
  -- Roaring Moon - Hyper Beam - TM163
  (1005, 100500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Roaring Moon - Draco Meteor - TM169
  (1005, 100500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 66),
  -- Roaring Moon - Tera Blast - TM171
  (1005, 100500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Roaring Moon - Sunny Day - Reminder
  (1005, 100500, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Roaring Moon - Jaw Lock - Reminder
  (1005, 100500, 746, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Roaring Moon - Breaking Swipe - Reminder
  (1005, 100500, 784, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Roaring Moon - Scale Shot - Reminder
  (1005, 100500, 799, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Iron Valiant - Disable - Level 1
  (1006, 100600, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Valiant - Double Team - Level 1
  (1006, 100600, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Valiant - Fury Cutter - Level 1
  (1006, 100600, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Valiant - Shadow Sneak - Level 1
  (1006, 100600, 425, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Valiant - Hypnosis - Level 7
  (1006, 100600, 95, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Valiant - Feint - Level 14
  (1006, 100600, 364, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Valiant - Future Sight - Level 21
  (1006, 100600, 248, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Valiant - Dazzling Gleam - Level 28
  (1006, 100600, 605, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Valiant - Psycho Cut - Level 35
  (1006, 100600, 427, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Valiant - Night Slash - Level 42
  (1006, 100600, 400, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Valiant - Leaf Blade - Level 49
  (1006, 100600, 348, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Valiant - Moonblast - Level 56
  (1006, 100600, 585, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Valiant - Close Combat - Level 63
  (1006, 100600, 370, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Valiant - Knock Off - Level 70
  (1006, 100600, 282, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Valiant - Destiny Bond - Level 77
  (1006, 100600, 194, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Valiant - Wide Guard - Level 84
  (1006, 100600, 469, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Valiant - Quick Guard - Level 84
  (1006, 100600, 501, 23, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Iron Valiant - Spirit Break - Level 91
  (1006, 100600, 789, 23, NULL, 1, 91, NULL, NULL, NULL, 18),
  -- Iron Valiant - Agility - TM004
  (1006, 100600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Iron Valiant - Protect - TM007
  (1006, 100600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Valiant - Low Kick - TM012
  (1006, 100600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Iron Valiant - Psybeam - TM016
  (1006, 100600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Iron Valiant - Confuse Ray - TM017
  (1006, 100600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Iron Valiant - Charge Beam - TM023
  (1006, 100600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Iron Valiant - Aerial Ace - TM027
  (1006, 100600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Iron Valiant - Hex - TM029
  (1006, 100600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Iron Valiant - Swift - TM032
  (1006, 100600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Iron Valiant - Magical Leaf - TM033
  (1006, 100600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 28),
  -- Iron Valiant - Icy Wind - TM034
  (1006, 100600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Iron Valiant - Stored Power - TM041
  (1006, 100600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 30),
  -- Iron Valiant - Fling - TM043
  (1006, 100600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Iron Valiant - Endure - TM047
  (1006, 100600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Iron Valiant - Psyshock - TM054
  (1006, 100600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Iron Valiant - False Swipe - TM057
  (1006, 100600, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Iron Valiant - Brick Break - TM058
  (1006, 100600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Iron Valiant - Zen Headbutt - TM059
  (1006, 100600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Iron Valiant - Shadow Claw - TM061
  (1006, 100600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Iron Valiant - Fire Punch - TM067
  (1006, 100600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Iron Valiant - Thunder Punch - TM068
  (1006, 100600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Iron Valiant - Ice Punch - TM069
  (1006, 100600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Iron Valiant - Sleep Talk - TM070
  (1006, 100600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Iron Valiant - Drain Punch - TM073
  (1006, 100600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Iron Valiant - Reflect - TM074
  (1006, 100600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Iron Valiant - Light Screen - TM075
  (1006, 100600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Iron Valiant - Dazzling Gleam - TM079
  (1006, 100600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 45),
  -- Iron Valiant - Metronome - TM080
  (1006, 100600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 46),
  -- Iron Valiant - Grass Knot - TM081
  (1006, 100600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Iron Valiant - Thunder Wave - TM082
  (1006, 100600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Iron Valiant - Poison Jab - TM083
  (1006, 100600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 49),
  -- Iron Valiant - Rest - TM085
  (1006, 100600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Iron Valiant - Taunt - TM087
  (1006, 100600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Iron Valiant - Swords Dance - TM088
  (1006, 100600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 52),
  -- Iron Valiant - Imprison - TM092
  (1006, 100600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 53),
  -- Iron Valiant - Skill Swap - TM098
  (1006, 100600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 54),
  -- Iron Valiant - Substitute - TM103
  (1006, 100600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Iron Valiant - X-Scissor - TM105
  (1006, 100600, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 56),
  -- Iron Valiant - Trick - TM109
  (1006, 100600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 57),
  -- Iron Valiant - Liquidation - TM110
  (1006, 100600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 58),
  -- Iron Valiant - Aura Sphere - TM112
  (1006, 100600, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 59),
  -- Iron Valiant - Shadow Ball - TM114
  (1006, 100600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 60),
  -- Iron Valiant - Hyper Voice - TM117
  (1006, 100600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 61),
  -- Iron Valiant - Energy Ball - TM119
  (1006, 100600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 62),
  -- Iron Valiant - Psychic - TM120
  (1006, 100600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 63),
  -- Iron Valiant - Encore - TM122
  (1006, 100600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 64),
  -- Iron Valiant - Thunderbolt - TM126
  (1006, 100600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 65),
  -- Iron Valiant - Calm Mind - TM129
  (1006, 100600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 66),
  -- Iron Valiant - Helping Hand - TM130
  (1006, 100600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Iron Valiant - Reversal - TM134
  (1006, 100600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 68),
  -- Iron Valiant - Electric Terrain - TM136
  (1006, 100600, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 69),
  -- Iron Valiant - Psychic Terrain - TM138
  (1006, 100600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 70),
  -- Iron Valiant - Misty Terrain - TM139
  (1006, 100600, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 71),
  -- Iron Valiant - Giga Impact - TM152
  (1006, 100600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 72),
  -- Iron Valiant - Focus Blast - TM158
  (1006, 100600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 73),
  -- Iron Valiant - Trick Room - TM161
  (1006, 100600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 74),
  -- Iron Valiant - Hyper Beam - TM163
  (1006, 100600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 75),
  -- Iron Valiant - Close Combat - TM167
  (1006, 100600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 76),
  -- Iron Valiant - Tera Blast - TM171
  (1006, 100600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 77),
  -- Iron Valiant - Electric Terrain - Reminder
  (1006, 100600, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Koraidon - Sunny Day - Level 1
  (1007, 100700, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koraidon - Breaking Swipe - Level 1
  (1007, 100700, 784, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koraidon - Rock Smash - Level 7
  (1007, 100700, 249, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Koraidon - Ancient Power - Level 14
  (1007, 100700, 246, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Koraidon - Drain Punch - Level 21
  (1007, 100700, 409, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Koraidon - Brick Break - Level 28
  (1007, 100700, 280, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Koraidon - Agility - Level 35
  (1007, 100700, 97, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Koraidon - Dragon Claw - Level 42
  (1007, 100700, 337, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Koraidon - Flamethrower - Level 49
  (1007, 100700, 53, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Koraidon - Collision Course - Level 56
  (1007, 100700, 878, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Koraidon - Screech - Level 63
  (1007, 100700, 103, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Koraidon - Counter - Level 70
  (1007, 100700, 68, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Koraidon - Outrage - Level 77
  (1007, 100700, 200, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Koraidon - Close Combat - Level 84
  (1007, 100700, 370, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Koraidon - Flare Blitz - Level 91
  (1007, 100700, 394, 23, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Koraidon - Giga Impact - Level 98
  (1007, 100700, 416, 23, NULL, 1, 98, NULL, NULL, NULL, 16),
  -- Koraidon - Take Down - TM001
  (1007, 100700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Koraidon - Agility - TM004
  (1007, 100700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Koraidon - Mud-Slap - TM005
  (1007, 100700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Koraidon - Scary Face - TM006
  (1007, 100700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Koraidon - Protect - TM007
  (1007, 100700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Koraidon - Fire Fang - TM008
  (1007, 100700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Koraidon - Thunder Fang - TM009
  (1007, 100700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Koraidon - Ice Fang - TM010
  (1007, 100700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Koraidon - Low Kick - TM012
  (1007, 100700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 25),
  -- Koraidon - Acrobatics - TM014
  (1007, 100700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 26),
  -- Koraidon - Fire Spin - TM024
  (1007, 100700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 27),
  -- Koraidon - Facade - TM025
  (1007, 100700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Koraidon - Bulldoze - TM028
  (1007, 100700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 29),
  -- Koraidon - Snarl - TM030
  (1007, 100700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 30),
  -- Koraidon - Mud Shot - TM035
  (1007, 100700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Koraidon - Flame Charge - TM038
  (1007, 100700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 32),
  -- Koraidon - Low Sweep - TM039
  (1007, 100700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 33),
  -- Koraidon - Dragon Tail - TM044
  (1007, 100700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 34),
  -- Koraidon - Endure - TM047
  (1007, 100700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Koraidon - Sunny Day - TM049
  (1007, 100700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 36),
  -- Koraidon - Dig - TM055
  (1007, 100700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Koraidon - Brick Break - TM058
  (1007, 100700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Koraidon - Zen Headbutt - TM059
  (1007, 100700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 39),
  -- Koraidon - U-turn - TM060
  (1007, 100700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 40),
  -- Koraidon - Shadow Claw - TM061
  (1007, 100700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 41),
  -- Koraidon - Bulk Up - TM064
  (1007, 100700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 42),
  -- Koraidon - Body Slam - TM066
  (1007, 100700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Koraidon - Sleep Talk - TM070
  (1007, 100700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Koraidon - Drain Punch - TM073
  (1007, 100700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 45),
  -- Koraidon - Dragon Claw - TM078
  (1007, 100700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 46),
  -- Koraidon - Stomping Tantrum - TM084
  (1007, 100700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 47),
  -- Koraidon - Rest - TM085
  (1007, 100700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Koraidon - Taunt - TM087
  (1007, 100700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Koraidon - Swords Dance - TM088
  (1007, 100700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 50),
  -- Koraidon - Body Press - TM089
  (1007, 100700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 51),
  -- Koraidon - Iron Head - TM099
  (1007, 100700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 52),
  -- Koraidon - Substitute - TM103
  (1007, 100700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Koraidon - Crunch - TM108
  (1007, 100700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 54),
  -- Koraidon - Dragon Pulse - TM115
  (1007, 100700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Koraidon - Heat Wave - TM118
  (1007, 100700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 56),
  -- Koraidon - Heavy Slam - TM121
  (1007, 100700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 57),
  -- Koraidon - Flamethrower - TM125
  (1007, 100700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 58),
  -- Koraidon - Helping Hand - TM130
  (1007, 100700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Koraidon - Reversal - TM134
  (1007, 100700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 60),
  -- Koraidon - Fire Blast - TM141
  (1007, 100700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 61),
  -- Koraidon - Wild Charge - TM147
  (1007, 100700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 62),
  -- Koraidon - Giga Impact - TM152
  (1007, 100700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Koraidon - Outrage - TM156
  (1007, 100700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 64),
  -- Koraidon - Overheat - TM157
  (1007, 100700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 65),
  -- Koraidon - Focus Blast - TM158
  (1007, 100700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 66),
  -- Koraidon - Hyper Beam - TM163
  (1007, 100700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Koraidon - Flare Blitz - TM165
  (1007, 100700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 68),
  -- Koraidon - Close Combat - TM167
  (1007, 100700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 69),
  -- Koraidon - Solar Beam - TM168
  (1007, 100700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 70),
  -- Koraidon - Draco Meteor - TM169
  (1007, 100700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 71),
  -- Koraidon - Tera Blast - TM171
  (1007, 100700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 72),
  -- Miraidon - Thunder Shock - Level 1
  (1008, 100800, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miraidon - Dragon Breath - Level 1
  (1008, 100800, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Miraidon - Electric Terrain - Level 1
  (1008, 100800, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Miraidon - Shock Wave - Level 7
  (1008, 100800, 351, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Miraidon - Charge - Level 14
  (1008, 100800, 268, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Miraidon - Parabolic Charge - Level 21
  (1008, 100800, 570, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Miraidon - Discharge - Level 28
  (1008, 100800, 435, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Miraidon - Agility - Level 35
  (1008, 100800, 97, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Miraidon - Dragon Pulse - Level 42
  (1008, 100800, 406, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Miraidon - Power Gem - Level 49
  (1008, 100800, 408, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Miraidon - Electro Drift - Level 56
  (1008, 100800, 879, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Miraidon - Metal Sound - Level 63
  (1008, 100800, 319, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Miraidon - Mirror Coat - Level 70
  (1008, 100800, 243, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Miraidon - Outrage - Level 77
  (1008, 100800, 200, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Miraidon - Thunder - Level 84
  (1008, 100800, 87, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Miraidon - Overheat - Level 91
  (1008, 100800, 315, 23, NULL, 1, 91, NULL, NULL, NULL, 16),
  -- Miraidon - Hyper Beam - Level 98
  (1008, 100800, 63, 23, NULL, 1, 98, NULL, NULL, NULL, 17),
  -- Miraidon - Take Down - TM001
  (1008, 100800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Miraidon - Agility - TM004
  (1008, 100800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Miraidon - Scary Face - TM006
  (1008, 100800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Miraidon - Protect - TM007
  (1008, 100800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Miraidon - Acrobatics - TM014
  (1008, 100800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Miraidon - Confuse Ray - TM017
  (1008, 100800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Miraidon - Charge Beam - TM023
  (1008, 100800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Miraidon - Facade - TM025
  (1008, 100800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Miraidon - Snarl - TM030
  (1008, 100800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Miraidon - Dragon Tail - TM044
  (1008, 100800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Miraidon - Endure - TM047
  (1008, 100800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Miraidon - Volt Switch - TM048
  (1008, 100800, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 29),
  -- Miraidon - Zen Headbutt - TM059
  (1008, 100800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Miraidon - U-turn - TM060
  (1008, 100800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Miraidon - Body Slam - TM066
  (1008, 100800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Miraidon - Sleep Talk - TM070
  (1008, 100800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Miraidon - Electro Ball - TM072
  (1008, 100800, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 34),
  -- Miraidon - Reflect - TM074
  (1008, 100800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Miraidon - Light Screen - TM075
  (1008, 100800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Miraidon - Dragon Claw - TM078
  (1008, 100800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 37),
  -- Miraidon - Dazzling Gleam - TM079
  (1008, 100800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Miraidon - Thunder Wave - TM082
  (1008, 100800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Miraidon - Rest - TM085
  (1008, 100800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Miraidon - Taunt - TM087
  (1008, 100800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Miraidon - Swords Dance - TM088
  (1008, 100800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Miraidon - Flash Cannon - TM093
  (1008, 100800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Miraidon - Eerie Impulse - TM096
  (1008, 100800, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 44),
  -- Miraidon - Power Gem - TM101
  (1008, 100800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 45),
  -- Miraidon - Substitute - TM103
  (1008, 100800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Miraidon - Crunch - TM108
  (1008, 100800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Miraidon - Dragon Pulse - TM115
  (1008, 100800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 48),
  -- Miraidon - Heavy Slam - TM121
  (1008, 100800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 49),
  -- Miraidon - Thunderbolt - TM126
  (1008, 100800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Miraidon - Calm Mind - TM129
  (1008, 100800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Miraidon - Helping Hand - TM130
  (1008, 100800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Miraidon - Electric Terrain - TM136
  (1008, 100800, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 53),
  -- Miraidon - Wild Charge - TM147
  (1008, 100800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 54),
  -- Miraidon - Giga Impact - TM152
  (1008, 100800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Miraidon - Outrage - TM156
  (1008, 100800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 56),
  -- Miraidon - Overheat - TM157
  (1008, 100800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 57),
  -- Miraidon - Hyper Beam - TM163
  (1008, 100800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Miraidon - Thunder - TM166
  (1008, 100800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Miraidon - Solar Beam - TM168
  (1008, 100800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 60),
  -- Miraidon - Draco Meteor - TM169
  (1008, 100800, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Miraidon - Tera Blast - TM171
  (1008, 100800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Walking Wake - Leer - Level 1
  (1009, 100900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walking Wake - Roar - Level 1
  (1009, 100900, 46, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walking Wake - Twister - Level 1
  (1009, 100900, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walking Wake - Aqua Jet - Level 1
  (1009, 100900, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walking Wake - Bite - Level 7
  (1009, 100900, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Walking Wake - Water Pulse - Level 14
  (1009, 100900, 352, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Walking Wake - Noble Roar - Level 21
  (1009, 100900, 568, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Walking Wake - Dragon Breath - Level 28
  (1009, 100900, 225, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Walking Wake - Breaking Swipe - Level 35
  (1009, 100900, 784, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Walking Wake - Dragon Rush - Level 42
  (1009, 100900, 407, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Walking Wake - Hydro Steam - Level 56
  (1009, 100900, 876, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Walking Wake - Dragon Pulse - Level 63
  (1009, 100900, 406, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Walking Wake - Outrage - Level 70
  (1009, 100900, 200, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Walking Wake - Flamethrower - Level 77
  (1009, 100900, 53, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Walking Wake - Hydro Pump - Level 84
  (1009, 100900, 56, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Walking Wake - Take Down - TM001
  (1009, 100900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Walking Wake - Agility - TM004
  (1009, 100900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Walking Wake - Scary Face - TM006
  (1009, 100900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Walking Wake - Protect - TM007
  (1009, 100900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Walking Wake - Fire Fang - TM008
  (1009, 100900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Walking Wake - Water Pulse - TM011
  (1009, 100900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Walking Wake - Low Kick - TM012
  (1009, 100900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Walking Wake - Chilling Water - TM022
  (1009, 100900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Walking Wake - Facade - TM025
  (1009, 100900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Walking Wake - Snarl - TM030
  (1009, 100900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Walking Wake - Swift - TM032
  (1009, 100900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Walking Wake - Mud Shot - TM035
  (1009, 100900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Walking Wake - Dragon Tail - TM044
  (1009, 100900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Walking Wake - Endure - TM047
  (1009, 100900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Walking Wake - Sunny Day - TM049
  (1009, 100900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Walking Wake - Rain Dance - TM050
  (1009, 100900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Walking Wake - Body Slam - TM066
  (1009, 100900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Walking Wake - Sleep Talk - TM070
  (1009, 100900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Walking Wake - Waterfall - TM077
  (1009, 100900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Walking Wake - Dragon Claw - TM078
  (1009, 100900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Walking Wake - Rest - TM085
  (1009, 100900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Walking Wake - Dragon Dance - TM100
  (1009, 100900, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 37),
  -- Walking Wake - Substitute - TM103
  (1009, 100900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Walking Wake - Crunch - TM108
  (1009, 100900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Walking Wake - Liquidation - TM110
  (1009, 100900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Walking Wake - Dragon Pulse - TM115
  (1009, 100900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Walking Wake - Surf - TM123
  (1009, 100900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 42),
  -- Walking Wake - Flamethrower - TM125
  (1009, 100900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Walking Wake - Hydro Pump - TM142
  (1009, 100900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Walking Wake - Giga Impact - TM152
  (1009, 100900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Walking Wake - Outrage - TM156
  (1009, 100900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Walking Wake - Hurricane - TM160
  (1009, 100900, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 47),
  -- Walking Wake - Hyper Beam - TM163
  (1009, 100900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Walking Wake - Draco Meteor - TM169
  (1009, 100900, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 49),
  -- Walking Wake - Tera Blast - TM171
  (1009, 100900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Walking Wake - Sunny Day - Reminder
  (1009, 100900, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 51),
  -- Walking Wake - Hone Claws - Reminder
  (1009, 100900, 468, 23, NULL, 9, NULL, NULL, NULL, NULL, 52),
  -- Iron Leaves - Leer - Level 1
  (1010, 101000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Leaves - Quick Attack - Level 1
  (1010, 101000, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Leaves - Helping Hand - Level 1
  (1010, 101000, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Leaves - Work Up - Level 1
  (1010, 101000, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Leaves - Magical Leaf - Level 7
  (1010, 101000, 345, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Leaves - Retaliate - Level 14
  (1010, 101000, 514, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Leaves - Quick Guard - Level 21
  (1010, 101000, 501, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Leaves - Night Slash - Level 28
  (1010, 101000, 400, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Leaves - Swords Dance - Level 35
  (1010, 101000, 14, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Leaves - Sacred Sword - Level 42
  (1010, 101000, 533, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Leaves - Leaf Blade - Level 49
  (1010, 101000, 348, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Leaves - Psyblade - Level 56
  (1010, 101000, 875, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Leaves - Close Combat - Level 63
  (1010, 101000, 370, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Leaves - Imprison - Level 70
  (1010, 101000, 286, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Leaves - Megahorn - Level 77
  (1010, 101000, 224, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Leaves - Ally Switch - Level 84
  (1010, 101000, 502, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Leaves - Solar Blade - Level 91
  (1010, 101000, 669, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Leaves - Take Down - TM001
  (1010, 101000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Leaves - Agility - TM004
  (1010, 101000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Iron Leaves - Scary Face - TM006
  (1010, 101000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Iron Leaves - Protect - TM007
  (1010, 101000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Iron Leaves - Trailblaze - TM020
  (1010, 101000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Iron Leaves - Facade - TM025
  (1010, 101000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Iron Leaves - Aerial Ace - TM027
  (1010, 101000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Iron Leaves - Swift - TM032
  (1010, 101000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Iron Leaves - Magical Leaf - TM033
  (1010, 101000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Iron Leaves - Endure - TM047
  (1010, 101000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Iron Leaves - Smart Strike - TM053
  (1010, 101000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 28),
  -- Iron Leaves - False Swipe - TM057
  (1010, 101000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Iron Leaves - Brick Break - TM058
  (1010, 101000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Iron Leaves - Air Slash - TM065
  (1010, 101000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Iron Leaves - Sleep Talk - TM070
  (1010, 101000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Iron Leaves - Grass Knot - TM081
  (1010, 101000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 33),
  -- Iron Leaves - Rest - TM085
  (1010, 101000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Iron Leaves - Taunt - TM087
  (1010, 101000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Iron Leaves - Swords Dance - TM088
  (1010, 101000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Iron Leaves - Imprison - TM092
  (1010, 101000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 37),
  -- Iron Leaves - Substitute - TM103
  (1010, 101000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Iron Leaves - Iron Defense - TM104
  (1010, 101000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Iron Leaves - X-Scissor - TM105
  (1010, 101000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 40),
  -- Iron Leaves - Giga Drain - TM111
  (1010, 101000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Iron Leaves - Energy Ball - TM119
  (1010, 101000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Iron Leaves - Calm Mind - TM129
  (1010, 101000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Iron Leaves - Helping Hand - TM130
  (1010, 101000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Iron Leaves - Reversal - TM134
  (1010, 101000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 45),
  -- Iron Leaves - Electric Terrain - TM136
  (1010, 101000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 46),
  -- Iron Leaves - Grassy Terrain - TM137
  (1010, 101000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 47),
  -- Iron Leaves - Psychic Terrain - TM138
  (1010, 101000, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 48),
  -- Iron Leaves - Wild Charge - TM147
  (1010, 101000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Iron Leaves - Giga Impact - TM152
  (1010, 101000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Iron Leaves - Focus Blast - TM158
  (1010, 101000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Iron Leaves - Leaf Storm - TM159
  (1010, 101000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Iron Leaves - Hyper Beam - TM163
  (1010, 101000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Iron Leaves - Close Combat - TM167
  (1010, 101000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Iron Leaves - Solar Beam - TM168
  (1010, 101000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Iron Leaves - Tera Blast - TM171
  (1010, 101000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Iron Leaves - Quash - Reminder
  (1010, 101000, 511, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Iron Leaves - Electric Terrain - Reminder
  (1010, 101000, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Dipplin - Withdraw - Level 1
  (1011, 101100, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dipplin - Sweet Scent - Level 1
  (1011, 101100, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dipplin - Recycle - Level 1
  (1011, 101100, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dipplin - Astonish - Level 1
  (1011, 101100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dipplin - Dragon Tail - Level 4
  (1011, 101100, 525, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Dipplin - Growth - Level 8
  (1011, 101100, 74, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Dipplin - Dragon Breath - Level 12
  (1011, 101100, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Dipplin - Protect - Level 16
  (1011, 101100, 182, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Dipplin - Bullet Seed - Level 20
  (1011, 101100, 331, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Dipplin - Syrup Bomb - Level 28
  (1011, 101100, 903, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Dipplin - Dragon Pulse - Level 32
  (1011, 101100, 406, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Dipplin - Recover - Level 36
  (1011, 101100, 105, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Dipplin - Energy Ball - Level 40
  (1011, 101100, 412, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Dipplin - Substitute - Level 44
  (1011, 101100, 164, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Dipplin - Take Down - TM001
  (1011, 101100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Dipplin - Protect - TM007
  (1011, 101100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Dipplin - Pounce - TM021
  (1011, 101100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 17),
  -- Dipplin - Facade - TM025
  (1011, 101100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Dipplin - Dragon Tail - TM044
  (1011, 101100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 19),
  -- Dipplin - Endure - TM047
  (1011, 101100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Dipplin - Sunny Day - TM049
  (1011, 101100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Dipplin - Bullet Seed - TM056
  (1011, 101100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Dipplin - Body Slam - TM066
  (1011, 101100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 23),
  -- Dipplin - Sleep Talk - TM070
  (1011, 101100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Dipplin - Seed Bomb - TM071
  (1011, 101100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 25),
  -- Dipplin - Reflect - TM074
  (1011, 101100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 26),
  -- Dipplin - Grass Knot - TM081
  (1011, 101100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Dipplin - Rest - TM085
  (1011, 101100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Dipplin - Substitute - TM103
  (1011, 101100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Dipplin - Giga Drain - TM111
  (1011, 101100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 30),
  -- Dipplin - Dragon Pulse - TM115
  (1011, 101100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 31),
  -- Dipplin - Energy Ball - TM119
  (1011, 101100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Dipplin - Pollen Puff - TM131
  (1011, 101100, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 33),
  -- Dipplin - Grassy Terrain - TM137
  (1011, 101100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 34),
  -- Dipplin - Giga Impact - TM152
  (1011, 101100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 35),
  -- Dipplin - Outrage - TM156
  (1011, 101100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 36),
  -- Dipplin - Leaf Storm - TM159
  (1011, 101100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 37),
  -- Dipplin - Hyper Beam - TM163
  (1011, 101100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 38),
  -- Dipplin - Solar Beam - TM168
  (1011, 101100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 39),
  -- Dipplin - Draco Meteor - TM169
  (1011, 101100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 40),
  -- Dipplin - Tera Blast - TM171
  (1011, 101100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Dipplin - Defense Curl - Egg
  (1011, 101100, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dipplin - Rollout - Egg
  (1011, 101100, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dipplin - Recycle - Egg
  (1011, 101100, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dipplin - Sucker Punch - Egg
  (1011, 101100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dipplin - Double Hit - Evolution
  (1011, 101100, 458, 23, NULL, 7, NULL, NULL, NULL, NULL, 46),
  -- Dipplin - Infestation - Reminder
  (1011, 101100, 611, 23, NULL, 9, NULL, NULL, NULL, NULL, 47),
  -- Poltchageist - Stun Spore - Level 1
  (1012, 101200, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poltchageist - Withdraw - Level 1
  (1012, 101200, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poltchageist - Astonish - Level 1
  (1012, 101200, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poltchageist - Absorb - Level 6
  (1012, 101200, 71, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Poltchageist - Life Dew - Level 12
  (1012, 101200, 791, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Poltchageist - Foul Play - Level 18
  (1012, 101200, 492, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Poltchageist - Mega Drain - Level 24
  (1012, 101200, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Poltchageist - Hex - Level 30
  (1012, 101200, 506, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Poltchageist - Rage Powder - Level 36
  (1012, 101200, 476, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Poltchageist - Giga Drain - Level 42
  (1012, 101200, 202, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Poltchageist - Shadow Ball - Level 48
  (1012, 101200, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Poltchageist - Memento - Level 54
  (1012, 101200, 262, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Poltchageist - Leaf Storm - Level 60
  (1012, 101200, 437, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Poltchageist - Protect - TM007
  (1012, 101200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Poltchageist - Hex - TM029
  (1012, 101200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 15),
  -- Poltchageist - Magical Leaf - TM033
  (1012, 101200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 16),
  -- Poltchageist - Night Shade - TM042
  (1012, 101200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 17),
  -- Poltchageist - Endure - TM047
  (1012, 101200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Poltchageist - Foul Play - TM062
  (1012, 101200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 19),
  -- Poltchageist - Sleep Talk - TM070
  (1012, 101200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 20),
  -- Poltchageist - Reflect - TM074
  (1012, 101200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 21),
  -- Poltchageist - Rest - TM085
  (1012, 101200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 22),
  -- Poltchageist - Imprison - TM092
  (1012, 101200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 23),
  -- Poltchageist - Substitute - TM103
  (1012, 101200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 24),
  -- Poltchageist - Iron Defense - TM104
  (1012, 101200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 25),
  -- Poltchageist - Giga Drain - TM111
  (1012, 101200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 26),
  -- Poltchageist - Shadow Ball - TM114
  (1012, 101200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 27),
  -- Poltchageist - Energy Ball - TM119
  (1012, 101200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 28),
  -- Poltchageist - Calm Mind - TM129
  (1012, 101200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 29),
  -- Poltchageist - Grassy Terrain - TM137
  (1012, 101200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 30),
  -- Poltchageist - Nasty Plot - TM140
  (1012, 101200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 31),
  -- Poltchageist - Phantom Force - TM151
  (1012, 101200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 32),
  -- Poltchageist - Leaf Storm - TM159
  (1012, 101200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 33),
  -- Poltchageist - Trick Room - TM161
  (1012, 101200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 34),
  -- Poltchageist - Solar Beam - TM168
  (1012, 101200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 35),
  -- Poltchageist - Tera Blast - TM171
  (1012, 101200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Sinistcha - Stun Spore - Level 1
  (1013, 101300, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sinistcha - Withdraw - Level 1
  (1013, 101300, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sinistcha - Astonish - Level 1
  (1013, 101300, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sinistcha - Absorb - Level 6
  (1013, 101300, 71, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sinistcha - Life Dew - Level 12
  (1013, 101300, 791, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sinistcha - Foul Play - Level 18
  (1013, 101300, 492, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Sinistcha - Mega Drain - Level 24
  (1013, 101300, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Sinistcha - Hex - Level 30
  (1013, 101300, 506, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sinistcha - Rage Powder - Level 36
  (1013, 101300, 476, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Sinistcha - Strength Sap - Level 42
  (1013, 101300, 668, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Sinistcha - Shadow Ball - Level 48
  (1013, 101300, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Sinistcha - Memento - Level 54
  (1013, 101300, 262, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Sinistcha - Leaf Storm - Level 60
  (1013, 101300, 437, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Sinistcha - Protect - TM007
  (1013, 101300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Sinistcha - Hex - TM029
  (1013, 101300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 15),
  -- Sinistcha - Magical Leaf - TM033
  (1013, 101300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 16),
  -- Sinistcha - Night Shade - TM042
  (1013, 101300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 17),
  -- Sinistcha - Endure - TM047
  (1013, 101300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Sinistcha - Foul Play - TM062
  (1013, 101300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 19),
  -- Sinistcha - Sleep Talk - TM070
  (1013, 101300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 20),
  -- Sinistcha - Reflect - TM074
  (1013, 101300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 21),
  -- Sinistcha - Rest - TM085
  (1013, 101300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 22),
  -- Sinistcha - Imprison - TM092
  (1013, 101300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 23),
  -- Sinistcha - Substitute - TM103
  (1013, 101300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 24),
  -- Sinistcha - Iron Defense - TM104
  (1013, 101300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 25),
  -- Sinistcha - Giga Drain - TM111
  (1013, 101300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 26),
  -- Sinistcha - Shadow Ball - TM114
  (1013, 101300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 27),
  -- Sinistcha - Energy Ball - TM119
  (1013, 101300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 28),
  -- Sinistcha - Calm Mind - TM129
  (1013, 101300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 29),
  -- Sinistcha - Grassy Terrain - TM137
  (1013, 101300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 30),
  -- Sinistcha - Nasty Plot - TM140
  (1013, 101300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 31),
  -- Sinistcha - Phantom Force - TM151
  (1013, 101300, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 32),
  -- Sinistcha - Leaf Storm - TM159
  (1013, 101300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 33),
  -- Sinistcha - Trick Room - TM161
  (1013, 101300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 34),
  -- Sinistcha - Hyper Beam - TM163
  (1013, 101300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 35),
  -- Sinistcha - Solar Beam - TM168
  (1013, 101300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Sinistcha - Tera Blast - TM171
  (1013, 101300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Sinistcha - Matcha Gotcha - Evolution
  (1013, 101300, 902, 23, NULL, 7, NULL, NULL, NULL, NULL, 38),
  -- Okidogi - Bite - Level 1
  (1014, 101400, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Okidogi - Low Kick - Level 1
  (1014, 101400, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Okidogi - Bulk Up - Level 1
  (1014, 101400, 339, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Okidogi - Howl - Level 8
  (1014, 101400, 336, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Okidogi - Poison Fang - Level 16
  (1014, 101400, 305, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Okidogi - Force Palm - Level 24
  (1014, 101400, 395, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Okidogi - Counter - Level 32
  (1014, 101400, 68, 23, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Okidogi - Poison Jab - Level 40
  (1014, 101400, 398, 23, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Okidogi - Brutal Swing - Level 48
  (1014, 101400, 693, 23, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Okidogi - Crunch - Level 56
  (1014, 101400, 242, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Okidogi - Superpower - Level 64
  (1014, 101400, 276, 23, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Okidogi - Giga Impact - Level 72
  (1014, 101400, 416, 23, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Okidogi - Take Down - TM001
  (1014, 101400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Okidogi - Scary Face - TM006
  (1014, 101400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Okidogi - Protect - TM007
  (1014, 101400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Okidogi - Fire Fang - TM008
  (1014, 101400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Okidogi - Thunder Fang - TM009
  (1014, 101400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 17),
  -- Okidogi - Ice Fang - TM010
  (1014, 101400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 18),
  -- Okidogi - Low Kick - TM012
  (1014, 101400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Okidogi - Thief - TM018
  (1014, 101400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Okidogi - Facade - TM025
  (1014, 101400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Okidogi - Poison Tail - TM026
  (1014, 101400, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 22),
  -- Okidogi - Snarl - TM030
  (1014, 101400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Okidogi - Metal Claw - TM031
  (1014, 101400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Okidogi - Rock Tomb - TM036
  (1014, 101400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Okidogi - Low Sweep - TM039
  (1014, 101400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Okidogi - Fling - TM043
  (1014, 101400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Okidogi - Endure - TM047
  (1014, 101400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Okidogi - Dig - TM055
  (1014, 101400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Okidogi - Brick Break - TM058
  (1014, 101400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Okidogi - Shadow Claw - TM061
  (1014, 101400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Okidogi - Psychic Fangs - TM063
  (1014, 101400, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Okidogi - Bulk Up - TM064
  (1014, 101400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Okidogi - Body Slam - TM066
  (1014, 101400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Okidogi - Fire Punch - TM067
  (1014, 101400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Okidogi - Thunder Punch - TM068
  (1014, 101400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Okidogi - Ice Punch - TM069
  (1014, 101400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Okidogi - Sleep Talk - TM070
  (1014, 101400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Okidogi - Drain Punch - TM073
  (1014, 101400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Okidogi - Poison Jab - TM083
  (1014, 101400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 40),
  -- Okidogi - Stomping Tantrum - TM084
  (1014, 101400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 41),
  -- Okidogi - Rest - TM085
  (1014, 101400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Okidogi - Taunt - TM087
  (1014, 101400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Okidogi - Body Press - TM089
  (1014, 101400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Okidogi - Iron Head - TM099
  (1014, 101400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Okidogi - Gunk Shot - TM102
  (1014, 101400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 46),
  -- Okidogi - Substitute - TM103
  (1014, 101400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Okidogi - Crunch - TM108
  (1014, 101400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Okidogi - Reversal - TM134
  (1014, 101400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Okidogi - Sludge Bomb - TM148
  (1014, 101400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Okidogi - Giga Impact - TM152
  (1014, 101400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Okidogi - Outrage - TM156
  (1014, 101400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Okidogi - Focus Blast - TM158
  (1014, 101400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Okidogi - Hyper Beam - TM163
  (1014, 101400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Okidogi - Close Combat - TM167
  (1014, 101400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 55),
  -- Okidogi - Tera Blast - TM171
  (1014, 101400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Munkidori - Scratch - Level 1
  (1015, 101500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munkidori - Confusion - Level 1
  (1015, 101500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munkidori - Fake Out - Level 1
  (1015, 101500, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Munkidori - Flatter - Level 1
  (1015, 101500, 260, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Munkidori - Helping Hand - Level 8
  (1015, 101500, 270, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Munkidori - Psybeam - Level 16
  (1015, 101500, 60, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Munkidori - Clear Smog - Level 24
  (1015, 101500, 499, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Munkidori - Poison Jab - Level 32
  (1015, 101500, 398, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Munkidori - Psychic - Level 40
  (1015, 101500, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Munkidori - Sludge Wave - Level 48
  (1015, 101500, 482, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Munkidori - Nasty Plot - Level 56
  (1015, 101500, 417, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Munkidori - Future Sight - Level 64
  (1015, 101500, 248, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Munkidori - Parting Shot - Level 72
  (1015, 101500, 575, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Munkidori - Mud-Slap - TM005
  (1015, 101500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Munkidori - Protect - TM007
  (1015, 101500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Munkidori - Acid Spray - TM013
  (1015, 101500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Munkidori - Psybeam - TM016
  (1015, 101500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 17),
  -- Munkidori - Confuse Ray - TM017
  (1015, 101500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Munkidori - Thief - TM018
  (1015, 101500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Munkidori - Trailblaze - TM020
  (1015, 101500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Munkidori - Facade - TM025
  (1015, 101500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Munkidori - Hex - TM029
  (1015, 101500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Munkidori - Swift - TM032
  (1015, 101500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Munkidori - Stored Power - TM041
  (1015, 101500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Munkidori - Night Shade - TM042
  (1015, 101500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 25),
  -- Munkidori - Fling - TM043
  (1015, 101500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Munkidori - Venoshock - TM045
  (1015, 101500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 27),
  -- Munkidori - Endure - TM047
  (1015, 101500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Munkidori - Psyshock - TM054
  (1015, 101500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Munkidori - U-turn - TM060
  (1015, 101500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Munkidori - Shadow Claw - TM061
  (1015, 101500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Munkidori - Sleep Talk - TM070
  (1015, 101500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Munkidori - Light Screen - TM075
  (1015, 101500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Munkidori - Metronome - TM080
  (1015, 101500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Munkidori - Grass Knot - TM081
  (1015, 101500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Munkidori - Poison Jab - TM083
  (1015, 101500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Munkidori - Rest - TM085
  (1015, 101500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Munkidori - Taunt - TM087
  (1015, 101500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Munkidori - Imprison - TM092
  (1015, 101500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 39),
  -- Munkidori - Gunk Shot - TM102
  (1015, 101500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 40),
  -- Munkidori - Substitute - TM103
  (1015, 101500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Munkidori - Trick - TM109
  (1015, 101500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Munkidori - Shadow Ball - TM114
  (1015, 101500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Munkidori - Psychic - TM120
  (1015, 101500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Munkidori - Calm Mind - TM129
  (1015, 101500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Munkidori - Helping Hand - TM130
  (1015, 101500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Munkidori - Baton Pass - TM132
  (1015, 101500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Munkidori - Psychic Terrain - TM138
  (1015, 101500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 48),
  -- Munkidori - Nasty Plot - TM140
  (1015, 101500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Munkidori - Sludge Bomb - TM148
  (1015, 101500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Munkidori - Giga Impact - TM152
  (1015, 101500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Munkidori - Focus Blast - TM158
  (1015, 101500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Munkidori - Hyper Beam - TM163
  (1015, 101500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Munkidori - Tera Blast - TM171
  (1015, 101500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Fezandipiti - Double Kick - Level 1
  (1016, 101600, 24, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fezandipiti - Peck - Level 1
  (1016, 101600, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fezandipiti - Poison Gas - Level 1
  (1016, 101600, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fezandipiti - Disarming Voice - Level 1
  (1016, 101600, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fezandipiti - Quick Attack - Level 8
  (1016, 101600, 98, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Fezandipiti - Attract - Level 16
  (1016, 101600, 213, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Fezandipiti - Wing Attack - Level 24
  (1016, 101600, 17, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Fezandipiti - Cross Poison - Level 32
  (1016, 101600, 440, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Fezandipiti - Tail Slap - Level 40
  (1016, 101600, 541, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Fezandipiti - Beat Up - Level 48
  (1016, 101600, 251, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Fezandipiti - Swagger - Level 56
  (1016, 101600, 207, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Fezandipiti - Flatter - Level 56
  (1016, 101600, 260, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Fezandipiti - Roost - Level 64
  (1016, 101600, 355, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Fezandipiti - Moonblast - Level 72
  (1016, 101600, 585, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Fezandipiti - Take Down - TM001
  (1016, 101600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Fezandipiti - Charm - TM002
  (1016, 101600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Fezandipiti - Agility - TM004
  (1016, 101600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Fezandipiti - Protect - TM007
  (1016, 101600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Fezandipiti - Acid Spray - TM013
  (1016, 101600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Fezandipiti - Acrobatics - TM014
  (1016, 101600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Fezandipiti - Thief - TM018
  (1016, 101600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Fezandipiti - Disarming Voice - TM019
  (1016, 101600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Fezandipiti - Facade - TM025
  (1016, 101600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Fezandipiti - Poison Tail - TM026
  (1016, 101600, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Fezandipiti - Aerial Ace - TM027
  (1016, 101600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Fezandipiti - Hex - TM029
  (1016, 101600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Fezandipiti - Swift - TM032
  (1016, 101600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Fezandipiti - Icy Wind - TM034
  (1016, 101600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Fezandipiti - Air Cutter - TM040
  (1016, 101600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 29),
  -- Fezandipiti - Venoshock - TM045
  (1016, 101600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 30),
  -- Fezandipiti - Endure - TM047
  (1016, 101600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Fezandipiti - U-turn - TM060
  (1016, 101600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Fezandipiti - Shadow Claw - TM061
  (1016, 101600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Fezandipiti - Air Slash - TM065
  (1016, 101600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Fezandipiti - Sleep Talk - TM070
  (1016, 101600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Fezandipiti - Light Screen - TM075
  (1016, 101600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Fezandipiti - Dazzling Gleam - TM079
  (1016, 101600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 37),
  -- Fezandipiti - Poison Jab - TM083
  (1016, 101600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Fezandipiti - Rest - TM085
  (1016, 101600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Fezandipiti - Taunt - TM087
  (1016, 101600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Fezandipiti - Swords Dance - TM088
  (1016, 101600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Fezandipiti - Dark Pulse - TM094
  (1016, 101600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Fezandipiti - Fly - TM097
  (1016, 101600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Fezandipiti - Gunk Shot - TM102
  (1016, 101600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Fezandipiti - Substitute - TM103
  (1016, 101600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Fezandipiti - Tailwind - TM113
  (1016, 101600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 46),
  -- Fezandipiti - Shadow Ball - TM114
  (1016, 101600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Fezandipiti - Heat Wave - TM118
  (1016, 101600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Fezandipiti - Play Rough - TM127
  (1016, 101600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 49),
  -- Fezandipiti - Calm Mind - TM129
  (1016, 101600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Fezandipiti - Nasty Plot - TM140
  (1016, 101600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Fezandipiti - Sludge Bomb - TM148
  (1016, 101600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 52),
  -- Fezandipiti - Giga Impact - TM152
  (1016, 101600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Fezandipiti - Hurricane - TM160
  (1016, 101600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 54),
  -- Fezandipiti - Hyper Beam - TM163
  (1016, 101600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Fezandipiti - Brave Bird - TM164
  (1016, 101600, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 56),
  -- Fezandipiti - Tera Blast - TM171
  (1016, 101600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Ogerpon - Vine Whip - Level 1
  (1017, 101700, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ogerpon - Leech Seed - Level 1
  (1017, 101700, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ogerpon - Quick Attack - Level 1
  (1017, 101700, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ogerpon - Follow Me - Level 1
  (1017, 101700, 266, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ogerpon - Focus Energy - Level 6
  (1017, 101700, 116, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ogerpon - Growth - Level 12
  (1017, 101700, 74, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ogerpon - Slam - Level 18
  (1017, 101700, 21, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ogerpon - Low Sweep - Level 24
  (1017, 101700, 490, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ogerpon - Ivy Cudgel - Level 30
  (1017, 101700, 904, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ogerpon - Throat Chop - Level 36
  (1017, 101700, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Ogerpon - Synthesis - Level 42
  (1017, 101700, 235, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ogerpon - Spiky Shield - Level 48
  (1017, 101700, 596, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Ogerpon - Power Whip - Level 54
  (1017, 101700, 438, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Ogerpon - Superpower - Level 60
  (1017, 101700, 276, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Ogerpon - Wood Hammer - Level 66
  (1017, 101700, 452, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Ogerpon - Take Down - TM001
  (1017, 101700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ogerpon - Charm - TM002
  (1017, 101700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Ogerpon - Scary Face - TM006
  (1017, 101700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Ogerpon - Protect - TM007
  (1017, 101700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Ogerpon - Low Kick - TM012
  (1017, 101700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Ogerpon - Trailblaze - TM020
  (1017, 101700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Ogerpon - Facade - TM025
  (1017, 101700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Ogerpon - Magical Leaf - TM033
  (1017, 101700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Ogerpon - Rock Tomb - TM036
  (1017, 101700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Ogerpon - Low Sweep - TM039
  (1017, 101700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Ogerpon - Fling - TM043
  (1017, 101700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Ogerpon - Endure - TM047
  (1017, 101700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Ogerpon - Sunny Day - TM049
  (1017, 101700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Ogerpon - Rain Dance - TM050
  (1017, 101700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Ogerpon - Sandstorm - TM051
  (1017, 101700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Ogerpon - Bullet Seed - TM056
  (1017, 101700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Ogerpon - False Swipe - TM057
  (1017, 101700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Ogerpon - Brick Break - TM058
  (1017, 101700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Ogerpon - Zen Headbutt - TM059
  (1017, 101700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Ogerpon - U-turn - TM060
  (1017, 101700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Ogerpon - Sleep Talk - TM070
  (1017, 101700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Ogerpon - Seed Bomb - TM071
  (1017, 101700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Ogerpon - Grass Knot - TM081
  (1017, 101700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Ogerpon - Stomping Tantrum - TM084
  (1017, 101700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Ogerpon - Rest - TM085
  (1017, 101700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Ogerpon - Taunt - TM087
  (1017, 101700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Ogerpon - Swords Dance - TM088
  (1017, 101700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Ogerpon - Spikes - TM090
  (1017, 101700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 43),
  -- Ogerpon - Substitute - TM103
  (1017, 101700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Ogerpon - Giga Drain - TM111
  (1017, 101700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Ogerpon - Energy Ball - TM119
  (1017, 101700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Ogerpon - Encore - TM122
  (1017, 101700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Ogerpon - Play Rough - TM127
  (1017, 101700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Ogerpon - Helping Hand - TM130
  (1017, 101700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Ogerpon - Reversal - TM134
  (1017, 101700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Ogerpon - Grassy Terrain - TM137
  (1017, 101700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Ogerpon - Giga Impact - TM152
  (1017, 101700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Ogerpon - Leaf Storm - TM159
  (1017, 101700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Ogerpon - Solar Beam - TM168
  (1017, 101700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Ogerpon - Tera Blast - TM171
  (1017, 101700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Ogerpon - Double Kick - Reminder
  (1017, 101700, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ogerpon - Counter - Reminder
  (1017, 101700, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ogerpon - Retaliate - Reminder
  (1017, 101700, 514, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ogerpon - Horn Leech - Reminder
  (1017, 101700, 532, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ogerpon (Wellspring Mask) - Vine Whip - Level 1
  (1017, 101701, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ogerpon (Wellspring Mask) - Leech Seed - Level 1
  (1017, 101701, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ogerpon (Wellspring Mask) - Quick Attack - Level 1
  (1017, 101701, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ogerpon (Wellspring Mask) - Follow Me - Level 1
  (1017, 101701, 266, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ogerpon (Wellspring Mask) - Focus Energy - Level 6
  (1017, 101701, 116, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ogerpon (Wellspring Mask) - Growth - Level 12
  (1017, 101701, 74, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ogerpon (Wellspring Mask) - Slam - Level 18
  (1017, 101701, 21, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ogerpon (Wellspring Mask) - Low Sweep - Level 24
  (1017, 101701, 490, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ogerpon (Wellspring Mask) - Ivy Cudgel - Level 30
  (1017, 101701, 904, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ogerpon (Wellspring Mask) - Throat Chop - Level 36
  (1017, 101701, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Ogerpon (Wellspring Mask) - Synthesis - Level 42
  (1017, 101701, 235, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ogerpon (Wellspring Mask) - Spiky Shield - Level 48
  (1017, 101701, 596, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Ogerpon (Wellspring Mask) - Power Whip - Level 54
  (1017, 101701, 438, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Ogerpon (Wellspring Mask) - Superpower - Level 60
  (1017, 101701, 276, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Ogerpon (Wellspring Mask) - Wood Hammer - Level 66
  (1017, 101701, 452, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Ogerpon (Wellspring Mask) - Take Down - TM001
  (1017, 101701, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ogerpon (Wellspring Mask) - Charm - TM002
  (1017, 101701, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Ogerpon (Wellspring Mask) - Scary Face - TM006
  (1017, 101701, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Ogerpon (Wellspring Mask) - Protect - TM007
  (1017, 101701, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Ogerpon (Wellspring Mask) - Low Kick - TM012
  (1017, 101701, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Ogerpon (Wellspring Mask) - Trailblaze - TM020
  (1017, 101701, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Ogerpon (Wellspring Mask) - Facade - TM025
  (1017, 101701, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Ogerpon (Wellspring Mask) - Magical Leaf - TM033
  (1017, 101701, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Ogerpon (Wellspring Mask) - Rock Tomb - TM036
  (1017, 101701, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Ogerpon (Wellspring Mask) - Low Sweep - TM039
  (1017, 101701, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Ogerpon (Wellspring Mask) - Fling - TM043
  (1017, 101701, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Ogerpon (Wellspring Mask) - Endure - TM047
  (1017, 101701, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Ogerpon (Wellspring Mask) - Sunny Day - TM049
  (1017, 101701, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Ogerpon (Wellspring Mask) - Rain Dance - TM050
  (1017, 101701, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Ogerpon (Wellspring Mask) - Sandstorm - TM051
  (1017, 101701, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Ogerpon (Wellspring Mask) - Bullet Seed - TM056
  (1017, 101701, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Ogerpon (Wellspring Mask) - False Swipe - TM057
  (1017, 101701, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Ogerpon (Wellspring Mask) - Brick Break - TM058
  (1017, 101701, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Ogerpon (Wellspring Mask) - Zen Headbutt - TM059
  (1017, 101701, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Ogerpon (Wellspring Mask) - U-turn - TM060
  (1017, 101701, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Ogerpon (Wellspring Mask) - Sleep Talk - TM070
  (1017, 101701, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Ogerpon (Wellspring Mask) - Seed Bomb - TM071
  (1017, 101701, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Ogerpon (Wellspring Mask) - Grass Knot - TM081
  (1017, 101701, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Ogerpon (Wellspring Mask) - Stomping Tantrum - TM084
  (1017, 101701, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Ogerpon (Wellspring Mask) - Rest - TM085
  (1017, 101701, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Ogerpon (Wellspring Mask) - Taunt - TM087
  (1017, 101701, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Ogerpon (Wellspring Mask) - Swords Dance - TM088
  (1017, 101701, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Ogerpon (Wellspring Mask) - Spikes - TM090
  (1017, 101701, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 43),
  -- Ogerpon (Wellspring Mask) - Substitute - TM103
  (1017, 101701, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Ogerpon (Wellspring Mask) - Giga Drain - TM111
  (1017, 101701, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Ogerpon (Wellspring Mask) - Energy Ball - TM119
  (1017, 101701, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Ogerpon (Wellspring Mask) - Encore - TM122
  (1017, 101701, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Ogerpon (Wellspring Mask) - Play Rough - TM127
  (1017, 101701, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Ogerpon (Wellspring Mask) - Helping Hand - TM130
  (1017, 101701, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Ogerpon (Wellspring Mask) - Reversal - TM134
  (1017, 101701, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Ogerpon (Wellspring Mask) - Grassy Terrain - TM137
  (1017, 101701, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Ogerpon (Wellspring Mask) - Giga Impact - TM152
  (1017, 101701, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Ogerpon (Wellspring Mask) - Leaf Storm - TM159
  (1017, 101701, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Ogerpon (Wellspring Mask) - Solar Beam - TM168
  (1017, 101701, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Ogerpon (Wellspring Mask) - Tera Blast - TM171
  (1017, 101701, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Ogerpon (Wellspring Mask) - Double Kick - Reminder
  (1017, 101701, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ogerpon (Wellspring Mask) - Counter - Reminder
  (1017, 101701, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ogerpon (Wellspring Mask) - Retaliate - Reminder
  (1017, 101701, 514, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ogerpon (Wellspring Mask) - Horn Leech - Reminder
  (1017, 101701, 532, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ogerpon (Hearthflame Mask) - Vine Whip - Level 1
  (1017, 101702, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ogerpon (Hearthflame Mask) - Leech Seed - Level 1
  (1017, 101702, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ogerpon (Hearthflame Mask) - Quick Attack - Level 1
  (1017, 101702, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ogerpon (Hearthflame Mask) - Follow Me - Level 1
  (1017, 101702, 266, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ogerpon (Hearthflame Mask) - Focus Energy - Level 6
  (1017, 101702, 116, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ogerpon (Hearthflame Mask) - Growth - Level 12
  (1017, 101702, 74, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ogerpon (Hearthflame Mask) - Slam - Level 18
  (1017, 101702, 21, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ogerpon (Hearthflame Mask) - Low Sweep - Level 24
  (1017, 101702, 490, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ogerpon (Hearthflame Mask) - Ivy Cudgel - Level 30
  (1017, 101702, 904, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ogerpon (Hearthflame Mask) - Throat Chop - Level 36
  (1017, 101702, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Ogerpon (Hearthflame Mask) - Synthesis - Level 42
  (1017, 101702, 235, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ogerpon (Hearthflame Mask) - Spiky Shield - Level 48
  (1017, 101702, 596, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Ogerpon (Hearthflame Mask) - Power Whip - Level 54
  (1017, 101702, 438, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Ogerpon (Hearthflame Mask) - Superpower - Level 60
  (1017, 101702, 276, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Ogerpon (Hearthflame Mask) - Wood Hammer - Level 66
  (1017, 101702, 452, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Ogerpon (Hearthflame Mask) - Take Down - TM001
  (1017, 101702, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ogerpon (Hearthflame Mask) - Charm - TM002
  (1017, 101702, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Ogerpon (Hearthflame Mask) - Scary Face - TM006
  (1017, 101702, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Ogerpon (Hearthflame Mask) - Protect - TM007
  (1017, 101702, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Ogerpon (Hearthflame Mask) - Low Kick - TM012
  (1017, 101702, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Ogerpon (Hearthflame Mask) - Trailblaze - TM020
  (1017, 101702, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Ogerpon (Hearthflame Mask) - Facade - TM025
  (1017, 101702, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Ogerpon (Hearthflame Mask) - Magical Leaf - TM033
  (1017, 101702, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Ogerpon (Hearthflame Mask) - Rock Tomb - TM036
  (1017, 101702, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Ogerpon (Hearthflame Mask) - Low Sweep - TM039
  (1017, 101702, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Ogerpon (Hearthflame Mask) - Fling - TM043
  (1017, 101702, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Ogerpon (Hearthflame Mask) - Endure - TM047
  (1017, 101702, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Ogerpon (Hearthflame Mask) - Sunny Day - TM049
  (1017, 101702, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Ogerpon (Hearthflame Mask) - Rain Dance - TM050
  (1017, 101702, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Ogerpon (Hearthflame Mask) - Sandstorm - TM051
  (1017, 101702, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Ogerpon (Hearthflame Mask) - Bullet Seed - TM056
  (1017, 101702, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Ogerpon (Hearthflame Mask) - False Swipe - TM057
  (1017, 101702, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Ogerpon (Hearthflame Mask) - Brick Break - TM058
  (1017, 101702, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Ogerpon (Hearthflame Mask) - Zen Headbutt - TM059
  (1017, 101702, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Ogerpon (Hearthflame Mask) - U-turn - TM060
  (1017, 101702, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Ogerpon (Hearthflame Mask) - Sleep Talk - TM070
  (1017, 101702, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Ogerpon (Hearthflame Mask) - Seed Bomb - TM071
  (1017, 101702, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Ogerpon (Hearthflame Mask) - Grass Knot - TM081
  (1017, 101702, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Ogerpon (Hearthflame Mask) - Stomping Tantrum - TM084
  (1017, 101702, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Ogerpon (Hearthflame Mask) - Rest - TM085
  (1017, 101702, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Ogerpon (Hearthflame Mask) - Taunt - TM087
  (1017, 101702, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Ogerpon (Hearthflame Mask) - Swords Dance - TM088
  (1017, 101702, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Ogerpon (Hearthflame Mask) - Spikes - TM090
  (1017, 101702, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 43),
  -- Ogerpon (Hearthflame Mask) - Substitute - TM103
  (1017, 101702, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Ogerpon (Hearthflame Mask) - Giga Drain - TM111
  (1017, 101702, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Ogerpon (Hearthflame Mask) - Energy Ball - TM119
  (1017, 101702, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Ogerpon (Hearthflame Mask) - Encore - TM122
  (1017, 101702, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Ogerpon (Hearthflame Mask) - Play Rough - TM127
  (1017, 101702, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Ogerpon (Hearthflame Mask) - Helping Hand - TM130
  (1017, 101702, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Ogerpon (Hearthflame Mask) - Reversal - TM134
  (1017, 101702, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Ogerpon (Hearthflame Mask) - Grassy Terrain - TM137
  (1017, 101702, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Ogerpon (Hearthflame Mask) - Giga Impact - TM152
  (1017, 101702, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Ogerpon (Hearthflame Mask) - Leaf Storm - TM159
  (1017, 101702, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Ogerpon (Hearthflame Mask) - Solar Beam - TM168
  (1017, 101702, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Ogerpon (Hearthflame Mask) - Tera Blast - TM171
  (1017, 101702, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Ogerpon (Hearthflame Mask) - Double Kick - Reminder
  (1017, 101702, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ogerpon (Hearthflame Mask) - Counter - Reminder
  (1017, 101702, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ogerpon (Hearthflame Mask) - Retaliate - Reminder
  (1017, 101702, 514, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ogerpon (Hearthflame Mask) - Horn Leech - Reminder
  (1017, 101702, 532, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ogerpon (Cornerstone Mask) - Vine Whip - Level 1
  (1017, 101703, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ogerpon (Cornerstone Mask) - Leech Seed - Level 1
  (1017, 101703, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ogerpon (Cornerstone Mask) - Quick Attack - Level 1
  (1017, 101703, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ogerpon (Cornerstone Mask) - Follow Me - Level 1
  (1017, 101703, 266, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ogerpon (Cornerstone Mask) - Focus Energy - Level 6
  (1017, 101703, 116, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ogerpon (Cornerstone Mask) - Growth - Level 12
  (1017, 101703, 74, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ogerpon (Cornerstone Mask) - Slam - Level 18
  (1017, 101703, 21, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ogerpon (Cornerstone Mask) - Low Sweep - Level 24
  (1017, 101703, 490, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ogerpon (Cornerstone Mask) - Ivy Cudgel - Level 30
  (1017, 101703, 904, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ogerpon (Cornerstone Mask) - Throat Chop - Level 36
  (1017, 101703, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Ogerpon (Cornerstone Mask) - Synthesis - Level 42
  (1017, 101703, 235, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ogerpon (Cornerstone Mask) - Spiky Shield - Level 48
  (1017, 101703, 596, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Ogerpon (Cornerstone Mask) - Power Whip - Level 54
  (1017, 101703, 438, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Ogerpon (Cornerstone Mask) - Superpower - Level 60
  (1017, 101703, 276, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Ogerpon (Cornerstone Mask) - Wood Hammer - Level 66
  (1017, 101703, 452, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Ogerpon (Cornerstone Mask) - Take Down - TM001
  (1017, 101703, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ogerpon (Cornerstone Mask) - Charm - TM002
  (1017, 101703, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Ogerpon (Cornerstone Mask) - Scary Face - TM006
  (1017, 101703, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Ogerpon (Cornerstone Mask) - Protect - TM007
  (1017, 101703, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Ogerpon (Cornerstone Mask) - Low Kick - TM012
  (1017, 101703, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Ogerpon (Cornerstone Mask) - Trailblaze - TM020
  (1017, 101703, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Ogerpon (Cornerstone Mask) - Facade - TM025
  (1017, 101703, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Ogerpon (Cornerstone Mask) - Magical Leaf - TM033
  (1017, 101703, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Ogerpon (Cornerstone Mask) - Rock Tomb - TM036
  (1017, 101703, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Ogerpon (Cornerstone Mask) - Low Sweep - TM039
  (1017, 101703, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Ogerpon (Cornerstone Mask) - Fling - TM043
  (1017, 101703, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Ogerpon (Cornerstone Mask) - Endure - TM047
  (1017, 101703, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Ogerpon (Cornerstone Mask) - Sunny Day - TM049
  (1017, 101703, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Ogerpon (Cornerstone Mask) - Rain Dance - TM050
  (1017, 101703, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Ogerpon (Cornerstone Mask) - Sandstorm - TM051
  (1017, 101703, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Ogerpon (Cornerstone Mask) - Bullet Seed - TM056
  (1017, 101703, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Ogerpon (Cornerstone Mask) - False Swipe - TM057
  (1017, 101703, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Ogerpon (Cornerstone Mask) - Brick Break - TM058
  (1017, 101703, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Ogerpon (Cornerstone Mask) - Zen Headbutt - TM059
  (1017, 101703, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Ogerpon (Cornerstone Mask) - U-turn - TM060
  (1017, 101703, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Ogerpon (Cornerstone Mask) - Sleep Talk - TM070
  (1017, 101703, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Ogerpon (Cornerstone Mask) - Seed Bomb - TM071
  (1017, 101703, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Ogerpon (Cornerstone Mask) - Grass Knot - TM081
  (1017, 101703, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Ogerpon (Cornerstone Mask) - Stomping Tantrum - TM084
  (1017, 101703, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Ogerpon (Cornerstone Mask) - Rest - TM085
  (1017, 101703, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Ogerpon (Cornerstone Mask) - Taunt - TM087
  (1017, 101703, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Ogerpon (Cornerstone Mask) - Swords Dance - TM088
  (1017, 101703, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Ogerpon (Cornerstone Mask) - Spikes - TM090
  (1017, 101703, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 43),
  -- Ogerpon (Cornerstone Mask) - Substitute - TM103
  (1017, 101703, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Ogerpon (Cornerstone Mask) - Giga Drain - TM111
  (1017, 101703, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Ogerpon (Cornerstone Mask) - Energy Ball - TM119
  (1017, 101703, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Ogerpon (Cornerstone Mask) - Encore - TM122
  (1017, 101703, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Ogerpon (Cornerstone Mask) - Play Rough - TM127
  (1017, 101703, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Ogerpon (Cornerstone Mask) - Helping Hand - TM130
  (1017, 101703, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Ogerpon (Cornerstone Mask) - Reversal - TM134
  (1017, 101703, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Ogerpon (Cornerstone Mask) - Grassy Terrain - TM137
  (1017, 101703, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Ogerpon (Cornerstone Mask) - Giga Impact - TM152
  (1017, 101703, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Ogerpon (Cornerstone Mask) - Leaf Storm - TM159
  (1017, 101703, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Ogerpon (Cornerstone Mask) - Solar Beam - TM168
  (1017, 101703, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Ogerpon (Cornerstone Mask) - Tera Blast - TM171
  (1017, 101703, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Ogerpon (Cornerstone Mask) - Double Kick - Reminder
  (1017, 101703, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ogerpon (Cornerstone Mask) - Counter - Reminder
  (1017, 101703, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ogerpon (Cornerstone Mask) - Retaliate - Reminder
  (1017, 101703, 514, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ogerpon (Cornerstone Mask) - Horn Leech - Reminder
  (1017, 101703, 532, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Archaludon - Leer - Level 1
  (1018, 101800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archaludon - Metal Claw - Level 1
  (1018, 101800, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archaludon - Rock Smash - Level 6
  (1018, 101800, 249, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Archaludon - Hone Claws - Level 12
  (1018, 101800, 468, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Archaludon - Metal Sound - Level 18
  (1018, 101800, 319, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Archaludon - Breaking Swipe - Level 24
  (1018, 101800, 784, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Archaludon - Dragon Tail - Level 30
  (1018, 101800, 525, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Archaludon - Iron Defense - Level 36
  (1018, 101800, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Archaludon - Focus Energy - Level 42
  (1018, 101800, 116, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Archaludon - Dragon Claw - Level 48
  (1018, 101800, 337, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Archaludon - Flash Cannon - Level 54
  (1018, 101800, 430, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Archaludon - Metal Burst - Level 60
  (1018, 101800, 368, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Archaludon - Hyper Beam - Level 66
  (1018, 101800, 63, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Archaludon - Take Down - TM001
  (1018, 101800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Archaludon - Scary Face - TM006
  (1018, 101800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Archaludon - Protect - TM007
  (1018, 101800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Archaludon - Facade - TM025
  (1018, 101800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Archaludon - Snarl - TM030
  (1018, 101800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 18),
  -- Archaludon - Metal Claw - TM031
  (1018, 101800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 19),
  -- Archaludon - Rock Tomb - TM036
  (1018, 101800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Archaludon - Dragon Tail - TM044
  (1018, 101800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 21),
  -- Archaludon - Endure - TM047
  (1018, 101800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Archaludon - Brick Break - TM058
  (1018, 101800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 23),
  -- Archaludon - Foul Play - TM062
  (1018, 101800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 24),
  -- Archaludon - Body Slam - TM066
  (1018, 101800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Archaludon - Sleep Talk - TM070
  (1018, 101800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Archaludon - Reflect - TM074
  (1018, 101800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Archaludon - Light Screen - TM075
  (1018, 101800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Archaludon - Dragon Claw - TM078
  (1018, 101800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 29),
  -- Archaludon - Thunder Wave - TM082
  (1018, 101800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 30),
  -- Archaludon - Rest - TM085
  (1018, 101800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Archaludon - Rock Slide - TM086
  (1018, 101800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Archaludon - Swords Dance - TM088
  (1018, 101800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Archaludon - Body Press - TM089
  (1018, 101800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 34),
  -- Archaludon - Flash Cannon - TM093
  (1018, 101800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Archaludon - Dark Pulse - TM094
  (1018, 101800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Archaludon - Iron Head - TM099
  (1018, 101800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Archaludon - Substitute - TM103
  (1018, 101800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Archaludon - Iron Defense - TM104
  (1018, 101800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Archaludon - Aura Sphere - TM112
  (1018, 101800, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 40),
  -- Archaludon - Dragon Pulse - TM115
  (1018, 101800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Archaludon - Stealth Rock - TM116
  (1018, 101800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Archaludon - Heavy Slam - TM121
  (1018, 101800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Archaludon - Thunderbolt - TM126
  (1018, 101800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Archaludon - Earthquake - TM149
  (1018, 101800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Archaludon - Stone Edge - TM150
  (1018, 101800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Archaludon - Giga Impact - TM152
  (1018, 101800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Archaludon - Outrage - TM156
  (1018, 101800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 48),
  -- Archaludon - Hyper Beam - TM163
  (1018, 101800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Archaludon - Thunder - TM166
  (1018, 101800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Archaludon - Solar Beam - TM168
  (1018, 101800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Archaludon - Draco Meteor - TM169
  (1018, 101800, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 52),
  -- Archaludon - Steel Beam - TM170
  (1018, 101800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 53),
  -- Archaludon - Tera Blast - TM171
  (1018, 101800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Archaludon - Slash - Egg
  (1018, 101800, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Archaludon - Mirror Coat - Egg
  (1018, 101800, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Archaludon - Night Slash - Egg
  (1018, 101800, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Archaludon - Electro Shot - Evolution
  (1018, 101800, 905, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Hydrapple - Withdraw - Level 1
  (1019, 101900, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hydrapple - Sweet Scent - Level 1
  (1019, 101900, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hydrapple - Recycle - Level 1
  (1019, 101900, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hydrapple - Astonish - Level 1
  (1019, 101900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hydrapple - Dragon Tail - Level 4
  (1019, 101900, 525, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Hydrapple - Growth - Level 8
  (1019, 101900, 74, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Hydrapple - Dragon Breath - Level 12
  (1019, 101900, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hydrapple - Protect - Level 16
  (1019, 101900, 182, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hydrapple - Bullet Seed - Level 20
  (1019, 101900, 331, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Hydrapple - Syrup Bomb - Level 28
  (1019, 101900, 903, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Hydrapple - Dragon Pulse - Level 32
  (1019, 101900, 406, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Hydrapple - Recover - Level 36
  (1019, 101900, 105, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hydrapple - Energy Ball - Level 40
  (1019, 101900, 412, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Hydrapple - Substitute - Level 44
  (1019, 101900, 164, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Hydrapple - Power Whip - Level 54
  (1019, 101900, 438, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Hydrapple - Take Down - TM001
  (1019, 101900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Hydrapple - Protect - TM007
  (1019, 101900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Hydrapple - Pounce - TM021
  (1019, 101900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 18),
  -- Hydrapple - Facade - TM025
  (1019, 101900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Hydrapple - Magical Leaf - TM033
  (1019, 101900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Hydrapple - Dragon Tail - TM044
  (1019, 101900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 21),
  -- Hydrapple - Endure - TM047
  (1019, 101900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Hydrapple - Sunny Day - TM049
  (1019, 101900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Hydrapple - Rain Dance - TM050
  (1019, 101900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Hydrapple - Bullet Seed - TM056
  (1019, 101900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Hydrapple - Body Slam - TM066
  (1019, 101900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Hydrapple - Sleep Talk - TM070
  (1019, 101900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Hydrapple - Seed Bomb - TM071
  (1019, 101900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Hydrapple - Reflect - TM074
  (1019, 101900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Hydrapple - Grass Knot - TM081
  (1019, 101900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 30),
  -- Hydrapple - Rest - TM085
  (1019, 101900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Hydrapple - Body Press - TM089
  (1019, 101900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 32),
  -- Hydrapple - Substitute - TM103
  (1019, 101900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Hydrapple - Giga Drain - TM111
  (1019, 101900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Hydrapple - Dragon Pulse - TM115
  (1019, 101900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 35),
  -- Hydrapple - Energy Ball - TM119
  (1019, 101900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Hydrapple - Heavy Slam - TM121
  (1019, 101900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 37),
  -- Hydrapple - Pollen Puff - TM131
  (1019, 101900, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 38),
  -- Hydrapple - Earth Power - TM133
  (1019, 101900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Hydrapple - Grassy Terrain - TM137
  (1019, 101900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Hydrapple - Nasty Plot - TM140
  (1019, 101900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Hydrapple - Hydro Pump - TM142
  (1019, 101900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Hydrapple - Earthquake - TM149
  (1019, 101900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Hydrapple - Giga Impact - TM152
  (1019, 101900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Hydrapple - Outrage - TM156
  (1019, 101900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 45),
  -- Hydrapple - Leaf Storm - TM159
  (1019, 101900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 46),
  -- Hydrapple - Hyper Beam - TM163
  (1019, 101900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Hydrapple - Solar Beam - TM168
  (1019, 101900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 48),
  -- Hydrapple - Draco Meteor - TM169
  (1019, 101900, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 49),
  -- Hydrapple - Tera Blast - TM171
  (1019, 101900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Hydrapple - Defense Curl - Egg
  (1019, 101900, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hydrapple - Rollout - Egg
  (1019, 101900, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hydrapple - Recycle - Egg
  (1019, 101900, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hydrapple - Sucker Punch - Egg
  (1019, 101900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hydrapple - Fickle Beam - Evolution
  (1019, 101900, 907, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Hydrapple - Yawn - Reminder
  (1019, 101900, 281, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Hydrapple - Double Hit - Reminder
  (1019, 101900, 458, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Hydrapple - Infestation - Reminder
  (1019, 101900, 611, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Gouging Fire - Stomp - Level 1
  (1020, 102000, 23, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gouging Fire - Leer - Level 1
  (1020, 102000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gouging Fire - Sunny Day - Level 1
  (1020, 102000, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gouging Fire - Incinerate - Level 1
  (1020, 102000, 510, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gouging Fire - Fire Fang - Level 7
  (1020, 102000, 424, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Gouging Fire - Howl - Level 14
  (1020, 102000, 336, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gouging Fire - Bite - Level 21
  (1020, 102000, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Gouging Fire - Dragon Claw - Level 28
  (1020, 102000, 337, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Gouging Fire - Crush Claw - Level 35
  (1020, 102000, 306, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Gouging Fire - Morning Sun - Level 42
  (1020, 102000, 234, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Gouging Fire - Burning Bulwark - Level 49
  (1020, 102000, 908, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Gouging Fire - Dragon Rush - Level 56
  (1020, 102000, 407, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Gouging Fire - Fire Blast - Level 63
  (1020, 102000, 126, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Gouging Fire - Lava Plume - Level 70
  (1020, 102000, 436, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Gouging Fire - Outrage - Level 77
  (1020, 102000, 200, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Gouging Fire - Flare Blitz - Level 84
  (1020, 102000, 394, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Gouging Fire - Raging Fury - Level 91
  (1020, 102000, 833, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Gouging Fire - Take Down - TM001
  (1020, 102000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Gouging Fire - Scary Face - TM006
  (1020, 102000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Gouging Fire - Protect - TM007
  (1020, 102000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Gouging Fire - Fire Fang - TM008
  (1020, 102000, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Gouging Fire - Thunder Fang - TM009
  (1020, 102000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Gouging Fire - Fire Spin - TM024
  (1020, 102000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Gouging Fire - Facade - TM025
  (1020, 102000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Gouging Fire - Bulldoze - TM028
  (1020, 102000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Gouging Fire - Snarl - TM030
  (1020, 102000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Gouging Fire - Flame Charge - TM038
  (1020, 102000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 27),
  -- Gouging Fire - Dragon Tail - TM044
  (1020, 102000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Gouging Fire - Endure - TM047
  (1020, 102000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Gouging Fire - Sunny Day - TM049
  (1020, 102000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Gouging Fire - Smart Strike - TM053
  (1020, 102000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 31),
  -- Gouging Fire - Psychic Fangs - TM063
  (1020, 102000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Gouging Fire - Body Slam - TM066
  (1020, 102000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Gouging Fire - Sleep Talk - TM070
  (1020, 102000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Gouging Fire - Dragon Claw - TM078
  (1020, 102000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Gouging Fire - Stomping Tantrum - TM084
  (1020, 102000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Gouging Fire - Rest - TM085
  (1020, 102000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Gouging Fire - Iron Head - TM099
  (1020, 102000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Gouging Fire - Dragon Dance - TM100
  (1020, 102000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 39),
  -- Gouging Fire - Substitute - TM103
  (1020, 102000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Gouging Fire - Crunch - TM108
  (1020, 102000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Gouging Fire - Dragon Pulse - TM115
  (1020, 102000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Gouging Fire - Heat Wave - TM118
  (1020, 102000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 43),
  -- Gouging Fire - Flamethrower - TM125
  (1020, 102000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Gouging Fire - Reversal - TM134
  (1020, 102000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 45),
  -- Gouging Fire - Fire Blast - TM141
  (1020, 102000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Gouging Fire - Earthquake - TM149
  (1020, 102000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Gouging Fire - Stone Edge - TM150
  (1020, 102000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Gouging Fire - Giga Impact - TM152
  (1020, 102000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Gouging Fire - Outrage - TM156
  (1020, 102000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 50),
  -- Gouging Fire - Overheat - TM157
  (1020, 102000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Gouging Fire - Hyper Beam - TM163
  (1020, 102000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Gouging Fire - Flare Blitz - TM165
  (1020, 102000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Gouging Fire - Draco Meteor - TM169
  (1020, 102000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 54),
  -- Gouging Fire - Tera Blast - TM171
  (1020, 102000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Gouging Fire - Double Kick - Reminder
  (1020, 102000, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Gouging Fire - Ancient Power - Reminder
  (1020, 102000, 246, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Gouging Fire - Noble Roar - Reminder
  (1020, 102000, 568, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Raging Bolt - Stomp - Level 1
  (1021, 102100, 23, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raging Bolt - Twister - Level 1
  (1021, 102100, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raging Bolt - Sunny Day - Level 1
  (1021, 102100, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raging Bolt - Shock Wave - Level 1
  (1021, 102100, 351, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raging Bolt - Charge - Level 7
  (1021, 102100, 268, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Raging Bolt - Dragon Breath - Level 14
  (1021, 102100, 225, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Raging Bolt - Electric Terrain - Level 21
  (1021, 102100, 604, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Raging Bolt - Discharge - Level 28
  (1021, 102100, 435, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Raging Bolt - Dragon Tail - Level 35
  (1021, 102100, 525, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Raging Bolt - Calm Mind - Level 42
  (1021, 102100, 347, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Raging Bolt - Thunderclap - Level 49
  (1021, 102100, 909, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Raging Bolt - Dragon Hammer - Level 56
  (1021, 102100, 692, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Raging Bolt - Rising Voltage - Level 63
  (1021, 102100, 804, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Raging Bolt - Dragon Pulse - Level 70
  (1021, 102100, 406, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Raging Bolt - Zap Cannon - Level 77
  (1021, 102100, 192, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Raging Bolt - Body Press - Level 84
  (1021, 102100, 776, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Raging Bolt - Thunder - Level 91
  (1021, 102100, 87, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Raging Bolt - Take Down - TM001
  (1021, 102100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Raging Bolt - Scary Face - TM006
  (1021, 102100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Raging Bolt - Protect - TM007
  (1021, 102100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Raging Bolt - Thunder Fang - TM009
  (1021, 102100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Raging Bolt - Charge Beam - TM023
  (1021, 102100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Raging Bolt - Facade - TM025
  (1021, 102100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Raging Bolt - Snarl - TM030
  (1021, 102100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Raging Bolt - Dragon Tail - TM044
  (1021, 102100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Raging Bolt - Endure - TM047
  (1021, 102100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Raging Bolt - Volt Switch - TM048
  (1021, 102100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Raging Bolt - Sunny Day - TM049
  (1021, 102100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Raging Bolt - Body Slam - TM066
  (1021, 102100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Raging Bolt - Sleep Talk - TM070
  (1021, 102100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Raging Bolt - Electro Ball - TM072
  (1021, 102100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 31),
  -- Raging Bolt - Thunder Wave - TM082
  (1021, 102100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Raging Bolt - Stomping Tantrum - TM084
  (1021, 102100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Raging Bolt - Rest - TM085
  (1021, 102100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Raging Bolt - Taunt - TM087
  (1021, 102100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Raging Bolt - Body Press - TM089
  (1021, 102100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Raging Bolt - Eerie Impulse - TM096
  (1021, 102100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 37),
  -- Raging Bolt - Substitute - TM103
  (1021, 102100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Raging Bolt - Crunch - TM108
  (1021, 102100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Raging Bolt - Dragon Pulse - TM115
  (1021, 102100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Raging Bolt - Hyper Voice - TM117
  (1021, 102100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Raging Bolt - Heavy Slam - TM121
  (1021, 102100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 42),
  -- Raging Bolt - Thunderbolt - TM126
  (1021, 102100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Raging Bolt - Calm Mind - TM129
  (1021, 102100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Raging Bolt - Electric Terrain - TM136
  (1021, 102100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 45),
  -- Raging Bolt - Wild Charge - TM147
  (1021, 102100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Raging Bolt - Earthquake - TM149
  (1021, 102100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Raging Bolt - Giga Impact - TM152
  (1021, 102100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Raging Bolt - Outrage - TM156
  (1021, 102100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Raging Bolt - Hyper Beam - TM163
  (1021, 102100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Raging Bolt - Thunder - TM166
  (1021, 102100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Raging Bolt - Solar Beam - TM168
  (1021, 102100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Raging Bolt - Draco Meteor - TM169
  (1021, 102100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 53),
  -- Raging Bolt - Tera Blast - TM171
  (1021, 102100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Raging Bolt - Ancient Power - Reminder
  (1021, 102100, 246, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Iron Boulder - Horn Attack - Level 1
  (1022, 102200, 30, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Boulder - Leer - Level 1
  (1022, 102200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Boulder - Rock Throw - Level 1
  (1022, 102200, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Boulder - Electric Terrain - Level 1
  (1022, 102200, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Boulder - Quick Attack - Level 7
  (1022, 102200, 98, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Boulder - Slash - Level 14
  (1022, 102200, 163, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Boulder - Agility - Level 21
  (1022, 102200, 97, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Boulder - Psycho Cut - Level 28
  (1022, 102200, 427, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Boulder - Counter - Level 35
  (1022, 102200, 68, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Boulder - Rock Tomb - Level 42
  (1022, 102200, 317, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Boulder - Sacred Sword - Level 49
  (1022, 102200, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Boulder - Mighty Cleave - Level 56
  (1022, 102200, 910, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Boulder - Swords Dance - Level 63
  (1022, 102200, 14, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Boulder - Megahorn - Level 70
  (1022, 102200, 224, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Boulder - Quick Guard - Level 77
  (1022, 102200, 501, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Boulder - Stone Edge - Level 84
  (1022, 102200, 444, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Boulder - Giga Impact - Level 91
  (1022, 102200, 416, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Boulder - Take Down - TM001
  (1022, 102200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Boulder - Agility - TM004
  (1022, 102200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Iron Boulder - Scary Face - TM006
  (1022, 102200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Iron Boulder - Protect - TM007
  (1022, 102200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Iron Boulder - Facade - TM025
  (1022, 102200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Iron Boulder - Aerial Ace - TM027
  (1022, 102200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Iron Boulder - Bulldoze - TM028
  (1022, 102200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Iron Boulder - Rock Tomb - TM036
  (1022, 102200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Iron Boulder - Endure - TM047
  (1022, 102200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Iron Boulder - Sandstorm - TM051
  (1022, 102200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Iron Boulder - Psyshock - TM054
  (1022, 102200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Iron Boulder - Brick Break - TM058
  (1022, 102200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Iron Boulder - Zen Headbutt - TM059
  (1022, 102200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Iron Boulder - Air Slash - TM065
  (1022, 102200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Iron Boulder - Body Slam - TM066
  (1022, 102200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Iron Boulder - Sleep Talk - TM070
  (1022, 102200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Iron Boulder - Rock Blast - TM076
  (1022, 102200, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Iron Boulder - Poison Jab - TM083
  (1022, 102200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Iron Boulder - Rest - TM085
  (1022, 102200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Iron Boulder - Taunt - TM087
  (1022, 102200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Iron Boulder - Swords Dance - TM088
  (1022, 102200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Iron Boulder - Iron Head - TM099
  (1022, 102200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Iron Boulder - Substitute - TM103
  (1022, 102200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Iron Boulder - Iron Defense - TM104
  (1022, 102200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Iron Boulder - X-Scissor - TM105
  (1022, 102200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 42),
  -- Iron Boulder - Psychic - TM120
  (1022, 102200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Iron Boulder - Electric Terrain - TM136
  (1022, 102200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 44),
  -- Iron Boulder - Wild Charge - TM147
  (1022, 102200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Iron Boulder - Earthquake - TM149
  (1022, 102200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Iron Boulder - Stone Edge - TM150
  (1022, 102200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Iron Boulder - Giga Impact - TM152
  (1022, 102200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Iron Boulder - Hyper Beam - TM163
  (1022, 102200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Iron Boulder - Close Combat - TM167
  (1022, 102200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 50),
  -- Iron Boulder - Tera Blast - TM171
  (1022, 102200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Iron Crown - Leer - Level 1
  (1023, 102300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Crown - Confusion - Level 1
  (1023, 102300, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Crown - Metal Claw - Level 1
  (1023, 102300, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Crown - Electric Terrain - Level 1
  (1023, 102300, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Crown - Smart Strike - Level 7
  (1023, 102300, 684, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Crown - Slash - Level 14
  (1023, 102300, 163, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Crown - Iron Defense - Level 21
  (1023, 102300, 334, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Crown - Psyshock - Level 28
  (1023, 102300, 473, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Crown - Psycho Cut - Level 35
  (1023, 102300, 427, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Crown - Flash Cannon - Level 42
  (1023, 102300, 430, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Crown - Sacred Sword - Level 49
  (1023, 102300, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Crown - Tachyon Cutter - Level 56
  (1023, 102300, 911, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Crown - Future Sight - Level 63
  (1023, 102300, 248, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Crown - Volt Switch - Level 70
  (1023, 102300, 521, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Crown - Quick Guard - Level 77
  (1023, 102300, 501, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Crown - Metal Burst - Level 84
  (1023, 102300, 368, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Crown - Hyper Beam - Level 91
  (1023, 102300, 63, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Crown - Take Down - TM001
  (1023, 102300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Crown - Agility - TM004
  (1023, 102300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Iron Crown - Scary Face - TM006
  (1023, 102300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Iron Crown - Protect - TM007
  (1023, 102300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Iron Crown - Facade - TM025
  (1023, 102300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Iron Crown - Bulldoze - TM028
  (1023, 102300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Iron Crown - Metal Claw - TM031
  (1023, 102300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Iron Crown - Stored Power - TM041
  (1023, 102300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Iron Crown - Endure - TM047
  (1023, 102300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Iron Crown - Volt Switch - TM048
  (1023, 102300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Iron Crown - Smart Strike - TM053
  (1023, 102300, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 28),
  -- Iron Crown - Psyshock - TM054
  (1023, 102300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Iron Crown - Brick Break - TM058
  (1023, 102300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Iron Crown - Zen Headbutt - TM059
  (1023, 102300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Iron Crown - Air Slash - TM065
  (1023, 102300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Iron Crown - Body Slam - TM066
  (1023, 102300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Iron Crown - Sleep Talk - TM070
  (1023, 102300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Iron Crown - Rest - TM085
  (1023, 102300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Iron Crown - Swords Dance - TM088
  (1023, 102300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Iron Crown - Flash Cannon - TM093
  (1023, 102300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Iron Crown - Iron Head - TM099
  (1023, 102300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Iron Crown - Substitute - TM103
  (1023, 102300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Iron Crown - Iron Defense - TM104
  (1023, 102300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Iron Crown - X-Scissor - TM105
  (1023, 102300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 41),
  -- Iron Crown - Psychic - TM120
  (1023, 102300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Iron Crown - Heavy Slam - TM121
  (1023, 102300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Iron Crown - Calm Mind - TM129
  (1023, 102300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Iron Crown - Electric Terrain - TM136
  (1023, 102300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 45),
  -- Iron Crown - Giga Impact - TM152
  (1023, 102300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Iron Crown - Focus Blast - TM158
  (1023, 102300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 47),
  -- Iron Crown - Hyper Beam - TM163
  (1023, 102300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Iron Crown - Steel Beam - TM170
  (1023, 102300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 49),
  -- Iron Crown - Tera Blast - TM171
  (1023, 102300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Terapagos - Withdraw - Level 1
  (1024, 102400, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terapagos - Tri Attack - Level 1
  (1024, 102400, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terapagos - Rapid Spin - Level 1
  (1024, 102400, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Terapagos - Ancient Power - Level 10
  (1024, 102400, 246, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Terapagos - Headbutt - Level 20
  (1024, 102400, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Terapagos - Protect - Level 30
  (1024, 102400, 182, 23, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Terapagos - Earth Power - Level 40
  (1024, 102400, 414, 23, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Terapagos - Heavy Slam - Level 50
  (1024, 102400, 484, 23, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Terapagos - Tera Starstorm - Level 60
  (1024, 102400, 906, 23, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Terapagos - Double-Edge - Level 70
  (1024, 102400, 38, 23, NULL, 1, 70, NULL, NULL, NULL, 10),
  -- Terapagos - Rock Polish - Level 80
  (1024, 102400, 397, 23, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Terapagos - Gyro Ball - Level 90
  (1024, 102400, 360, 23, NULL, 1, 90, NULL, NULL, NULL, 12),
  -- Terapagos - Take Down - TM001
  (1024, 102400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Terapagos - Protect - TM007
  (1024, 102400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Terapagos - Water Pulse - TM011
  (1024, 102400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Terapagos - Facade - TM025
  (1024, 102400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Terapagos - Stored Power - TM041
  (1024, 102400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 17),
  -- Terapagos - Endure - TM047
  (1024, 102400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Terapagos - Sunny Day - TM049
  (1024, 102400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Terapagos - Rain Dance - TM050
  (1024, 102400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Terapagos - Zen Headbutt - TM059
  (1024, 102400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 21),
  -- Terapagos - Body Slam - TM066
  (1024, 102400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 22),
  -- Terapagos - Sleep Talk - TM070
  (1024, 102400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Terapagos - Dazzling Gleam - TM079
  (1024, 102400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 24),
  -- Terapagos - Rest - TM085
  (1024, 102400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Terapagos - Rock Slide - TM086
  (1024, 102400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 26),
  -- Terapagos - Body Press - TM089
  (1024, 102400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 27),
  -- Terapagos - Flash Cannon - TM093
  (1024, 102400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 28),
  -- Terapagos - Dark Pulse - TM094
  (1024, 102400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 29),
  -- Terapagos - Iron Head - TM099
  (1024, 102400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 30),
  -- Terapagos - Power Gem - TM101
  (1024, 102400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 31),
  -- Terapagos - Substitute - TM103
  (1024, 102400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Terapagos - Crunch - TM108
  (1024, 102400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 33),
  -- Terapagos - Aura Sphere - TM112
  (1024, 102400, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 34),
  -- Terapagos - Dragon Pulse - TM115
  (1024, 102400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 35),
  -- Terapagos - Stealth Rock - TM116
  (1024, 102400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 36),
  -- Terapagos - Energy Ball - TM119
  (1024, 102400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Terapagos - Heavy Slam - TM121
  (1024, 102400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Terapagos - Surf - TM123
  (1024, 102400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Terapagos - Ice Spinner - TM124
  (1024, 102400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 40),
  -- Terapagos - Flamethrower - TM125
  (1024, 102400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 41),
  -- Terapagos - Thunderbolt - TM126
  (1024, 102400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Terapagos - Calm Mind - TM129
  (1024, 102400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Terapagos - Earth Power - TM133
  (1024, 102400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Terapagos - Ice Beam - TM135
  (1024, 102400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Terapagos - Wild Charge - TM147
  (1024, 102400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Terapagos - Earthquake - TM149
  (1024, 102400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Terapagos - Stone Edge - TM150
  (1024, 102400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Terapagos - Giga Impact - TM152
  (1024, 102400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Terapagos - Bug Buzz - TM162
  (1024, 102400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 50),
  -- Terapagos - Hyper Beam - TM163
  (1024, 102400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Terapagos - Flare Blitz - TM165
  (1024, 102400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 52),
  -- Terapagos - Thunder - TM166
  (1024, 102400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 53),
  -- Terapagos - Solar Beam - TM168
  (1024, 102400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Pecharunt - Smog - Level 1
  (1025, 102500, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pecharunt - Poison Gas - Level 1
  (1025, 102500, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pecharunt - Memento - Level 1
  (1025, 102500, 262, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pecharunt - Astonish - Level 1
  (1025, 102500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pecharunt - Withdraw - Level 8
  (1025, 102500, 110, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pecharunt - Destiny Bond - Level 16
  (1025, 102500, 194, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pecharunt - Fake Tears - Level 24
  (1025, 102500, 313, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Pecharunt - Parting Shot - Level 32
  (1025, 102500, 575, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Pecharunt - Shadow Ball - Level 40
  (1025, 102500, 247, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Pecharunt - Malignant Chain - Level 48
  (1025, 102500, 919, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Pecharunt - Toxic - Level 56
  (1025, 102500, 92, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Pecharunt - Nasty Plot - Level 64
  (1025, 102500, 417, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Pecharunt - Recover - Level 72
  (1025, 102500, 105, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Pecharunt - Fake Tears - TM003
  (1025, 102500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 14),
  -- Pecharunt - Protect - TM007
  (1025, 102500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Pecharunt - Acid Spray - TM013
  (1025, 102500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Pecharunt - Hex - TM029
  (1025, 102500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 17),
  -- Pecharunt - Night Shade - TM042
  (1025, 102500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 18),
  -- Pecharunt - Venoshock - TM045
  (1025, 102500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 19),
  -- Pecharunt - Endure - TM047
  (1025, 102500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Pecharunt - Foul Play - TM062
  (1025, 102500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 21),
  -- Pecharunt - Sleep Talk - TM070
  (1025, 102500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 22),
  -- Pecharunt - Rest - TM085
  (1025, 102500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 23),
  -- Pecharunt - Imprison - TM092
  (1025, 102500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 24),
  -- Pecharunt - Gunk Shot - TM102
  (1025, 102500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 25),
  -- Pecharunt - Substitute - TM103
  (1025, 102500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 26),
  -- Pecharunt - Shadow Ball - TM114
  (1025, 102500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 27),
  -- Pecharunt - Nasty Plot - TM140
  (1025, 102500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 28),
  -- Pecharunt - Sludge Bomb - TM148
  (1025, 102500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 29),
  -- Pecharunt - Phantom Force - TM151
  (1025, 102500, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 30),
  -- Pecharunt - Tera Blast - TM171
  (1025, 102500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 31),
  -- Pecharunt - Defense Curl - Reminder
  (1025, 102500, 111, 23, NULL, 9, NULL, NULL, NULL, NULL, 32),
  -- Pecharunt - Rollout - Reminder
  (1025, 102500, 205, 23, NULL, 9, NULL, NULL, NULL, NULL, 33),
  -- Pecharunt - Mean Look - Reminder
  (1025, 102500, 212, 23, NULL, 9, NULL, NULL, NULL, NULL, 34);
