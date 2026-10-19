-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM107 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 401-450.
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
  -- Budew - Absorb - Level 1
  (406, 40600, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 1
  (406, 40600, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Budew - Stun Spore - Level 1
  (406, 40600, 78, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Budew - Charm - Level 1
  (406, 40600, 204, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Budew - Protect - TM017
  (406, 40600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 5),
  -- Budew - Energy Ball - TM026
  (406, 40600, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 6),
  -- Budew - Swift - TM027
  (406, 40600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 7),
  -- Budew - Swords Dance - TM030
  (406, 40600, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 8),
  -- Budew - Body Slam - TM033
  (406, 40600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 9),
  -- Budew - Endure - TM035
  (406, 40600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 10),
  -- Budew - Bullet Seed - TM040
  (406, 40600, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 11),
  -- Budew - Mud Shot - TM046
  (406, 40600, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 12),
  -- Budew - Sludge Bomb - TM053
  (406, 40600, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 13),
  -- Budew - Solar Beam - TM064
  (406, 40600, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 14),
  -- Budew - Shadow Ball - TM074
  (406, 40600, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 15),
  -- Budew - Substitute - TM085
  (406, 40600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 16),
  -- Budew - Spikes - TM088
  (406, 40600, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 17),
  -- Budew - Dazzling Gleam - TM092
  (406, 40600, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 18),
  -- Roserade - Absorb - Level 1
  (407, 40700, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Growth - Level 1
  (407, 40700, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Stun Spore - Level 1
  (407, 40700, 78, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Charm - Level 1
  (407, 40700, 204, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Razor Leaf - Level 5
  (407, 40700, 75, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Roserade - Pin Missile - Level 8
  (407, 40700, 42, 26, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Roserade - Leech Seed - Level 10
  (407, 40700, 73, 26, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Roserade - Magical Leaf - Level 15
  (407, 40700, 345, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Roserade - Sleep Powder - Level 18
  (407, 40700, 79, 26, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Roserade - Toxic Spikes - Level 22
  (407, 40700, 390, 26, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Roserade - Giga Drain - Level 30
  (407, 40700, 202, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Roserade - Poison Jab - Level 34
  (407, 40700, 398, 26, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Roserade - Synthesis - Level 37
  (407, 40700, 235, 26, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roserade - Toxic - Level 44
  (407, 40700, 92, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Roserade - Leaf Storm - Level 55
  (407, 40700, 437, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Roserade - Toxic - TM007
  (407, 40700, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Roserade - Protect - TM017
  (407, 40700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Roserade - Energy Ball - TM026
  (407, 40700, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Roserade - Swift - TM027
  (407, 40700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Roserade - Swords Dance - TM030
  (407, 40700, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Roserade - Body Slam - TM033
  (407, 40700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Roserade - Endure - TM035
  (407, 40700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Roserade - Bullet Seed - TM040
  (407, 40700, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 23),
  -- Roserade - Giga Drain - TM042
  (407, 40700, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 24),
  -- Roserade - Hyper Beam - TM044
  (407, 40700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Roserade - Mud Shot - TM046
  (407, 40700, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Roserade - Sludge Bomb - TM053
  (407, 40700, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Roserade - Giga Impact - TM055
  (407, 40700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Roserade - Solar Beam - TM064
  (407, 40700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 29),
  -- Roserade - Shadow Ball - TM074
  (407, 40700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Roserade - Poison Jab - TM077
  (407, 40700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Roserade - Substitute - TM085
  (407, 40700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Roserade - Spikes - TM088
  (407, 40700, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 33),
  -- Roserade - Toxic Spikes - TM089
  (407, 40700, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 34),
  -- Roserade - Dazzling Gleam - TM092
  (407, 40700, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 35),
  -- Buneary - Tackle - Level 1
  (427, 42700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Draining Kiss - Level 14
  (427, 42700, 577, 26, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Buneary - Agility - Level 20
  (427, 42700, 97, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Buneary - Charm - Level 24
  (427, 42700, 204, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Buneary - Brutal Swing - Level 28
  (427, 42700, 693, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Buneary - Headbutt - Level 32
  (427, 42700, 29, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Buneary - Cotton Guard - Level 42
  (427, 42700, 538, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Buneary - Bounce - Level 48
  (427, 42700, 340, 26, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Buneary - Dynamic Punch - Level 52
  (427, 42700, 223, 26, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Buneary - Headbutt - TM001
  (427, 42700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Buneary - Thunder Wave - TM008
  (427, 42700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Buneary - Ice Beam - TM013
  (427, 42700, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Buneary - Protect - TM017
  (427, 42700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Buneary - Power-Up Punch - TM018
  (427, 42700, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 16),
  -- Buneary - Play Rough - TM020
  (427, 42700, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Buneary - Thunder Punch - TM023
  (427, 42700, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Buneary - Ice Punch - TM024
  (427, 42700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 19),
  -- Buneary - Swift - TM027
  (427, 42700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Buneary - Dig - TM028
  (427, 42700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Buneary - Fire Punch - TM029
  (427, 42700, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Buneary - Endure - TM035
  (427, 42700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Buneary - Agility - TM047
  (427, 42700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Buneary - Solar Beam - TM064
  (427, 42700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Buneary - Thunderbolt - TM067
  (427, 42700, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 26),
  -- Buneary - Hyper Voice - TM071
  (427, 42700, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Buneary - Shadow Ball - TM074
  (427, 42700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Buneary - Substitute - TM085
  (427, 42700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Buneary - Iron Tail - TM087
  (427, 42700, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 30),
  -- Buneary - Work Up - TM103
  (427, 42700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 31),
  -- Buneary - Close Combat - TM107
  (427, 42700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 32),
  -- Lopunny - Tackle - Level 1
  (428, 42800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Power-Up Punch - Level 6
  (428, 42800, 612, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lopunny - Mach Punch - Level 9
  (428, 42800, 183, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Lopunny - Double Team - Level 12
  (428, 42800, 104, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lopunny - Draining Kiss - Level 14
  (428, 42800, 577, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lopunny - Agility - Level 20
  (428, 42800, 97, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lopunny - Charm - Level 24
  (428, 42800, 204, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lopunny - Brutal Swing - Level 28
  (428, 42800, 693, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lopunny - Headbutt - Level 32
  (428, 42800, 29, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Lopunny - Iron Tail - Level 36
  (428, 42800, 231, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Lopunny - Cotton Guard - Level 42
  (428, 42800, 538, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Lopunny - Bounce - Level 48
  (428, 42800, 340, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Lopunny - Dynamic Punch - Level 52
  (428, 42800, 223, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Lopunny - Headbutt - TM001
  (428, 42800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Lopunny - Thunder Wave - TM008
  (428, 42800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Lopunny - Ice Beam - TM013
  (428, 42800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Lopunny - Protect - TM017
  (428, 42800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Lopunny - Power-Up Punch - TM018
  (428, 42800, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Lopunny - Play Rough - TM020
  (428, 42800, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Lopunny - Thunder Punch - TM023
  (428, 42800, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Lopunny - Ice Punch - TM024
  (428, 42800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Lopunny - Swift - TM027
  (428, 42800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Lopunny - Dig - TM028
  (428, 42800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Lopunny - Fire Punch - TM029
  (428, 42800, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Lopunny - Swords Dance - TM030
  (428, 42800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Lopunny - Double Team - TM032
  (428, 42800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 28),
  -- Lopunny - Endure - TM035
  (428, 42800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Lopunny - Hyper Beam - TM044
  (428, 42800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Lopunny - Agility - TM047
  (428, 42800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Lopunny - Giga Impact - TM055
  (428, 42800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Lopunny - Solar Beam - TM064
  (428, 42800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Lopunny - Thunderbolt - TM067
  (428, 42800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Lopunny - Hyper Voice - TM071
  (428, 42800, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Lopunny - Shadow Ball - TM074
  (428, 42800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Lopunny - U-turn - TM082
  (428, 42800, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 37),
  -- Lopunny - Substitute - TM085
  (428, 42800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Lopunny - Iron Tail - TM087
  (428, 42800, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 39),
  -- Lopunny - Focus Blast - TM102
  (428, 42800, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 40),
  -- Lopunny - Work Up - TM103
  (428, 42800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Lopunny - Blizzard - TM105
  (428, 42800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Lopunny - Thunder - TM106
  (428, 42800, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 43),
  -- Lopunny - Close Combat - TM107
  (428, 42800, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Tomb - Level 1
  (443, 44300, 328, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gible - Dragon Breath - Level 12
  (443, 44300, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Gible - Bulldoze - Level 18
  (443, 44300, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gible - Bite - Level 25
  (443, 44300, 44, 26, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gible - Slash - Level 30
  (443, 44300, 163, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Gible - Dragon Claw - Level 36
  (443, 44300, 337, 26, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Gible - Dig - Level 42
  (443, 44300, 91, 26, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Gible - Take Down - Level 54
  (443, 44300, 36, 26, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Gible - Dragon Rush - Level 60
  (443, 44300, 407, 26, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Gible - Dragon Claw - TM002
  (443, 44300, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 11),
  -- Gible - Rock Slide - TM012
  (443, 44300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 12),
  -- Gible - Fire Fang - TM014
  (443, 44300, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 13),
  -- Gible - Protect - TM017
  (443, 44300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Gible - Thunder Fang - TM021
  (443, 44300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 15),
  -- Gible - Swift - TM027
  (443, 44300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Gible - Dig - TM028
  (443, 44300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Gible - Swords Dance - TM030
  (443, 44300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Gible - Body Slam - TM033
  (443, 44300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Gible - Endure - TM035
  (443, 44300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Gible - Rock Tomb - TM036
  (443, 44300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Gible - Stealth Rock - TM037
  (443, 44300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 22),
  -- Gible - Fire Blast - TM038
  (443, 44300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 23),
  -- Gible - Earth Power - TM052
  (443, 44300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 24),
  -- Gible - Draco Meteor - TM054
  (443, 44300, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 25),
  -- Gible - Iron Head - TM058
  (443, 44300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 26),
  -- Gible - Shadow Claw - TM061
  (443, 44300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Gible - Flamethrower - TM062
  (443, 44300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 28),
  -- Gible - Stone Edge - TM065
  (443, 44300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 29),
  -- Gible - Earthquake - TM069
  (443, 44300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Gible - Dragon Pulse - TM075
  (443, 44300, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 31),
  -- Gible - Bulldoze - TM078
  (443, 44300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 32),
  -- Gible - Substitute - TM085
  (443, 44300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Gible - Outrage - TM093
  (443, 44300, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Sand Tomb - Level 1
  (444, 44400, 328, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Dragon Breath - Level 12
  (444, 44400, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Gabite - Bulldoze - Level 18
  (444, 44400, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gabite - Bite - Level 25
  (444, 44400, 44, 26, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gabite - Slash - Level 30
  (444, 44400, 163, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Gabite - Dragon Claw - Level 36
  (444, 44400, 337, 26, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Gabite - Dig - Level 42
  (444, 44400, 91, 26, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Gabite - Take Down - Level 54
  (444, 44400, 36, 26, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Gabite - Dragon Rush - Level 60
  (444, 44400, 407, 26, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Gabite - Dragon Claw - TM002
  (444, 44400, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 11),
  -- Gabite - Brick Break - TM010
  (444, 44400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 12),
  -- Gabite - Rock Slide - TM012
  (444, 44400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Gabite - Fire Fang - TM014
  (444, 44400, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 14),
  -- Gabite - Protect - TM017
  (444, 44400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Gabite - Thunder Fang - TM021
  (444, 44400, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 16),
  -- Gabite - Aerial Ace - TM022
  (444, 44400, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Gabite - Crunch - TM025
  (444, 44400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Gabite - Swift - TM027
  (444, 44400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Gabite - Dig - TM028
  (444, 44400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Gabite - Swords Dance - TM030
  (444, 44400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Gabite - Body Slam - TM033
  (444, 44400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Gabite - Endure - TM035
  (444, 44400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Gabite - Rock Tomb - TM036
  (444, 44400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Gabite - Stealth Rock - TM037
  (444, 44400, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 25),
  -- Gabite - Fire Blast - TM038
  (444, 44400, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Gabite - Earth Power - TM052
  (444, 44400, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 27),
  -- Gabite - Draco Meteor - TM054
  (444, 44400, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 28),
  -- Gabite - Iron Head - TM058
  (444, 44400, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Gabite - Shadow Claw - TM061
  (444, 44400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Gabite - Flamethrower - TM062
  (444, 44400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Gabite - Stone Edge - TM065
  (444, 44400, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Gabite - Earthquake - TM069
  (444, 44400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 33),
  -- Gabite - Dragon Pulse - TM075
  (444, 44400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Gabite - Poison Jab - TM077
  (444, 44400, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 35),
  -- Gabite - Bulldoze - TM078
  (444, 44400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Gabite - Substitute - TM085
  (444, 44400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Gabite - Spikes - TM088
  (444, 44400, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 38),
  -- Gabite - Outrage - TM093
  (444, 44400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 39),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Sand Tomb - Level 1
  (445, 44500, 328, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Breath - Level 12
  (445, 44500, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Garchomp - Bulldoze - Level 18
  (445, 44500, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Garchomp - Bite - Level 25
  (445, 44500, 44, 26, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Garchomp - Slash - Level 30
  (445, 44500, 163, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Garchomp - Dragon Claw - Level 36
  (445, 44500, 337, 26, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Garchomp - Dig - Level 42
  (445, 44500, 91, 26, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Garchomp - Take Down - Level 54
  (445, 44500, 36, 26, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Garchomp - Dragon Rush - Level 60
  (445, 44500, 407, 26, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Garchomp - Crunch - Evolution
  (445, 44500, 242, 26, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Garchomp - Dragon Claw - TM002
  (445, 44500, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 12),
  -- Garchomp - Brick Break - TM010
  (445, 44500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Garchomp - Rock Slide - TM012
  (445, 44500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Garchomp - Fire Fang - TM014
  (445, 44500, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 15),
  -- Garchomp - Protect - TM017
  (445, 44500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Garchomp - Power Gem - TM019
  (445, 44500, 408, 26, NULL, 2, NULL, NULL, 26002019, 'Version 2.0.0 onwards.', 17),
  -- Garchomp - Thunder Fang - TM021
  (445, 44500, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 18),
  -- Garchomp - Aerial Ace - TM022
  (445, 44500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Garchomp - Crunch - TM025
  (445, 44500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Garchomp - Swift - TM027
  (445, 44500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Garchomp - Dig - TM028
  (445, 44500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Garchomp - Swords Dance - TM030
  (445, 44500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Garchomp - Body Slam - TM033
  (445, 44500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Garchomp - Endure - TM035
  (445, 44500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Garchomp - Rock Tomb - TM036
  (445, 44500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Garchomp - Stealth Rock - TM037
  (445, 44500, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Garchomp - Fire Blast - TM038
  (445, 44500, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Garchomp - Hyper Beam - TM044
  (445, 44500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Garchomp - Earth Power - TM052
  (445, 44500, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 30),
  -- Garchomp - Draco Meteor - TM054
  (445, 44500, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 31),
  -- Garchomp - Giga Impact - TM055
  (445, 44500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Garchomp - Iron Head - TM058
  (445, 44500, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Garchomp - Shadow Claw - TM061
  (445, 44500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 34),
  -- Garchomp - Flamethrower - TM062
  (445, 44500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 35),
  -- Garchomp - Stone Edge - TM065
  (445, 44500, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 36),
  -- Garchomp - Earthquake - TM069
  (445, 44500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Garchomp - Surf - TM073
  (445, 44500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 38),
  -- Garchomp - Dragon Pulse - TM075
  (445, 44500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 39),
  -- Garchomp - Liquidation - TM076
  (445, 44500, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 40),
  -- Garchomp - Poison Jab - TM077
  (445, 44500, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 41),
  -- Garchomp - Bulldoze - TM078
  (445, 44500, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 42),
  -- Garchomp - Nasty Plot - TM083
  (445, 44500, 417, 26, NULL, 2, NULL, NULL, 26002083, 'Version 2.0.0 onwards.', 43),
  -- Garchomp - Substitute - TM085
  (445, 44500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Garchomp - Iron Tail - TM087
  (445, 44500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 45),
  -- Garchomp - Spikes - TM088
  (445, 44500, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 46),
  -- Garchomp - Outrage - TM093
  (445, 44500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 47),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Bullet Punch - Level 1
  (447, 44700, 418, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Riolu - Metal Claw - Level 8
  (447, 44700, 232, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Riolu - Work Up - Level 16
  (447, 44700, 526, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Riolu - Rock Smash - Level 20
  (447, 44700, 249, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Riolu - Screech - Level 24
  (447, 44700, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Riolu - Detect - Level 24
  (447, 44700, 197, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Bulldoze - Level 28
  (447, 44700, 523, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Riolu - Swords Dance - Level 35
  (447, 44700, 14, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Riolu - Rock Smash - TM004
  (447, 44700, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 11),
  -- Riolu - Brick Break - TM010
  (447, 44700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 12),
  -- Riolu - Bulk Up - TM011
  (447, 44700, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 13),
  -- Riolu - Rock Slide - TM012
  (447, 44700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Riolu - Protect - TM017
  (447, 44700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Riolu - Aerial Ace - TM022
  (447, 44700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Riolu - Thunder Punch - TM023
  (447, 44700, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Riolu - Ice Punch - TM024
  (447, 44700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Riolu - Crunch - TM025
  (447, 44700, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Riolu - Swift - TM027
  (447, 44700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Riolu - Dig - TM028
  (447, 44700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Riolu - Swords Dance - TM030
  (447, 44700, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Riolu - Endure - TM035
  (447, 44700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Riolu - Rock Tomb - TM036
  (447, 44700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Riolu - Agility - TM047
  (447, 44700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Riolu - Zen Headbutt - TM059
  (447, 44700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Riolu - Shadow Claw - TM061
  (447, 44700, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Riolu - Earthquake - TM069
  (447, 44700, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 28),
  -- Riolu - Poison Jab - TM077
  (447, 44700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 29),
  -- Riolu - Bulldoze - TM078
  (447, 44700, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 30),
  -- Riolu - Nasty Plot - TM083
  (447, 44700, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Riolu - Substitute - TM085
  (447, 44700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Riolu - Focus Blast - TM102
  (447, 44700, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 33),
  -- Riolu - Work Up - TM103
  (447, 44700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 34),
  -- Riolu - Close Combat - TM107
  (447, 44700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 35),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Protect - Level 1
  (448, 44800, 182, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Endure - Level 1
  (448, 44800, 203, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Bullet Punch - Level 1
  (448, 44800, 418, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Metal Claw - Level 8
  (448, 44800, 232, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Lucario - Work Up - Level 16
  (448, 44800, 526, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lucario - Rock Smash - Level 20
  (448, 44800, 249, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lucario - Screech - Level 24
  (448, 44800, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lucario - Aura Sphere - Level 25
  (448, 44800, 396, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Lucario - Bulldoze - Level 28
  (448, 44800, 523, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lucario - Metal Sound - Level 32
  (448, 44800, 319, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Lucario - Swords Dance - Level 35
  (448, 44800, 14, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Lucario - Dragon Pulse - Level 38
  (448, 44800, 406, 26, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Lucario - Extreme Speed - Level 45
  (448, 44800, 245, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Lucario - Close Combat - Level 54
  (448, 44800, 370, 26, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Lucario - Rock Smash - TM004
  (448, 44800, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Lucario - Roar - TM005
  (448, 44800, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Lucario - Calm Mind - TM006
  (448, 44800, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Lucario - Brick Break - TM010
  (448, 44800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Lucario - Bulk Up - TM011
  (448, 44800, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Lucario - Rock Slide - TM012
  (448, 44800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Lucario - Protect - TM017
  (448, 44800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Lucario - Power-Up Punch - TM018
  (448, 44800, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 23),
  -- Lucario - Aerial Ace - TM022
  (448, 44800, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Lucario - Thunder Punch - TM023
  (448, 44800, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Lucario - Ice Punch - TM024
  (448, 44800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 26),
  -- Lucario - Crunch - TM025
  (448, 44800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 27),
  -- Lucario - Swift - TM027
  (448, 44800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 28),
  -- Lucario - Dig - TM028
  (448, 44800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 29),
  -- Lucario - Swords Dance - TM030
  (448, 44800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 30),
  -- Lucario - Endure - TM035
  (448, 44800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Lucario - Rock Tomb - TM036
  (448, 44800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 32),
  -- Lucario - Water Pulse - TM041
  (448, 44800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 33),
  -- Lucario - Hyper Beam - TM044
  (448, 44800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 34),
  -- Lucario - Agility - TM047
  (448, 44800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 35),
  -- Lucario - Giga Impact - TM055
  (448, 44800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 36),
  -- Lucario - Zen Headbutt - TM059
  (448, 44800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Lucario - Shadow Claw - TM061
  (448, 44800, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 38),
  -- Lucario - Psychic - TM063
  (448, 44800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 39),
  -- Lucario - Stone Edge - TM065
  (448, 44800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Lucario - Earthquake - TM069
  (448, 44800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 41),
  -- Lucario - Shadow Ball - TM074
  (448, 44800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Lucario - Dragon Pulse - TM075
  (448, 44800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 43),
  -- Lucario - Poison Jab - TM077
  (448, 44800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 44),
  -- Lucario - Bulldoze - TM078
  (448, 44800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 45),
  -- Lucario - Iron Defense - TM080
  (448, 44800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 46),
  -- Lucario - Nasty Plot - TM083
  (448, 44800, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 47),
  -- Lucario - Flash Cannon - TM084
  (448, 44800, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 48),
  -- Lucario - Substitute - TM085
  (448, 44800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 49),
  -- Lucario - Iron Tail - TM087
  (448, 44800, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 50),
  -- Lucario - Dark Pulse - TM090
  (448, 44800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 51),
  -- Lucario - Metronome - TM099
  (448, 44800, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 52),
  -- Lucario - Focus Blast - TM102
  (448, 44800, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Lucario - Work Up - TM103
  (448, 44800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 54),
  -- Lucario - Close Combat - TM107
  (448, 44800, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 55),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Bite - Level 4
  (449, 44900, 44, 26, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Hippopotas - Curse - Level 8
  (449, 44900, 174, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Hippopotas - Sand Tomb - Level 12
  (449, 44900, 328, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Hippopotas - Dig - Level 16
  (449, 44900, 91, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hippopotas - Crunch - Level 20
  (449, 44900, 242, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hippopotas - Amnesia - Level 24
  (449, 44900, 133, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Hippopotas - Take Down - Level 28
  (449, 44900, 36, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Hippopotas - Roar - Level 32
  (449, 44900, 46, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Hippopotas - Earthquake - Level 40
  (449, 44900, 89, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Hippopotas - Roar - TM005
  (449, 44900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Hippopotas - Rock Slide - TM012
  (449, 44900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Hippopotas - Fire Fang - TM014
  (449, 44900, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 14),
  -- Hippopotas - Ice Fang - TM015
  (449, 44900, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 15),
  -- Hippopotas - Protect - TM017
  (449, 44900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Hippopotas - Thunder Fang - TM021
  (449, 44900, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 17),
  -- Hippopotas - Crunch - TM025
  (449, 44900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Hippopotas - Dig - TM028
  (449, 44900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Hippopotas - Body Slam - TM033
  (449, 44900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Hippopotas - Endure - TM035
  (449, 44900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Hippopotas - Rock Tomb - TM036
  (449, 44900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Hippopotas - Stealth Rock - TM037
  (449, 44900, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Hippopotas - Earth Power - TM052
  (449, 44900, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 24),
  -- Hippopotas - Double-Edge - TM056
  (449, 44900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 25),
  -- Hippopotas - Stone Edge - TM065
  (449, 44900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 26),
  -- Hippopotas - Earthquake - TM069
  (449, 44900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 27),
  -- Hippopotas - Substitute - TM085
  (449, 44900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Hippopotas - Curse - TM091
  (449, 44900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 29),
  -- Hippopotas - Whirlwind - TM094
  (449, 44900, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 30),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Sand Tomb - Level 12
  (450, 45000, 328, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Hippowdon - Dig - Level 16
  (450, 45000, 91, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Hippowdon - Crunch - Level 20
  (450, 45000, 242, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Hippowdon - Amnesia - Level 24
  (450, 45000, 133, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Hippowdon - Take Down - Level 28
  (450, 45000, 36, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Hippowdon - Roar - Level 32
  (450, 45000, 46, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Hippowdon - Heavy Slam - Level 36
  (450, 45000, 484, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Hippowdon - Earthquake - Level 40
  (450, 45000, 89, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Hippowdon - Double-Edge - Level 44
  (450, 45000, 38, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Hippowdon - Roar - TM005
  (450, 45000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Hippowdon - Rock Slide - TM012
  (450, 45000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Hippowdon - Fire Fang - TM014
  (450, 45000, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 14),
  -- Hippowdon - Ice Fang - TM015
  (450, 45000, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 15),
  -- Hippowdon - Protect - TM017
  (450, 45000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Hippowdon - Thunder Fang - TM021
  (450, 45000, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 17),
  -- Hippowdon - Crunch - TM025
  (450, 45000, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Hippowdon - Dig - TM028
  (450, 45000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Hippowdon - Body Slam - TM033
  (450, 45000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Hippowdon - Endure - TM035
  (450, 45000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Hippowdon - Rock Tomb - TM036
  (450, 45000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Hippowdon - Stealth Rock - TM037
  (450, 45000, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Hippowdon - Hyper Beam - TM044
  (450, 45000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Hippowdon - Earth Power - TM052
  (450, 45000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 25),
  -- Hippowdon - Giga Impact - TM055
  (450, 45000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Hippowdon - Double-Edge - TM056
  (450, 45000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Hippowdon - Iron Head - TM058
  (450, 45000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Hippowdon - Stone Edge - TM065
  (450, 45000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 29),
  -- Hippowdon - Earthquake - TM069
  (450, 45000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Hippowdon - Hyper Voice - TM071
  (450, 45000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Hippowdon - Substitute - TM085
  (450, 45000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Hippowdon - Curse - TM091
  (450, 45000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Hippowdon - Whirlwind - TM094
  (450, 45000, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 34);
