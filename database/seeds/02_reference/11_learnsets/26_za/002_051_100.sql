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
-- Pokémon Legends: Z-A learnsets for species 051-100.
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
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Calm Mind - TM006
  (63, 6300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 2),
  -- Abra - Thunder Wave - TM008
  (63, 6300, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 3),
  -- Abra - Light Screen - TM016
  (63, 6300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 4),
  -- Abra - Protect - TM017
  (63, 6300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 5),
  -- Abra - Thunder Punch - TM023
  (63, 6300, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 6),
  -- Abra - Ice Punch - TM024
  (63, 6300, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 7),
  -- Abra - Energy Ball - TM026
  (63, 6300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 8),
  -- Abra - Swift - TM027
  (63, 6300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 9),
  -- Abra - Fire Punch - TM029
  (63, 6300, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 10),
  -- Abra - Reflect - TM031
  (63, 6300, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 11),
  -- Abra - Double Team - TM032
  (63, 6300, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 12),
  -- Abra - Body Slam - TM033
  (63, 6300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 13),
  -- Abra - Endure - TM035
  (63, 6300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 14),
  -- Abra - Safeguard - TM051
  (63, 6300, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 15),
  -- Abra - Zen Headbutt - TM059
  (63, 6300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 16),
  -- Abra - Psychic - TM063
  (63, 6300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 17),
  -- Abra - Shadow Ball - TM074
  (63, 6300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 18),
  -- Abra - Substitute - TM085
  (63, 6300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 19),
  -- Abra - Iron Tail - TM087
  (63, 6300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 20),
  -- Abra - Dazzling Gleam - TM092
  (63, 6300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 21),
  -- Abra - Taunt - TM095
  (63, 6300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 22),
  -- Abra - Metronome - TM099
  (63, 6300, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 23),
  -- Kadabra - Psybeam - Level 1
  (64, 6400, 60, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Reflect - Level 10
  (64, 6400, 115, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Kadabra - Psycho Cut - Level 20
  (64, 6400, 427, 26, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Kadabra - Recover - Level 25
  (64, 6400, 105, 26, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kadabra - Psyshock - Level 30
  (64, 6400, 473, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Kadabra - Psychic - Level 35
  (64, 6400, 94, 26, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Kadabra - Safeguard - Level 40
  (64, 6400, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Kadabra - Future Sight - Level 45
  (64, 6400, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Kadabra - Calm Mind - Level 50
  (64, 6400, 347, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Kadabra - Confusion - Evolution
  (64, 6400, 93, 26, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Kadabra - Psyshock - TM003
  (64, 6400, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Kadabra - Calm Mind - TM006
  (64, 6400, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Kadabra - Thunder Wave - TM008
  (64, 6400, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Kadabra - Light Screen - TM016
  (64, 6400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Kadabra - Protect - TM017
  (64, 6400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Kadabra - Thunder Punch - TM023
  (64, 6400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Kadabra - Ice Punch - TM024
  (64, 6400, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Kadabra - Energy Ball - TM026
  (64, 6400, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Kadabra - Swift - TM027
  (64, 6400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Kadabra - Fire Punch - TM029
  (64, 6400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Kadabra - Reflect - TM031
  (64, 6400, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Kadabra - Double Team - TM032
  (64, 6400, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Kadabra - Body Slam - TM033
  (64, 6400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Kadabra - Endure - TM035
  (64, 6400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Kadabra - Safeguard - TM051
  (64, 6400, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 26),
  -- Kadabra - Zen Headbutt - TM059
  (64, 6400, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 27),
  -- Kadabra - Future Sight - TM060
  (64, 6400, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 28),
  -- Kadabra - Psychic - TM063
  (64, 6400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 29),
  -- Kadabra - Shadow Ball - TM074
  (64, 6400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Kadabra - Substitute - TM085
  (64, 6400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Kadabra - Iron Tail - TM087
  (64, 6400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 32),
  -- Kadabra - Dazzling Gleam - TM092
  (64, 6400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 33),
  -- Kadabra - Taunt - TM095
  (64, 6400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Kadabra - Metronome - TM099
  (64, 6400, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 35),
  -- Alakazam - Psybeam - Level 1
  (65, 6500, 60, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Reflect - Level 10
  (65, 6500, 115, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Alakazam - Psycho Cut - Level 20
  (65, 6500, 427, 26, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Alakazam - Recover - Level 25
  (65, 6500, 105, 26, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Alakazam - Psyshock - Level 30
  (65, 6500, 473, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Alakazam - Psychic - Level 35
  (65, 6500, 94, 26, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Alakazam - Safeguard - Level 40
  (65, 6500, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Alakazam - Future Sight - Level 45
  (65, 6500, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Alakazam - Calm Mind - Level 50
  (65, 6500, 347, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Alakazam - Psyshock - TM003
  (65, 6500, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 11),
  -- Alakazam - Calm Mind - TM006
  (65, 6500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 12),
  -- Alakazam - Thunder Wave - TM008
  (65, 6500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Alakazam - Light Screen - TM016
  (65, 6500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Alakazam - Protect - TM017
  (65, 6500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Alakazam - Thunder Punch - TM023
  (65, 6500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 16),
  -- Alakazam - Ice Punch - TM024
  (65, 6500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 17),
  -- Alakazam - Energy Ball - TM026
  (65, 6500, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Alakazam - Swift - TM027
  (65, 6500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Alakazam - Fire Punch - TM029
  (65, 6500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Alakazam - Reflect - TM031
  (65, 6500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Alakazam - Double Team - TM032
  (65, 6500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Alakazam - Body Slam - TM033
  (65, 6500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Alakazam - Endure - TM035
  (65, 6500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Alakazam - Hyper Beam - TM044
  (65, 6500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Alakazam - Safeguard - TM051
  (65, 6500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 26),
  -- Alakazam - Zen Headbutt - TM059
  (65, 6500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 27),
  -- Alakazam - Future Sight - TM060
  (65, 6500, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 28),
  -- Alakazam - Psychic - TM063
  (65, 6500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 29),
  -- Alakazam - Shadow Ball - TM074
  (65, 6500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Alakazam - Nasty Plot - TM083
  (65, 6500, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Alakazam - Substitute - TM085
  (65, 6500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Alakazam - Iron Tail - TM087
  (65, 6500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Alakazam - Dazzling Gleam - TM092
  (65, 6500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 34),
  -- Alakazam - Taunt - TM095
  (65, 6500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Alakazam - Metronome - TM099
  (65, 6500, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 36),
  -- Alakazam - Focus Blast - TM102
  (65, 6500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 37),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Rock Smash - Level 1
  (66, 6600, 249, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Power-Up Punch - Level 12
  (66, 6600, 612, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Machop - Brutal Swing - Level 14
  (66, 6600, 693, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Machop - Bullet Punch - Level 16
  (66, 6600, 418, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machop - Knock Off - Level 18
  (66, 6600, 282, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Machop - Bulk Up - Level 20
  (66, 6600, 339, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Machop - Brick Break - Level 25
  (66, 6600, 280, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Machop - Bulldoze - Level 30
  (66, 6600, 523, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Machop - Detect - Level 36
  (66, 6600, 197, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machop - Double-Edge - Level 44
  (66, 6600, 38, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Machop - Dynamic Punch - Level 54
  (66, 6600, 223, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Machop - Rock Smash - TM004
  (66, 6600, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Machop - Brick Break - TM010
  (66, 6600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Machop - Bulk Up - TM011
  (66, 6600, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Machop - Rock Slide - TM012
  (66, 6600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Machop - Light Screen - TM016
  (66, 6600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Machop - Protect - TM017
  (66, 6600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Machop - Power-Up Punch - TM018
  (66, 6600, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Machop - Thunder Punch - TM023
  (66, 6600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Machop - Ice Punch - TM024
  (66, 6600, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Machop - Dig - TM028
  (66, 6600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Machop - Fire Punch - TM029
  (66, 6600, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Machop - Body Slam - TM033
  (66, 6600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Machop - Endure - TM035
  (66, 6600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Machop - Rock Tomb - TM036
  (66, 6600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Machop - Fire Blast - TM038
  (66, 6600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Machop - Knock Off - TM045
  (66, 6600, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Machop - Double-Edge - TM056
  (66, 6600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Machop - Flamethrower - TM062
  (66, 6600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Machop - Earthquake - TM069
  (66, 6600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Machop - Poison Jab - TM077
  (66, 6600, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Machop - Bulldoze - TM078
  (66, 6600, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Machop - Substitute - TM085
  (66, 6600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Machop - Metronome - TM099
  (66, 6600, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 36),
  -- Machop - Focus Blast - TM102
  (66, 6600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 37),
  -- Machop - Work Up - TM103
  (66, 6600, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 38),
  -- Machop - Close Combat - TM107
  (66, 6600, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 39),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Rock Smash - Level 1
  (67, 6700, 249, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machoke - Power-Up Punch - Level 12
  (67, 6700, 612, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Machoke - Brutal Swing - Level 14
  (67, 6700, 693, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Machoke - Bullet Punch - Level 16
  (67, 6700, 418, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machoke - Knock Off - Level 18
  (67, 6700, 282, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Machoke - Bulk Up - Level 20
  (67, 6700, 339, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Machoke - Brick Break - Level 25
  (67, 6700, 280, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Machoke - Bulldoze - Level 30
  (67, 6700, 523, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Machoke - Detect - Level 36
  (67, 6700, 197, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machoke - Double-Edge - Level 44
  (67, 6700, 38, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Machoke - Dynamic Punch - Level 54
  (67, 6700, 223, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Machoke - Rock Smash - TM004
  (67, 6700, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Machoke - Brick Break - TM010
  (67, 6700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Machoke - Bulk Up - TM011
  (67, 6700, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Machoke - Rock Slide - TM012
  (67, 6700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Machoke - Light Screen - TM016
  (67, 6700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Machoke - Protect - TM017
  (67, 6700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Machoke - Power-Up Punch - TM018
  (67, 6700, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Machoke - Thunder Punch - TM023
  (67, 6700, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Machoke - Ice Punch - TM024
  (67, 6700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Machoke - Dig - TM028
  (67, 6700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Machoke - Fire Punch - TM029
  (67, 6700, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Machoke - Body Slam - TM033
  (67, 6700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Machoke - Endure - TM035
  (67, 6700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Machoke - Rock Tomb - TM036
  (67, 6700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Machoke - Fire Blast - TM038
  (67, 6700, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Machoke - Knock Off - TM045
  (67, 6700, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Machoke - Double-Edge - TM056
  (67, 6700, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Machoke - Flamethrower - TM062
  (67, 6700, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Machoke - Earthquake - TM069
  (67, 6700, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Machoke - Poison Jab - TM077
  (67, 6700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Machoke - Bulldoze - TM078
  (67, 6700, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Machoke - Substitute - TM085
  (67, 6700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Machoke - Metronome - TM099
  (67, 6700, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 36),
  -- Machoke - Focus Blast - TM102
  (67, 6700, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 37),
  -- Machoke - Work Up - TM103
  (67, 6700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 38),
  -- Machoke - Close Combat - TM107
  (67, 6700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 39),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Rock Smash - Level 1
  (68, 6800, 249, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machamp - Power-Up Punch - Level 12
  (68, 6800, 612, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Machamp - Brutal Swing - Level 14
  (68, 6800, 693, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Machamp - Bullet Punch - Level 16
  (68, 6800, 418, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machamp - Knock Off - Level 18
  (68, 6800, 282, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Machamp - Bulk Up - Level 20
  (68, 6800, 339, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Machamp - Brick Break - Level 25
  (68, 6800, 280, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Machamp - Bulldoze - Level 30
  (68, 6800, 523, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Machamp - Detect - Level 36
  (68, 6800, 197, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machamp - Heavy Slam - Level 40
  (68, 6800, 484, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Machamp - Double-Edge - Level 44
  (68, 6800, 38, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Machamp - Dynamic Punch - Level 54
  (68, 6800, 223, 26, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Machamp - Rock Smash - TM004
  (68, 6800, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Machamp - Brick Break - TM010
  (68, 6800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Machamp - Bulk Up - TM011
  (68, 6800, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Machamp - Rock Slide - TM012
  (68, 6800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Machamp - Light Screen - TM016
  (68, 6800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Machamp - Protect - TM017
  (68, 6800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Machamp - Power-Up Punch - TM018
  (68, 6800, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Machamp - Thunder Punch - TM023
  (68, 6800, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Machamp - Ice Punch - TM024
  (68, 6800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Machamp - Dig - TM028
  (68, 6800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Machamp - Fire Punch - TM029
  (68, 6800, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Machamp - Body Slam - TM033
  (68, 6800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Machamp - Endure - TM035
  (68, 6800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Machamp - Rock Tomb - TM036
  (68, 6800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Machamp - Fire Blast - TM038
  (68, 6800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 29),
  -- Machamp - Hyper Beam - TM044
  (68, 6800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Machamp - Knock Off - TM045
  (68, 6800, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 31),
  -- Machamp - Giga Impact - TM055
  (68, 6800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Machamp - Double-Edge - TM056
  (68, 6800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Machamp - Flamethrower - TM062
  (68, 6800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Machamp - Stone Edge - TM065
  (68, 6800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Machamp - Earthquake - TM069
  (68, 6800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 36),
  -- Machamp - Poison Jab - TM077
  (68, 6800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 37),
  -- Machamp - Bulldoze - TM078
  (68, 6800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 38),
  -- Machamp - Substitute - TM085
  (68, 6800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Machamp - Metronome - TM099
  (68, 6800, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 40),
  -- Machamp - Focus Blast - TM102
  (68, 6800, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Machamp - Work Up - TM103
  (68, 6800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 42),
  -- Machamp - Close Combat - TM107
  (68, 6800, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 43),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 1
  (69, 6900, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellsprout - Infestation - Level 8
  (69, 6900, 611, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Bellsprout - Razor Leaf - Level 10
  (69, 6900, 75, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 19
  (69, 6900, 282, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bellsprout - Magical Leaf - Level 23
  (69, 6900, 345, 26, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Bellsprout - Toxic Spikes - Level 26
  (69, 6900, 390, 26, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Bellsprout - Poison Jab - Level 30
  (69, 6900, 398, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Bellsprout - Leech Life - Level 33
  (69, 6900, 141, 26, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Bellsprout - Sludge Wave - Level 40
  (69, 6900, 482, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bellsprout - Power Whip - Level 44
  (69, 6900, 438, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Bellsprout - Leaf Storm - Level 48
  (69, 6900, 437, 26, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Bellsprout - Toxic - TM007
  (69, 6900, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Bellsprout - Protect - TM017
  (69, 6900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Bellsprout - Energy Ball - TM026
  (69, 6900, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Bellsprout - Swords Dance - TM030
  (69, 6900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Bellsprout - Reflect - TM031
  (69, 6900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Bellsprout - Endure - TM035
  (69, 6900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Bellsprout - Bullet Seed - TM040
  (69, 6900, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 22),
  -- Bellsprout - Giga Drain - TM042
  (69, 6900, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Bellsprout - Knock Off - TM045
  (69, 6900, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 24),
  -- Bellsprout - Solar Beam - TM064
  (69, 6900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Bellsprout - Poison Jab - TM077
  (69, 6900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 26),
  -- Bellsprout - Substitute - TM085
  (69, 6900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Bellsprout - Toxic Spikes - TM089
  (69, 6900, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 28),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Infestation - Level 8
  (70, 7000, 611, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Weepinbell - Razor Leaf - Level 10
  (70, 7000, 75, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Weepinbell - Knock Off - Level 19
  (70, 7000, 282, 26, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Weepinbell - Magical Leaf - Level 23
  (70, 7000, 345, 26, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Weepinbell - Toxic Spikes - Level 26
  (70, 7000, 390, 26, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Weepinbell - Poison Jab - Level 30
  (70, 7000, 398, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Weepinbell - Leech Life - Level 33
  (70, 7000, 141, 26, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Weepinbell - Sludge Wave - Level 40
  (70, 7000, 482, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Weepinbell - Power Whip - Level 44
  (70, 7000, 438, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Weepinbell - Leaf Storm - Level 48
  (70, 7000, 437, 26, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Weepinbell - Toxic - TM007
  (70, 7000, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Weepinbell - Protect - TM017
  (70, 7000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Weepinbell - Energy Ball - TM026
  (70, 7000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Weepinbell - Swords Dance - TM030
  (70, 7000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Weepinbell - Reflect - TM031
  (70, 7000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Weepinbell - Endure - TM035
  (70, 7000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Weepinbell - Bullet Seed - TM040
  (70, 7000, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 22),
  -- Weepinbell - Giga Drain - TM042
  (70, 7000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Weepinbell - Knock Off - TM045
  (70, 7000, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 24),
  -- Weepinbell - Solar Beam - TM064
  (70, 7000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Weepinbell - Poison Jab - TM077
  (70, 7000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 26),
  -- Weepinbell - Substitute - TM085
  (70, 7000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Weepinbell - Toxic Spikes - TM089
  (70, 7000, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 28),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Growth - Level 1
  (71, 7100, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Lunge - Level 1
  (71, 7100, 679, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Infestation - Level 8
  (71, 7100, 611, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Victreebel - Razor Leaf - Level 10
  (71, 7100, 75, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Victreebel - Sleep Powder - Level 13
  (71, 7100, 79, 26, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Victreebel - Poison Powder - Level 15
  (71, 7100, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Victreebel - Stun Spore - Level 17
  (71, 7100, 78, 26, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Victreebel - Knock Off - Level 19
  (71, 7100, 282, 26, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Victreebel - Magical Leaf - Level 23
  (71, 7100, 345, 26, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Victreebel - Toxic Spikes - Level 26
  (71, 7100, 390, 26, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Victreebel - Poison Jab - Level 30
  (71, 7100, 398, 26, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Victreebel - Leech Life - Level 33
  (71, 7100, 141, 26, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Victreebel - Sludge Wave - Level 40
  (71, 7100, 482, 26, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Victreebel - Power Whip - Level 44
  (71, 7100, 438, 26, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Victreebel - Leaf Storm - Level 48
  (71, 7100, 437, 26, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Victreebel - Sludge Bomb - Evolution
  (71, 7100, 188, 26, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Victreebel - Toxic - TM007
  (71, 7100, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 18),
  -- Victreebel - Protect - TM017
  (71, 7100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Victreebel - Energy Ball - TM026
  (71, 7100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Victreebel - Swords Dance - TM030
  (71, 7100, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Victreebel - Reflect - TM031
  (71, 7100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Victreebel - Endure - TM035
  (71, 7100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Victreebel - Bullet Seed - TM040
  (71, 7100, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 24),
  -- Victreebel - Giga Drain - TM042
  (71, 7100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Victreebel - Hyper Beam - TM044
  (71, 7100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Victreebel - Knock Off - TM045
  (71, 7100, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Victreebel - Sludge Bomb - TM053
  (71, 7100, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 28),
  -- Victreebel - Giga Impact - TM055
  (71, 7100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Victreebel - Solar Beam - TM064
  (71, 7100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Victreebel - Poison Jab - TM077
  (71, 7100, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Victreebel - Substitute - TM085
  (71, 7100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Victreebel - Toxic Spikes - TM089
  (71, 7100, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 33),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Confusion - Level 1
  (79, 7900, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 3
  (79, 7900, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 6
  (79, 7900, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowpoke - Psybeam - Level 14
  (79, 7900, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slowpoke - Water Pulse - Level 18
  (79, 7900, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 21
  (79, 7900, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Slowpoke - Zen Headbutt - Level 24
  (79, 7900, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Slowpoke - Amnesia - Level 27
  (79, 7900, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Slowpoke - Surf - Level 36
  (79, 7900, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowpoke - Psychic - Level 42
  (79, 7900, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Slowpoke - Headbutt - TM001
  (79, 7900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Slowpoke - Psyshock - TM003
  (79, 7900, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Slowpoke - Calm Mind - TM006
  (79, 7900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Slowpoke - Thunder Wave - TM008
  (79, 7900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Slowpoke - Ice Beam - TM013
  (79, 7900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Slowpoke - Light Screen - TM016
  (79, 7900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Slowpoke - Protect - TM017
  (79, 7900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Slowpoke - Swift - TM027
  (79, 7900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Slowpoke - Dig - TM028
  (79, 7900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Slowpoke - Body Slam - TM033
  (79, 7900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Slowpoke - Endure - TM035
  (79, 7900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Slowpoke - Fire Blast - TM038
  (79, 7900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Slowpoke - Water Pulse - TM041
  (79, 7900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Slowpoke - Mud Shot - TM046
  (79, 7900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Slowpoke - Icy Wind - TM049
  (79, 7900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Slowpoke - Safeguard - TM051
  (79, 7900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Slowpoke - Zen Headbutt - TM059
  (79, 7900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Slowpoke - Flamethrower - TM062
  (79, 7900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Slowpoke - Psychic - TM063
  (79, 7900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Slowpoke - Earthquake - TM069
  (79, 7900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Slowpoke - Whirlpool - TM070
  (79, 7900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 33),
  -- Slowpoke - Surf - TM073
  (79, 7900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 34),
  -- Slowpoke - Shadow Ball - TM074
  (79, 7900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Slowpoke - Liquidation - TM076
  (79, 7900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 36),
  -- Slowpoke - Substitute - TM085
  (79, 7900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Slowpoke - Iron Tail - TM087
  (79, 7900, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Slowpoke - Curse - TM091
  (79, 7900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Slowpoke - Hydro Pump - TM096
  (79, 7900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 40),
  -- Slowpoke - Waterfall - TM098
  (79, 7900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 41),
  -- Slowpoke - Blizzard - TM105
  (79, 7900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Galarian Slowpoke - Tackle - Level 1
  (79, 7901, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Slowpoke - Confusion - Level 1
  (79, 7901, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Slowpoke - Curse - Level 1
  (79, 7901, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galarian Slowpoke - Growl - Level 3
  (79, 7901, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Galarian Slowpoke - Water Gun - Level 6
  (79, 7901, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Galarian Slowpoke - Psybeam - Level 14
  (79, 7901, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Galarian Slowpoke - Water Pulse - Level 18
  (79, 7901, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Galarian Slowpoke - Headbutt - Level 21
  (79, 7901, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Galarian Slowpoke - Zen Headbutt - Level 24
  (79, 7901, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Galarian Slowpoke - Amnesia - Level 27
  (79, 7901, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Galarian Slowpoke - Surf - Level 36
  (79, 7901, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Galarian Slowpoke - Psychic - Level 42
  (79, 7901, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Galarian Slowpoke - Headbutt - TM001
  (79, 7901, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Galarian Slowpoke - Psyshock - TM003
  (79, 7901, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Galarian Slowpoke - Calm Mind - TM006
  (79, 7901, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Galarian Slowpoke - Thunder Wave - TM008
  (79, 7901, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Galarian Slowpoke - Ice Beam - TM013
  (79, 7901, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Galarian Slowpoke - Light Screen - TM016
  (79, 7901, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Galarian Slowpoke - Protect - TM017
  (79, 7901, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Galarian Slowpoke - Swift - TM027
  (79, 7901, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Galarian Slowpoke - Dig - TM028
  (79, 7901, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Galarian Slowpoke - Body Slam - TM033
  (79, 7901, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Galarian Slowpoke - Endure - TM035
  (79, 7901, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Galarian Slowpoke - Fire Blast - TM038
  (79, 7901, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Galarian Slowpoke - Water Pulse - TM041
  (79, 7901, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Galarian Slowpoke - Mud Shot - TM046
  (79, 7901, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Galarian Slowpoke - Icy Wind - TM049
  (79, 7901, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Galarian Slowpoke - Safeguard - TM051
  (79, 7901, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Galarian Slowpoke - Zen Headbutt - TM059
  (79, 7901, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Galarian Slowpoke - Flamethrower - TM062
  (79, 7901, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Galarian Slowpoke - Psychic - TM063
  (79, 7901, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Galarian Slowpoke - Earthquake - TM069
  (79, 7901, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Galarian Slowpoke - Whirlpool - TM070
  (79, 7901, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 33),
  -- Galarian Slowpoke - Surf - TM073
  (79, 7901, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 34),
  -- Galarian Slowpoke - Shadow Ball - TM074
  (79, 7901, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Galarian Slowpoke - Liquidation - TM076
  (79, 7901, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 36),
  -- Galarian Slowpoke - Substitute - TM085
  (79, 7901, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Galarian Slowpoke - Iron Tail - TM087
  (79, 7901, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Galarian Slowpoke - Curse - TM091
  (79, 7901, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Galarian Slowpoke - Hydro Pump - TM096
  (79, 7901, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 40),
  -- Galarian Slowpoke - Waterfall - TM098
  (79, 7901, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 41),
  -- Galarian Slowpoke - Blizzard - TM105
  (79, 7901, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Confusion - Level 1
  (80, 8000, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Growl - Level 3
  (80, 8000, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Slowbro - Water Gun - Level 6
  (80, 8000, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowbro - Psybeam - Level 14
  (80, 8000, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slowbro - Water Pulse - Level 18
  (80, 8000, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Slowbro - Headbutt - Level 21
  (80, 8000, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Slowbro - Zen Headbutt - Level 24
  (80, 8000, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Slowbro - Amnesia - Level 27
  (80, 8000, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Slowbro - Surf - Level 36
  (80, 8000, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowbro - Psychic - Level 42
  (80, 8000, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Slowbro - Future Sight - Level 45
  (80, 8000, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Slowbro - Headbutt - TM001
  (80, 8000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Slowbro - Psyshock - TM003
  (80, 8000, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Slowbro - Calm Mind - TM006
  (80, 8000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Slowbro - Thunder Wave - TM008
  (80, 8000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Slowbro - Ice Beam - TM013
  (80, 8000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Slowbro - Light Screen - TM016
  (80, 8000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Slowbro - Protect - TM017
  (80, 8000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Slowbro - Power Gem - TM019
  (80, 8000, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 21),
  -- Slowbro - Ice Punch - TM024
  (80, 8000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Slowbro - Swift - TM027
  (80, 8000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Slowbro - Dig - TM028
  (80, 8000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Slowbro - Body Slam - TM033
  (80, 8000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Slowbro - Endure - TM035
  (80, 8000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Slowbro - Fire Blast - TM038
  (80, 8000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 27),
  -- Slowbro - Water Pulse - TM041
  (80, 8000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 28),
  -- Slowbro - Hyper Beam - TM044
  (80, 8000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Slowbro - Mud Shot - TM046
  (80, 8000, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 30),
  -- Slowbro - Icy Wind - TM049
  (80, 8000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Slowbro - Safeguard - TM051
  (80, 8000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 32),
  -- Slowbro - Giga Impact - TM055
  (80, 8000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Slowbro - Zen Headbutt - TM059
  (80, 8000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Slowbro - Future Sight - TM060
  (80, 8000, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 35),
  -- Slowbro - Flamethrower - TM062
  (80, 8000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 36),
  -- Slowbro - Psychic - TM063
  (80, 8000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 37),
  -- Slowbro - Earthquake - TM069
  (80, 8000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 38),
  -- Slowbro - Whirlpool - TM070
  (80, 8000, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 39),
  -- Slowbro - Surf - TM073
  (80, 8000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 40),
  -- Slowbro - Shadow Ball - TM074
  (80, 8000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 41),
  -- Slowbro - Liquidation - TM076
  (80, 8000, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 42),
  -- Slowbro - Nasty Plot - TM083
  (80, 8000, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 43),
  -- Slowbro - Substitute - TM085
  (80, 8000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Slowbro - Iron Tail - TM087
  (80, 8000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 45),
  -- Slowbro - Curse - TM091
  (80, 8000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 46),
  -- Slowbro - Hydro Pump - TM096
  (80, 8000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 47),
  -- Slowbro - Heal Block - TM097
  (80, 8000, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 48),
  -- Slowbro - Waterfall - TM098
  (80, 8000, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 49),
  -- Slowbro - Metronome - TM099
  (80, 8000, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 50),
  -- Slowbro - Focus Blast - TM102
  (80, 8000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 51),
  -- Slowbro - Blizzard - TM105
  (80, 8000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 52),
  -- Galarian Slowbro - Tackle - Level 1
  (80, 8002, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Slowbro - Confusion - Level 1
  (80, 8002, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Slowbro - Curse - Level 1
  (80, 8002, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galarian Slowbro - Growl - Level 3
  (80, 8002, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Galarian Slowbro - Water Gun - Level 6
  (80, 8002, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Galarian Slowbro - Psybeam - Level 14
  (80, 8002, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Galarian Slowbro - Water Pulse - Level 18
  (80, 8002, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Galarian Slowbro - Headbutt - Level 21
  (80, 8002, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Galarian Slowbro - Zen Headbutt - Level 24
  (80, 8002, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Galarian Slowbro - Amnesia - Level 27
  (80, 8002, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Galarian Slowbro - Poison Jab - Level 33
  (80, 8002, 398, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Galarian Slowbro - Surf - Level 36
  (80, 8002, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Galarian Slowbro - Sludge Bomb - Level 40
  (80, 8002, 188, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Galarian Slowbro - Psychic - Level 42
  (80, 8002, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Galarian Slowbro - Future Sight - Level 45
  (80, 8002, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Galarian Slowbro - Headbutt - TM001
  (80, 8002, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Galarian Slowbro - Psyshock - TM003
  (80, 8002, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Galarian Slowbro - Calm Mind - TM006
  (80, 8002, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Galarian Slowbro - Toxic - TM007
  (80, 8002, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 19),
  -- Galarian Slowbro - Thunder Wave - TM008
  (80, 8002, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Galarian Slowbro - Ice Beam - TM013
  (80, 8002, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Galarian Slowbro - Light Screen - TM016
  (80, 8002, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Galarian Slowbro - Protect - TM017
  (80, 8002, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Galarian Slowbro - Thunder Punch - TM023
  (80, 8002, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Galarian Slowbro - Swift - TM027
  (80, 8002, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Galarian Slowbro - Dig - TM028
  (80, 8002, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Galarian Slowbro - Fire Punch - TM029
  (80, 8002, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Galarian Slowbro - Body Slam - TM033
  (80, 8002, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Galarian Slowbro - Endure - TM035
  (80, 8002, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Galarian Slowbro - Fire Blast - TM038
  (80, 8002, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Galarian Slowbro - Water Pulse - TM041
  (80, 8002, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 31),
  -- Galarian Slowbro - Hyper Beam - TM044
  (80, 8002, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Galarian Slowbro - Mud Shot - TM046
  (80, 8002, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 33),
  -- Galarian Slowbro - Icy Wind - TM049
  (80, 8002, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Galarian Slowbro - Safeguard - TM051
  (80, 8002, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 35),
  -- Galarian Slowbro - Sludge Bomb - TM053
  (80, 8002, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 36),
  -- Galarian Slowbro - Giga Impact - TM055
  (80, 8002, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Galarian Slowbro - Double-Edge - TM056
  (80, 8002, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Galarian Slowbro - Zen Headbutt - TM059
  (80, 8002, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Galarian Slowbro - Future Sight - TM060
  (80, 8002, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 40),
  -- Galarian Slowbro - Flamethrower - TM062
  (80, 8002, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 41),
  -- Galarian Slowbro - Psychic - TM063
  (80, 8002, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 42),
  -- Galarian Slowbro - Earthquake - TM069
  (80, 8002, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 43),
  -- Galarian Slowbro - Whirlpool - TM070
  (80, 8002, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 44),
  -- Galarian Slowbro - Surf - TM073
  (80, 8002, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 45),
  -- Galarian Slowbro - Shadow Ball - TM074
  (80, 8002, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 46),
  -- Galarian Slowbro - Liquidation - TM076
  (80, 8002, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 47),
  -- Galarian Slowbro - Poison Jab - TM077
  (80, 8002, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 48),
  -- Galarian Slowbro - Nasty Plot - TM083
  (80, 8002, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 49),
  -- Galarian Slowbro - Substitute - TM085
  (80, 8002, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 50),
  -- Galarian Slowbro - Iron Tail - TM087
  (80, 8002, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 51),
  -- Galarian Slowbro - Toxic Spikes - TM089
  (80, 8002, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 52),
  -- Galarian Slowbro - Curse - TM091
  (80, 8002, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 53),
  -- Galarian Slowbro - Hydro Pump - TM096
  (80, 8002, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 54),
  -- Galarian Slowbro - Heal Block - TM097
  (80, 8002, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 55),
  -- Galarian Slowbro - Waterfall - TM098
  (80, 8002, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 56),
  -- Galarian Slowbro - Metronome - TM099
  (80, 8002, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 57),
  -- Galarian Slowbro - Gunk Shot - TM100
  (80, 8002, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 58),
  -- Galarian Slowbro - Focus Blast - TM102
  (80, 8002, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 59),
  -- Galarian Slowbro - Blizzard - TM105
  (80, 8002, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 60),
  -- Gastly - Confuse Ray - Level 1
  (92, 9200, 109, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Hypnosis - Level 4
  (92, 9200, 95, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gastly - Confusion - Level 8
  (92, 9200, 93, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Shadow Sneak - Level 12
  (92, 9200, 425, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Curse - Level 20
  (92, 9200, 174, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gastly - Haze - Level 24
  (92, 9200, 114, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Gastly - Icy Wind - Level 28
  (92, 9200, 196, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 40
  (92, 9200, 247, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Gastly - Perish Song - Level 50
  (92, 9200, 195, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Gastly - Toxic - TM007
  (92, 9200, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 12),
  -- Gastly - Protect - TM017
  (92, 9200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 13),
  -- Gastly - Energy Ball - TM026
  (92, 9200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 14),
  -- Gastly - Endure - TM035
  (92, 9200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 15),
  -- Gastly - Giga Drain - TM042
  (92, 9200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 16),
  -- Gastly - Self-Destruct - TM048
  (92, 9200, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 17),
  -- Gastly - Icy Wind - TM049
  (92, 9200, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 18),
  -- Gastly - Sludge Bomb - TM053
  (92, 9200, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 19),
  -- Gastly - Will-O-Wisp - TM057
  (92, 9200, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 20),
  -- Gastly - Psychic - TM063
  (92, 9200, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 21),
  -- Gastly - Thunderbolt - TM067
  (92, 9200, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 22),
  -- Gastly - Shadow Ball - TM074
  (92, 9200, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 23),
  -- Gastly - Poison Jab - TM077
  (92, 9200, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 24),
  -- Gastly - Nasty Plot - TM083
  (92, 9200, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 25),
  -- Gastly - Substitute - TM085
  (92, 9200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Gastly - Dark Pulse - TM090
  (92, 9200, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 27),
  -- Gastly - Curse - TM091
  (92, 9200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 28),
  -- Gastly - Dazzling Gleam - TM092
  (92, 9200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 29),
  -- Gastly - Taunt - TM095
  (92, 9200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 30),
  -- Gastly - Gunk Shot - TM100
  (92, 9200, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 31),
  -- Gastly - Thunder - TM106
  (92, 9200, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 32),
  -- Haunter - Confuse Ray - Level 1
  (93, 9300, 109, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Hypnosis - Level 4
  (93, 9300, 95, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Haunter - Confusion - Level 8
  (93, 9300, 93, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Haunter - Shadow Sneak - Level 12
  (93, 9300, 425, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Haunter - Shadow Claw - Level 16
  (93, 9300, 421, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Haunter - Curse - Level 20
  (93, 9300, 174, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Haunter - Haze - Level 24
  (93, 9300, 114, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Haunter - Icy Wind - Level 28
  (93, 9300, 196, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Haunter - Dark Pulse - Level 36
  (93, 9300, 399, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Haunter - Shadow Ball - Level 40
  (93, 9300, 247, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Haunter - Sludge Wave - Level 48
  (93, 9300, 482, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Haunter - Perish Song - Level 50
  (93, 9300, 195, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Haunter - Phantom Force - Level 55
  (93, 9300, 566, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Haunter - Toxic - TM007
  (93, 9300, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Haunter - Protect - TM017
  (93, 9300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Haunter - Thunder Punch - TM023
  (93, 9300, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Haunter - Ice Punch - TM024
  (93, 9300, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Haunter - Energy Ball - TM026
  (93, 9300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Haunter - Fire Punch - TM029
  (93, 9300, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Haunter - Endure - TM035
  (93, 9300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Haunter - Giga Drain - TM042
  (93, 9300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Haunter - Self-Destruct - TM048
  (93, 9300, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 23),
  -- Haunter - Icy Wind - TM049
  (93, 9300, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 24),
  -- Haunter - Sludge Bomb - TM053
  (93, 9300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 25),
  -- Haunter - Will-O-Wisp - TM057
  (93, 9300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Haunter - Shadow Claw - TM061
  (93, 9300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Haunter - Psychic - TM063
  (93, 9300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Haunter - Thunderbolt - TM067
  (93, 9300, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 29),
  -- Haunter - Shadow Ball - TM074
  (93, 9300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Haunter - Poison Jab - TM077
  (93, 9300, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Haunter - Nasty Plot - TM083
  (93, 9300, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 32),
  -- Haunter - Substitute - TM085
  (93, 9300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Haunter - Toxic Spikes - TM089
  (93, 9300, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 34),
  -- Haunter - Dark Pulse - TM090
  (93, 9300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Haunter - Curse - TM091
  (93, 9300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 36),
  -- Haunter - Dazzling Gleam - TM092
  (93, 9300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 37),
  -- Haunter - Taunt - TM095
  (93, 9300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Haunter - Metronome - TM099
  (93, 9300, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 39),
  -- Haunter - Gunk Shot - TM100
  (93, 9300, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 40),
  -- Haunter - Thunder - TM106
  (93, 9300, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 41),
  -- Gengar - Confuse Ray - Level 1
  (94, 9400, 109, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Hypnosis - Level 4
  (94, 9400, 95, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gengar - Confusion - Level 8
  (94, 9400, 93, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gengar - Shadow Sneak - Level 12
  (94, 9400, 425, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gengar - Shadow Claw - Level 16
  (94, 9400, 421, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gengar - Curse - Level 20
  (94, 9400, 174, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gengar - Haze - Level 24
  (94, 9400, 114, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gengar - Icy Wind - Level 28
  (94, 9400, 196, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gengar - Dark Pulse - Level 36
  (94, 9400, 399, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Gengar - Shadow Ball - Level 40
  (94, 9400, 247, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gengar - Sludge Wave - Level 48
  (94, 9400, 482, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Gengar - Perish Song - Level 50
  (94, 9400, 195, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Gengar - Phantom Force - Level 55
  (94, 9400, 566, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Gengar - Toxic - TM007
  (94, 9400, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Gengar - Thunder Wave - TM008
  (94, 9400, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Gengar - Protect - TM017
  (94, 9400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Gengar - Thunder Punch - TM023
  (94, 9400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Gengar - Ice Punch - TM024
  (94, 9400, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 19),
  -- Gengar - Energy Ball - TM026
  (94, 9400, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Gengar - Fire Punch - TM029
  (94, 9400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Gengar - Endure - TM035
  (94, 9400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Gengar - Giga Drain - TM042
  (94, 9400, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Gengar - Hyper Beam - TM044
  (94, 9400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Gengar - Self-Destruct - TM048
  (94, 9400, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Gengar - Icy Wind - TM049
  (94, 9400, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Gengar - Sludge Bomb - TM053
  (94, 9400, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Gengar - Giga Impact - TM055
  (94, 9400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Gengar - Will-O-Wisp - TM057
  (94, 9400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Gengar - Shadow Claw - TM061
  (94, 9400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Gengar - Psychic - TM063
  (94, 9400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Gengar - Thunderbolt - TM067
  (94, 9400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Gengar - Shadow Ball - TM074
  (94, 9400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Gengar - Poison Jab - TM077
  (94, 9400, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Gengar - Nasty Plot - TM083
  (94, 9400, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 35),
  -- Gengar - Substitute - TM085
  (94, 9400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Gengar - Toxic Spikes - TM089
  (94, 9400, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 37),
  -- Gengar - Dark Pulse - TM090
  (94, 9400, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Gengar - Curse - TM091
  (94, 9400, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Gengar - Dazzling Gleam - TM092
  (94, 9400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 40),
  -- Gengar - Taunt - TM095
  (94, 9400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 41),
  -- Gengar - Metronome - TM099
  (94, 9400, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 42),
  -- Gengar - Gunk Shot - TM100
  (94, 9400, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 43),
  -- Gengar - Focus Blast - TM102
  (94, 9400, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 44),
  -- Gengar - Thunder - TM106
  (94, 9400, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Rock Throw - Level 1
  (95, 9500, 88, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Dragon Breath - Level 12
  (95, 9500, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Onix - Curse - Level 16
  (95, 9500, 174, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Onix - Rock Slide - Level 20
  (95, 9500, 157, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Onix - Breaking Swipe - Level 22
  (95, 9500, 784, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Onix - Screech - Level 24
  (95, 9500, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Onix - Sand Tomb - Level 28
  (95, 9500, 328, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Onix - Stealth Rock - Level 32
  (95, 9500, 446, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Onix - Dig - Level 44
  (95, 9500, 91, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Onix - Iron Tail - Level 48
  (95, 9500, 231, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Onix - Stone Edge - Level 52
  (95, 9500, 444, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Onix - Double-Edge - Level 56
  (95, 9500, 38, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Onix - Head Smash - Level 62
  (95, 9500, 457, 26, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Onix - Rock Slide - TM012
  (95, 9500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Onix - Protect - TM017
  (95, 9500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Onix - Dig - TM028
  (95, 9500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Onix - Endure - TM035
  (95, 9500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Onix - Rock Tomb - TM036
  (95, 9500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 20),
  -- Onix - Stealth Rock - TM037
  (95, 9500, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 21),
  -- Onix - Self-Destruct - TM048
  (95, 9500, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 22),
  -- Onix - Double-Edge - TM056
  (95, 9500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 23),
  -- Onix - Iron Head - TM058
  (95, 9500, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 24),
  -- Onix - Stone Edge - TM065
  (95, 9500, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 25),
  -- Onix - Earthquake - TM069
  (95, 9500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 26),
  -- Onix - Dragon Pulse - TM075
  (95, 9500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Onix - Substitute - TM085
  (95, 9500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Onix - Iron Tail - TM087
  (95, 9500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 29),
  -- Onix - Curse - TM091
  (95, 9500, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 30),
  -- Onix - Taunt - TM095
  (95, 9500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 31);
