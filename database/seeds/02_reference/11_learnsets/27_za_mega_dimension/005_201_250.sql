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
-- Mega Dimension learnset delta rows for species 201-250.
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
  -- Steelix - Facade - TM109
  (208, 20800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Steelix - Ancient Power - TM120
  (208, 20800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Steelix - Psychic Fangs - TM124
  (208, 20800, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 3),
  -- Steelix - Scorching Sands - TM136
  (208, 20800, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 4),
  -- Steelix - Fissure - TM154
  (208, 20800, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 5),
  -- Steelix - Meteor Beam - TM156
  (208, 20800, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 6),
  -- Steelix - Steel Beam - TM157
  (208, 20800, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 7),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Harden - Level 4
  (211, 21100, 106, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Qwilfish - Water Gun - Level 8
  (211, 21100, 55, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Qwilfish - Bubble Beam - Level 12
  (211, 21100, 61, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Qwilfish - Haze - Level 15
  (211, 21100, 114, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Qwilfish - Aqua Jet - Level 17
  (211, 21100, 453, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Qwilfish - Spikes - Level 20
  (211, 21100, 191, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Qwilfish - Barb Barrage - Level 28
  (211, 21100, 839, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Qwilfish - Poison Jab - Level 30
  (211, 21100, 398, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Qwilfish - Pin Missile - Level 32
  (211, 21100, 42, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Qwilfish - Toxic Spikes - Level 36
  (211, 21100, 390, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Qwilfish - Toxic - Level 44
  (211, 21100, 92, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Qwilfish - Gunk Shot - Level 50
  (211, 21100, 441, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Qwilfish - Toxic - TM007
  (211, 21100, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Qwilfish - Thunder Wave - TM008
  (211, 21100, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Qwilfish - Flip Turn - TM009
  (211, 21100, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 17),
  -- Qwilfish - Ice Beam - TM013
  (211, 21100, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Qwilfish - Protect - TM017
  (211, 21100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Qwilfish - Crunch - TM025
  (211, 21100, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Qwilfish - Swift - TM027
  (211, 21100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Qwilfish - Swords Dance - TM030
  (211, 21100, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Qwilfish - Endure - TM035
  (211, 21100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Qwilfish - Water Pulse - TM041
  (211, 21100, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Qwilfish - Mud Shot - TM046
  (211, 21100, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 25),
  -- Qwilfish - Agility - TM047
  (211, 21100, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Qwilfish - Self-Destruct - TM048
  (211, 21100, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 27),
  -- Qwilfish - Icy Wind - TM049
  (211, 21100, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Qwilfish - Sludge Bomb - TM053
  (211, 21100, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Qwilfish - Giga Impact - TM055
  (211, 21100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Qwilfish - Double-Edge - TM056
  (211, 21100, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Qwilfish - Whirlpool - TM070
  (211, 21100, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 32),
  -- Qwilfish - Surf - TM073
  (211, 21100, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 33),
  -- Qwilfish - Shadow Ball - TM074
  (211, 21100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Qwilfish - Liquidation - TM076
  (211, 21100, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 35),
  -- Qwilfish - Poison Jab - TM077
  (211, 21100, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 36),
  -- Qwilfish - Substitute - TM085
  (211, 21100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Qwilfish - Spikes - TM088
  (211, 21100, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 38),
  -- Qwilfish - Toxic Spikes - TM089
  (211, 21100, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 39),
  -- Qwilfish - Curse - TM091
  (211, 21100, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Qwilfish - Taunt - TM095
  (211, 21100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 41),
  -- Qwilfish - Hydro Pump - TM096
  (211, 21100, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 42),
  -- Qwilfish - Waterfall - TM098
  (211, 21100, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 43),
  -- Qwilfish - Gunk Shot - TM100
  (211, 21100, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 44),
  -- Qwilfish - Blizzard - TM105
  (211, 21100, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 45),
  -- Qwilfish - Facade - TM109
  (211, 21100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 46),
  -- Qwilfish - Chilling Water - TM110
  (211, 21100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 47),
  -- Qwilfish - Acid Spray - TM112
  (211, 21100, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 48),
  -- Qwilfish - Scale Shot - TM143
  (211, 21100, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 49),
  -- Hisuian Qwilfish - Tackle - Level 1
  (211, 21101, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hisuian Qwilfish - Poison Sting - Level 1
  (211, 21101, 40, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hisuian Qwilfish - Bite - Level 1
  (211, 21101, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hisuian Qwilfish - Harden - Level 4
  (211, 21101, 106, 27, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Hisuian Qwilfish - Water Gun - Level 8
  (211, 21101, 55, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hisuian Qwilfish - Bubble Beam - Level 12
  (211, 21101, 61, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hisuian Qwilfish - Haze - Level 15
  (211, 21101, 114, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hisuian Qwilfish - Aqua Jet - Level 17
  (211, 21101, 453, 27, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Hisuian Qwilfish - Spikes - Level 20
  (211, 21101, 191, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Hisuian Qwilfish - Barb Barrage - Level 28
  (211, 21101, 839, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Hisuian Qwilfish - Poison Jab - Level 30
  (211, 21101, 398, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Hisuian Qwilfish - Pin Missile - Level 32
  (211, 21101, 42, 27, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Hisuian Qwilfish - Toxic Spikes - Level 36
  (211, 21101, 390, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Hisuian Qwilfish - Toxic - Level 44
  (211, 21101, 92, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Hisuian Qwilfish - Crunch - Level 46
  (211, 21101, 242, 27, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Hisuian Qwilfish - Gunk Shot - Level 50
  (211, 21101, 441, 27, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Hisuian Qwilfish - Toxic - TM007
  (211, 21101, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Hisuian Qwilfish - Thunder Wave - TM008
  (211, 21101, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Hisuian Qwilfish - Ice Beam - TM013
  (211, 21101, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Hisuian Qwilfish - Protect - TM017
  (211, 21101, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Hisuian Qwilfish - Crunch - TM025
  (211, 21101, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Hisuian Qwilfish - Swift - TM027
  (211, 21101, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Hisuian Qwilfish - Swords Dance - TM030
  (211, 21101, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Hisuian Qwilfish - Endure - TM035
  (211, 21101, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Hisuian Qwilfish - Water Pulse - TM041
  (211, 21101, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Hisuian Qwilfish - Mud Shot - TM046
  (211, 21101, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Hisuian Qwilfish - Agility - TM047
  (211, 21101, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Hisuian Qwilfish - Self-Destruct - TM048
  (211, 21101, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 28),
  -- Hisuian Qwilfish - Icy Wind - TM049
  (211, 21101, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Hisuian Qwilfish - Sludge Bomb - TM053
  (211, 21101, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 30),
  -- Hisuian Qwilfish - Giga Impact - TM055
  (211, 21101, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Hisuian Qwilfish - Double-Edge - TM056
  (211, 21101, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Hisuian Qwilfish - Surf - TM073
  (211, 21101, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 33),
  -- Hisuian Qwilfish - Shadow Ball - TM074
  (211, 21101, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Hisuian Qwilfish - Liquidation - TM076
  (211, 21101, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 35),
  -- Hisuian Qwilfish - Poison Jab - TM077
  (211, 21101, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 36),
  -- Hisuian Qwilfish - Substitute - TM085
  (211, 21101, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Hisuian Qwilfish - Spikes - TM088
  (211, 21101, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 38),
  -- Hisuian Qwilfish - Toxic Spikes - TM089
  (211, 21101, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 39),
  -- Hisuian Qwilfish - Dark Pulse - TM090
  (211, 21101, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 40),
  -- Hisuian Qwilfish - Curse - TM091
  (211, 21101, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 41),
  -- Hisuian Qwilfish - Taunt - TM095
  (211, 21101, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Hisuian Qwilfish - Hydro Pump - TM096
  (211, 21101, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 43),
  -- Hisuian Qwilfish - Waterfall - TM098
  (211, 21101, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 44),
  -- Hisuian Qwilfish - Gunk Shot - TM100
  (211, 21101, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 45),
  -- Hisuian Qwilfish - Blizzard - TM105
  (211, 21101, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 46),
  -- Hisuian Qwilfish - Facade - TM109
  (211, 21101, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 47),
  -- Hisuian Qwilfish - Chilling Water - TM110
  (211, 21101, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 48),
  -- Hisuian Qwilfish - Acid Spray - TM112
  (211, 21101, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 49),
  -- Hisuian Qwilfish - Scale Shot - TM143
  (211, 21101, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 50),
  -- Scizor - Facade - TM109
  (212, 21200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Scizor - Trailblaze - TM115
  (212, 21200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Scizor - Silver Wind - TM117
  (212, 21200, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 3),
  -- Scizor - False Swipe - TM122
  (212, 21200, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Scizor - Magnet Bomb - TM126
  (212, 21200, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 5),
  -- Scizor - Double Hit - TM132
  (212, 21200, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 6),
  -- Scizor - Dual Wingbeat - TM134
  (212, 21200, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 7),
  -- Scizor - Dual Chop - TM135
  (212, 21200, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 8),
  -- Scizor - Razor Wind - TM145
  (212, 21200, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 9),
  -- Scizor - Vacuum Wave - TM150
  (212, 21200, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 10),
  -- Scizor - Steel Beam - TM157
  (212, 21200, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 11),
  -- Heracross - Facade - TM109
  (214, 21400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Heracross - Trailblaze - TM115
  (214, 21400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Heracross - Silver Wind - TM117
  (214, 21400, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 3),
  -- Heracross - False Swipe - TM122
  (214, 21400, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Heracross - Circle Throw - TM129
  (214, 21400, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 5),
  -- Heracross - Skull Bash - TM146
  (214, 21400, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Heracross - Vacuum Wave - TM150
  (214, 21400, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 7),
  -- Delibird - Facade - TM109
  (225, 22500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Delibird - Chilling Water - TM110
  (225, 22500, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Delibird - Trailblaze - TM115
  (225, 22500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Delibird - Seed Bomb - TM128
  (225, 22500, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Delibird - Dual Wingbeat - TM134
  (225, 22500, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 5),
  -- Delibird - Frost Breath - TM138
  (225, 22500, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 6),
  -- Delibird - Fake Out - TM141
  (225, 22500, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 7),
  -- Delibird - Triple Axel - TM144
  (225, 22500, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 8),
  -- Delibird - Razor Wind - TM145
  (225, 22500, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 9),
  -- Delibird - Icicle Spear - TM149
  (225, 22500, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 10),
  -- Delibird - Sheer Cold - TM155
  (225, 22500, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 11),
  -- Skarmory - Facade - TM109
  (227, 22700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Skarmory - Magnet Bomb - TM126
  (227, 22700, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 2),
  -- Skarmory - Dual Wingbeat - TM134
  (227, 22700, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 3),
  -- Skarmory - Scale Shot - TM143
  (227, 22700, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 4),
  -- Skarmory - Razor Wind - TM145
  (227, 22700, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 5),
  -- Skarmory - Skull Bash - TM146
  (227, 22700, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Skarmory - Sky Attack - TM153
  (227, 22700, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 7),
  -- Skarmory - Steel Beam - TM157
  (227, 22700, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 8),
  -- Houndour - Facade - TM109
  (228, 22800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Houndour - Flame Charge - TM114
  (228, 22800, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Houndour - Trailblaze - TM115
  (228, 22800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Houndour - Torment - TM121
  (228, 22800, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Houndour - Psychic Fangs - TM124
  (228, 22800, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Houndoom - Facade - TM109
  (229, 22900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Houndoom - Flame Charge - TM114
  (229, 22900, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Houndoom - Trailblaze - TM115
  (229, 22900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Houndoom - Torment - TM121
  (229, 22900, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Houndoom - Psychic Fangs - TM124
  (229, 22900, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Houndoom - Dream Eater - TM127
  (229, 22900, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 6),
  -- Houndoom - Swagger - TM139
  (229, 22900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 7),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Confuse Ray - Level 1
  (233, 23300, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Charge - Level 1
  (233, 23300, 268, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Eerie Impulse - Level 10
  (233, 23300, 598, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Porygon2 - Thunder Shock - Level 15
  (233, 23300, 84, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon2 - Psybeam - Level 20
  (233, 23300, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon2 - Conversion 2 - Level 25
  (233, 23300, 176, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon2 - Agility - Level 30
  (233, 23300, 97, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon2 - Recover - Level 35
  (233, 23300, 105, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Metal Sound - Level 45
  (233, 23300, 319, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Self-Destruct - Level 50
  (233, 23300, 120, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon2 - Zap Cannon - Level 55
  (233, 23300, 192, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon2 - Hyper Beam - Level 60
  (233, 23300, 63, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Porygon2 - Headbutt - TM001
  (233, 23300, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Porygon2 - Psyshock - TM003
  (233, 23300, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Porygon2 - Thunder Wave - TM008
  (233, 23300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Porygon2 - Ice Beam - TM013
  (233, 23300, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Porygon2 - Protect - TM017
  (233, 23300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Porygon2 - Swift - TM027
  (233, 23300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Porygon2 - Reflect - TM031
  (233, 23300, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Porygon2 - Endure - TM035
  (233, 23300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Porygon2 - Discharge - TM039
  (233, 23300, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 24),
  -- Porygon2 - Hyper Beam - TM044
  (233, 23300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Porygon2 - Agility - TM047
  (233, 23300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Porygon2 - Self-Destruct - TM048
  (233, 23300, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 27),
  -- Porygon2 - Icy Wind - TM049
  (233, 23300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Porygon2 - Giga Impact - TM055
  (233, 23300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Porygon2 - Double-Edge - TM056
  (233, 23300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Porygon2 - Zen Headbutt - TM059
  (233, 23300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Porygon2 - Psychic - TM063
  (233, 23300, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Porygon2 - Solar Beam - TM064
  (233, 23300, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Porygon2 - Volt Switch - TM066
  (233, 23300, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 34),
  -- Porygon2 - Thunderbolt - TM067
  (233, 23300, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Porygon2 - Shadow Ball - TM074
  (233, 23300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Porygon2 - Flash Cannon - TM084
  (233, 23300, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 37),
  -- Porygon2 - Substitute - TM085
  (233, 23300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Porygon2 - Iron Tail - TM087
  (233, 23300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 39),
  -- Porygon2 - Heal Block - TM097
  (233, 23300, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 40),
  -- Porygon2 - Electroweb - TM101
  (233, 23300, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 41),
  -- Porygon2 - Blizzard - TM105
  (233, 23300, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Porygon2 - Thunder - TM106
  (233, 23300, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 43),
  -- Porygon2 - Facade - TM109
  (233, 23300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 44),
  -- Porygon2 - Magnet Bomb - TM126
  (233, 23300, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 45),
  -- Porygon2 - Charge Beam - TM130
  (233, 23300, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 46),
  -- Porygon2 - Skull Bash - TM146
  (233, 23300, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 47),
  -- Porygon2 - Tri Attack - TM147
  (233, 23300, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 48),
  -- Larvitar - Facade - TM109
  (246, 24600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Larvitar - Ancient Power - TM120
  (246, 24600, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Pupitar - Facade - TM109
  (247, 24700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pupitar - Ancient Power - TM120
  (247, 24700, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Tyranitar - Facade - TM109
  (248, 24800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Tyranitar - Ancient Power - TM120
  (248, 24800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Tyranitar - Scorching Sands - TM136
  (248, 24800, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 3),
  -- Tyranitar - Swagger - TM139
  (248, 24800, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 4),
  -- Tyranitar - Muddy Water - TM140
  (248, 24800, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 5),
  -- Tyranitar - Scale Shot - TM143
  (248, 24800, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 6);
