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
-- Mega Dimension learnset delta rows for species 001-050.
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
  -- Bulbasaur - Facade - TM109
  (1, 100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Bulbasaur - Acid Spray - TM112
  (1, 100, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Bulbasaur - Trailblaze - TM115
  (1, 100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Bulbasaur - False Swipe - TM122
  (1, 100, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Bulbasaur - Seed Bomb - TM128
  (1, 100, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 5),
  -- Bulbasaur - Petal Dance - TM151
  (1, 100, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 6),
  -- Ivysaur - Facade - TM109
  (2, 200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Ivysaur - Acid Spray - TM112
  (2, 200, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Ivysaur - Trailblaze - TM115
  (2, 200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Ivysaur - False Swipe - TM122
  (2, 200, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Ivysaur - Seed Bomb - TM128
  (2, 200, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 5),
  -- Ivysaur - Petal Dance - TM151
  (2, 200, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 6),
  -- Venusaur - Facade - TM109
  (3, 300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Venusaur - Acid Spray - TM112
  (3, 300, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Venusaur - Trailblaze - TM115
  (3, 300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Venusaur - False Swipe - TM122
  (3, 300, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Venusaur - Seed Bomb - TM128
  (3, 300, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 5),
  -- Venusaur - Petal Dance - TM151
  (3, 300, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 6),
  -- Venusaur - Frenzy Plant - TM160
  (3, 300, 338, 27, NULL, 2, NULL, NULL, 27002160, NULL, 7),
  -- Charmander - Facade - TM109
  (4, 400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Charmander - Flame Charge - TM114
  (4, 400, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Charmander - Ancient Power - TM120
  (4, 400, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Charmander - False Swipe - TM122
  (4, 400, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Charmeleon - Facade - TM109
  (5, 500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Charmeleon - Flame Charge - TM114
  (5, 500, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Charmeleon - Ancient Power - TM120
  (5, 500, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Charmeleon - False Swipe - TM122
  (5, 500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Charizard - Facade - TM109
  (6, 600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Charizard - Flame Charge - TM114
  (6, 600, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Charizard - Ominous Wind - TM119
  (6, 600, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 3),
  -- Charizard - Ancient Power - TM120
  (6, 600, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Charizard - False Swipe - TM122
  (6, 600, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 5),
  -- Charizard - Blaze Kick - TM133
  (6, 600, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 6),
  -- Charizard - Dual Wingbeat - TM134
  (6, 600, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 7),
  -- Charizard - Scorching Sands - TM136
  (6, 600, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 8),
  -- Charizard - Scale Shot - TM143
  (6, 600, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 9),
  -- Charizard - Skull Bash - TM146
  (6, 600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 10),
  -- Charizard - Fissure - TM154
  (6, 600, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 11),
  -- Charizard - Blast Burn - TM158
  (6, 600, 307, 27, NULL, 2, NULL, NULL, 27002158, NULL, 12),
  -- Squirtle - Facade - TM109
  (7, 700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Squirtle - Chilling Water - TM110
  (7, 700, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Squirtle - Muddy Water - TM140
  (7, 700, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 3),
  -- Squirtle - Fake Out - TM141
  (7, 700, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 4),
  -- Squirtle - Skull Bash - TM146
  (7, 700, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 5),
  -- Squirtle - Scald - TM148
  (7, 700, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 6),
  -- Wartortle - Facade - TM109
  (8, 800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Wartortle - Chilling Water - TM110
  (8, 800, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Wartortle - Muddy Water - TM140
  (8, 800, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 3),
  -- Wartortle - Fake Out - TM141
  (8, 800, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 4),
  -- Wartortle - Skull Bash - TM146
  (8, 800, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 5),
  -- Wartortle - Scald - TM148
  (8, 800, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 6),
  -- Blastoise - Facade - TM109
  (9, 900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Blastoise - Chilling Water - TM110
  (9, 900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Blastoise - False Swipe - TM122
  (9, 900, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Blastoise - Muddy Water - TM140
  (9, 900, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 4),
  -- Blastoise - Fake Out - TM141
  (9, 900, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 5),
  -- Blastoise - Skull Bash - TM146
  (9, 900, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Blastoise - Scald - TM148
  (9, 900, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 7),
  -- Blastoise - Hydro Cannon - TM159
  (9, 900, 308, 27, NULL, 2, NULL, NULL, 27002159, NULL, 8),
  -- Weedle - Facade - TM109
  (13, 1300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Kakuna - Facade - TM109
  (14, 1400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Beedrill - Facade - TM109
  (15, 1500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Beedrill - Silver Wind - TM117
  (15, 1500, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 2),
  -- Beedrill - False Swipe - TM122
  (15, 1500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Beedrill - Double Hit - TM132
  (15, 1500, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 4),
  -- Beedrill - Dual Wingbeat - TM134
  (15, 1500, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 5),
  -- Pidgey - Facade - TM109
  (16, 1600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pidgey - Dual Wingbeat - TM134
  (16, 1600, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 2),
  -- Pidgeotto - Facade - TM109
  (17, 1700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pidgeotto - Ominous Wind - TM119
  (17, 1700, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 2),
  -- Pidgeotto - Dual Wingbeat - TM134
  (17, 1700, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 3),
  -- Pidgeotto - Razor Wind - TM145
  (17, 1700, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 4),
  -- Pidgeotto - Sky Attack - TM153
  (17, 1700, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 5),
  -- Pidgeot - Facade - TM109
  (18, 1800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pidgeot - Ominous Wind - TM119
  (18, 1800, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 2),
  -- Pidgeot - Dual Wingbeat - TM134
  (18, 1800, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 3),
  -- Pidgeot - Razor Wind - TM145
  (18, 1800, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 4),
  -- Pidgeot - Sky Attack - TM153
  (18, 1800, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 5),
  -- Ekans - Facade - TM109
  (23, 2300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Ekans - Acid Spray - TM112
  (23, 2300, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Ekans - Trailblaze - TM115
  (23, 2300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Ekans - Poison Fang - TM123
  (23, 2300, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 4),
  -- Ekans - Psychic Fangs - TM124
  (23, 2300, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Ekans - Seed Bomb - TM128
  (23, 2300, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 6),
  -- Ekans - Scale Shot - TM143
  (23, 2300, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 7),
  -- Arbok - Facade - TM109
  (24, 2400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Arbok - Acid Spray - TM112
  (24, 2400, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Arbok - Trailblaze - TM115
  (24, 2400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Arbok - Poison Fang - TM123
  (24, 2400, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 4),
  -- Arbok - Psychic Fangs - TM124
  (24, 2400, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Arbok - Seed Bomb - TM128
  (24, 2400, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 6),
  -- Arbok - Scale Shot - TM143
  (24, 2400, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 7),
  -- Pikachu - Facade - TM109
  (25, 2500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pikachu - Trailblaze - TM115
  (25, 2500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Pikachu - Charge Beam - TM130
  (25, 2500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 3),
  -- Pikachu - Fake Out - TM141
  (25, 2500, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 4),
  -- Pikachu - Skull Bash - TM146
  (25, 2500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 5),
  -- Raichu - Facade - TM109
  (26, 2600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Raichu - Trailblaze - TM115
  (26, 2600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Raichu - Magnet Bomb - TM126
  (26, 2600, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 3),
  -- Raichu - Charge Beam - TM130
  (26, 2600, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Raichu - Drain Punch - TM131
  (26, 2600, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Raichu - Fake Out - TM141
  (26, 2600, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 6),
  -- Raichu - Skull Bash - TM146
  (26, 2600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 7),
  -- Alolan Raichu - Facade - TM109
  (26, 2601, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Alolan Raichu - Trailblaze - TM115
  (26, 2601, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Alolan Raichu - Magnet Bomb - TM126
  (26, 2601, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 3),
  -- Alolan Raichu - Charge Beam - TM130
  (26, 2601, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Alolan Raichu - Fake Out - TM141
  (26, 2601, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 5),
  -- Alolan Raichu - Skull Bash - TM146
  (26, 2601, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Clefairy - Facade - TM109
  (35, 3500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Clefairy - Chilling Water - TM110
  (35, 3500, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Clefairy - Sing - TM111
  (35, 3500, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 3),
  -- Clefairy - Dream Eater - TM127
  (35, 3500, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Clefairy - Charge Beam - TM130
  (35, 3500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Clefairy - Drain Punch - TM131
  (35, 3500, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Clefairy - Dual Wingbeat - TM134
  (35, 3500, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 7),
  -- Clefairy - Tri Attack - TM147
  (35, 3500, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 8),
  -- Clefairy - Meteor Beam - TM156
  (35, 3500, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 9),
  -- Clefable - Facade - TM109
  (36, 3600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Clefable - Chilling Water - TM110
  (36, 3600, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Clefable - Sing - TM111
  (36, 3600, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 3),
  -- Clefable - Dream Eater - TM127
  (36, 3600, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Clefable - Charge Beam - TM130
  (36, 3600, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Clefable - Drain Punch - TM131
  (36, 3600, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Clefable - Dual Wingbeat - TM134
  (36, 3600, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 7),
  -- Clefable - Tri Attack - TM147
  (36, 3600, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 8),
  -- Clefable - Meteor Beam - TM156
  (36, 3600, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 9),
  -- Jigglypuff - Tackle - Level 1
  (39, 3900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jigglypuff - Charm - Level 1
  (39, 3900, 204, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jigglypuff - Disarming Voice - Level 1
  (39, 3900, 574, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jigglypuff - Rollout - Level 10
  (39, 3900, 205, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Jigglypuff - Draining Kiss - Level 12
  (39, 3900, 577, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Jigglypuff - Fake Tears - Level 14
  (39, 3900, 313, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Jigglypuff - Confusion - Level 16
  (39, 3900, 93, 27, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Jigglypuff - Facade - Level 18
  (39, 3900, 263, 27, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Jigglypuff - Take Down - Level 20
  (39, 3900, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Jigglypuff - Body Slam - Level 24
  (39, 3900, 34, 27, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Jigglypuff - Mimic - Level 28
  (39, 3900, 102, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Jigglypuff - Hyper Voice - Level 36
  (39, 3900, 304, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Jigglypuff - Wish - Level 40
  (39, 3900, 273, 27, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Jigglypuff - Double-Edge - Level 44
  (39, 3900, 38, 27, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Jigglypuff - Perish Song - Level 50
  (39, 3900, 195, 27, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Jigglypuff - Moonblast - Level 53
  (39, 3900, 585, 27, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Jigglypuff - Headbutt - TM001
  (39, 3900, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Jigglypuff - Psyshock - TM003
  (39, 3900, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 19),
  -- Jigglypuff - Calm Mind - TM006
  (39, 3900, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 20),
  -- Jigglypuff - Thunder Wave - TM008
  (39, 3900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Jigglypuff - Brick Break - TM010
  (39, 3900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Jigglypuff - Ice Beam - TM013
  (39, 3900, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 23),
  -- Jigglypuff - Light Screen - TM016
  (39, 3900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 24),
  -- Jigglypuff - Protect - TM017
  (39, 3900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Jigglypuff - Play Rough - TM020
  (39, 3900, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 26),
  -- Jigglypuff - Thunder Punch - TM023
  (39, 3900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 27),
  -- Jigglypuff - Ice Punch - TM024
  (39, 3900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 28),
  -- Jigglypuff - Energy Ball - TM026
  (39, 3900, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 29),
  -- Jigglypuff - Swift - TM027
  (39, 3900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 30),
  -- Jigglypuff - Dig - TM028
  (39, 3900, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 31),
  -- Jigglypuff - Fire Punch - TM029
  (39, 3900, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 32),
  -- Jigglypuff - Reflect - TM031
  (39, 3900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 33),
  -- Jigglypuff - Body Slam - TM033
  (39, 3900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 34),
  -- Jigglypuff - Endure - TM035
  (39, 3900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 35),
  -- Jigglypuff - Stealth Rock - TM037
  (39, 3900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Jigglypuff - Fire Blast - TM038
  (39, 3900, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 37),
  -- Jigglypuff - Water Pulse - TM041
  (39, 3900, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 38),
  -- Jigglypuff - Knock Off - TM045
  (39, 3900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 39),
  -- Jigglypuff - Self-Destruct - TM048
  (39, 3900, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 40),
  -- Jigglypuff - Icy Wind - TM049
  (39, 3900, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 41),
  -- Jigglypuff - Double-Edge - TM056
  (39, 3900, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 42),
  -- Jigglypuff - Zen Headbutt - TM059
  (39, 3900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 43),
  -- Jigglypuff - Flamethrower - TM062
  (39, 3900, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 44),
  -- Jigglypuff - Psychic - TM063
  (39, 3900, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 45),
  -- Jigglypuff - Solar Beam - TM064
  (39, 3900, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 46),
  -- Jigglypuff - Thunderbolt - TM067
  (39, 3900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 47),
  -- Jigglypuff - Hyper Voice - TM071
  (39, 3900, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 48),
  -- Jigglypuff - Shadow Ball - TM074
  (39, 3900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 49),
  -- Jigglypuff - Nasty Plot - TM083
  (39, 3900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 50),
  -- Jigglypuff - Substitute - TM085
  (39, 3900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 51),
  -- Jigglypuff - Wild Charge - TM086
  (39, 3900, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 52),
  -- Jigglypuff - Dark Pulse - TM090
  (39, 3900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 53),
  -- Jigglypuff - Dazzling Gleam - TM092
  (39, 3900, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 54),
  -- Jigglypuff - Taunt - TM095
  (39, 3900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 55),
  -- Jigglypuff - Metronome - TM099
  (39, 3900, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 56),
  -- Jigglypuff - Blizzard - TM105
  (39, 3900, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 57),
  -- Jigglypuff - Thunder - TM106
  (39, 3900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 58),
  -- Jigglypuff - Facade - TM109
  (39, 3900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 59),
  -- Jigglypuff - Chilling Water - TM110
  (39, 3900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 60),
  -- Jigglypuff - Sing - TM111
  (39, 3900, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 61),
  -- Jigglypuff - Trailblaze - TM115
  (39, 3900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 62),
  -- Jigglypuff - Mimic - TM125
  (39, 3900, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 63),
  -- Jigglypuff - Dream Eater - TM127
  (39, 3900, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 64),
  -- Jigglypuff - Drain Punch - TM131
  (39, 3900, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 65),
  -- Jigglypuff - Fake Out - TM141
  (39, 3900, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 66),
  -- Jigglypuff - Tri Attack - TM147
  (39, 3900, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 67),
  -- Wigglytuff - Tackle - Level 1
  (40, 4000, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Charm - Level 1
  (40, 4000, 204, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Disarming Voice - Level 1
  (40, 4000, 574, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Rollout - Level 10
  (40, 4000, 205, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Wigglytuff - Draining Kiss - Level 12
  (40, 4000, 577, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wigglytuff - Fake Tears - Level 14
  (40, 4000, 313, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Wigglytuff - Confusion - Level 16
  (40, 4000, 93, 27, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Wigglytuff - Facade - Level 18
  (40, 4000, 263, 27, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Wigglytuff - Take Down - Level 20
  (40, 4000, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Wigglytuff - Body Slam - Level 24
  (40, 4000, 34, 27, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Wigglytuff - Mimic - Level 28
  (40, 4000, 102, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Wigglytuff - Hyper Voice - Level 36
  (40, 4000, 304, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Wigglytuff - Wish - Level 40
  (40, 4000, 273, 27, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Wigglytuff - Double-Edge - Level 44
  (40, 4000, 38, 27, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Wigglytuff - Perish Song - Level 50
  (40, 4000, 195, 27, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Wigglytuff - Moonblast - Level 53
  (40, 4000, 585, 27, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Wigglytuff - Headbutt - TM001
  (40, 4000, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Wigglytuff - Psyshock - TM003
  (40, 4000, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 19),
  -- Wigglytuff - Calm Mind - TM006
  (40, 4000, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 20),
  -- Wigglytuff - Thunder Wave - TM008
  (40, 4000, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Wigglytuff - Brick Break - TM010
  (40, 4000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Wigglytuff - Ice Beam - TM013
  (40, 4000, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 23),
  -- Wigglytuff - Light Screen - TM016
  (40, 4000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 24),
  -- Wigglytuff - Protect - TM017
  (40, 4000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Wigglytuff - Play Rough - TM020
  (40, 4000, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 26),
  -- Wigglytuff - Thunder Punch - TM023
  (40, 4000, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 27),
  -- Wigglytuff - Ice Punch - TM024
  (40, 4000, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 28),
  -- Wigglytuff - Energy Ball - TM026
  (40, 4000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 29),
  -- Wigglytuff - Swift - TM027
  (40, 4000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 30),
  -- Wigglytuff - Dig - TM028
  (40, 4000, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 31),
  -- Wigglytuff - Fire Punch - TM029
  (40, 4000, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 32),
  -- Wigglytuff - Reflect - TM031
  (40, 4000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 33),
  -- Wigglytuff - Body Slam - TM033
  (40, 4000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 34),
  -- Wigglytuff - Endure - TM035
  (40, 4000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 35),
  -- Wigglytuff - Stealth Rock - TM037
  (40, 4000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Wigglytuff - Fire Blast - TM038
  (40, 4000, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 37),
  -- Wigglytuff - Water Pulse - TM041
  (40, 4000, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 38),
  -- Wigglytuff - Hyper Beam - TM044
  (40, 4000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 39),
  -- Wigglytuff - Knock Off - TM045
  (40, 4000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 40),
  -- Wigglytuff - Self-Destruct - TM048
  (40, 4000, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 41),
  -- Wigglytuff - Icy Wind - TM049
  (40, 4000, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 42),
  -- Wigglytuff - Giga Impact - TM055
  (40, 4000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 43),
  -- Wigglytuff - Double-Edge - TM056
  (40, 4000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 44),
  -- Wigglytuff - Zen Headbutt - TM059
  (40, 4000, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 45),
  -- Wigglytuff - Flamethrower - TM062
  (40, 4000, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 46),
  -- Wigglytuff - Psychic - TM063
  (40, 4000, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 47),
  -- Wigglytuff - Solar Beam - TM064
  (40, 4000, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 48),
  -- Wigglytuff - Thunderbolt - TM067
  (40, 4000, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 49),
  -- Wigglytuff - Hyper Voice - TM071
  (40, 4000, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 50),
  -- Wigglytuff - Shadow Ball - TM074
  (40, 4000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 51),
  -- Wigglytuff - Nasty Plot - TM083
  (40, 4000, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 52),
  -- Wigglytuff - Substitute - TM085
  (40, 4000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 53),
  -- Wigglytuff - Wild Charge - TM086
  (40, 4000, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 54),
  -- Wigglytuff - Dark Pulse - TM090
  (40, 4000, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 55),
  -- Wigglytuff - Dazzling Gleam - TM092
  (40, 4000, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 56),
  -- Wigglytuff - Taunt - TM095
  (40, 4000, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 57),
  -- Wigglytuff - Metronome - TM099
  (40, 4000, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 58),
  -- Wigglytuff - Focus Blast - TM102
  (40, 4000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 59),
  -- Wigglytuff - Blizzard - TM105
  (40, 4000, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 60),
  -- Wigglytuff - Thunder - TM106
  (40, 4000, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 61),
  -- Wigglytuff - Facade - TM109
  (40, 4000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 62),
  -- Wigglytuff - Chilling Water - TM110
  (40, 4000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 63),
  -- Wigglytuff - Sing - TM111
  (40, 4000, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 64),
  -- Wigglytuff - Trailblaze - TM115
  (40, 4000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 65),
  -- Wigglytuff - Mimic - TM125
  (40, 4000, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 66),
  -- Wigglytuff - Dream Eater - TM127
  (40, 4000, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 67),
  -- Wigglytuff - Drain Punch - TM131
  (40, 4000, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 68),
  -- Wigglytuff - Fake Out - TM141
  (40, 4000, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 69),
  -- Wigglytuff - Tri Attack - TM147
  (40, 4000, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 70),
  -- Zubat - Supersonic - Level 1
  (41, 4100, 48, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Absorb - Level 1
  (41, 4100, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zubat - Gust - Level 5
  (41, 4100, 16, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zubat - Bite - Level 8
  (41, 4100, 44, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 12
  (41, 4100, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zubat - Quick Attack - Level 15
  (41, 4100, 98, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zubat - Whirlwind - Level 18
  (41, 4100, 18, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Zubat - Hypnosis - Level 22
  (41, 4100, 95, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zubat - Haze - Level 26
  (41, 4100, 114, 27, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zubat - Confuse Ray - Level 30
  (41, 4100, 109, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Zubat - Poison Fang - Level 34
  (41, 4100, 305, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Zubat - Air Slash - Level 42
  (41, 4100, 403, 27, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Zubat - Leech Life - Level 50
  (41, 4100, 141, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Zubat - Protect - TM017
  (41, 4100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Zubat - Crunch - TM025
  (41, 4100, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 15),
  -- Zubat - Swift - TM027
  (41, 4100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Zubat - Endure - TM035
  (41, 4100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Zubat - Giga Drain - TM042
  (41, 4100, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 18),
  -- Zubat - Fly - TM043
  (41, 4100, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Zubat - Agility - TM047
  (41, 4100, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 20),
  -- Zubat - Sludge Bomb - TM053
  (41, 4100, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 21),
  -- Zubat - Zen Headbutt - TM059
  (41, 4100, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 22),
  -- Zubat - Heat Wave - TM068
  (41, 4100, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 23),
  -- Zubat - Shadow Ball - TM074
  (41, 4100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 24),
  -- Zubat - U-turn - TM082
  (41, 4100, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 25),
  -- Zubat - Nasty Plot - TM083
  (41, 4100, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 26),
  -- Zubat - Substitute - TM085
  (41, 4100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Zubat - Curse - TM091
  (41, 4100, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 28),
  -- Zubat - Whirlwind - TM094
  (41, 4100, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 29),
  -- Zubat - Taunt - TM095
  (41, 4100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 30),
  -- Zubat - Facade - TM109
  (41, 4100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 31),
  -- Zubat - Ominous Wind - TM119
  (41, 4100, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 32),
  -- Zubat - Poison Fang - TM123
  (41, 4100, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 33),
  -- Zubat - Dual Wingbeat - TM134
  (41, 4100, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 34),
  -- Zubat - Swagger - TM139
  (41, 4100, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 35),
  -- Zubat - Razor Wind - TM145
  (41, 4100, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 36),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Absorb - Level 1
  (42, 4200, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Gust - Level 5
  (42, 4200, 16, 27, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Golbat - Bite - Level 8
  (42, 4200, 44, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Golbat - Wing Attack - Level 12
  (42, 4200, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Golbat - Quick Attack - Level 15
  (42, 4200, 98, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Golbat - Whirlwind - Level 18
  (42, 4200, 18, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Golbat - Hypnosis - Level 22
  (42, 4200, 95, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Golbat - Haze - Level 26
  (42, 4200, 114, 27, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Golbat - Confuse Ray - Level 30
  (42, 4200, 109, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Golbat - Poison Fang - Level 34
  (42, 4200, 305, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Golbat - Air Slash - Level 42
  (42, 4200, 403, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Golbat - Leech Life - Level 50
  (42, 4200, 141, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Golbat - Toxic - TM007
  (42, 4200, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Golbat - Protect - TM017
  (42, 4200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Golbat - Aerial Ace - TM022
  (42, 4200, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Golbat - Crunch - TM025
  (42, 4200, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Golbat - Swift - TM027
  (42, 4200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Golbat - Double Team - TM032
  (42, 4200, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Golbat - Endure - TM035
  (42, 4200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Golbat - Giga Drain - TM042
  (42, 4200, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Golbat - Fly - TM043
  (42, 4200, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 23),
  -- Golbat - Hyper Beam - TM044
  (42, 4200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Golbat - Agility - TM047
  (42, 4200, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Golbat - Sludge Bomb - TM053
  (42, 4200, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Golbat - Giga Impact - TM055
  (42, 4200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Golbat - Zen Headbutt - TM059
  (42, 4200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 28),
  -- Golbat - Heat Wave - TM068
  (42, 4200, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 29),
  -- Golbat - Shadow Ball - TM074
  (42, 4200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Golbat - X-Scissor - TM081
  (42, 4200, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 31),
  -- Golbat - U-turn - TM082
  (42, 4200, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 32),
  -- Golbat - Nasty Plot - TM083
  (42, 4200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 33),
  -- Golbat - Substitute - TM085
  (42, 4200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Golbat - Curse - TM091
  (42, 4200, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Golbat - Whirlwind - TM094
  (42, 4200, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 36),
  -- Golbat - Taunt - TM095
  (42, 4200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Golbat - Facade - TM109
  (42, 4200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 38),
  -- Golbat - Ominous Wind - TM119
  (42, 4200, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 39),
  -- Golbat - Poison Fang - TM123
  (42, 4200, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 40),
  -- Golbat - Dual Wingbeat - TM134
  (42, 4200, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 41),
  -- Golbat - Swagger - TM139
  (42, 4200, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 42),
  -- Golbat - Razor Wind - TM145
  (42, 4200, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 43),
  -- Golbat - Sky Attack - TM153
  (42, 4200, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 44);
