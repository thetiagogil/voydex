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
-- Mega Dimension learnset delta rows for species 801-850.
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
  -- Magearna - Metal Sound - Level 1
  (801, 80100, 319, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magearna - Disarming Voice - Level 1
  (801, 80100, 574, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magearna - Rollout - Level 12
  (801, 80100, 205, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Magearna - Draining Kiss - Level 14
  (801, 80100, 577, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Magearna - Iron Defense - Level 18
  (801, 80100, 334, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Magearna - Charge Beam - Level 24
  (801, 80100, 451, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Magearna - Eerie Impulse - Level 28
  (801, 80100, 598, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Magearna - Psybeam - Level 30
  (801, 80100, 60, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Magearna - Tri Attack - Level 36
  (801, 80100, 161, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Magearna - Magnet Bomb - Level 42
  (801, 80100, 443, 27, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Magearna - Psyshock - Level 50
  (801, 80100, 473, 27, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Magearna - Iron Head - Level 60
  (801, 80100, 442, 27, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Magearna - Aura Sphere - Level 66
  (801, 80100, 396, 27, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Magearna - Flash Cannon - Level 72
  (801, 80100, 430, 27, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Magearna - Fleur Cannon - Level 80
  (801, 80100, 705, 27, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Magearna - Zap Cannon - Level 84
  (801, 80100, 192, 27, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Magearna - Psyshock - TM003
  (801, 80100, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Magearna - Calm Mind - TM006
  (801, 80100, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Magearna - Thunder Wave - TM008
  (801, 80100, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Magearna - Brick Break - TM010
  (801, 80100, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Magearna - Ice Beam - TM013
  (801, 80100, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Magearna - Light Screen - TM016
  (801, 80100, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Magearna - Protect - TM017
  (801, 80100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Magearna - Power Gem - TM019
  (801, 80100, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 24),
  -- Magearna - Play Rough - TM020
  (801, 80100, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 25),
  -- Magearna - Energy Ball - TM026
  (801, 80100, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 26),
  -- Magearna - Swift - TM027
  (801, 80100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Magearna - Reflect - TM031
  (801, 80100, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 28),
  -- Magearna - Body Slam - TM033
  (801, 80100, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Magearna - Endure - TM035
  (801, 80100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Magearna - Hyper Beam - TM044
  (801, 80100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Magearna - Agility - TM047
  (801, 80100, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 32),
  -- Magearna - Self-Destruct - TM048
  (801, 80100, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 33),
  -- Magearna - Giga Impact - TM055
  (801, 80100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Magearna - Iron Head - TM058
  (801, 80100, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 35),
  -- Magearna - Zen Headbutt - TM059
  (801, 80100, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Magearna - Psychic - TM063
  (801, 80100, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 37),
  -- Magearna - Solar Beam - TM064
  (801, 80100, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 38),
  -- Magearna - Volt Switch - TM066
  (801, 80100, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 39),
  -- Magearna - Thunderbolt - TM067
  (801, 80100, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 40),
  -- Magearna - Shadow Ball - TM074
  (801, 80100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 41),
  -- Magearna - Iron Defense - TM080
  (801, 80100, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 42),
  -- Magearna - Flash Cannon - TM084
  (801, 80100, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 43),
  -- Magearna - Substitute - TM085
  (801, 80100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Magearna - Spikes - TM088
  (801, 80100, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 45),
  -- Magearna - Dazzling Gleam - TM092
  (801, 80100, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 46),
  -- Magearna - Electroweb - TM101
  (801, 80100, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 47),
  -- Magearna - Focus Blast - TM102
  (801, 80100, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Magearna - Facade - TM109
  (801, 80100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 49),
  -- Magearna - False Swipe - TM122
  (801, 80100, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 50),
  -- Magearna - Magnet Bomb - TM126
  (801, 80100, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 51),
  -- Magearna - Charge Beam - TM130
  (801, 80100, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 52),
  -- Magearna - Skull Bash - TM146
  (801, 80100, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 53),
  -- Magearna - Tri Attack - TM147
  (801, 80100, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 54),
  -- Magearna - Vacuum Wave - TM150
  (801, 80100, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 55),
  -- Magearna - Petal Dance - TM151
  (801, 80100, 80, 27, NULL, 2, NULL, NULL, 26002151, NULL, 56),
  -- Magearna - Solar Blade - TM152
  (801, 80100, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 57),
  -- Magearna - Steel Beam - TM157
  (801, 80100, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 58),
  -- Marshadow - Fire Punch - Level 1
  (802, 80200, 7, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshadow - Ice Punch - Level 1
  (802, 80200, 8, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshadow - Thunder Punch - Level 1
  (802, 80200, 9, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshadow - Shadow Sneak - Level 1
  (802, 80200, 425, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshadow - Power-Up Punch - Level 14
  (802, 80200, 612, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Marshadow - Shadow Punch - Level 18
  (802, 80200, 325, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Marshadow - Mach Punch - Level 24
  (802, 80200, 183, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Marshadow - Brutal Swing - Level 28
  (802, 80200, 693, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Marshadow - Aura Sphere - Level 32
  (802, 80200, 396, 27, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Marshadow - Dual Chop - Level 40
  (802, 80200, 530, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Marshadow - Drain Punch - Level 54
  (802, 80200, 409, 27, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Marshadow - Phantom Force - Level 64
  (802, 80200, 566, 27, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Marshadow - Spectral Thief - Level 72
  (802, 80200, 712, 27, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Marshadow - Close Combat - Level 80
  (802, 80200, 370, 27, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Marshadow - Calm Mind - TM006
  (802, 80200, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Marshadow - Brick Break - TM010
  (802, 80200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Marshadow - Bulk Up - TM011
  (802, 80200, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Marshadow - Rock Slide - TM012
  (802, 80200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Marshadow - Protect - TM017
  (802, 80200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Marshadow - Power-Up Punch - TM018
  (802, 80200, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Marshadow - Thunder Punch - TM023
  (802, 80200, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Marshadow - Ice Punch - TM024
  (802, 80200, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Marshadow - Swift - TM027
  (802, 80200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Marshadow - Fire Punch - TM029
  (802, 80200, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Marshadow - Endure - TM035
  (802, 80200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Marshadow - Rock Tomb - TM036
  (802, 80200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Marshadow - Hyper Beam - TM044
  (802, 80200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Marshadow - Knock Off - TM045
  (802, 80200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Marshadow - Agility - TM047
  (802, 80200, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Marshadow - Giga Impact - TM055
  (802, 80200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Marshadow - Will-O-Wisp - TM057
  (802, 80200, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 31),
  -- Marshadow - Iron Head - TM058
  (802, 80200, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Marshadow - Zen Headbutt - TM059
  (802, 80200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Marshadow - Shadow Claw - TM061
  (802, 80200, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 34),
  -- Marshadow - Stone Edge - TM065
  (802, 80200, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Marshadow - Shadow Ball - TM074
  (802, 80200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Marshadow - Poison Jab - TM077
  (802, 80200, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 37),
  -- Marshadow - Substitute - TM085
  (802, 80200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Marshadow - Outrage - TM093
  (802, 80200, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 39),
  -- Marshadow - Focus Blast - TM102
  (802, 80200, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 40),
  -- Marshadow - Work Up - TM103
  (802, 80200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Marshadow - Close Combat - TM107
  (802, 80200, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 42),
  -- Marshadow - Comet Punch - TM108
  (802, 80200, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 43),
  -- Marshadow - Facade - TM109
  (802, 80200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 44),
  -- Marshadow - Low Sweep - TM113
  (802, 80200, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 45),
  -- Marshadow - Shadow Punch - TM118
  (802, 80200, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 46),
  -- Marshadow - Ominous Wind - TM119
  (802, 80200, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 47),
  -- Marshadow - False Swipe - TM122
  (802, 80200, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 48),
  -- Marshadow - Drain Punch - TM131
  (802, 80200, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 49),
  -- Marshadow - Blaze Kick - TM133
  (802, 80200, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 50),
  -- Marshadow - Dual Chop - TM135
  (802, 80200, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 51),
  -- Marshadow - Vacuum Wave - TM150
  (802, 80200, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 52),
  -- Zeraora - Quick Attack - Level 1
  (807, 80700, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zeraora - Spark - Level 1
  (807, 80700, 209, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zeraora - Fake Out - Level 1
  (807, 80700, 252, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zeraora - Snarl - Level 10
  (807, 80700, 555, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zeraora - Power-Up Punch - Level 15
  (807, 80700, 612, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zeraora - Brutal Swing - Level 18
  (807, 80700, 693, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Zeraora - Slash - Level 24
  (807, 80700, 163, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Zeraora - Volt Switch - Level 32
  (807, 80700, 521, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Zeraora - Charge - Level 40
  (807, 80700, 268, 27, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Zeraora - Thunder Punch - Level 48
  (807, 80700, 9, 27, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Zeraora - Dynamic Punch - Level 56
  (807, 80700, 223, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Zeraora - Discharge - Level 64
  (807, 80700, 435, 27, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Zeraora - Wild Charge - Level 72
  (807, 80700, 528, 27, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Zeraora - Agility - Level 80
  (807, 80700, 97, 27, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Zeraora - Plasma Fists - Level 84
  (807, 80700, 721, 27, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Zeraora - Close Combat - Level 96
  (807, 80700, 370, 27, NULL, 1, 96, NULL, NULL, NULL, 16),
  -- Zeraora - Calm Mind - TM006
  (807, 80700, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Zeraora - Thunder Wave - TM008
  (807, 80700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Zeraora - Brick Break - TM010
  (807, 80700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Zeraora - Bulk Up - TM011
  (807, 80700, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Zeraora - Protect - TM017
  (807, 80700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Zeraora - Power-Up Punch - TM018
  (807, 80700, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 22),
  -- Zeraora - Play Rough - TM020
  (807, 80700, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Zeraora - Aerial Ace - TM022
  (807, 80700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Zeraora - Thunder Punch - TM023
  (807, 80700, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Zeraora - Swift - TM027
  (807, 80700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Zeraora - Fire Punch - TM029
  (807, 80700, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Zeraora - Endure - TM035
  (807, 80700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Zeraora - Discharge - TM039
  (807, 80700, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Zeraora - Hyper Beam - TM044
  (807, 80700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Zeraora - Agility - TM047
  (807, 80700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Zeraora - Giga Impact - TM055
  (807, 80700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Zeraora - Volt Switch - TM066
  (807, 80700, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 33),
  -- Zeraora - Thunderbolt - TM067
  (807, 80700, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Zeraora - Substitute - TM085
  (807, 80700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Zeraora - Wild Charge - TM086
  (807, 80700, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 36),
  -- Zeraora - Iron Tail - TM087
  (807, 80700, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Zeraora - Outrage - TM093
  (807, 80700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 38),
  -- Zeraora - Taunt - TM095
  (807, 80700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Zeraora - Electroweb - TM101
  (807, 80700, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 40),
  -- Zeraora - Focus Blast - TM102
  (807, 80700, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Zeraora - Work Up - TM103
  (807, 80700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 42),
  -- Zeraora - Thunder - TM106
  (807, 80700, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 43),
  -- Zeraora - Close Combat - TM107
  (807, 80700, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Zeraora - Comet Punch - TM108
  (807, 80700, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 45),
  -- Zeraora - Facade - TM109
  (807, 80700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Zeraora - Low Sweep - TM113
  (807, 80700, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 47),
  -- Zeraora - Pay Day - TM116
  (807, 80700, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 48),
  -- Zeraora - False Swipe - TM122
  (807, 80700, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 49),
  -- Zeraora - Drain Punch - TM131
  (807, 80700, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 50),
  -- Zeraora - Blaze Kick - TM133
  (807, 80700, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Zeraora - Fake Out - TM141
  (807, 80700, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 52),
  -- Zeraora - Razor Wind - TM145
  (807, 80700, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 53),
  -- Zeraora - Vacuum Wave - TM150
  (807, 80700, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 54),
  -- Meltan - Thunder Shock - Level 1
  (808, 80800, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meltan - Harden - Level 1
  (808, 80800, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meltan - Tail Whip - Level 8
  (808, 80800, 39, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Meltan - Brutal Swing - Level 11
  (808, 80800, 693, 27, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Meltan - Headbutt - Level 16
  (808, 80800, 29, 27, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Meltan - Thunder Wave - Level 24
  (808, 80800, 86, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Meltan - Acid Armor - Level 32
  (808, 80800, 151, 27, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Meltan - Flash Cannon - Level 40
  (808, 80800, 430, 27, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Meltan - Headbutt - TM001
  (808, 80800, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 9),
  -- Meltan - Thunder Wave - TM008
  (808, 80800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 10),
  -- Meltan - Protect - TM017
  (808, 80800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 11),
  -- Meltan - Endure - TM035
  (808, 80800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 12),
  -- Meltan - Self-Destruct - TM048
  (808, 80800, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 13),
  -- Meltan - Giga Impact - TM055
  (808, 80800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 14),
  -- Meltan - Iron Head - TM058
  (808, 80800, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 15),
  -- Meltan - Thunderbolt - TM067
  (808, 80800, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 16),
  -- Meltan - Iron Defense - TM080
  (808, 80800, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 17),
  -- Meltan - Flash Cannon - TM084
  (808, 80800, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 18),
  -- Meltan - Substitute - TM085
  (808, 80800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 19),
  -- Meltan - Facade - TM109
  (808, 80800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 20),
  -- Meltan - Magnet Bomb - TM126
  (808, 80800, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 21),
  -- Meltan - Charge Beam - TM130
  (808, 80800, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 22),
  -- Meltan - Steel Beam - TM157
  (808, 80800, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 23),
  -- Melmetal - Thunder Shock - Level 1
  (809, 80900, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Melmetal - Harden - Level 1
  (809, 80900, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Melmetal - Tail Whip - Level 8
  (809, 80900, 39, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Melmetal - Brutal Swing - Level 11
  (809, 80900, 693, 27, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Melmetal - Headbutt - Level 16
  (809, 80900, 29, 27, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Melmetal - Thunder Wave - Level 24
  (809, 80900, 86, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Melmetal - Acid Armor - Level 32
  (809, 80900, 151, 27, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Melmetal - Flash Cannon - Level 40
  (809, 80900, 430, 27, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Melmetal - Discharge - Level 64
  (809, 80900, 435, 27, NULL, 1, 64, NULL, NULL, NULL, 9),
  -- Melmetal - Dynamic Punch - Level 72
  (809, 80900, 223, 27, NULL, 1, 72, NULL, NULL, NULL, 10),
  -- Melmetal - Double Iron Bash - Level 80
  (809, 80900, 742, 27, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Melmetal - Hyper Beam - Level 96
  (809, 80900, 63, 27, NULL, 1, 96, NULL, NULL, NULL, 12),
  -- Melmetal - Thunder Punch - Evolution
  (809, 80900, 9, 27, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Melmetal - Heavy Slam - Evolution
  (809, 80900, 484, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Melmetal - Headbutt - TM001
  (809, 80900, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Melmetal - Thunder Wave - TM008
  (809, 80900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Melmetal - Brick Break - TM010
  (809, 80900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Melmetal - Rock Slide - TM012
  (809, 80900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Melmetal - Ice Beam - TM013
  (809, 80900, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Melmetal - Protect - TM017
  (809, 80900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Melmetal - Thunder Punch - TM023
  (809, 80900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Melmetal - Ice Punch - TM024
  (809, 80900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Melmetal - Body Slam - TM033
  (809, 80900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Melmetal - Endure - TM035
  (809, 80900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Melmetal - Rock Tomb - TM036
  (809, 80900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Melmetal - Discharge - TM039
  (809, 80900, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 26),
  -- Melmetal - Hyper Beam - TM044
  (809, 80900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Melmetal - Self-Destruct - TM048
  (809, 80900, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 28),
  -- Melmetal - Giga Impact - TM055
  (809, 80900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Melmetal - Iron Head - TM058
  (809, 80900, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Melmetal - Solar Beam - TM064
  (809, 80900, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 31),
  -- Melmetal - Thunderbolt - TM067
  (809, 80900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Melmetal - Earthquake - TM069
  (809, 80900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 33),
  -- Melmetal - Iron Defense - TM080
  (809, 80900, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Melmetal - Flash Cannon - TM084
  (809, 80900, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 35),
  -- Melmetal - Substitute - TM085
  (809, 80900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Melmetal - Thunder - TM106
  (809, 80900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 37),
  -- Melmetal - Facade - TM109
  (809, 80900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Melmetal - Magnet Bomb - TM126
  (809, 80900, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 39),
  -- Melmetal - Charge Beam - TM130
  (809, 80900, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 40),
  -- Melmetal - Steel Beam - TM157
  (809, 80900, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 41),
  -- Rookidee - Leer - Level 1
  (821, 82100, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rookidee - Peck - Level 1
  (821, 82100, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rookidee - Gust - Level 10
  (821, 82100, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Rookidee - Take Down - Level 14
  (821, 82100, 36, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Rookidee - Wing Attack - Level 18
  (821, 82100, 17, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Rookidee - Taunt - Level 20
  (821, 82100, 269, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rookidee - Air Slash - Level 24
  (821, 82100, 403, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rookidee - Feather Dance - Level 27
  (821, 82100, 297, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Rookidee - Swagger - Level 32
  (821, 82100, 207, 27, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Rookidee - Slash - Level 36
  (821, 82100, 163, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rookidee - Dual Wingbeat - Level 42
  (821, 82100, 814, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Rookidee - Brave Bird - Level 47
  (821, 82100, 413, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rookidee - Rock Smash - TM004
  (821, 82100, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Rookidee - Protect - TM017
  (821, 82100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Rookidee - Aerial Ace - TM022
  (821, 82100, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Rookidee - Swift - TM027
  (821, 82100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Rookidee - Endure - TM035
  (821, 82100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Rookidee - Fly - TM043
  (821, 82100, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 18),
  -- Rookidee - Agility - TM047
  (821, 82100, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 19),
  -- Rookidee - U-turn - TM082
  (821, 82100, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 20),
  -- Rookidee - Nasty Plot - TM083
  (821, 82100, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 21),
  -- Rookidee - Substitute - TM085
  (821, 82100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 22),
  -- Rookidee - Taunt - TM095
  (821, 82100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 23),
  -- Rookidee - Facade - TM109
  (821, 82100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 24),
  -- Rookidee - Dual Wingbeat - TM134
  (821, 82100, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 25),
  -- Rookidee - Swagger - TM139
  (821, 82100, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 26),
  -- Rookidee - Razor Wind - TM145
  (821, 82100, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 27),
  -- Rookidee - Sky Attack - TM153
  (821, 82100, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 28),
  -- Corvisquire - Leer - Level 1
  (822, 82200, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corvisquire - Peck - Level 1
  (822, 82200, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corvisquire - Gust - Level 10
  (822, 82200, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Corvisquire - Take Down - Level 14
  (822, 82200, 36, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Corvisquire - Wing Attack - Level 18
  (822, 82200, 17, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Corvisquire - Taunt - Level 20
  (822, 82200, 269, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Corvisquire - Air Slash - Level 24
  (822, 82200, 403, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Corvisquire - Feather Dance - Level 27
  (822, 82200, 297, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Corvisquire - Swagger - Level 32
  (822, 82200, 207, 27, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Corvisquire - Slash - Level 36
  (822, 82200, 163, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Corvisquire - Dual Wingbeat - Level 42
  (822, 82200, 814, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Corvisquire - Brave Bird - Level 47
  (822, 82200, 413, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Corvisquire - Rock Smash - TM004
  (822, 82200, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Corvisquire - Protect - TM017
  (822, 82200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Corvisquire - Aerial Ace - TM022
  (822, 82200, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Corvisquire - Swift - TM027
  (822, 82200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Corvisquire - Endure - TM035
  (822, 82200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Corvisquire - Fly - TM043
  (822, 82200, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 18),
  -- Corvisquire - Agility - TM047
  (822, 82200, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 19),
  -- Corvisquire - Hurricane - TM079
  (822, 82200, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 20),
  -- Corvisquire - U-turn - TM082
  (822, 82200, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 21),
  -- Corvisquire - Nasty Plot - TM083
  (822, 82200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 22),
  -- Corvisquire - Substitute - TM085
  (822, 82200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 23),
  -- Corvisquire - Taunt - TM095
  (822, 82200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 24),
  -- Corvisquire - Work Up - TM103
  (822, 82200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 25),
  -- Corvisquire - Facade - TM109
  (822, 82200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 26),
  -- Corvisquire - Dual Wingbeat - TM134
  (822, 82200, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 27),
  -- Corvisquire - Swagger - TM139
  (822, 82200, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 28),
  -- Corvisquire - Razor Wind - TM145
  (822, 82200, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 29),
  -- Corvisquire - Sky Attack - TM153
  (822, 82200, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 30),
  -- Corviknight - Leer - Level 1
  (823, 82300, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corviknight - Peck - Level 1
  (823, 82300, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corviknight - Screech - Level 1
  (823, 82300, 103, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Corviknight - Iron Defense - Level 1
  (823, 82300, 334, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Corviknight - Gust - Level 10
  (823, 82300, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Corviknight - Take Down - Level 14
  (823, 82300, 36, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Corviknight - Wing Attack - Level 18
  (823, 82300, 17, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Corviknight - Taunt - Level 20
  (823, 82300, 269, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Corviknight - Air Slash - Level 24
  (823, 82300, 403, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Corviknight - Feather Dance - Level 27
  (823, 82300, 297, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Corviknight - Swagger - Level 32
  (823, 82300, 207, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Corviknight - Slash - Level 36
  (823, 82300, 163, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Corviknight - Dual Wingbeat - Level 42
  (823, 82300, 814, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Corviknight - Brave Bird - Level 47
  (823, 82300, 413, 27, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Corviknight - Heavy Slam - Level 53
  (823, 82300, 484, 27, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Corviknight - Steel Wing - Evolution
  (823, 82300, 211, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Corviknight - Metal Sound - Evolution
  (823, 82300, 319, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Corviknight - Rock Smash - TM004
  (823, 82300, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Corviknight - Bulk Up - TM011
  (823, 82300, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Corviknight - Light Screen - TM016
  (823, 82300, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Corviknight - Protect - TM017
  (823, 82300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Corviknight - Aerial Ace - TM022
  (823, 82300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Corviknight - Swift - TM027
  (823, 82300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Corviknight - Reflect - TM031
  (823, 82300, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 24),
  -- Corviknight - Body Slam - TM033
  (823, 82300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Corviknight - Endure - TM035
  (823, 82300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Corviknight - Fly - TM043
  (823, 82300, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 27),
  -- Corviknight - Hyper Beam - TM044
  (823, 82300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Corviknight - Agility - TM047
  (823, 82300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Corviknight - Giga Impact - TM055
  (823, 82300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Corviknight - Double-Edge - TM056
  (823, 82300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Corviknight - Iron Head - TM058
  (823, 82300, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Corviknight - Hurricane - TM079
  (823, 82300, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 33),
  -- Corviknight - Iron Defense - TM080
  (823, 82300, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Corviknight - U-turn - TM082
  (823, 82300, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Corviknight - Nasty Plot - TM083
  (823, 82300, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Corviknight - Flash Cannon - TM084
  (823, 82300, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 37),
  -- Corviknight - Substitute - TM085
  (823, 82300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Corviknight - Curse - TM091
  (823, 82300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Corviknight - Taunt - TM095
  (823, 82300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Corviknight - Work Up - TM103
  (823, 82300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Corviknight - Facade - TM109
  (823, 82300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Corviknight - Ominous Wind - TM119
  (823, 82300, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 43),
  -- Corviknight - Magnet Bomb - TM126
  (823, 82300, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 44),
  -- Corviknight - Dual Wingbeat - TM134
  (823, 82300, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 45),
  -- Corviknight - Swagger - TM139
  (823, 82300, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 46),
  -- Corviknight - Razor Wind - TM145
  (823, 82300, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 47),
  -- Corviknight - Sky Attack - TM153
  (823, 82300, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 48),
  -- Corviknight - Steel Beam - TM157
  (823, 82300, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 49),
  -- Nickit - Tail Whip - Level 1
  (827, 82700, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nickit - Quick Attack - Level 1
  (827, 82700, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nickit - Roar - Level 10
  (827, 82700, 46, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Nickit - Snarl - Level 12
  (827, 82700, 555, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nickit - Knock Off - Level 15
  (827, 82700, 282, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nickit - Fake Tears - Level 17
  (827, 82700, 313, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Nickit - Nasty Plot - Level 22
  (827, 82700, 417, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Nickit - Mimic - Level 26
  (827, 82700, 102, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Nickit - Night Slash - Level 34
  (827, 82700, 400, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Nickit - Dark Pulse - Level 38
  (827, 82700, 399, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Nickit - Double Team - Level 44
  (827, 82700, 104, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Nickit - Parting Shot - Level 52
  (827, 82700, 575, 27, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Nickit - Roar - TM005
  (827, 82700, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Nickit - Protect - TM017
  (827, 82700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Nickit - Play Rough - TM020
  (827, 82700, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 15),
  -- Nickit - Swift - TM027
  (827, 82700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Nickit - Dig - TM028
  (827, 82700, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Nickit - Double Team - TM032
  (827, 82700, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 18),
  -- Nickit - Night Slash - TM034
  (827, 82700, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 19),
  -- Nickit - Endure - TM035
  (827, 82700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Nickit - Knock Off - TM045
  (827, 82700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 21),
  -- Nickit - Mud Shot - TM046
  (827, 82700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Nickit - Agility - TM047
  (827, 82700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Nickit - Icy Wind - TM049
  (827, 82700, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 24),
  -- Nickit - Will-O-Wisp - TM057
  (827, 82700, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 25),
  -- Nickit - Nasty Plot - TM083
  (827, 82700, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 26),
  -- Nickit - Substitute - TM085
  (827, 82700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Nickit - Dark Pulse - TM090
  (827, 82700, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 28),
  -- Nickit - Taunt - TM095
  (827, 82700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 29),
  -- Nickit - Heal Block - TM097
  (827, 82700, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 30),
  -- Nickit - Facade - TM109
  (827, 82700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 31),
  -- Nickit - Trailblaze - TM115
  (827, 82700, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 32),
  -- Nickit - Torment - TM121
  (827, 82700, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 33),
  -- Nickit - Mimic - TM125
  (827, 82700, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 34),
  -- Nickit - Fake Out - TM141
  (827, 82700, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 35),
  -- Nickit - First Impression - TM142
  (827, 82700, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 36),
  -- Nickit - Razor Wind - TM145
  (827, 82700, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 37),
  -- Thievul - Tail Whip - Level 1
  (828, 82800, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thievul - Quick Attack - Level 1
  (828, 82800, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thievul - Roar - Level 10
  (828, 82800, 46, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Thievul - Snarl - Level 12
  (828, 82800, 555, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Thievul - Knock Off - Level 15
  (828, 82800, 282, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Thievul - Fake Tears - Level 17
  (828, 82800, 313, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Thievul - Nasty Plot - Level 22
  (828, 82800, 417, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Thievul - Mimic - Level 26
  (828, 82800, 102, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Thievul - Night Slash - Level 34
  (828, 82800, 400, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Thievul - Dark Pulse - Level 38
  (828, 82800, 399, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Thievul - Double Team - Level 44
  (828, 82800, 104, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Thievul - Parting Shot - Level 52
  (828, 82800, 575, 27, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Thievul - Roar - TM005
  (828, 82800, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Thievul - Fire Fang - TM014
  (828, 82800, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 14),
  -- Thievul - Ice Fang - TM015
  (828, 82800, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 15),
  -- Thievul - Protect - TM017
  (828, 82800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Thievul - Play Rough - TM020
  (828, 82800, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Thievul - Thunder Fang - TM021
  (828, 82800, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 18),
  -- Thievul - Crunch - TM025
  (828, 82800, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Thievul - Swift - TM027
  (828, 82800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Thievul - Dig - TM028
  (828, 82800, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Thievul - Double Team - TM032
  (828, 82800, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Thievul - Night Slash - TM034
  (828, 82800, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 23),
  -- Thievul - Endure - TM035
  (828, 82800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Thievul - Hyper Beam - TM044
  (828, 82800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Thievul - Knock Off - TM045
  (828, 82800, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Thievul - Mud Shot - TM046
  (828, 82800, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Thievul - Agility - TM047
  (828, 82800, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Thievul - Icy Wind - TM049
  (828, 82800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Thievul - Giga Impact - TM055
  (828, 82800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Thievul - Will-O-Wisp - TM057
  (828, 82800, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 31),
  -- Thievul - Shadow Claw - TM061
  (828, 82800, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 32),
  -- Thievul - Psychic - TM063
  (828, 82800, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Thievul - Shadow Ball - TM074
  (828, 82800, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Thievul - U-turn - TM082
  (828, 82800, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Thievul - Nasty Plot - TM083
  (828, 82800, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Thievul - Substitute - TM085
  (828, 82800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Thievul - Dark Pulse - TM090
  (828, 82800, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Thievul - Taunt - TM095
  (828, 82800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Thievul - Heal Block - TM097
  (828, 82800, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 40),
  -- Thievul - Facade - TM109
  (828, 82800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Thievul - Trailblaze - TM115
  (828, 82800, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Thievul - Torment - TM121
  (828, 82800, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 43),
  -- Thievul - Mimic - TM125
  (828, 82800, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 44),
  -- Thievul - Fake Out - TM141
  (828, 82800, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 45),
  -- Thievul - First Impression - TM142
  (828, 82800, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 46),
  -- Thievul - Razor Wind - TM145
  (828, 82800, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 47),
  -- Toxel - Growl - Level 1
  (848, 84800, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxel - Nuzzle - Level 1
  (848, 84800, 609, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxel - Protect - TM017
  (848, 84800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 3),
  -- Toxel - Endure - TM035
  (848, 84800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 4),
  -- Toxel - Substitute - TM085
  (848, 84800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 5),
  -- Toxel - Facade - TM109
  (848, 84800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 6),
  -- Toxtricity - Leer - Level 1
  (849, 84900, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxtricity - Growl - Level 1
  (849, 84900, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxtricity - Nuzzle - Level 1
  (849, 84900, 609, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxtricity - Charge - Level 4
  (849, 84900, 268, 27, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Toxtricity - Snarl - Level 8
  (849, 84900, 555, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxtricity - Acid Spray - Level 10
  (849, 84900, 491, 27, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxtricity - Taunt - Level 16
  (849, 84900, 269, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Toxtricity - Screech - Level 24
  (849, 84900, 103, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Toxtricity - Swagger - Level 28
  (849, 84900, 207, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Toxtricity - Discharge - Level 30
  (849, 84900, 435, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Toxtricity - Toxic - Level 32
  (849, 84900, 92, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Toxtricity - Eerie Impulse - Level 36
  (849, 84900, 598, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Toxtricity - Poison Jab - Level 40
  (849, 84900, 398, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Toxtricity - Overdrive - Level 44
  (849, 84900, 786, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Toxtricity - Boomburst - Level 48
  (849, 84900, 586, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Toxtricity - Zap Cannon - Level 50
  (849, 84900, 192, 27, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Toxtricity - Parabolic Charge - Level 50
  (849, 84900, 570, 27, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Toxtricity - Spark - Evolution
  (849, 84900, 209, 27, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Toxtricity - Sludge Wave - Evolution
  (849, 84900, 482, 27, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Toxtricity - Toxic - TM007
  (849, 84900, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 20),
  -- Toxtricity - Thunder Wave - TM008
  (849, 84900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Toxtricity - Brick Break - TM010
  (849, 84900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Toxtricity - Protect - TM017
  (849, 84900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Toxtricity - Thunder Fang - TM021
  (849, 84900, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 24),
  -- Toxtricity - Thunder Punch - TM023
  (849, 84900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Toxtricity - Swift - TM027
  (849, 84900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Toxtricity - Fire Punch - TM029
  (849, 84900, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Toxtricity - Endure - TM035
  (849, 84900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Toxtricity - Discharge - TM039
  (849, 84900, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Toxtricity - Hyper Beam - TM044
  (849, 84900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Toxtricity - Sludge Bomb - TM053
  (849, 84900, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Toxtricity - Giga Impact - TM055
  (849, 84900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Toxtricity - Volt Switch - TM066
  (849, 84900, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 33),
  -- Toxtricity - Thunderbolt - TM067
  (849, 84900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Toxtricity - Hyper Voice - TM071
  (849, 84900, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Toxtricity - Poison Jab - TM077
  (849, 84900, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 36),
  -- Toxtricity - Substitute - TM085
  (849, 84900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Toxtricity - Wild Charge - TM086
  (849, 84900, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 38),
  -- Toxtricity - Toxic Spikes - TM089
  (849, 84900, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 39),
  -- Toxtricity - Taunt - TM095
  (849, 84900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Toxtricity - Metronome - TM099
  (849, 84900, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 41),
  -- Toxtricity - Gunk Shot - TM100
  (849, 84900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Toxtricity - Electroweb - TM101
  (849, 84900, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Toxtricity - Thunder - TM106
  (849, 84900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 44),
  -- Toxtricity - Facade - TM109
  (849, 84900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Toxtricity - Acid Spray - TM112
  (849, 84900, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 46),
  -- Toxtricity - Trailblaze - TM115
  (849, 84900, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 47),
  -- Toxtricity - Magnet Bomb - TM126
  (849, 84900, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 48),
  -- Toxtricity - Charge Beam - TM130
  (849, 84900, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 49),
  -- Toxtricity - Drain Punch - TM131
  (849, 84900, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 50),
  -- Toxtricity - Swagger - TM139
  (849, 84900, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 51);
