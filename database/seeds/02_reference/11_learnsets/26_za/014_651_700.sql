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
-- Pokémon Legends: Z-A learnsets for species 651-700.
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
  (651, 65100, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilladin - Growl - Level 1
  (651, 65100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilladin - Growth - Level 5
  (651, 65100, 74, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Quilladin - Rollout - Level 8
  (651, 65100, 205, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Quilladin - Bite - Level 11
  (651, 65100, 44, 26, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Quilladin - Leech Seed - Level 15
  (651, 65100, 73, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Quilladin - Pin Missile - Level 18
  (651, 65100, 42, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Quilladin - Take Down - Level 27
  (651, 65100, 36, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Quilladin - Brick Break - Level 35
  (651, 65100, 280, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Quilladin - Body Slam - Level 42
  (651, 65100, 34, 26, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Quilladin - Wood Hammer - Level 48
  (651, 65100, 452, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Quilladin - Headbutt - TM001
  (651, 65100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Quilladin - Rock Smash - TM004
  (651, 65100, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Quilladin - Roar - TM005
  (651, 65100, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Quilladin - Brick Break - TM010
  (651, 65100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Quilladin - Bulk Up - TM011
  (651, 65100, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Quilladin - Rock Slide - TM012
  (651, 65100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Quilladin - Protect - TM017
  (651, 65100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Quilladin - Aerial Ace - TM022
  (651, 65100, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Quilladin - Thunder Punch - TM023
  (651, 65100, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Quilladin - Energy Ball - TM026
  (651, 65100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 21),
  -- Quilladin - Swift - TM027
  (651, 65100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Quilladin - Dig - TM028
  (651, 65100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Quilladin - Reflect - TM031
  (651, 65100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 24),
  -- Quilladin - Body Slam - TM033
  (651, 65100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Quilladin - Endure - TM035
  (651, 65100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Quilladin - Rock Tomb - TM036
  (651, 65100, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Quilladin - Bullet Seed - TM040
  (651, 65100, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 28),
  -- Quilladin - Giga Drain - TM042
  (651, 65100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 29),
  -- Quilladin - Mud Shot - TM046
  (651, 65100, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 30),
  -- Quilladin - Iron Head - TM058
  (651, 65100, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 31),
  -- Quilladin - Zen Headbutt - TM059
  (651, 65100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Quilladin - Shadow Claw - TM061
  (651, 65100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 33),
  -- Quilladin - Solar Beam - TM064
  (651, 65100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 34),
  -- Quilladin - Poison Jab - TM077
  (651, 65100, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 35),
  -- Quilladin - Bulldoze - TM078
  (651, 65100, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Quilladin - Substitute - TM085
  (651, 65100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Quilladin - Spikes - TM088
  (651, 65100, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 38),
  -- Quilladin - Curse - TM091
  (651, 65100, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Chesnaught - Vine Whip - Level 1
  (652, 65200, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chesnaught - Growl - Level 1
  (652, 65200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chesnaught - Growth - Level 5
  (652, 65200, 74, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chesnaught - Rollout - Level 8
  (652, 65200, 205, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chesnaught - Bite - Level 11
  (652, 65200, 44, 26, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Chesnaught - Leech Seed - Level 15
  (652, 65200, 73, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chesnaught - Pin Missile - Level 18
  (652, 65200, 42, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Chesnaught - Take Down - Level 27
  (652, 65200, 36, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Chesnaught - Brick Break - Level 35
  (652, 65200, 280, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Chesnaught - Bulk Up - Level 38
  (652, 65200, 339, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Chesnaught - Body Slam - Level 42
  (652, 65200, 34, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Chesnaught - Close Combat - Level 45
  (652, 65200, 370, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Chesnaught - Wood Hammer - Level 48
  (652, 65200, 452, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Chesnaught - Giga Impact - Level 55
  (652, 65200, 416, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Chesnaught - Spiky Shield - Evolution
  (652, 65200, 596, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Chesnaught - Headbutt - TM001
  (652, 65200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Chesnaught - Dragon Claw - TM002
  (652, 65200, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Chesnaught - Rock Smash - TM004
  (652, 65200, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Chesnaught - Roar - TM005
  (652, 65200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Chesnaught - Brick Break - TM010
  (652, 65200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Chesnaught - Bulk Up - TM011
  (652, 65200, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 21),
  -- Chesnaught - Rock Slide - TM012
  (652, 65200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 22),
  -- Chesnaught - Protect - TM017
  (652, 65200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Chesnaught - Aerial Ace - TM022
  (652, 65200, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Chesnaught - Thunder Punch - TM023
  (652, 65200, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Chesnaught - Crunch - TM025
  (652, 65200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 26),
  -- Chesnaught - Energy Ball - TM026
  (652, 65200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 27),
  -- Chesnaught - Swift - TM027
  (652, 65200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 28),
  -- Chesnaught - Dig - TM028
  (652, 65200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 29),
  -- Chesnaught - Swords Dance - TM030
  (652, 65200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 30),
  -- Chesnaught - Reflect - TM031
  (652, 65200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 31),
  -- Chesnaught - Body Slam - TM033
  (652, 65200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 32),
  -- Chesnaught - Endure - TM035
  (652, 65200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 33),
  -- Chesnaught - Rock Tomb - TM036
  (652, 65200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 34),
  -- Chesnaught - Bullet Seed - TM040
  (652, 65200, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 35),
  -- Chesnaught - Giga Drain - TM042
  (652, 65200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 36),
  -- Chesnaught - Hyper Beam - TM044
  (652, 65200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 37),
  -- Chesnaught - Knock Off - TM045
  (652, 65200, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 38),
  -- Chesnaught - Mud Shot - TM046
  (652, 65200, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 39),
  -- Chesnaught - Giga Impact - TM055
  (652, 65200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Chesnaught - Double-Edge - TM056
  (652, 65200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 41),
  -- Chesnaught - Iron Head - TM058
  (652, 65200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 42),
  -- Chesnaught - Zen Headbutt - TM059
  (652, 65200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 43),
  -- Chesnaught - Shadow Claw - TM061
  (652, 65200, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 44),
  -- Chesnaught - Solar Beam - TM064
  (652, 65200, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 45),
  -- Chesnaught - Stone Edge - TM065
  (652, 65200, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 46),
  -- Chesnaught - Earthquake - TM069
  (652, 65200, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 47),
  -- Chesnaught - Poison Jab - TM077
  (652, 65200, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 48),
  -- Chesnaught - Bulldoze - TM078
  (652, 65200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 49),
  -- Chesnaught - Iron Defense - TM080
  (652, 65200, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 50),
  -- Chesnaught - Substitute - TM085
  (652, 65200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 51),
  -- Chesnaught - Spikes - TM088
  (652, 65200, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 52),
  -- Chesnaught - Curse - TM091
  (652, 65200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 53),
  -- Chesnaught - Close Combat - TM107
  (652, 65200, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 54),
  -- Fennekin - Tackle - Level 1
  (653, 65300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fennekin - Tail Whip - Level 1
  (653, 65300, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fennekin - Ember - Level 5
  (653, 65300, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fennekin - Charm - Level 14
  (653, 65300, 204, 26, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Fennekin - Psybeam - Level 17
  (653, 65300, 60, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Fennekin - Fire Spin - Level 20
  (653, 65300, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fennekin - Light Screen - Level 25
  (653, 65300, 113, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fennekin - Psyshock - Level 31
  (653, 65300, 473, 26, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Fennekin - Flamethrower - Level 35
  (653, 65300, 53, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fennekin - Will-O-Wisp - Level 38
  (653, 65300, 261, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Fennekin - Psychic - Level 41
  (653, 65300, 94, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Fennekin - Fire Blast - Level 54
  (653, 65300, 126, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Fennekin - Psyshock - TM003
  (653, 65300, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Fennekin - Calm Mind - TM006
  (653, 65300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Fennekin - Light Screen - TM016
  (653, 65300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Fennekin - Protect - TM017
  (653, 65300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Fennekin - Swift - TM027
  (653, 65300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Fennekin - Endure - TM035
  (653, 65300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Fennekin - Fire Blast - TM038
  (653, 65300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Fennekin - Agility - TM047
  (653, 65300, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 20),
  -- Fennekin - Overheat - TM050
  (653, 65300, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 21),
  -- Fennekin - Will-O-Wisp - TM057
  (653, 65300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 22),
  -- Fennekin - Flamethrower - TM062
  (653, 65300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 23),
  -- Fennekin - Psychic - TM063
  (653, 65300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Fennekin - Solar Beam - TM064
  (653, 65300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Fennekin - Fire Spin - TM072
  (653, 65300, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 26),
  -- Fennekin - Substitute - TM085
  (653, 65300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Fennekin - Flare Blitz - TM104
  (653, 65300, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 28),
  -- Braixen - Tackle - Level 1
  (654, 65400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braixen - Tail Whip - Level 1
  (654, 65400, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braixen - Ember - Level 5
  (654, 65400, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Braixen - Charm - Level 14
  (654, 65400, 204, 26, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Braixen - Psybeam - Level 17
  (654, 65400, 60, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Braixen - Fire Spin - Level 20
  (654, 65400, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Braixen - Light Screen - Level 25
  (654, 65400, 113, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Braixen - Psyshock - Level 31
  (654, 65400, 473, 26, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Braixen - Flamethrower - Level 35
  (654, 65400, 53, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Braixen - Will-O-Wisp - Level 38
  (654, 65400, 261, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Braixen - Psychic - Level 41
  (654, 65400, 94, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Braixen - Agility - Level 46
  (654, 65400, 97, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Braixen - Fire Blast - Level 54
  (654, 65400, 126, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Braixen - Psyshock - TM003
  (654, 65400, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Braixen - Calm Mind - TM006
  (654, 65400, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Braixen - Light Screen - TM016
  (654, 65400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Braixen - Protect - TM017
  (654, 65400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Braixen - Thunder Punch - TM023
  (654, 65400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Braixen - Swift - TM027
  (654, 65400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Braixen - Fire Punch - TM029
  (654, 65400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Braixen - Endure - TM035
  (654, 65400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Braixen - Fire Blast - TM038
  (654, 65400, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 22),
  -- Braixen - Agility - TM047
  (654, 65400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Braixen - Overheat - TM050
  (654, 65400, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 24),
  -- Braixen - Will-O-Wisp - TM057
  (654, 65400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 25),
  -- Braixen - Flamethrower - TM062
  (654, 65400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 26),
  -- Braixen - Psychic - TM063
  (654, 65400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 27),
  -- Braixen - Solar Beam - TM064
  (654, 65400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 28),
  -- Braixen - Heat Wave - TM068
  (654, 65400, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 29),
  -- Braixen - Fire Spin - TM072
  (654, 65400, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 30),
  -- Braixen - Substitute - TM085
  (654, 65400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Braixen - Flare Blitz - TM104
  (654, 65400, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 32),
  -- Delphox - Tackle - Level 1
  (655, 65500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delphox - Tail Whip - Level 1
  (655, 65500, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delphox - Ember - Level 5
  (655, 65500, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Delphox - Charm - Level 14
  (655, 65500, 204, 26, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Delphox - Psybeam - Level 17
  (655, 65500, 60, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Delphox - Fire Spin - Level 20
  (655, 65500, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Delphox - Light Screen - Level 25
  (655, 65500, 113, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Delphox - Psyshock - Level 31
  (655, 65500, 473, 26, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Delphox - Flamethrower - Level 35
  (655, 65500, 53, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Delphox - Will-O-Wisp - Level 38
  (655, 65500, 261, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Delphox - Psychic - Level 41
  (655, 65500, 94, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Delphox - Agility - Level 46
  (655, 65500, 97, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Delphox - Fire Blast - Level 54
  (655, 65500, 126, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Delphox - Mystical Fire - Evolution
  (655, 65500, 595, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Delphox - Psyshock - TM003
  (655, 65500, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Delphox - Calm Mind - TM006
  (655, 65500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Delphox - Light Screen - TM016
  (655, 65500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Delphox - Protect - TM017
  (655, 65500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Delphox - Thunder Punch - TM023
  (655, 65500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Delphox - Swift - TM027
  (655, 65500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Delphox - Fire Punch - TM029
  (655, 65500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Delphox - Reflect - TM031
  (655, 65500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Delphox - Double Team - TM032
  (655, 65500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Delphox - Endure - TM035
  (655, 65500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Delphox - Fire Blast - TM038
  (655, 65500, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Delphox - Hyper Beam - TM044
  (655, 65500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Delphox - Agility - TM047
  (655, 65500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Delphox - Overheat - TM050
  (655, 65500, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 28),
  -- Delphox - Safeguard - TM051
  (655, 65500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 29),
  -- Delphox - Will-O-Wisp - TM057
  (655, 65500, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 30),
  -- Delphox - Zen Headbutt - TM059
  (655, 65500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Delphox - Future Sight - TM060
  (655, 65500, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 32),
  -- Delphox - Flamethrower - TM062
  (655, 65500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 33),
  -- Delphox - Psychic - TM063
  (655, 65500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Delphox - Solar Beam - TM064
  (655, 65500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Delphox - Heat Wave - TM068
  (655, 65500, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 36),
  -- Delphox - Hyper Voice - TM071
  (655, 65500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 37),
  -- Delphox - Fire Spin - TM072
  (655, 65500, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 38),
  -- Delphox - Shadow Ball - TM074
  (655, 65500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 39),
  -- Delphox - Nasty Plot - TM083
  (655, 65500, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 40),
  -- Delphox - Substitute - TM085
  (655, 65500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Delphox - Dazzling Gleam - TM092
  (655, 65500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 42),
  -- Delphox - Heal Block - TM097
  (655, 65500, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 43),
  -- Delphox - Metronome - TM099
  (655, 65500, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 44),
  -- Delphox - Focus Blast - TM102
  (655, 65500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 45),
  -- Delphox - Flare Blitz - TM104
  (655, 65500, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 46),
  -- Froakie - Tackle - Level 1
  (656, 65600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froakie - Growl - Level 1
  (656, 65600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froakie - Water Gun - Level 5
  (656, 65600, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Froakie - Quick Attack - Level 8
  (656, 65600, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Froakie - Lick - Level 10
  (656, 65600, 122, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Froakie - Bubble Beam - Level 14
  (656, 65600, 61, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Froakie - Smokescreen - Level 18
  (656, 65600, 108, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Froakie - Substitute - Level 35
  (656, 65600, 164, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Froakie - Night Slash - Level 38
  (656, 65600, 400, 26, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Froakie - Bounce - Level 43
  (656, 65600, 340, 26, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Froakie - Double Team - Level 51
  (656, 65600, 104, 26, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Froakie - Hydro Pump - Level 57
  (656, 65600, 56, 26, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Froakie - Rock Slide - TM012
  (656, 65600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Froakie - Ice Beam - TM013
  (656, 65600, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Froakie - Protect - TM017
  (656, 65600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Froakie - Aerial Ace - TM022
  (656, 65600, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Froakie - Swift - TM027
  (656, 65600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Froakie - Dig - TM028
  (656, 65600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Froakie - Double Team - TM032
  (656, 65600, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Froakie - Night Slash - TM034
  (656, 65600, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 20),
  -- Froakie - Endure - TM035
  (656, 65600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Froakie - Rock Tomb - TM036
  (656, 65600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Froakie - Water Pulse - TM041
  (656, 65600, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 23),
  -- Froakie - Icy Wind - TM049
  (656, 65600, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 24),
  -- Froakie - Surf - TM073
  (656, 65600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 25),
  -- Froakie - Liquidation - TM076
  (656, 65600, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 26),
  -- Froakie - U-turn - TM082
  (656, 65600, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 27),
  -- Froakie - Substitute - TM085
  (656, 65600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Froakie - Spikes - TM088
  (656, 65600, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 29),
  -- Froakie - Toxic Spikes - TM089
  (656, 65600, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 30),
  -- Froakie - Taunt - TM095
  (656, 65600, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 31),
  -- Froakie - Hydro Pump - TM096
  (656, 65600, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 32),
  -- Froakie - Waterfall - TM098
  (656, 65600, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 33),
  -- Froakie - Blizzard - TM105
  (656, 65600, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 34),
  -- Frogadier - Tackle - Level 1
  (657, 65700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frogadier - Growl - Level 1
  (657, 65700, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frogadier - Water Gun - Level 5
  (657, 65700, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Frogadier - Quick Attack - Level 8
  (657, 65700, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Frogadier - Lick - Level 10
  (657, 65700, 122, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Frogadier - Bubble Beam - Level 14
  (657, 65700, 61, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Frogadier - Smokescreen - Level 18
  (657, 65700, 108, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Frogadier - Aerial Ace - Level 23
  (657, 65700, 332, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Frogadier - Shadow Sneak - Level 28
  (657, 65700, 425, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Frogadier - Substitute - Level 35
  (657, 65700, 164, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Frogadier - Night Slash - Level 38
  (657, 65700, 400, 26, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Frogadier - Bounce - Level 43
  (657, 65700, 340, 26, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Frogadier - Double Team - Level 51
  (657, 65700, 104, 26, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Frogadier - Hydro Pump - Level 57
  (657, 65700, 56, 26, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Frogadier - Headbutt - TM001
  (657, 65700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Frogadier - Flip Turn - TM009
  (657, 65700, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 16),
  -- Frogadier - Brick Break - TM010
  (657, 65700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Frogadier - Rock Slide - TM012
  (657, 65700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Frogadier - Ice Beam - TM013
  (657, 65700, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Frogadier - Protect - TM017
  (657, 65700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Frogadier - Aerial Ace - TM022
  (657, 65700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Frogadier - Ice Punch - TM024
  (657, 65700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Frogadier - Swift - TM027
  (657, 65700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Frogadier - Dig - TM028
  (657, 65700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Frogadier - Swords Dance - TM030
  (657, 65700, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Frogadier - Double Team - TM032
  (657, 65700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Frogadier - Night Slash - TM034
  (657, 65700, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 27),
  -- Frogadier - Endure - TM035
  (657, 65700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Frogadier - Rock Tomb - TM036
  (657, 65700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Frogadier - Water Pulse - TM041
  (657, 65700, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 30),
  -- Frogadier - Icy Wind - TM049
  (657, 65700, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Frogadier - Surf - TM073
  (657, 65700, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Frogadier - Liquidation - TM076
  (657, 65700, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 33),
  -- Frogadier - U-turn - TM082
  (657, 65700, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 34),
  -- Frogadier - Nasty Plot - TM083
  (657, 65700, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 35),
  -- Frogadier - Substitute - TM085
  (657, 65700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Frogadier - Spikes - TM088
  (657, 65700, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 37),
  -- Frogadier - Toxic Spikes - TM089
  (657, 65700, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 38),
  -- Frogadier - Dark Pulse - TM090
  (657, 65700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Frogadier - Taunt - TM095
  (657, 65700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Frogadier - Hydro Pump - TM096
  (657, 65700, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 41),
  -- Frogadier - Waterfall - TM098
  (657, 65700, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 42),
  -- Frogadier - Gunk Shot - TM100
  (657, 65700, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 43),
  -- Frogadier - Blizzard - TM105
  (657, 65700, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Greninja - Tackle - Level 1
  (658, 65800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greninja - Growl - Level 1
  (658, 65800, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greninja - Water Gun - Level 5
  (658, 65800, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Greninja - Quick Attack - Level 8
  (658, 65800, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Greninja - Lick - Level 10
  (658, 65800, 122, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Greninja - Bubble Beam - Level 14
  (658, 65800, 61, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Greninja - Smokescreen - Level 18
  (658, 65800, 108, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Greninja - Aerial Ace - Level 23
  (658, 65800, 332, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Greninja - Shadow Sneak - Level 28
  (658, 65800, 425, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Greninja - Substitute - Level 35
  (658, 65800, 164, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Greninja - Night Slash - Level 38
  (658, 65800, 400, 26, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Greninja - Bounce - Level 43
  (658, 65800, 340, 26, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Greninja - Double Team - Level 51
  (658, 65800, 104, 26, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Greninja - Hydro Pump - Level 57
  (658, 65800, 56, 26, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Greninja - Water Shuriken - Evolution
  (658, 65800, 594, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Greninja - Headbutt - TM001
  (658, 65800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Greninja - Psyshock - TM003
  (658, 65800, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Greninja - Flip Turn - TM009
  (658, 65800, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 18),
  -- Greninja - Brick Break - TM010
  (658, 65800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Greninja - Rock Slide - TM012
  (658, 65800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Greninja - Ice Beam - TM013
  (658, 65800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Greninja - Protect - TM017
  (658, 65800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Greninja - Aerial Ace - TM022
  (658, 65800, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Greninja - Ice Punch - TM024
  (658, 65800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 24),
  -- Greninja - Swift - TM027
  (658, 65800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Greninja - Dig - TM028
  (658, 65800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Greninja - Swords Dance - TM030
  (658, 65800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Greninja - Double Team - TM032
  (658, 65800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 28),
  -- Greninja - Night Slash - TM034
  (658, 65800, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 29),
  -- Greninja - Endure - TM035
  (658, 65800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Greninja - Rock Tomb - TM036
  (658, 65800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Greninja - Water Pulse - TM041
  (658, 65800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 32),
  -- Greninja - Hyper Beam - TM044
  (658, 65800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Greninja - Icy Wind - TM049
  (658, 65800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Greninja - Giga Impact - TM055
  (658, 65800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Greninja - Surf - TM073
  (658, 65800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 36),
  -- Greninja - Liquidation - TM076
  (658, 65800, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 37),
  -- Greninja - U-turn - TM082
  (658, 65800, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Greninja - Nasty Plot - TM083
  (658, 65800, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 39),
  -- Greninja - Substitute - TM085
  (658, 65800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Greninja - Spikes - TM088
  (658, 65800, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 41),
  -- Greninja - Toxic Spikes - TM089
  (658, 65800, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 42),
  -- Greninja - Dark Pulse - TM090
  (658, 65800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 43),
  -- Greninja - Taunt - TM095
  (658, 65800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Greninja - Hydro Pump - TM096
  (658, 65800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 45),
  -- Greninja - Waterfall - TM098
  (658, 65800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 46),
  -- Greninja - Gunk Shot - TM100
  (658, 65800, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 47),
  -- Greninja - Blizzard - TM105
  (658, 65800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 48),
  -- Bunnelby - Tackle - Level 1
  (659, 65900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bunnelby - Leer - Level 1
  (659, 65900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bunnelby - Mud Shot - Level 7
  (659, 65900, 341, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bunnelby - Quick Attack - Level 14
  (659, 65900, 98, 26, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Bunnelby - Brutal Swing - Level 24
  (659, 65900, 693, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Bunnelby - Dig - Level 28
  (659, 65900, 91, 26, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Bunnelby - Bounce - Level 32
  (659, 65900, 340, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Bunnelby - Take Down - Level 36
  (659, 65900, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Bunnelby - Super Fang - Level 40
  (659, 65900, 162, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Bunnelby - Earthquake - Level 44
  (659, 65900, 89, 26, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Bunnelby - Headbutt - TM001
  (659, 65900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 11),
  -- Bunnelby - Rock Smash - TM004
  (659, 65900, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 12),
  -- Bunnelby - Brick Break - TM010
  (659, 65900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Bunnelby - Bulk Up - TM011
  (659, 65900, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 14),
  -- Bunnelby - Rock Slide - TM012
  (659, 65900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Bunnelby - Protect - TM017
  (659, 65900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Bunnelby - Dig - TM028
  (659, 65900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Bunnelby - Swords Dance - TM030
  (659, 65900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Bunnelby - Endure - TM035
  (659, 65900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Bunnelby - Rock Tomb - TM036
  (659, 65900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 20),
  -- Bunnelby - Mud Shot - TM046
  (659, 65900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Bunnelby - Agility - TM047
  (659, 65900, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Bunnelby - Earth Power - TM052
  (659, 65900, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 23),
  -- Bunnelby - Sludge Bomb - TM053
  (659, 65900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Bunnelby - Iron Head - TM058
  (659, 65900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 25),
  -- Bunnelby - Stone Edge - TM065
  (659, 65900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 26),
  -- Bunnelby - Earthquake - TM069
  (659, 65900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 27),
  -- Bunnelby - Surf - TM073
  (659, 65900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Bunnelby - Bulldoze - TM078
  (659, 65900, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Bunnelby - U-turn - TM082
  (659, 65900, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 30),
  -- Bunnelby - Substitute - TM085
  (659, 65900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Bunnelby - Wild Charge - TM086
  (659, 65900, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 32),
  -- Bunnelby - Spikes - TM088
  (659, 65900, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 33),
  -- Diggersby - Tackle - Level 1
  (660, 66000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diggersby - Leer - Level 1
  (660, 66000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diggersby - Mud Shot - Level 7
  (660, 66000, 341, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Diggersby - Quick Attack - Level 14
  (660, 66000, 98, 26, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Diggersby - Brutal Swing - Level 24
  (660, 66000, 693, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Diggersby - Dig - Level 28
  (660, 66000, 91, 26, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Diggersby - Bounce - Level 32
  (660, 66000, 340, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Diggersby - Take Down - Level 36
  (660, 66000, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Diggersby - Super Fang - Level 40
  (660, 66000, 162, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Diggersby - Earthquake - Level 44
  (660, 66000, 89, 26, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Diggersby - Bulldoze - Evolution
  (660, 66000, 523, 26, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Diggersby - Headbutt - TM001
  (660, 66000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Diggersby - Rock Smash - TM004
  (660, 66000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Diggersby - Brick Break - TM010
  (660, 66000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Diggersby - Bulk Up - TM011
  (660, 66000, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 15),
  -- Diggersby - Rock Slide - TM012
  (660, 66000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Diggersby - Protect - TM017
  (660, 66000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Diggersby - Thunder Punch - TM023
  (660, 66000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Diggersby - Ice Punch - TM024
  (660, 66000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 19),
  -- Diggersby - Dig - TM028
  (660, 66000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Diggersby - Fire Punch - TM029
  (660, 66000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Diggersby - Swords Dance - TM030
  (660, 66000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Diggersby - Body Slam - TM033
  (660, 66000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Diggersby - Endure - TM035
  (660, 66000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Diggersby - Rock Tomb - TM036
  (660, 66000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Diggersby - Hyper Beam - TM044
  (660, 66000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Diggersby - Mud Shot - TM046
  (660, 66000, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Diggersby - Agility - TM047
  (660, 66000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Diggersby - Earth Power - TM052
  (660, 66000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Diggersby - Sludge Bomb - TM053
  (660, 66000, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 30),
  -- Diggersby - Giga Impact - TM055
  (660, 66000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Diggersby - Iron Head - TM058
  (660, 66000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Diggersby - Stone Edge - TM065
  (660, 66000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Diggersby - Earthquake - TM069
  (660, 66000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Diggersby - Surf - TM073
  (660, 66000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 35),
  -- Diggersby - Bulldoze - TM078
  (660, 66000, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Diggersby - U-turn - TM082
  (660, 66000, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 37),
  -- Diggersby - Substitute - TM085
  (660, 66000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Diggersby - Wild Charge - TM086
  (660, 66000, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Diggersby - Spikes - TM088
  (660, 66000, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 40),
  -- Diggersby - Gunk Shot - TM100
  (660, 66000, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 41),
  -- Fletchling - Growl - Level 1
  (661, 66100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchling - Peck - Level 1
  (661, 66100, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchling - Quick Attack - Level 8
  (661, 66100, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Fletchling - Ember - Level 12
  (661, 66100, 52, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Fletchling - Feather Dance - Level 16
  (661, 66100, 297, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Fletchling - Whirlwind - Level 20
  (661, 66100, 18, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fletchling - Flame Wheel - Level 25
  (661, 66100, 172, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fletchling - Steel Wing - Level 30
  (661, 66100, 211, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fletchling - Air Slash - Level 35
  (661, 66100, 403, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fletchling - Agility - Level 40
  (661, 66100, 97, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fletchling - Flare Blitz - Level 45
  (661, 66100, 394, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fletchling - Protect - TM017
  (661, 66100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 12),
  -- Fletchling - Aerial Ace - TM022
  (661, 66100, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 13),
  -- Fletchling - Swift - TM027
  (661, 66100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 14),
  -- Fletchling - Swords Dance - TM030
  (661, 66100, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 15),
  -- Fletchling - Double Team - TM032
  (661, 66100, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 16),
  -- Fletchling - Endure - TM035
  (661, 66100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Fletchling - Fly - TM043
  (661, 66100, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 18),
  -- Fletchling - Agility - TM047
  (661, 66100, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 19),
  -- Fletchling - Overheat - TM050
  (661, 66100, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 20),
  -- Fletchling - Will-O-Wisp - TM057
  (661, 66100, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 21),
  -- Fletchling - Heat Wave - TM068
  (661, 66100, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 22),
  -- Fletchling - Hurricane - TM079
  (661, 66100, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 23),
  -- Fletchling - U-turn - TM082
  (661, 66100, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 24),
  -- Fletchling - Substitute - TM085
  (661, 66100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Fletchling - Whirlwind - TM094
  (661, 66100, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 26),
  -- Fletchling - Flare Blitz - TM104
  (661, 66100, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 27),
  -- Fletchinder - Growl - Level 1
  (662, 66200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchinder - Peck - Level 1
  (662, 66200, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchinder - Quick Attack - Level 8
  (662, 66200, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Fletchinder - Ember - Level 12
  (662, 66200, 52, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Fletchinder - Feather Dance - Level 16
  (662, 66200, 297, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Fletchinder - Whirlwind - Level 20
  (662, 66200, 18, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fletchinder - Flame Wheel - Level 25
  (662, 66200, 172, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fletchinder - Steel Wing - Level 30
  (662, 66200, 211, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fletchinder - Air Slash - Level 35
  (662, 66200, 403, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fletchinder - Agility - Level 40
  (662, 66200, 97, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fletchinder - Flare Blitz - Level 45
  (662, 66200, 394, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fletchinder - Wing Attack - Evolution
  (662, 66200, 17, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Fletchinder - Protect - TM017
  (662, 66200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 13),
  -- Fletchinder - Aerial Ace - TM022
  (662, 66200, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 14),
  -- Fletchinder - Swift - TM027
  (662, 66200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 15),
  -- Fletchinder - Swords Dance - TM030
  (662, 66200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 16),
  -- Fletchinder - Double Team - TM032
  (662, 66200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Fletchinder - Endure - TM035
  (662, 66200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Fletchinder - Fire Blast - TM038
  (662, 66200, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Fletchinder - Fly - TM043
  (662, 66200, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 20),
  -- Fletchinder - Agility - TM047
  (662, 66200, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 21),
  -- Fletchinder - Overheat - TM050
  (662, 66200, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 22),
  -- Fletchinder - Double-Edge - TM056
  (662, 66200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 23),
  -- Fletchinder - Will-O-Wisp - TM057
  (662, 66200, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 24),
  -- Fletchinder - Flamethrower - TM062
  (662, 66200, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 25),
  -- Fletchinder - Heat Wave - TM068
  (662, 66200, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 26),
  -- Fletchinder - Fire Spin - TM072
  (662, 66200, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 27),
  -- Fletchinder - Hurricane - TM079
  (662, 66200, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 28),
  -- Fletchinder - U-turn - TM082
  (662, 66200, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 29),
  -- Fletchinder - Substitute - TM085
  (662, 66200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Fletchinder - Whirlwind - TM094
  (662, 66200, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 31),
  -- Fletchinder - Flare Blitz - TM104
  (662, 66200, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 32),
  -- Talonflame - Wing Attack - Level 1
  (663, 66300, 17, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Talonflame - Growl - Level 1
  (663, 66300, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Talonflame - Peck - Level 1
  (663, 66300, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Talonflame - Quick Attack - Level 8
  (663, 66300, 98, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Talonflame - Ember - Level 12
  (663, 66300, 52, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Talonflame - Feather Dance - Level 16
  (663, 66300, 297, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Talonflame - Whirlwind - Level 20
  (663, 66300, 18, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Talonflame - Flame Wheel - Level 25
  (663, 66300, 172, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Talonflame - Steel Wing - Level 30
  (663, 66300, 211, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Talonflame - Air Slash - Level 35
  (663, 66300, 403, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Talonflame - Agility - Level 40
  (663, 66300, 97, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Talonflame - Flare Blitz - Level 45
  (663, 66300, 394, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Talonflame - Brave Bird - Evolution
  (663, 66300, 413, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Talonflame - Bulk Up - TM011
  (663, 66300, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 14),
  -- Talonflame - Protect - TM017
  (663, 66300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Talonflame - Aerial Ace - TM022
  (663, 66300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Talonflame - Swift - TM027
  (663, 66300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Talonflame - Swords Dance - TM030
  (663, 66300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Talonflame - Double Team - TM032
  (663, 66300, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Talonflame - Endure - TM035
  (663, 66300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Talonflame - Fire Blast - TM038
  (663, 66300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 21),
  -- Talonflame - Fly - TM043
  (663, 66300, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 22),
  -- Talonflame - Hyper Beam - TM044
  (663, 66300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Talonflame - Agility - TM047
  (663, 66300, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Talonflame - Overheat - TM050
  (663, 66300, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 25),
  -- Talonflame - Giga Impact - TM055
  (663, 66300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Talonflame - Double-Edge - TM056
  (663, 66300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Talonflame - Will-O-Wisp - TM057
  (663, 66300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Talonflame - Flamethrower - TM062
  (663, 66300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 29),
  -- Talonflame - Solar Beam - TM064
  (663, 66300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Talonflame - Heat Wave - TM068
  (663, 66300, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 31),
  -- Talonflame - Fire Spin - TM072
  (663, 66300, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 32),
  -- Talonflame - Hurricane - TM079
  (663, 66300, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 33),
  -- Talonflame - U-turn - TM082
  (663, 66300, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 34),
  -- Talonflame - Substitute - TM085
  (663, 66300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Talonflame - Whirlwind - TM094
  (663, 66300, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 36),
  -- Talonflame - Flare Blitz - TM104
  (663, 66300, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 37),
  -- Scatterbug - Tackle - Level 1
  (664, 66400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scatterbug - String Shot - Level 1
  (664, 66400, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scatterbug - Stun Spore - Level 7
  (664, 66400, 78, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Scatterbug - Protect - TM017
  (664, 66400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 4),
  -- Scatterbug - Endure - TM035
  (664, 66400, 203, 26, NULL, 2, NULL, NULL, 26002035, 'Version 2.0.0 onwards.', 5),
  -- Spewpa - Tackle - Level 1
  (665, 66500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spewpa - Poison Powder - Level 1
  (665, 66500, 77, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spewpa - String Shot - Level 1
  (665, 66500, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spewpa - Harden - Level 1
  (665, 66500, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spewpa - Stun Spore - Level 7
  (665, 66500, 78, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Spewpa - Infestation - Level 10
  (665, 66500, 611, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Spewpa - Protect - Evolution
  (665, 66500, 182, 26, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Spewpa - Protect - TM017
  (665, 66500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 8),
  -- Spewpa - Endure - TM035
  (665, 66500, 203, 26, NULL, 2, NULL, NULL, 26002035, 'Version 2.0.0 onwards.', 9),
  -- Spewpa - Iron Defense - TM080
  (665, 66500, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 10),
  -- Vivillon - Poison Powder - Level 1
  (666, 66600, 77, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vivillon - Stun Spore - Level 1
  (666, 66600, 78, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vivillon - Sleep Powder - Level 1
  (666, 66600, 79, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vivillon - Infestation - Level 10
  (666, 66600, 611, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vivillon - Light Screen - Level 12
  (666, 66600, 113, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vivillon - Draining Kiss - Level 15
  (666, 66600, 577, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Vivillon - Supersonic - Level 17
  (666, 66600, 48, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Vivillon - Psybeam - Level 21
  (666, 66600, 60, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Vivillon - U-turn - Level 25
  (666, 66600, 369, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Vivillon - Air Slash - Level 28
  (666, 66600, 403, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Vivillon - Bug Buzz - Level 35
  (666, 66600, 405, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Vivillon - Safeguard - Level 40
  (666, 66600, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vivillon - Hurricane - Level 40
  (666, 66600, 542, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Vivillon - Whirlwind - Level 45
  (666, 66600, 18, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Vivillon - Gust - Evolution
  (666, 66600, 16, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Vivillon - Light Screen - TM016
  (666, 66600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Vivillon - Protect - TM017
  (666, 66600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Vivillon - Energy Ball - TM026
  (666, 66600, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Vivillon - Swift - TM027
  (666, 66600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Vivillon - Endure - TM035
  (666, 66600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Vivillon - Giga Drain - TM042
  (666, 66600, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 21),
  -- Vivillon - Hyper Beam - TM044
  (666, 66600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Vivillon - Safeguard - TM051
  (666, 66600, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 23),
  -- Vivillon - Giga Impact - TM055
  (666, 66600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Vivillon - Psychic - TM063
  (666, 66600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 25),
  -- Vivillon - Solar Beam - TM064
  (666, 66600, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 26),
  -- Vivillon - Hurricane - TM079
  (666, 66600, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 27),
  -- Vivillon - Iron Defense - TM080
  (666, 66600, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 28),
  -- Vivillon - U-turn - TM082
  (666, 66600, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 29),
  -- Vivillon - Substitute - TM085
  (666, 66600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Vivillon - Dazzling Gleam - TM092
  (666, 66600, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Vivillon - Whirlwind - TM094
  (666, 66600, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 32),
  -- Litleo - Tackle - Level 1
  (667, 66700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litleo - Leer - Level 1
  (667, 66700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litleo - Ember - Level 5
  (667, 66700, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Litleo - Roar - Level 6
  (667, 66700, 46, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Litleo - Work Up - Level 8
  (667, 66700, 526, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Litleo - Headbutt - Level 11
  (667, 66700, 29, 26, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Litleo - Snarl - Level 16
  (667, 66700, 555, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Litleo - Take Down - Level 20
  (667, 66700, 36, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Litleo - Fire Fang - Level 23
  (667, 66700, 424, 26, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Litleo - Earth Power - Level 28
  (667, 66700, 414, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Litleo - Flamethrower - Level 32
  (667, 66700, 53, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Litleo - Crunch - Level 36
  (667, 66700, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Litleo - Hyper Voice - Level 42
  (667, 66700, 304, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Litleo - Headbutt - TM001
  (667, 66700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Litleo - Roar - TM005
  (667, 66700, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Litleo - Fire Fang - TM014
  (667, 66700, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Litleo - Protect - TM017
  (667, 66700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Litleo - Thunder Fang - TM021
  (667, 66700, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 18),
  -- Litleo - Crunch - TM025
  (667, 66700, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Litleo - Swift - TM027
  (667, 66700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Litleo - Dig - TM028
  (667, 66700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Litleo - Body Slam - TM033
  (667, 66700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Litleo - Endure - TM035
  (667, 66700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Litleo - Fire Blast - TM038
  (667, 66700, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Litleo - Overheat - TM050
  (667, 66700, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 25),
  -- Litleo - Earth Power - TM052
  (667, 66700, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Litleo - Double-Edge - TM056
  (667, 66700, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Litleo - Will-O-Wisp - TM057
  (667, 66700, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Litleo - Flamethrower - TM062
  (667, 66700, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 29),
  -- Litleo - Solar Beam - TM064
  (667, 66700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Litleo - Heat Wave - TM068
  (667, 66700, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 31),
  -- Litleo - Hyper Voice - TM071
  (667, 66700, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 32),
  -- Litleo - Fire Spin - TM072
  (667, 66700, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 33),
  -- Litleo - Substitute - TM085
  (667, 66700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Litleo - Wild Charge - TM086
  (667, 66700, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 35),
  -- Litleo - Taunt - TM095
  (667, 66700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Litleo - Work Up - TM103
  (667, 66700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Litleo - Flare Blitz - TM104
  (667, 66700, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 38),
  -- Pyroar - Tackle - Level 1
  (668, 66800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pyroar - Leer - Level 1
  (668, 66800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pyroar - Ember - Level 1
  (668, 66800, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pyroar - Roar - Level 6
  (668, 66800, 46, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Pyroar - Work Up - Level 8
  (668, 66800, 526, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pyroar - Headbutt - Level 11
  (668, 66800, 29, 26, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pyroar - Snarl - Level 16
  (668, 66800, 555, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pyroar - Take Down - Level 20
  (668, 66800, 36, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pyroar - Fire Fang - Level 23
  (668, 66800, 424, 26, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pyroar - Earth Power - Level 28
  (668, 66800, 414, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pyroar - Flamethrower - Level 32
  (668, 66800, 53, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Pyroar - Crunch - Level 36
  (668, 66800, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pyroar - Hyper Voice - Level 42
  (668, 66800, 304, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pyroar - Overheat - Evolution
  (668, 66800, 315, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Pyroar - Headbutt - TM001
  (668, 66800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Pyroar - Roar - TM005
  (668, 66800, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Pyroar - Fire Fang - TM014
  (668, 66800, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Pyroar - Protect - TM017
  (668, 66800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Pyroar - Thunder Fang - TM021
  (668, 66800, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 19),
  -- Pyroar - Crunch - TM025
  (668, 66800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Pyroar - Swift - TM027
  (668, 66800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Pyroar - Dig - TM028
  (668, 66800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Pyroar - Body Slam - TM033
  (668, 66800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Pyroar - Endure - TM035
  (668, 66800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Pyroar - Fire Blast - TM038
  (668, 66800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Pyroar - Hyper Beam - TM044
  (668, 66800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Pyroar - Overheat - TM050
  (668, 66800, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 27),
  -- Pyroar - Earth Power - TM052
  (668, 66800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Pyroar - Giga Impact - TM055
  (668, 66800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Pyroar - Double-Edge - TM056
  (668, 66800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Pyroar - Will-O-Wisp - TM057
  (668, 66800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 31),
  -- Pyroar - Flamethrower - TM062
  (668, 66800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Pyroar - Solar Beam - TM064
  (668, 66800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Pyroar - Heat Wave - TM068
  (668, 66800, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 34),
  -- Pyroar - Hyper Voice - TM071
  (668, 66800, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Pyroar - Fire Spin - TM072
  (668, 66800, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 36),
  -- Pyroar - Substitute - TM085
  (668, 66800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Pyroar - Wild Charge - TM086
  (668, 66800, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 38),
  -- Pyroar - Dark Pulse - TM090
  (668, 66800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Pyroar - Taunt - TM095
  (668, 66800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Pyroar - Work Up - TM103
  (668, 66800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Pyroar - Flare Blitz - TM104
  (668, 66800, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 42),
  -- Flabebe - Vine Whip - Level 1
  (669, 66900, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flabebe - Tackle - Level 1
  (669, 66900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flabebe - Fairy Wind - Level 6
  (669, 66900, 584, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Flabebe - Safeguard - Level 10
  (669, 66900, 219, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Flabebe - Razor Leaf - Level 15
  (669, 66900, 75, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flabebe - Draining Kiss - Level 18
  (669, 66900, 577, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Flabebe - Wish - Level 20
  (669, 66900, 273, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Flabebe - Magical Leaf - Level 22
  (669, 66900, 345, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Flabebe - Charm - Level 26
  (669, 66900, 204, 26, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Flabebe - Synthesis - Level 33
  (669, 66900, 235, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Flabebe - Energy Ball - Level 40
  (669, 66900, 412, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Flabebe - Solar Beam - Level 54
  (669, 66900, 76, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Flabebe - Calm Mind - TM006
  (669, 66900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Flabebe - Light Screen - TM016
  (669, 66900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Flabebe - Protect - TM017
  (669, 66900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Flabebe - Energy Ball - TM026
  (669, 66900, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Flabebe - Swift - TM027
  (669, 66900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Flabebe - Double Team - TM032
  (669, 66900, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 18),
  -- Flabebe - Endure - TM035
  (669, 66900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Flabebe - Giga Drain - TM042
  (669, 66900, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 20),
  -- Flabebe - Safeguard - TM051
  (669, 66900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 21),
  -- Flabebe - Psychic - TM063
  (669, 66900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 22),
  -- Flabebe - Solar Beam - TM064
  (669, 66900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 23),
  -- Flabebe - Substitute - TM085
  (669, 66900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Flabebe - Dazzling Gleam - TM092
  (669, 66900, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 25),
  -- Floette - Vine Whip - Level 1
  (670, 67000, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floette - Tackle - Level 1
  (670, 67000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floette - Fairy Wind - Level 1
  (670, 67000, 584, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floette - Safeguard - Level 10
  (670, 67000, 219, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Floette - Razor Leaf - Level 15
  (670, 67000, 75, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Floette - Draining Kiss - Level 18
  (670, 67000, 577, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Floette - Wish - Level 20
  (670, 67000, 273, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Floette - Magical Leaf - Level 22
  (670, 67000, 345, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Floette - Charm - Level 26
  (670, 67000, 204, 26, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Floette - Synthesis - Level 33
  (670, 67000, 235, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Floette - Energy Ball - Level 40
  (670, 67000, 412, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Floette - Light of Ruin - Level 50
  (670, 67000, 617, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Floette - Solar Beam - Level 54
  (670, 67000, 76, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Floette - Moonblast - Evolution
  (670, 67000, 585, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Floette - Calm Mind - TM006
  (670, 67000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Floette - Light Screen - TM016
  (670, 67000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Floette - Protect - TM017
  (670, 67000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Floette - Energy Ball - TM026
  (670, 67000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Floette - Swift - TM027
  (670, 67000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Floette - Double Team - TM032
  (670, 67000, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Floette - Endure - TM035
  (670, 67000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Floette - Giga Drain - TM042
  (670, 67000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Floette - Hyper Beam - TM044
  (670, 67000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Floette - Safeguard - TM051
  (670, 67000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 24),
  -- Floette - Psychic - TM063
  (670, 67000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 25),
  -- Floette - Solar Beam - TM064
  (670, 67000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 26),
  -- Floette - Substitute - TM085
  (670, 67000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Floette - Dazzling Gleam - TM092
  (670, 67000, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 28),
  -- Floette - Metronome - TM099
  (670, 67000, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 29),
  -- Florges - Vine Whip - Level 1
  (671, 67100, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Florges - Tackle - Level 1
  (671, 67100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Florges - Fairy Wind - Level 1
  (671, 67100, 584, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Florges - Moonblast - Level 1
  (671, 67100, 585, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Florges - Safeguard - Level 10
  (671, 67100, 219, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Florges - Razor Leaf - Level 15
  (671, 67100, 75, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Florges - Draining Kiss - Level 18
  (671, 67100, 577, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Florges - Wish - Level 20
  (671, 67100, 273, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Florges - Magical Leaf - Level 22
  (671, 67100, 345, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Florges - Charm - Level 26
  (671, 67100, 204, 26, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Florges - Synthesis - Level 33
  (671, 67100, 235, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Florges - Energy Ball - Level 40
  (671, 67100, 412, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Florges - Solar Beam - Level 54
  (671, 67100, 76, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Florges - Calm Mind - TM006
  (671, 67100, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Florges - Light Screen - TM016
  (671, 67100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Florges - Protect - TM017
  (671, 67100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Florges - Energy Ball - TM026
  (671, 67100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Florges - Swift - TM027
  (671, 67100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Florges - Double Team - TM032
  (671, 67100, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Florges - Endure - TM035
  (671, 67100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Florges - Giga Drain - TM042
  (671, 67100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 21),
  -- Florges - Hyper Beam - TM044
  (671, 67100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Florges - Safeguard - TM051
  (671, 67100, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 23),
  -- Florges - Psychic - TM063
  (671, 67100, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Florges - Solar Beam - TM064
  (671, 67100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Florges - Substitute - TM085
  (671, 67100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Florges - Dazzling Gleam - TM092
  (671, 67100, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 27),
  -- Florges - Metronome - TM099
  (671, 67100, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 28),
  -- Skiddo - Tackle - Level 1
  (672, 67200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiddo - Growth - Level 1
  (672, 67200, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiddo - Vine Whip - Level 7
  (672, 67200, 22, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Skiddo - Tail Whip - Level 9
  (672, 67200, 39, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skiddo - Leech Seed - Level 12
  (672, 67200, 73, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skiddo - Razor Leaf - Level 13
  (672, 67200, 75, 26, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skiddo - Mud Shot - Level 16
  (672, 67200, 341, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skiddo - Synthesis - Level 20
  (672, 67200, 235, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skiddo - Take Down - Level 22
  (672, 67200, 36, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skiddo - Bulldoze - Level 26
  (672, 67200, 523, 26, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Skiddo - Horn Leech - Level 34
  (672, 67200, 532, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Skiddo - Bulk Up - Level 38
  (672, 67200, 339, 26, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Skiddo - Double-Edge - Level 42
  (672, 67200, 38, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skiddo - Leaf Blade - Level 45
  (672, 67200, 348, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Skiddo - Megahorn - Level 50
  (672, 67200, 224, 26, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Skiddo - Roar - TM005
  (672, 67200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Skiddo - Brick Break - TM010
  (672, 67200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Skiddo - Bulk Up - TM011
  (672, 67200, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Skiddo - Rock Slide - TM012
  (672, 67200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Skiddo - Protect - TM017
  (672, 67200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Skiddo - Play Rough - TM020
  (672, 67200, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Skiddo - Energy Ball - TM026
  (672, 67200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 22),
  -- Skiddo - Dig - TM028
  (672, 67200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Skiddo - Body Slam - TM033
  (672, 67200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Skiddo - Endure - TM035
  (672, 67200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Skiddo - Bullet Seed - TM040
  (672, 67200, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Skiddo - Giga Drain - TM042
  (672, 67200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Skiddo - Mud Shot - TM046
  (672, 67200, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Skiddo - Double-Edge - TM056
  (672, 67200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Skiddo - Zen Headbutt - TM059
  (672, 67200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Skiddo - Solar Beam - TM064
  (672, 67200, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 31),
  -- Skiddo - Surf - TM073
  (672, 67200, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Skiddo - Bulldoze - TM078
  (672, 67200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 33),
  -- Skiddo - Substitute - TM085
  (672, 67200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Skiddo - Wild Charge - TM086
  (672, 67200, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 35),
  -- Gogoat - Tackle - Level 1
  (673, 67300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gogoat - Growth - Level 1
  (673, 67300, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gogoat - Vine Whip - Level 7
  (673, 67300, 22, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gogoat - Tail Whip - Level 9
  (673, 67300, 39, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Gogoat - Leech Seed - Level 12
  (673, 67300, 73, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gogoat - Razor Leaf - Level 13
  (673, 67300, 75, 26, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Gogoat - Mud Shot - Level 16
  (673, 67300, 341, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gogoat - Synthesis - Level 20
  (673, 67300, 235, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Gogoat - Take Down - Level 22
  (673, 67300, 36, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Gogoat - Bulldoze - Level 26
  (673, 67300, 523, 26, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gogoat - Horn Leech - Level 34
  (673, 67300, 532, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Gogoat - Bulk Up - Level 38
  (673, 67300, 339, 26, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Gogoat - Double-Edge - Level 42
  (673, 67300, 38, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Gogoat - Leaf Blade - Level 45
  (673, 67300, 348, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Gogoat - Megahorn - Level 50
  (673, 67300, 224, 26, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gogoat - Earthquake - Level 55
  (673, 67300, 89, 26, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gogoat - Aerial Ace - Evolution
  (673, 67300, 332, 26, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Gogoat - Roar - TM005
  (673, 67300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Gogoat - Brick Break - TM010
  (673, 67300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Gogoat - Bulk Up - TM011
  (673, 67300, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Gogoat - Rock Slide - TM012
  (673, 67300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Gogoat - Protect - TM017
  (673, 67300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Gogoat - Play Rough - TM020
  (673, 67300, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Gogoat - Aerial Ace - TM022
  (673, 67300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Gogoat - Energy Ball - TM026
  (673, 67300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 25),
  -- Gogoat - Dig - TM028
  (673, 67300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Gogoat - Body Slam - TM033
  (673, 67300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Gogoat - Endure - TM035
  (673, 67300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Gogoat - Bullet Seed - TM040
  (673, 67300, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 29),
  -- Gogoat - Giga Drain - TM042
  (673, 67300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 30),
  -- Gogoat - Hyper Beam - TM044
  (673, 67300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Gogoat - Mud Shot - TM046
  (673, 67300, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 32),
  -- Gogoat - Giga Impact - TM055
  (673, 67300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Gogoat - Double-Edge - TM056
  (673, 67300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Gogoat - Zen Headbutt - TM059
  (673, 67300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 35),
  -- Gogoat - Solar Beam - TM064
  (673, 67300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 36),
  -- Gogoat - Earthquake - TM069
  (673, 67300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Gogoat - Surf - TM073
  (673, 67300, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 38),
  -- Gogoat - Bulldoze - TM078
  (673, 67300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Gogoat - Substitute - TM085
  (673, 67300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Gogoat - Wild Charge - TM086
  (673, 67300, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 41),
  -- Pancham - Tackle - Level 1
  (674, 67400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pancham - Leer - Level 1
  (674, 67400, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pancham - Taunt - Level 8
  (674, 67400, 269, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Pancham - Brick Break - Level 15
  (674, 67400, 280, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pancham - Work Up - Level 20
  (674, 67400, 526, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Pancham - Slash - Level 24
  (674, 67400, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Pancham - Detect - Level 28
  (674, 67400, 197, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Pancham - Parting Shot - Level 30
  (674, 67400, 575, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pancham - Crunch - Level 34
  (674, 67400, 242, 26, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Pancham - Body Slam - Level 44
  (674, 67400, 34, 26, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Pancham - Brick Break - TM010
  (674, 67400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 11),
  -- Pancham - Bulk Up - TM011
  (674, 67400, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 12),
  -- Pancham - Rock Slide - TM012
  (674, 67400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Pancham - Protect - TM017
  (674, 67400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Pancham - Thunder Punch - TM023
  (674, 67400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 15),
  -- Pancham - Ice Punch - TM024
  (674, 67400, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 16),
  -- Pancham - Crunch - TM025
  (674, 67400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 17),
  -- Pancham - Dig - TM028
  (674, 67400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Pancham - Fire Punch - TM029
  (674, 67400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 19),
  -- Pancham - Swords Dance - TM030
  (674, 67400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Pancham - Body Slam - TM033
  (674, 67400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Pancham - Endure - TM035
  (674, 67400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Pancham - Rock Tomb - TM036
  (674, 67400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Pancham - Sludge Bomb - TM053
  (674, 67400, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Pancham - Shadow Claw - TM061
  (674, 67400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 25),
  -- Pancham - Stone Edge - TM065
  (674, 67400, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 26),
  -- Pancham - Hyper Voice - TM071
  (674, 67400, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Pancham - Surf - TM073
  (674, 67400, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Pancham - Bulldoze - TM078
  (674, 67400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Pancham - Substitute - TM085
  (674, 67400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Pancham - Taunt - TM095
  (674, 67400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 31),
  -- Pancham - Work Up - TM103
  (674, 67400, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 32),
  -- Pangoro - Tackle - Level 1
  (675, 67500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pangoro - Leer - Level 1
  (675, 67500, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pangoro - Taunt - Level 1
  (675, 67500, 269, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pangoro - Bullet Punch - Level 1
  (675, 67500, 418, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pangoro - Brick Break - Level 15
  (675, 67500, 280, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pangoro - Work Up - Level 20
  (675, 67500, 526, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pangoro - Slash - Level 24
  (675, 67500, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Pangoro - Detect - Level 28
  (675, 67500, 197, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Pangoro - Parting Shot - Level 30
  (675, 67500, 575, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Pangoro - Crunch - Level 34
  (675, 67500, 242, 26, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Pangoro - Brutal Swing - Level 34
  (675, 67500, 693, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pangoro - Body Slam - Level 44
  (675, 67500, 34, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Pangoro - Outrage - Level 50
  (675, 67500, 200, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Pangoro - Focus Energy - Level 54
  (675, 67500, 116, 26, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pangoro - Close Combat - Level 58
  (675, 67500, 370, 26, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Pangoro - Night Slash - Evolution
  (675, 67500, 400, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Pangoro - Dragon Claw - TM002
  (675, 67500, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Pangoro - Rock Smash - TM004
  (675, 67500, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Pangoro - Brick Break - TM010
  (675, 67500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Pangoro - Bulk Up - TM011
  (675, 67500, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Pangoro - Rock Slide - TM012
  (675, 67500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Pangoro - Protect - TM017
  (675, 67500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Pangoro - Power-Up Punch - TM018
  (675, 67500, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 23),
  -- Pangoro - Thunder Punch - TM023
  (675, 67500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Pangoro - Ice Punch - TM024
  (675, 67500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Pangoro - Crunch - TM025
  (675, 67500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 26),
  -- Pangoro - Dig - TM028
  (675, 67500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 27),
  -- Pangoro - Fire Punch - TM029
  (675, 67500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Pangoro - Swords Dance - TM030
  (675, 67500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 29),
  -- Pangoro - Body Slam - TM033
  (675, 67500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 30),
  -- Pangoro - Night Slash - TM034
  (675, 67500, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 31),
  -- Pangoro - Endure - TM035
  (675, 67500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Pangoro - Rock Tomb - TM036
  (675, 67500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 33),
  -- Pangoro - Giga Drain - TM042
  (675, 67500, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 34),
  -- Pangoro - Hyper Beam - TM044
  (675, 67500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Pangoro - Knock Off - TM045
  (675, 67500, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 36),
  -- Pangoro - Sludge Bomb - TM053
  (675, 67500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 37),
  -- Pangoro - Giga Impact - TM055
  (675, 67500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Pangoro - Iron Head - TM058
  (675, 67500, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 39),
  -- Pangoro - Zen Headbutt - TM059
  (675, 67500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 40),
  -- Pangoro - Shadow Claw - TM061
  (675, 67500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 41),
  -- Pangoro - Stone Edge - TM065
  (675, 67500, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 42),
  -- Pangoro - Earthquake - TM069
  (675, 67500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 43),
  -- Pangoro - Hyper Voice - TM071
  (675, 67500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 44),
  -- Pangoro - Surf - TM073
  (675, 67500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 45),
  -- Pangoro - Poison Jab - TM077
  (675, 67500, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 46),
  -- Pangoro - Bulldoze - TM078
  (675, 67500, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 47),
  -- Pangoro - Substitute - TM085
  (675, 67500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 48),
  -- Pangoro - Dark Pulse - TM090
  (675, 67500, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 49),
  -- Pangoro - Outrage - TM093
  (675, 67500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 50),
  -- Pangoro - Taunt - TM095
  (675, 67500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Pangoro - Gunk Shot - TM100
  (675, 67500, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 52),
  -- Pangoro - Focus Blast - TM102
  (675, 67500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Pangoro - Work Up - TM103
  (675, 67500, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 54),
  -- Pangoro - Close Combat - TM107
  (675, 67500, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 55),
  -- Furfrou - Headbutt - Level 1
  (676, 67600, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furfrou - Tackle - Level 1
  (676, 67600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furfrou - Growl - Level 1
  (676, 67600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furfrou - Tail Whip - Level 8
  (676, 67600, 39, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Furfrou - Bite - Level 13
  (676, 67600, 44, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Furfrou - Take Down - Level 16
  (676, 67600, 36, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Furfrou - Roar - Level 20
  (676, 67600, 46, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Furfrou - Cotton Guard - Level 22
  (676, 67600, 538, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Furfrou - Charm - Level 25
  (676, 67600, 204, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Furfrou - Crunch - Level 28
  (676, 67600, 242, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Furfrou - Snarl - Level 30
  (676, 67600, 555, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Furfrou - Double-Edge - Level 36
  (676, 67600, 38, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Furfrou - Hyper Voice - Level 43
  (676, 67600, 304, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Furfrou - Headbutt - TM001
  (676, 67600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Furfrou - Rock Smash - TM004
  (676, 67600, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Furfrou - Roar - TM005
  (676, 67600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Furfrou - Thunder Wave - TM008
  (676, 67600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Furfrou - Fire Fang - TM014
  (676, 67600, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Furfrou - Ice Fang - TM015
  (676, 67600, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 19),
  -- Furfrou - Protect - TM017
  (676, 67600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Furfrou - Thunder Fang - TM021
  (676, 67600, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Furfrou - Crunch - TM025
  (676, 67600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Furfrou - Dig - TM028
  (676, 67600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Furfrou - Double Team - TM032
  (676, 67600, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 24),
  -- Furfrou - Endure - TM035
  (676, 67600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Furfrou - Hyper Beam - TM044
  (676, 67600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Furfrou - Giga Impact - TM055
  (676, 67600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Furfrou - Double-Edge - TM056
  (676, 67600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Furfrou - Zen Headbutt - TM059
  (676, 67600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Furfrou - Hyper Voice - TM071
  (676, 67600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 30),
  -- Furfrou - Surf - TM073
  (676, 67600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 31),
  -- Furfrou - U-turn - TM082
  (676, 67600, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 32),
  -- Furfrou - Substitute - TM085
  (676, 67600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Furfrou - Wild Charge - TM086
  (676, 67600, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 34),
  -- Furfrou - Iron Tail - TM087
  (676, 67600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Furfrou - Dark Pulse - TM090
  (676, 67600, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Furfrou - Work Up - TM103
  (676, 67600, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Espurr - Tackle - Level 1
  (677, 67700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espurr - Leer - Level 1
  (677, 67700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espurr - Teleport - Level 1
  (677, 67700, 100, 26, NULL, 1, 1, NULL, NULL, 'Version 2.0.0 onwards.', 3),
  -- Espurr - Disarming Voice - Level 6
  (677, 67700, 574, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Espurr - Confusion - Level 9
  (677, 67700, 93, 26, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Espurr - Fake Tears - Level 13
  (677, 67700, 313, 26, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Espurr - Swift - Level 15
  (677, 67700, 129, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Espurr - Psybeam - Level 21
  (677, 67700, 60, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Espurr - Light Screen - Level 30
  (677, 67700, 113, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Espurr - Reflect - Level 30
  (677, 67700, 115, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Espurr - Psyshock - Level 36
  (677, 67700, 473, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Espurr - Psyshock - TM003
  (677, 67700, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Espurr - Calm Mind - TM006
  (677, 67700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Espurr - Thunder Wave - TM008
  (677, 67700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Espurr - Light Screen - TM016
  (677, 67700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Espurr - Protect - TM017
  (677, 67700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Espurr - Play Rough - TM020
  (677, 67700, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Espurr - Energy Ball - TM026
  (677, 67700, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Espurr - Swift - TM027
  (677, 67700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Espurr - Reflect - TM031
  (677, 67700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Espurr - Endure - TM035
  (677, 67700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Espurr - Safeguard - TM051
  (677, 67700, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 22),
  -- Espurr - Zen Headbutt - TM059
  (677, 67700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 23),
  -- Espurr - Psychic - TM063
  (677, 67700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Espurr - Thunderbolt - TM067
  (677, 67700, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Espurr - Shadow Ball - TM074
  (677, 67700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 26),
  -- Espurr - Nasty Plot - TM083
  (677, 67700, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 27),
  -- Espurr - Substitute - TM085
  (677, 67700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Espurr - Dark Pulse - TM090
  (677, 67700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 29),
  -- Espurr - Work Up - TM103
  (677, 67700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 30),
  -- Meowstic - Tackle - Level 1
  (678, 67800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic - Leer - Level 1
  (678, 67800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic - Teleport - Level 1
  (678, 67800, 100, 26, NULL, 1, 1, NULL, NULL, 'Version 2.0.0 onwards.', 3),
  -- Meowstic - Magical Leaf - Level 1
  (678, 67800, 345, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic - Disarming Voice - Level 1
  (678, 67800, 574, 26, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic - Disarming Voice - Level 6
  (678, 67800, 574, 26, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Meowstic - Confusion - Level 9
  (678, 67800, 93, 26, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowstic - Fake Tears - Level 13
  (678, 67800, 313, 26, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Meowstic - Swift - Level 15
  (678, 67800, 129, 26, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Meowstic - Charm - Level 18
  (678, 67800, 204, 26, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Meowstic - Psybeam - Level 21
  (678, 67800, 60, 26, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Meowstic - Dark Pulse - Level 24
  (678, 67800, 399, 26, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Meowstic - Light Screen - Level 30
  (678, 67800, 113, 26, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Meowstic - Reflect - Level 30
  (678, 67800, 115, 26, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Meowstic - Psyshock - Level 36
  (678, 67800, 473, 26, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Meowstic - Shadow Ball - Level 40
  (678, 67800, 247, 26, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Meowstic - Psychic - Level 44
  (678, 67800, 94, 26, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Meowstic - Heal Block - Level 46
  (678, 67800, 377, 26, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Meowstic - Future Sight - Level 50
  (678, 67800, 248, 26, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Meowstic - Wish - Level 50
  (678, 67800, 273, 26, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Meowstic - Psyshock - TM003
  (678, 67800, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 21),
  -- Meowstic - Calm Mind - TM006
  (678, 67800, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 22),
  -- Meowstic - Thunder Wave - TM008
  (678, 67800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 23),
  -- Meowstic - Light Screen - TM016
  (678, 67800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 24),
  -- Meowstic - Protect - TM017
  (678, 67800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Meowstic - Play Rough - TM020
  (678, 67800, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 26),
  -- Meowstic - Energy Ball - TM026
  (678, 67800, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 27),
  -- Meowstic - Swift - TM027
  (678, 67800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 28),
  -- Meowstic - Dig - TM028
  (678, 67800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 29),
  -- Meowstic - Reflect - TM031
  (678, 67800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 30),
  -- Meowstic - Double Team - TM032
  (678, 67800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 31),
  -- Meowstic - Endure - TM035
  (678, 67800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Meowstic - Stealth Rock - TM037
  (678, 67800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 33),
  -- Meowstic - Water Pulse - TM041
  (678, 67800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 34),
  -- Meowstic - Hyper Beam - TM044
  (678, 67800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Meowstic - Safeguard - TM051
  (678, 67800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 36),
  -- Meowstic - Earth Power - TM052
  (678, 67800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 37),
  -- Meowstic - Giga Impact - TM055
  (678, 67800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Meowstic - Zen Headbutt - TM059
  (678, 67800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Meowstic - Future Sight - TM060
  (678, 67800, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 40),
  -- Meowstic - Psychic - TM063
  (678, 67800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 41),
  -- Meowstic - Thunderbolt - TM067
  (678, 67800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 42),
  -- Meowstic - Shadow Ball - TM074
  (678, 67800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Meowstic - Nasty Plot - TM083
  (678, 67800, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 44),
  -- Meowstic - Substitute - TM085
  (678, 67800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Meowstic - Spikes - TM088
  (678, 67800, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 46),
  -- Meowstic - Toxic Spikes - TM089
  (678, 67800, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 47),
  -- Meowstic - Dark Pulse - TM090
  (678, 67800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 48),
  -- Meowstic - Taunt - TM095
  (678, 67800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 49),
  -- Meowstic - Heal Block - TM097
  (678, 67800, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 50),
  -- Meowstic - Work Up - TM103
  (678, 67800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 51),
  -- Honedge - Tackle - Level 1
  (679, 67900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honedge - Screech - Level 1
  (679, 67900, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honedge - Shadow Sneak - Level 4
  (679, 67900, 425, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Honedge - Aerial Ace - Level 12
  (679, 67900, 332, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Honedge - Metal Sound - Level 16
  (679, 67900, 319, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Honedge - Slash - Level 20
  (679, 67900, 163, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Honedge - Psycho Cut - Level 22
  (679, 67900, 427, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Honedge - Shadow Claw - Level 24
  (679, 67900, 421, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Honedge - Iron Defense - Level 32
  (679, 67900, 334, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Honedge - Iron Head - Level 38
  (679, 67900, 442, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Honedge - Swords Dance - Level 44
  (679, 67900, 14, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Honedge - Headbutt - TM001
  (679, 67900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Honedge - Brick Break - TM010
  (679, 67900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Honedge - Rock Slide - TM012
  (679, 67900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Honedge - Protect - TM017
  (679, 67900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Honedge - Aerial Ace - TM022
  (679, 67900, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Honedge - Swords Dance - TM030
  (679, 67900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 17),
  -- Honedge - Reflect - TM031
  (679, 67900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 18),
  -- Honedge - Night Slash - TM034
  (679, 67900, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 19),
  -- Honedge - Iron Head - TM058
  (679, 67900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 20),
  -- Honedge - Shadow Claw - TM061
  (679, 67900, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 21),
  -- Honedge - Iron Defense - TM080
  (679, 67900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 22),
  -- Honedge - Flash Cannon - TM084
  (679, 67900, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 23),
  -- Honedge - Substitute - TM085
  (679, 67900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Honedge - Close Combat - TM107
  (679, 67900, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 25),
  -- Doublade - Tackle - Level 1
  (680, 68000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doublade - Screech - Level 1
  (680, 68000, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doublade - Shadow Sneak - Level 4
  (680, 68000, 425, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Doublade - Aerial Ace - Level 12
  (680, 68000, 332, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Doublade - Metal Sound - Level 16
  (680, 68000, 319, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Doublade - Slash - Level 20
  (680, 68000, 163, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Doublade - Psycho Cut - Level 22
  (680, 68000, 427, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Doublade - Shadow Claw - Level 24
  (680, 68000, 421, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Doublade - Iron Defense - Level 32
  (680, 68000, 334, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Doublade - Iron Head - Level 38
  (680, 68000, 442, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Doublade - Swords Dance - Level 44
  (680, 68000, 14, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Doublade - Headbutt - TM001
  (680, 68000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Doublade - Brick Break - TM010
  (680, 68000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Doublade - Rock Slide - TM012
  (680, 68000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Doublade - Protect - TM017
  (680, 68000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Doublade - Aerial Ace - TM022
  (680, 68000, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Doublade - Swords Dance - TM030
  (680, 68000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 17),
  -- Doublade - Reflect - TM031
  (680, 68000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 18),
  -- Doublade - Night Slash - TM034
  (680, 68000, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 19),
  -- Doublade - Endure - TM035
  (680, 68000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Doublade - Iron Head - TM058
  (680, 68000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 21),
  -- Doublade - Zen Headbutt - TM059
  (680, 68000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 22),
  -- Doublade - Shadow Claw - TM061
  (680, 68000, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 23),
  -- Doublade - Iron Defense - TM080
  (680, 68000, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 24),
  -- Doublade - Flash Cannon - TM084
  (680, 68000, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 25),
  -- Doublade - Substitute - TM085
  (680, 68000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Doublade - Close Combat - TM107
  (680, 68000, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 27),
  -- Aegislash - Tackle - Level 1
  (681, 68100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aegislash - Screech - Level 1
  (681, 68100, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aegislash - Shadow Sneak - Level 4
  (681, 68100, 425, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aegislash - Aerial Ace - Level 12
  (681, 68100, 332, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Aegislash - Metal Sound - Level 16
  (681, 68100, 319, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Aegislash - Slash - Level 20
  (681, 68100, 163, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Aegislash - Psycho Cut - Level 22
  (681, 68100, 427, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Aegislash - Shadow Claw - Level 24
  (681, 68100, 421, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aegislash - Iron Defense - Level 32
  (681, 68100, 334, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Aegislash - Iron Head - Level 38
  (681, 68100, 442, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Aegislash - Swords Dance - Level 44
  (681, 68100, 14, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Aegislash - Head Smash - Level 50
  (681, 68100, 457, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Aegislash - King's Shield - Evolution
  (681, 68100, 588, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Aegislash - Headbutt - TM001
  (681, 68100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Aegislash - Brick Break - TM010
  (681, 68100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Aegislash - Rock Slide - TM012
  (681, 68100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Aegislash - Protect - TM017
  (681, 68100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Aegislash - Aerial Ace - TM022
  (681, 68100, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Aegislash - Swords Dance - TM030
  (681, 68100, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Aegislash - Reflect - TM031
  (681, 68100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Aegislash - Night Slash - TM034
  (681, 68100, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 21),
  -- Aegislash - Endure - TM035
  (681, 68100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Aegislash - Hyper Beam - TM044
  (681, 68100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Aegislash - Giga Impact - TM055
  (681, 68100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Aegislash - Iron Head - TM058
  (681, 68100, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 25),
  -- Aegislash - Zen Headbutt - TM059
  (681, 68100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Aegislash - Shadow Claw - TM061
  (681, 68100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Aegislash - Shadow Ball - TM074
  (681, 68100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Aegislash - Iron Defense - TM080
  (681, 68100, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 29),
  -- Aegislash - Flash Cannon - TM084
  (681, 68100, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 30),
  -- Aegislash - Substitute - TM085
  (681, 68100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Aegislash - Close Combat - TM107
  (681, 68100, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 32),
  -- Spritzee - Fairy Wind - Level 1
  (682, 68200, 584, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spritzee - Fake Tears - Level 8
  (682, 68200, 313, 26, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Spritzee - Disarming Voice - Level 10
  (682, 68200, 574, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spritzee - Draining Kiss - Level 15
  (682, 68200, 577, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Spritzee - Wish - Level 22
  (682, 68200, 273, 26, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Spritzee - Psybeam - Level 24
  (682, 68200, 60, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Spritzee - Dazzling Gleam - Level 27
  (682, 68200, 605, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Spritzee - Charm - Level 30
  (682, 68200, 204, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Spritzee - Calm Mind - Level 33
  (682, 68200, 347, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Spritzee - Moonblast - Level 36
  (682, 68200, 585, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Spritzee - Psychic - Level 40
  (682, 68200, 94, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Spritzee - Heal Block - Level 44
  (682, 68200, 377, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Spritzee - Hypnosis - Level 48
  (682, 68200, 95, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Spritzee - Calm Mind - TM006
  (682, 68200, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Spritzee - Light Screen - TM016
  (682, 68200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Spritzee - Protect - TM017
  (682, 68200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Spritzee - Energy Ball - TM026
  (682, 68200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Spritzee - Reflect - TM031
  (682, 68200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 18),
  -- Spritzee - Endure - TM035
  (682, 68200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Spritzee - Psychic - TM063
  (682, 68200, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 20),
  -- Spritzee - Thunderbolt - TM067
  (682, 68200, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 21),
  -- Spritzee - Nasty Plot - TM083
  (682, 68200, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 22),
  -- Spritzee - Flash Cannon - TM084
  (682, 68200, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 23),
  -- Spritzee - Substitute - TM085
  (682, 68200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Spritzee - Dazzling Gleam - TM092
  (682, 68200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 25),
  -- Spritzee - Heal Block - TM097
  (682, 68200, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 26),
  -- Aromatisse - Fairy Wind - Level 1
  (683, 68300, 584, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aromatisse - Fake Tears - Level 8
  (683, 68300, 313, 26, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Aromatisse - Disarming Voice - Level 10
  (683, 68300, 574, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Aromatisse - Draining Kiss - Level 15
  (683, 68300, 577, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Aromatisse - Wish - Level 22
  (683, 68300, 273, 26, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Aromatisse - Psybeam - Level 24
  (683, 68300, 60, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Aromatisse - Dazzling Gleam - Level 27
  (683, 68300, 605, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Aromatisse - Charm - Level 30
  (683, 68300, 204, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Aromatisse - Calm Mind - Level 33
  (683, 68300, 347, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Aromatisse - Moonblast - Level 36
  (683, 68300, 585, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Aromatisse - Psychic - Level 40
  (683, 68300, 94, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Aromatisse - Heal Block - Level 44
  (683, 68300, 377, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Aromatisse - Hypnosis - Level 48
  (683, 68300, 95, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Aromatisse - Psyshock - TM003
  (683, 68300, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Aromatisse - Calm Mind - TM006
  (683, 68300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Aromatisse - Light Screen - TM016
  (683, 68300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Aromatisse - Protect - TM017
  (683, 68300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Aromatisse - Energy Ball - TM026
  (683, 68300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Aromatisse - Reflect - TM031
  (683, 68300, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Aromatisse - Endure - TM035
  (683, 68300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Aromatisse - Hyper Beam - TM044
  (683, 68300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Aromatisse - Giga Impact - TM055
  (683, 68300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 22),
  -- Aromatisse - Psychic - TM063
  (683, 68300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 23),
  -- Aromatisse - Thunderbolt - TM067
  (683, 68300, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 24),
  -- Aromatisse - Nasty Plot - TM083
  (683, 68300, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 25),
  -- Aromatisse - Flash Cannon - TM084
  (683, 68300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 26),
  -- Aromatisse - Substitute - TM085
  (683, 68300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Aromatisse - Dazzling Gleam - TM092
  (683, 68300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 28),
  -- Aromatisse - Heal Block - TM097
  (683, 68300, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 29),
  -- Aromatisse - Metronome - TM099
  (683, 68300, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 30),
  -- Swirlix - Tackle - Level 1
  (684, 68400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swirlix - Charm - Level 1
  (684, 68400, 204, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swirlix - Fairy Wind - Level 6
  (684, 68400, 584, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Swirlix - Draining Kiss - Level 12
  (684, 68400, 577, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Swirlix - Fake Tears - Level 15
  (684, 68400, 313, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swirlix - Amnesia - Level 18
  (684, 68400, 133, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Swirlix - String Shot - Level 21
  (684, 68400, 81, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Swirlix - Cotton Guard - Level 24
  (684, 68400, 538, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Swirlix - Energy Ball - Level 27
  (684, 68400, 412, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Swirlix - Wish - Level 32
  (684, 68400, 273, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swirlix - Play Rough - Level 36
  (684, 68400, 583, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Swirlix - Sticky Web - Level 40
  (684, 68400, 564, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swirlix - Calm Mind - TM006
  (684, 68400, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Swirlix - Light Screen - TM016
  (684, 68400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Swirlix - Protect - TM017
  (684, 68400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Swirlix - Play Rough - TM020
  (684, 68400, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 16),
  -- Swirlix - Energy Ball - TM026
  (684, 68400, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Swirlix - Swords Dance - TM030
  (684, 68400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Swirlix - Endure - TM035
  (684, 68400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Swirlix - Self-Destruct - TM048
  (684, 68400, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 20),
  -- Swirlix - Safeguard - TM051
  (684, 68400, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 21),
  -- Swirlix - Flamethrower - TM062
  (684, 68400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 22),
  -- Swirlix - Psychic - TM063
  (684, 68400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 23),
  -- Swirlix - Thunderbolt - TM067
  (684, 68400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 24),
  -- Swirlix - Surf - TM073
  (684, 68400, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 25),
  -- Swirlix - Substitute - TM085
  (684, 68400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Swirlix - Dazzling Gleam - TM092
  (684, 68400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 27),
  -- Slurpuff - Tackle - Level 1
  (685, 68500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slurpuff - Charm - Level 1
  (685, 68500, 204, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slurpuff - Fairy Wind - Level 6
  (685, 68500, 584, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slurpuff - Draining Kiss - Level 12
  (685, 68500, 577, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Slurpuff - Fake Tears - Level 15
  (685, 68500, 313, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Slurpuff - Amnesia - Level 18
  (685, 68500, 133, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Slurpuff - String Shot - Level 21
  (685, 68500, 81, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Slurpuff - Cotton Guard - Level 24
  (685, 68500, 538, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Slurpuff - Energy Ball - Level 27
  (685, 68500, 412, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Slurpuff - Wish - Level 32
  (685, 68500, 273, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Slurpuff - Play Rough - Level 36
  (685, 68500, 583, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slurpuff - Sticky Web - Level 40
  (685, 68500, 564, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Slurpuff - Calm Mind - TM006
  (685, 68500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Slurpuff - Light Screen - TM016
  (685, 68500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Slurpuff - Protect - TM017
  (685, 68500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Slurpuff - Play Rough - TM020
  (685, 68500, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 16),
  -- Slurpuff - Energy Ball - TM026
  (685, 68500, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Slurpuff - Swords Dance - TM030
  (685, 68500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Slurpuff - Endure - TM035
  (685, 68500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Slurpuff - Hyper Beam - TM044
  (685, 68500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Slurpuff - Self-Destruct - TM048
  (685, 68500, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 21),
  -- Slurpuff - Safeguard - TM051
  (685, 68500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 22),
  -- Slurpuff - Giga Impact - TM055
  (685, 68500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Slurpuff - Flamethrower - TM062
  (685, 68500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 24),
  -- Slurpuff - Psychic - TM063
  (685, 68500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 25),
  -- Slurpuff - Thunderbolt - TM067
  (685, 68500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 26),
  -- Slurpuff - Surf - TM073
  (685, 68500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 27),
  -- Slurpuff - Substitute - TM085
  (685, 68500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Slurpuff - Dazzling Gleam - TM092
  (685, 68500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 29),
  -- Slurpuff - Metronome - TM099
  (685, 68500, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 30),
  -- Inkay - Tackle - Level 1
  (686, 68600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inkay - Peck - Level 1
  (686, 68600, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inkay - Hypnosis - Level 3
  (686, 68600, 95, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Inkay - Fake Tears - Level 6
  (686, 68600, 313, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Inkay - Knock Off - Level 14
  (686, 68600, 282, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Inkay - Psybeam - Level 15
  (686, 68600, 60, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Inkay - Slash - Level 21
  (686, 68600, 163, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Inkay - Night Slash - Level 24
  (686, 68600, 400, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Inkay - Psycho Cut - Level 33
  (686, 68600, 427, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Inkay - Psyshock - Level 37
  (686, 68600, 473, 26, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Inkay - Topsy-Turvy - Level 42
  (686, 68600, 576, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Inkay - Close Combat - Level 54
  (686, 68600, 370, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Inkay - Headbutt - TM001
  (686, 68600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Inkay - Psyshock - TM003
  (686, 68600, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Inkay - Calm Mind - TM006
  (686, 68600, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Inkay - Rock Slide - TM012
  (686, 68600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Inkay - Light Screen - TM016
  (686, 68600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Inkay - Protect - TM017
  (686, 68600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Inkay - Reflect - TM031
  (686, 68600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Inkay - Night Slash - TM034
  (686, 68600, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 20),
  -- Inkay - Endure - TM035
  (686, 68600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Inkay - Knock Off - TM045
  (686, 68600, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Inkay - Zen Headbutt - TM059
  (686, 68600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 23),
  -- Inkay - Future Sight - TM060
  (686, 68600, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 24),
  -- Inkay - Flamethrower - TM062
  (686, 68600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 25),
  -- Inkay - Psychic - TM063
  (686, 68600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Inkay - Thunderbolt - TM067
  (686, 68600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 27),
  -- Inkay - Liquidation - TM076
  (686, 68600, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 28),
  -- Inkay - Nasty Plot - TM083
  (686, 68600, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 29),
  -- Inkay - Substitute - TM085
  (686, 68600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Inkay - Dark Pulse - TM090
  (686, 68600, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Inkay - Taunt - TM095
  (686, 68600, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Inkay - Close Combat - TM107
  (686, 68600, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 33),
  -- Malamar - Tackle - Level 1
  (687, 68700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Malamar - Peck - Level 1
  (687, 68700, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Malamar - Hypnosis - Level 3
  (687, 68700, 95, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Malamar - Fake Tears - Level 6
  (687, 68700, 313, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Malamar - Knock Off - Level 14
  (687, 68700, 282, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Malamar - Psybeam - Level 15
  (687, 68700, 60, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Malamar - Slash - Level 21
  (687, 68700, 163, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Malamar - Night Slash - Level 24
  (687, 68700, 400, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Malamar - Psycho Cut - Level 33
  (687, 68700, 427, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Malamar - Psyshock - Level 37
  (687, 68700, 473, 26, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Malamar - Topsy-Turvy - Level 42
  (687, 68700, 576, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Malamar - Close Combat - Level 54
  (687, 68700, 370, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Malamar - Headbutt - TM001
  (687, 68700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Malamar - Psyshock - TM003
  (687, 68700, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Malamar - Calm Mind - TM006
  (687, 68700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Malamar - Bulk Up - TM011
  (687, 68700, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Malamar - Rock Slide - TM012
  (687, 68700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Malamar - Light Screen - TM016
  (687, 68700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Malamar - Protect - TM017
  (687, 68700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Malamar - Reflect - TM031
  (687, 68700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Malamar - Double Team - TM032
  (687, 68700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Malamar - Night Slash - TM034
  (687, 68700, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 22),
  -- Malamar - Endure - TM035
  (687, 68700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Malamar - Stealth Rock - TM037
  (687, 68700, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Malamar - Hyper Beam - TM044
  (687, 68700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Malamar - Knock Off - TM045
  (687, 68700, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Malamar - Giga Impact - TM055
  (687, 68700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Malamar - Zen Headbutt - TM059
  (687, 68700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 28),
  -- Malamar - Future Sight - TM060
  (687, 68700, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 29),
  -- Malamar - Flamethrower - TM062
  (687, 68700, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Malamar - Psychic - TM063
  (687, 68700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Malamar - Thunderbolt - TM067
  (687, 68700, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Malamar - Liquidation - TM076
  (687, 68700, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 33),
  -- Malamar - Poison Jab - TM077
  (687, 68700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Malamar - Nasty Plot - TM083
  (687, 68700, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 35),
  -- Malamar - Substitute - TM085
  (687, 68700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Malamar - Dark Pulse - TM090
  (687, 68700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 37),
  -- Malamar - Taunt - TM095
  (687, 68700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Malamar - Heal Block - TM097
  (687, 68700, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 39),
  -- Malamar - Close Combat - TM107
  (687, 68700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 40),
  -- Binacle - Water Gun - Level 1
  (688, 68800, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Binacle - Screech - Level 1
  (688, 68800, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Binacle - Infestation - Level 9
  (688, 68800, 611, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Binacle - Rock Throw - Level 12
  (688, 68800, 88, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Binacle - Bubble Beam - Level 14
  (688, 68800, 61, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Binacle - Rock Blast - Level 16
  (688, 68800, 350, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Binacle - Bulldoze - Level 18
  (688, 68800, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Binacle - Slash - Level 23
  (688, 68800, 163, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Binacle - Iron Defense - Level 35
  (688, 68800, 334, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Binacle - Night Slash - Level 40
  (688, 68800, 400, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Binacle - Liquidation - Level 45
  (688, 68800, 710, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Binacle - Stone Edge - Level 50
  (688, 68800, 444, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Binacle - Brick Break - TM010
  (688, 68800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Binacle - Rock Slide - TM012
  (688, 68800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Binacle - Ice Beam - TM013
  (688, 68800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Binacle - Protect - TM017
  (688, 68800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Binacle - Power-Up Punch - TM018
  (688, 68800, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 17),
  -- Binacle - Dig - TM028
  (688, 68800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Binacle - Swords Dance - TM030
  (688, 68800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Binacle - Night Slash - TM034
  (688, 68800, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 20),
  -- Binacle - Endure - TM035
  (688, 68800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Binacle - Rock Tomb - TM036
  (688, 68800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Binacle - Stealth Rock - TM037
  (688, 68800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Binacle - Mud Shot - TM046
  (688, 68800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Binacle - Safeguard - TM051
  (688, 68800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 25),
  -- Binacle - Sludge Bomb - TM053
  (688, 68800, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Binacle - Shadow Claw - TM061
  (688, 68800, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Binacle - Stone Edge - TM065
  (688, 68800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Binacle - Earthquake - TM069
  (688, 68800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Binacle - Surf - TM073
  (688, 68800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Binacle - Liquidation - TM076
  (688, 68800, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 31),
  -- Binacle - Poison Jab - TM077
  (688, 68800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 32),
  -- Binacle - Bulldoze - TM078
  (688, 68800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 33),
  -- Binacle - Iron Defense - TM080
  (688, 68800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Binacle - X-Scissor - TM081
  (688, 68800, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 35),
  -- Binacle - Substitute - TM085
  (688, 68800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Binacle - Taunt - TM095
  (688, 68800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Binacle - Waterfall - TM098
  (688, 68800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 38),
  -- Binacle - Blizzard - TM105
  (688, 68800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 39),
  -- Barbaracle - Water Gun - Level 1
  (689, 68900, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barbaracle - Screech - Level 1
  (689, 68900, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barbaracle - Infestation - Level 9
  (689, 68900, 611, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Barbaracle - Rock Throw - Level 12
  (689, 68900, 88, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Barbaracle - Bubble Beam - Level 14
  (689, 68900, 61, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Barbaracle - Rock Blast - Level 16
  (689, 68900, 350, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Barbaracle - Bulldoze - Level 18
  (689, 68900, 523, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Barbaracle - Slash - Level 23
  (689, 68900, 163, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Barbaracle - Iron Defense - Level 35
  (689, 68900, 334, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Barbaracle - Night Slash - Level 40
  (689, 68900, 400, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Barbaracle - Brick Break - Level 43
  (689, 68900, 280, 26, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Barbaracle - Liquidation - Level 45
  (689, 68900, 710, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Barbaracle - Stone Edge - Level 50
  (689, 68900, 444, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Barbaracle - Close Combat - Level 54
  (689, 68900, 370, 26, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Barbaracle - Dragon Claw - TM002
  (689, 68900, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Barbaracle - Brick Break - TM010
  (689, 68900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Barbaracle - Bulk Up - TM011
  (689, 68900, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Barbaracle - Rock Slide - TM012
  (689, 68900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Barbaracle - Ice Beam - TM013
  (689, 68900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Barbaracle - Protect - TM017
  (689, 68900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Barbaracle - Power-Up Punch - TM018
  (689, 68900, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Barbaracle - Dig - TM028
  (689, 68900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Barbaracle - Swords Dance - TM030
  (689, 68900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Barbaracle - Night Slash - TM034
  (689, 68900, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 24),
  -- Barbaracle - Endure - TM035
  (689, 68900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Barbaracle - Rock Tomb - TM036
  (689, 68900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Barbaracle - Stealth Rock - TM037
  (689, 68900, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Barbaracle - Hyper Beam - TM044
  (689, 68900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Barbaracle - Mud Shot - TM046
  (689, 68900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Barbaracle - Safeguard - TM051
  (689, 68900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 30),
  -- Barbaracle - Sludge Bomb - TM053
  (689, 68900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Barbaracle - Giga Impact - TM055
  (689, 68900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Barbaracle - Shadow Claw - TM061
  (689, 68900, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 33),
  -- Barbaracle - Stone Edge - TM065
  (689, 68900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 34),
  -- Barbaracle - Earthquake - TM069
  (689, 68900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Barbaracle - Surf - TM073
  (689, 68900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 36),
  -- Barbaracle - Liquidation - TM076
  (689, 68900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 37),
  -- Barbaracle - Poison Jab - TM077
  (689, 68900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Barbaracle - Bulldoze - TM078
  (689, 68900, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Barbaracle - Iron Defense - TM080
  (689, 68900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 40),
  -- Barbaracle - X-Scissor - TM081
  (689, 68900, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 41),
  -- Barbaracle - Substitute - TM085
  (689, 68900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Barbaracle - Taunt - TM095
  (689, 68900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 43),
  -- Barbaracle - Waterfall - TM098
  (689, 68900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 44),
  -- Barbaracle - Focus Blast - TM102
  (689, 68900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 45),
  -- Barbaracle - Blizzard - TM105
  (689, 68900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 46),
  -- Barbaracle - Close Combat - TM107
  (689, 68900, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 47),
  -- Skrelp - Tackle - Level 1
  (690, 69000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skrelp - Water Gun - Level 1
  (690, 69000, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skrelp - Smokescreen - Level 1
  (690, 69000, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skrelp - Tail Whip - Level 5
  (690, 69000, 39, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Skrelp - Mud Shot - Level 10
  (690, 69000, 341, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Skrelp - Bubble Beam - Level 15
  (690, 69000, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Skrelp - Double Team - Level 22
  (690, 69000, 104, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Skrelp - Toxic - Level 25
  (690, 69000, 92, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Skrelp - Water Pulse - Level 30
  (690, 69000, 352, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Skrelp - Poison Jab - Level 32
  (690, 69000, 398, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Skrelp - Dragon Pulse - Level 36
  (690, 69000, 406, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Skrelp - Sludge Bomb - Level 40
  (690, 69000, 188, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skrelp - Hydro Pump - Level 46
  (690, 69000, 56, 26, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Skrelp - Sludge Wave - Level 52
  (690, 69000, 482, 26, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Skrelp - Toxic - TM007
  (690, 69000, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Skrelp - Flip Turn - TM009
  (690, 69000, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 16),
  -- Skrelp - Protect - TM017
  (690, 69000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Skrelp - Play Rough - TM020
  (690, 69000, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Skrelp - Double Team - TM032
  (690, 69000, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Skrelp - Endure - TM035
  (690, 69000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Skrelp - Water Pulse - TM041
  (690, 69000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 21),
  -- Skrelp - Mud Shot - TM046
  (690, 69000, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Skrelp - Sludge Bomb - TM053
  (690, 69000, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Skrelp - Thunderbolt - TM067
  (690, 69000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 24),
  -- Skrelp - Surf - TM073
  (690, 69000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 25),
  -- Skrelp - Shadow Ball - TM074
  (690, 69000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 26),
  -- Skrelp - Dragon Pulse - TM075
  (690, 69000, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Skrelp - Liquidation - TM076
  (690, 69000, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 28),
  -- Skrelp - Poison Jab - TM077
  (690, 69000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 29),
  -- Skrelp - Substitute - TM085
  (690, 69000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Skrelp - Toxic Spikes - TM089
  (690, 69000, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 31),
  -- Skrelp - Outrage - TM093
  (690, 69000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 32),
  -- Skrelp - Hydro Pump - TM096
  (690, 69000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 33),
  -- Skrelp - Waterfall - TM098
  (690, 69000, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Skrelp - Gunk Shot - TM100
  (690, 69000, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 35),
  -- Dragalge - Tackle - Level 1
  (691, 69100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragalge - Water Gun - Level 1
  (691, 69100, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragalge - Smokescreen - Level 1
  (691, 69100, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragalge - Tail Whip - Level 5
  (691, 69100, 39, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Dragalge - Mud Shot - Level 10
  (691, 69100, 341, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Dragalge - Bubble Beam - Level 15
  (691, 69100, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragalge - Double Team - Level 22
  (691, 69100, 104, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dragalge - Toxic - Level 25
  (691, 69100, 92, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dragalge - Water Pulse - Level 30
  (691, 69100, 352, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Dragalge - Poison Jab - Level 32
  (691, 69100, 398, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dragalge - Dragon Pulse - Level 36
  (691, 69100, 406, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dragalge - Sludge Bomb - Level 40
  (691, 69100, 188, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dragalge - Hydro Pump - Level 46
  (691, 69100, 56, 26, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Dragalge - Sludge Wave - Level 52
  (691, 69100, 482, 26, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Dragalge - Toxic - TM007
  (691, 69100, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Dragalge - Flip Turn - TM009
  (691, 69100, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 16),
  -- Dragalge - Protect - TM017
  (691, 69100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Dragalge - Play Rough - TM020
  (691, 69100, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Dragalge - Double Team - TM032
  (691, 69100, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Dragalge - Endure - TM035
  (691, 69100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Dragalge - Water Pulse - TM041
  (691, 69100, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 21),
  -- Dragalge - Hyper Beam - TM044
  (691, 69100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Dragalge - Mud Shot - TM046
  (691, 69100, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Dragalge - Sludge Bomb - TM053
  (691, 69100, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Dragalge - Draco Meteor - TM054
  (691, 69100, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 25),
  -- Dragalge - Thunderbolt - TM067
  (691, 69100, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 26),
  -- Dragalge - Surf - TM073
  (691, 69100, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 27),
  -- Dragalge - Shadow Ball - TM074
  (691, 69100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Dragalge - Dragon Pulse - TM075
  (691, 69100, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 29),
  -- Dragalge - Liquidation - TM076
  (691, 69100, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 30),
  -- Dragalge - Poison Jab - TM077
  (691, 69100, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Dragalge - Substitute - TM085
  (691, 69100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Dragalge - Toxic Spikes - TM089
  (691, 69100, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 33),
  -- Dragalge - Outrage - TM093
  (691, 69100, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Dragalge - Hydro Pump - TM096
  (691, 69100, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Dragalge - Waterfall - TM098
  (691, 69100, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Dragalge - Gunk Shot - TM100
  (691, 69100, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 37),
  -- Dragalge - Focus Blast - TM102
  (691, 69100, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Clauncher - Water Gun - Level 1
  (692, 69200, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clauncher - Splash - Level 1
  (692, 69200, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clauncher - Bubble Beam - Level 10
  (692, 69200, 61, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Clauncher - Aqua Jet - Level 13
  (692, 69200, 453, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Clauncher - Mud Shot - Level 16
  (692, 69200, 341, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Clauncher - Water Pulse - Level 24
  (692, 69200, 352, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Clauncher - Swords Dance - Level 30
  (692, 69200, 14, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Clauncher - Aura Sphere - Level 34
  (692, 69200, 396, 26, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Clauncher - Dark Pulse - Level 40
  (692, 69200, 399, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Clauncher - Bounce - Level 45
  (692, 69200, 340, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Clauncher - Dragon Pulse - Level 48
  (692, 69200, 406, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Clauncher - Hydro Pump - Level 52
  (692, 69200, 56, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Clauncher - Flip Turn - TM009
  (692, 69200, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 13),
  -- Clauncher - Rock Slide - TM012
  (692, 69200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Clauncher - Ice Beam - TM013
  (692, 69200, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Clauncher - Protect - TM017
  (692, 69200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Clauncher - Swords Dance - TM030
  (692, 69200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 17),
  -- Clauncher - Endure - TM035
  (692, 69200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Clauncher - Water Pulse - TM041
  (692, 69200, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 19),
  -- Clauncher - Mud Shot - TM046
  (692, 69200, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 20),
  -- Clauncher - Surf - TM073
  (692, 69200, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 21),
  -- Clauncher - Dragon Pulse - TM075
  (692, 69200, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 22),
  -- Clauncher - Liquidation - TM076
  (692, 69200, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 23),
  -- Clauncher - U-turn - TM082
  (692, 69200, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 24),
  -- Clauncher - Flash Cannon - TM084
  (692, 69200, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 25),
  -- Clauncher - Substitute - TM085
  (692, 69200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Clauncher - Dark Pulse - TM090
  (692, 69200, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 27),
  -- Clauncher - Hydro Pump - TM096
  (692, 69200, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 28),
  -- Clauncher - Waterfall - TM098
  (692, 69200, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 29),
  -- Clauncher - Blizzard - TM105
  (692, 69200, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 30),
  -- Clawitzer - Water Gun - Level 1
  (693, 69300, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clawitzer - Splash - Level 1
  (693, 69300, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clawitzer - Bubble Beam - Level 10
  (693, 69300, 61, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Clawitzer - Aqua Jet - Level 13
  (693, 69300, 453, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Clawitzer - Mud Shot - Level 16
  (693, 69300, 341, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Clawitzer - Water Pulse - Level 24
  (693, 69300, 352, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Clawitzer - Swords Dance - Level 30
  (693, 69300, 14, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Clawitzer - Aura Sphere - Level 34
  (693, 69300, 396, 26, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Clawitzer - Dark Pulse - Level 40
  (693, 69300, 399, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Clawitzer - Bounce - Level 45
  (693, 69300, 340, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Clawitzer - Dragon Pulse - Level 48
  (693, 69300, 406, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Clawitzer - Hydro Pump - Level 52
  (693, 69300, 56, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Clawitzer - Focus Blast - Level 55
  (693, 69300, 411, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Clawitzer - Flip Turn - TM009
  (693, 69300, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 14),
  -- Clawitzer - Rock Slide - TM012
  (693, 69300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Clawitzer - Ice Beam - TM013
  (693, 69300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Clawitzer - Protect - TM017
  (693, 69300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Clawitzer - Swords Dance - TM030
  (693, 69300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Clawitzer - Endure - TM035
  (693, 69300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Clawitzer - Water Pulse - TM041
  (693, 69300, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Clawitzer - Hyper Beam - TM044
  (693, 69300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Clawitzer - Mud Shot - TM046
  (693, 69300, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Clawitzer - Surf - TM073
  (693, 69300, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 23),
  -- Clawitzer - Shadow Ball - TM074
  (693, 69300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 24),
  -- Clawitzer - Dragon Pulse - TM075
  (693, 69300, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 25),
  -- Clawitzer - Liquidation - TM076
  (693, 69300, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 26),
  -- Clawitzer - U-turn - TM082
  (693, 69300, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 27),
  -- Clawitzer - Flash Cannon - TM084
  (693, 69300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 28),
  -- Clawitzer - Substitute - TM085
  (693, 69300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Clawitzer - Dark Pulse - TM090
  (693, 69300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Clawitzer - Hydro Pump - TM096
  (693, 69300, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 31),
  -- Clawitzer - Waterfall - TM098
  (693, 69300, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 32),
  -- Clawitzer - Focus Blast - TM102
  (693, 69300, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 33),
  -- Clawitzer - Blizzard - TM105
  (693, 69300, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 34),
  -- Helioptile - Tail Whip - Level 1
  (694, 69400, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Helioptile - Thunder Shock - Level 1
  (694, 69400, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Helioptile - Thunder Wave - Level 1
  (694, 69400, 86, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Helioptile - Quick Attack - Level 12
  (694, 69400, 98, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Helioptile - Swift - Level 15
  (694, 69400, 129, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Helioptile - Parabolic Charge - Level 20
  (694, 69400, 570, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Helioptile - Bulldoze - Level 24
  (694, 69400, 523, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Helioptile - Volt Switch - Level 28
  (694, 69400, 521, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Helioptile - Breaking Swipe - Level 30
  (694, 69400, 784, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Helioptile - Morning Sun - Level 32
  (694, 69400, 234, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Helioptile - Thunderbolt - Level 36
  (694, 69400, 85, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Helioptile - Charge - Level 42
  (694, 69400, 268, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Helioptile - Thunder - Level 50
  (694, 69400, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Helioptile - Thunder Wave - TM008
  (694, 69400, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Helioptile - Rock Slide - TM012
  (694, 69400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Helioptile - Light Screen - TM016
  (694, 69400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Helioptile - Protect - TM017
  (694, 69400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Helioptile - Swift - TM027
  (694, 69400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Helioptile - Dig - TM028
  (694, 69400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Helioptile - Endure - TM035
  (694, 69400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Helioptile - Rock Tomb - TM036
  (694, 69400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Helioptile - Discharge - TM039
  (694, 69400, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 22),
  -- Helioptile - Agility - TM047
  (694, 69400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Helioptile - Volt Switch - TM066
  (694, 69400, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 24),
  -- Helioptile - Thunderbolt - TM067
  (694, 69400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Helioptile - Surf - TM073
  (694, 69400, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Helioptile - Bulldoze - TM078
  (694, 69400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 27),
  -- Helioptile - U-turn - TM082
  (694, 69400, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 28),
  -- Helioptile - Substitute - TM085
  (694, 69400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Helioptile - Wild Charge - TM086
  (694, 69400, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 30),
  -- Helioptile - Dark Pulse - TM090
  (694, 69400, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Helioptile - Electroweb - TM101
  (694, 69400, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 32),
  -- Helioptile - Thunder - TM106
  (694, 69400, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 33),
  -- Heliolisk - Tail Whip - Level 1
  (695, 69500, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heliolisk - Thunder Shock - Level 1
  (695, 69500, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heliolisk - Thunder Wave - Level 1
  (695, 69500, 86, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heliolisk - Quick Attack - Level 12
  (695, 69500, 98, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Heliolisk - Swift - Level 15
  (695, 69500, 129, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Heliolisk - Parabolic Charge - Level 20
  (695, 69500, 570, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Heliolisk - Bulldoze - Level 24
  (695, 69500, 523, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Heliolisk - Volt Switch - Level 28
  (695, 69500, 521, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Heliolisk - Breaking Swipe - Level 30
  (695, 69500, 784, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Heliolisk - Morning Sun - Level 32
  (695, 69500, 234, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Heliolisk - Thunderbolt - Level 36
  (695, 69500, 85, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Heliolisk - Charge - Level 42
  (695, 69500, 268, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Heliolisk - Thunder - Level 50
  (695, 69500, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Heliolisk - Thunder Wave - TM008
  (695, 69500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Heliolisk - Rock Slide - TM012
  (695, 69500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Heliolisk - Light Screen - TM016
  (695, 69500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Heliolisk - Protect - TM017
  (695, 69500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Heliolisk - Thunder Punch - TM023
  (695, 69500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Heliolisk - Swift - TM027
  (695, 69500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Heliolisk - Dig - TM028
  (695, 69500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Heliolisk - Fire Punch - TM029
  (695, 69500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Heliolisk - Endure - TM035
  (695, 69500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Heliolisk - Rock Tomb - TM036
  (695, 69500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Heliolisk - Discharge - TM039
  (695, 69500, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 24),
  -- Heliolisk - Hyper Beam - TM044
  (695, 69500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Heliolisk - Agility - TM047
  (695, 69500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Heliolisk - Giga Impact - TM055
  (695, 69500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Heliolisk - Solar Beam - TM064
  (695, 69500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 28),
  -- Heliolisk - Volt Switch - TM066
  (695, 69500, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 29),
  -- Heliolisk - Thunderbolt - TM067
  (695, 69500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 30),
  -- Heliolisk - Hyper Voice - TM071
  (695, 69500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Heliolisk - Surf - TM073
  (695, 69500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Heliolisk - Dragon Pulse - TM075
  (695, 69500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 33),
  -- Heliolisk - Bulldoze - TM078
  (695, 69500, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Heliolisk - U-turn - TM082
  (695, 69500, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Heliolisk - Substitute - TM085
  (695, 69500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Heliolisk - Wild Charge - TM086
  (695, 69500, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 37),
  -- Heliolisk - Iron Tail - TM087
  (695, 69500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Heliolisk - Dark Pulse - TM090
  (695, 69500, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Heliolisk - Electroweb - TM101
  (695, 69500, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 40),
  -- Heliolisk - Focus Blast - TM102
  (695, 69500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Heliolisk - Thunder - TM106
  (695, 69500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 42),
  -- Tyrunt - Tackle - Level 1
  (696, 69600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrunt - Tail Whip - Level 1
  (696, 69600, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrunt - Roar - Level 7
  (696, 69600, 46, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tyrunt - Rock Throw - Level 8
  (696, 69600, 88, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tyrunt - Charm - Level 12
  (696, 69600, 204, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tyrunt - Bite - Level 16
  (696, 69600, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tyrunt - Rock Blast - Level 24
  (696, 69600, 350, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Tyrunt - Rock Slide - Level 28
  (696, 69600, 157, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Tyrunt - Crunch - Level 32
  (696, 69600, 242, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Tyrunt - Dragon Claw - Level 36
  (696, 69600, 337, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Tyrunt - Earthquake - Level 44
  (696, 69600, 89, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Tyrunt - Dragon Claw - TM002
  (696, 69600, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 12),
  -- Tyrunt - Roar - TM005
  (696, 69600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Tyrunt - Brick Break - TM010
  (696, 69600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Tyrunt - Rock Slide - TM012
  (696, 69600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Tyrunt - Fire Fang - TM014
  (696, 69600, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Tyrunt - Ice Fang - TM015
  (696, 69600, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Tyrunt - Protect - TM017
  (696, 69600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Tyrunt - Play Rough - TM020
  (696, 69600, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 19),
  -- Tyrunt - Thunder Fang - TM021
  (696, 69600, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Tyrunt - Crunch - TM025
  (696, 69600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Tyrunt - Dig - TM028
  (696, 69600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Tyrunt - Body Slam - TM033
  (696, 69600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Tyrunt - Endure - TM035
  (696, 69600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Tyrunt - Rock Tomb - TM036
  (696, 69600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Tyrunt - Stealth Rock - TM037
  (696, 69600, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Tyrunt - Earth Power - TM052
  (696, 69600, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 27),
  -- Tyrunt - Draco Meteor - TM054
  (696, 69600, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 28),
  -- Tyrunt - Iron Head - TM058
  (696, 69600, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Tyrunt - Zen Headbutt - TM059
  (696, 69600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Tyrunt - Stone Edge - TM065
  (696, 69600, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 31),
  -- Tyrunt - Earthquake - TM069
  (696, 69600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Tyrunt - Hyper Voice - TM071
  (696, 69600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Tyrunt - Dragon Pulse - TM075
  (696, 69600, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Tyrunt - Bulldoze - TM078
  (696, 69600, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 35),
  -- Tyrunt - Iron Defense - TM080
  (696, 69600, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Tyrunt - Substitute - TM085
  (696, 69600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Tyrunt - Dark Pulse - TM090
  (696, 69600, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Tyrunt - Outrage - TM093
  (696, 69600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 39),
  -- Tyrunt - Close Combat - TM107
  (696, 69600, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 40),
  -- Tyrantrum - Tackle - Level 1
  (697, 69700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrantrum - Tail Whip - Level 1
  (697, 69700, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrantrum - Breaking Swipe - Level 1
  (697, 69700, 784, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrantrum - Roar - Level 7
  (697, 69700, 46, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tyrantrum - Rock Throw - Level 8
  (697, 69700, 88, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tyrantrum - Charm - Level 12
  (697, 69700, 204, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tyrantrum - Bite - Level 16
  (697, 69700, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tyrantrum - Rock Blast - Level 24
  (697, 69700, 350, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tyrantrum - Rock Slide - Level 28
  (697, 69700, 157, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tyrantrum - Crunch - Level 32
  (697, 69700, 242, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tyrantrum - Dragon Claw - Level 36
  (697, 69700, 337, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tyrantrum - Earthquake - Level 44
  (697, 69700, 89, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Tyrantrum - Giga Impact - Level 52
  (697, 69700, 416, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Tyrantrum - Head Smash - Level 58
  (697, 69700, 457, 26, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Tyrantrum - Dragon Claw - TM002
  (697, 69700, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Tyrantrum - Roar - TM005
  (697, 69700, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Tyrantrum - Brick Break - TM010
  (697, 69700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Tyrantrum - Rock Slide - TM012
  (697, 69700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Tyrantrum - Fire Fang - TM014
  (697, 69700, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Tyrantrum - Ice Fang - TM015
  (697, 69700, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Tyrantrum - Protect - TM017
  (697, 69700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Tyrantrum - Play Rough - TM020
  (697, 69700, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Tyrantrum - Thunder Fang - TM021
  (697, 69700, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Tyrantrum - Crunch - TM025
  (697, 69700, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Tyrantrum - Dig - TM028
  (697, 69700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Tyrantrum - Body Slam - TM033
  (697, 69700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Tyrantrum - Endure - TM035
  (697, 69700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Tyrantrum - Rock Tomb - TM036
  (697, 69700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Tyrantrum - Stealth Rock - TM037
  (697, 69700, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 29),
  -- Tyrantrum - Hyper Beam - TM044
  (697, 69700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Tyrantrum - Earth Power - TM052
  (697, 69700, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Tyrantrum - Draco Meteor - TM054
  (697, 69700, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 32),
  -- Tyrantrum - Giga Impact - TM055
  (697, 69700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Tyrantrum - Iron Head - TM058
  (697, 69700, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 34),
  -- Tyrantrum - Zen Headbutt - TM059
  (697, 69700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 35),
  -- Tyrantrum - Stone Edge - TM065
  (697, 69700, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 36),
  -- Tyrantrum - Earthquake - TM069
  (697, 69700, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Tyrantrum - Hyper Voice - TM071
  (697, 69700, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 38),
  -- Tyrantrum - Dragon Pulse - TM075
  (697, 69700, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 39),
  -- Tyrantrum - Bulldoze - TM078
  (697, 69700, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 40),
  -- Tyrantrum - Iron Defense - TM080
  (697, 69700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 41),
  -- Tyrantrum - Substitute - TM085
  (697, 69700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Tyrantrum - Iron Tail - TM087
  (697, 69700, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Tyrantrum - Dark Pulse - TM090
  (697, 69700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 44),
  -- Tyrantrum - Outrage - TM093
  (697, 69700, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 45),
  -- Tyrantrum - Close Combat - TM107
  (697, 69700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 46),
  -- Amaura - Tackle - Level 1
  (698, 69800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amaura - Growl - Level 1
  (698, 69800, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amaura - Rock Throw - Level 10
  (698, 69800, 88, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Amaura - Icy Wind - Level 12
  (698, 69800, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Amaura - Take Down - Level 16
  (698, 69800, 36, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Amaura - Mist - Level 20
  (698, 69800, 54, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Amaura - Rock Blast - Level 24
  (698, 69800, 350, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Amaura - Thunder Wave - Level 28
  (698, 69800, 86, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Amaura - Freeze-Dry - Level 36
  (698, 69800, 573, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Amaura - Ice Beam - Level 40
  (698, 69800, 58, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Amaura - Light Screen - Level 44
  (698, 69800, 113, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Amaura - Blizzard - Level 52
  (698, 69800, 59, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Amaura - Hyper Beam - Level 56
  (698, 69800, 63, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Amaura - Calm Mind - TM006
  (698, 69800, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Amaura - Thunder Wave - TM008
  (698, 69800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Amaura - Rock Slide - TM012
  (698, 69800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Amaura - Ice Beam - TM013
  (698, 69800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Amaura - Light Screen - TM016
  (698, 69800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Amaura - Protect - TM017
  (698, 69800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Amaura - Reflect - TM031
  (698, 69800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Amaura - Body Slam - TM033
  (698, 69800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Amaura - Endure - TM035
  (698, 69800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Amaura - Rock Tomb - TM036
  (698, 69800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Amaura - Stealth Rock - TM037
  (698, 69800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Amaura - Hyper Beam - TM044
  (698, 69800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Amaura - Icy Wind - TM049
  (698, 69800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Amaura - Safeguard - TM051
  (698, 69800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 27),
  -- Amaura - Earth Power - TM052
  (698, 69800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Amaura - Iron Head - TM058
  (698, 69800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Amaura - Zen Headbutt - TM059
  (698, 69800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Amaura - Stone Edge - TM065
  (698, 69800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 31),
  -- Amaura - Thunderbolt - TM067
  (698, 69800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Amaura - Hyper Voice - TM071
  (698, 69800, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Amaura - Bulldoze - TM078
  (698, 69800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Amaura - Iron Defense - TM080
  (698, 69800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Amaura - Flash Cannon - TM084
  (698, 69800, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 36),
  -- Amaura - Substitute - TM085
  (698, 69800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Amaura - Dark Pulse - TM090
  (698, 69800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Amaura - Outrage - TM093
  (698, 69800, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 39),
  -- Amaura - Blizzard - TM105
  (698, 69800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 40),
  -- Aurorus - Tackle - Level 1
  (699, 69900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aurorus - Growl - Level 1
  (699, 69900, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aurorus - Rock Throw - Level 10
  (699, 69900, 88, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Aurorus - Icy Wind - Level 12
  (699, 69900, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Aurorus - Take Down - Level 16
  (699, 69900, 36, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Aurorus - Mist - Level 20
  (699, 69900, 54, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Aurorus - Rock Blast - Level 24
  (699, 69900, 350, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Aurorus - Thunder Wave - Level 28
  (699, 69900, 86, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Aurorus - Freeze-Dry - Level 36
  (699, 69900, 573, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Aurorus - Ice Beam - Level 40
  (699, 69900, 58, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Aurorus - Light Screen - Level 44
  (699, 69900, 113, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Aurorus - Blizzard - Level 52
  (699, 69900, 59, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Aurorus - Hyper Beam - Level 56
  (699, 69900, 63, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Aurorus - Calm Mind - TM006
  (699, 69900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Aurorus - Thunder Wave - TM008
  (699, 69900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Aurorus - Rock Slide - TM012
  (699, 69900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Aurorus - Ice Beam - TM013
  (699, 69900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Aurorus - Light Screen - TM016
  (699, 69900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Aurorus - Protect - TM017
  (699, 69900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Aurorus - Reflect - TM031
  (699, 69900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Aurorus - Body Slam - TM033
  (699, 69900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Aurorus - Endure - TM035
  (699, 69900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Aurorus - Rock Tomb - TM036
  (699, 69900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Aurorus - Stealth Rock - TM037
  (699, 69900, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Aurorus - Hyper Beam - TM044
  (699, 69900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Aurorus - Icy Wind - TM049
  (699, 69900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Aurorus - Safeguard - TM051
  (699, 69900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 27),
  -- Aurorus - Earth Power - TM052
  (699, 69900, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Aurorus - Giga Impact - TM055
  (699, 69900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Aurorus - Iron Head - TM058
  (699, 69900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Aurorus - Zen Headbutt - TM059
  (699, 69900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Aurorus - Psychic - TM063
  (699, 69900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Aurorus - Stone Edge - TM065
  (699, 69900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Aurorus - Thunderbolt - TM067
  (699, 69900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Aurorus - Earthquake - TM069
  (699, 69900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Aurorus - Hyper Voice - TM071
  (699, 69900, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Aurorus - Bulldoze - TM078
  (699, 69900, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 37),
  -- Aurorus - Iron Defense - TM080
  (699, 69900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Aurorus - Flash Cannon - TM084
  (699, 69900, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Aurorus - Substitute - TM085
  (699, 69900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Aurorus - Iron Tail - TM087
  (699, 69900, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 41),
  -- Aurorus - Dark Pulse - TM090
  (699, 69900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 42),
  -- Aurorus - Outrage - TM093
  (699, 69900, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 43),
  -- Aurorus - Blizzard - TM105
  (699, 69900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Aurorus - Thunder - TM106
  (699, 69900, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Sylveon - Tackle - Level 1
  (700, 70000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sylveon - Tail Whip - Level 1
  (700, 70000, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sylveon - Bite - Level 1
  (700, 70000, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sylveon - Growl - Level 1
  (700, 70000, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sylveon - Quick Attack - Level 10
  (700, 70000, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sylveon - Disarming Voice - Level 15
  (700, 70000, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sylveon - Light Screen - Level 25
  (700, 70000, 113, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sylveon - Draining Kiss - Level 30
  (700, 70000, 577, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sylveon - Dazzling Gleam - Level 35
  (700, 70000, 605, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sylveon - Hyper Voice - Level 40
  (700, 70000, 304, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sylveon - Fake Tears - Level 45
  (700, 70000, 313, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sylveon - Moonblast - Level 50
  (700, 70000, 585, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sylveon - Psyshock - TM003
  (700, 70000, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Sylveon - Roar - TM005
  (700, 70000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Sylveon - Calm Mind - TM006
  (700, 70000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Sylveon - Light Screen - TM016
  (700, 70000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Sylveon - Protect - TM017
  (700, 70000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Sylveon - Swift - TM027
  (700, 70000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Sylveon - Dig - TM028
  (700, 70000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Sylveon - Reflect - TM031
  (700, 70000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Sylveon - Body Slam - TM033
  (700, 70000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Sylveon - Endure - TM035
  (700, 70000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Sylveon - Hyper Beam - TM044
  (700, 70000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Sylveon - Giga Impact - TM055
  (700, 70000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Sylveon - Double-Edge - TM056
  (700, 70000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 25),
  -- Sylveon - Psychic - TM063
  (700, 70000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Sylveon - Hyper Voice - TM071
  (700, 70000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Sylveon - Shadow Ball - TM074
  (700, 70000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Sylveon - Substitute - TM085
  (700, 70000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Sylveon - Iron Tail - TM087
  (700, 70000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 30),
  -- Sylveon - Curse - TM091
  (700, 70000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 31),
  -- Sylveon - Dazzling Gleam - TM092
  (700, 70000, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 32),
  -- Sylveon - Taunt - TM095
  (700, 70000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 33);
