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
-- Mega Dimension learnset delta rows for species 451-500.
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
  -- Snover - Facade - TM109
  (459, 45900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Snover - Chilling Water - TM110
  (459, 45900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Snover - Trailblaze - TM115
  (459, 45900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Snover - Seed Bomb - TM128
  (459, 45900, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Snover - Swagger - TM139
  (459, 45900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 5),
  -- Snover - Icicle Spear - TM149
  (459, 45900, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 6),
  -- Snover - Sheer Cold - TM155
  (459, 45900, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 7),
  -- Abomasnow - Facade - TM109
  (460, 46000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Abomasnow - Chilling Water - TM110
  (460, 46000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Abomasnow - Trailblaze - TM115
  (460, 46000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Abomasnow - Seed Bomb - TM128
  (460, 46000, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Abomasnow - Frost Breath - TM138
  (460, 46000, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 5),
  -- Abomasnow - Swagger - TM139
  (460, 46000, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 6),
  -- Abomasnow - Icicle Spear - TM149
  (460, 46000, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 7),
  -- Abomasnow - Sheer Cold - TM155
  (460, 46000, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 8),
  -- Leafeon - Facade - TM109
  (470, 47000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Leafeon - Trailblaze - TM115
  (470, 47000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Leafeon - Mimic - TM125
  (470, 47000, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 3),
  -- Leafeon - Seed Bomb - TM128
  (470, 47000, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Leafeon - Skull Bash - TM146
  (470, 47000, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 5),
  -- Leafeon - Petal Dance - TM151
  (470, 47000, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 6),
  -- Leafeon - Solar Blade - TM152
  (470, 47000, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 7),
  -- Glaceon - Facade - TM109
  (471, 47100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Glaceon - Chilling Water - TM110
  (471, 47100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Glaceon - Trailblaze - TM115
  (471, 47100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Glaceon - Mimic - TM125
  (471, 47100, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 4),
  -- Glaceon - Frost Breath - TM138
  (471, 47100, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 5),
  -- Glaceon - Triple Axel - TM144
  (471, 47100, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 6),
  -- Glaceon - Skull Bash - TM146
  (471, 47100, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 7),
  -- Glaceon - Icicle Spear - TM149
  (471, 47100, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 8),
  -- Glaceon - Sheer Cold - TM155
  (471, 47100, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 9),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Confuse Ray - Level 1
  (474, 47400, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Charge - Level 1
  (474, 47400, 268, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Eerie Impulse - Level 10
  (474, 47400, 598, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Porygon-Z - Thunder Shock - Level 15
  (474, 47400, 84, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon-Z - Psybeam - Level 20
  (474, 47400, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon-Z - Conversion 2 - Level 25
  (474, 47400, 176, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon-Z - Agility - Level 30
  (474, 47400, 97, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon-Z - Recover - Level 35
  (474, 47400, 105, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon-Z - Metal Sound - Level 45
  (474, 47400, 319, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon-Z - Self-Destruct - Level 50
  (474, 47400, 120, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon-Z - Zap Cannon - Level 55
  (474, 47400, 192, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon-Z - Hyper Beam - Level 60
  (474, 47400, 63, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Porygon-Z - Headbutt - TM001
  (474, 47400, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Porygon-Z - Psyshock - TM003
  (474, 47400, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Porygon-Z - Thunder Wave - TM008
  (474, 47400, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Porygon-Z - Ice Beam - TM013
  (474, 47400, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Porygon-Z - Protect - TM017
  (474, 47400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Porygon-Z - Swift - TM027
  (474, 47400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Porygon-Z - Reflect - TM031
  (474, 47400, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Porygon-Z - Endure - TM035
  (474, 47400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Porygon-Z - Discharge - TM039
  (474, 47400, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 24),
  -- Porygon-Z - Hyper Beam - TM044
  (474, 47400, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Porygon-Z - Agility - TM047
  (474, 47400, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Porygon-Z - Self-Destruct - TM048
  (474, 47400, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 27),
  -- Porygon-Z - Icy Wind - TM049
  (474, 47400, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Porygon-Z - Giga Impact - TM055
  (474, 47400, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Porygon-Z - Double-Edge - TM056
  (474, 47400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Porygon-Z - Zen Headbutt - TM059
  (474, 47400, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Porygon-Z - Psychic - TM063
  (474, 47400, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Porygon-Z - Solar Beam - TM064
  (474, 47400, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Porygon-Z - Volt Switch - TM066
  (474, 47400, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 34),
  -- Porygon-Z - Thunderbolt - TM067
  (474, 47400, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Porygon-Z - Shadow Ball - TM074
  (474, 47400, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Porygon-Z - Nasty Plot - TM083
  (474, 47400, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Porygon-Z - Flash Cannon - TM084
  (474, 47400, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 38),
  -- Porygon-Z - Substitute - TM085
  (474, 47400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Porygon-Z - Iron Tail - TM087
  (474, 47400, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Porygon-Z - Dark Pulse - TM090
  (474, 47400, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Porygon-Z - Heal Block - TM097
  (474, 47400, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 42),
  -- Porygon-Z - Electroweb - TM101
  (474, 47400, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Porygon-Z - Blizzard - TM105
  (474, 47400, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Porygon-Z - Thunder - TM106
  (474, 47400, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Porygon-Z - Facade - TM109
  (474, 47400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 46),
  -- Porygon-Z - Ominous Wind - TM119
  (474, 47400, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 47),
  -- Porygon-Z - Magnet Bomb - TM126
  (474, 47400, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 48),
  -- Porygon-Z - Charge Beam - TM130
  (474, 47400, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 49),
  -- Porygon-Z - Skull Bash - TM146
  (474, 47400, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 50),
  -- Porygon-Z - Tri Attack - TM147
  (474, 47400, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 51),
  -- Gallade - Comet Punch - TM108
  (475, 47500, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Gallade - Facade - TM109
  (475, 47500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Gallade - Low Sweep - TM113
  (475, 47500, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Gallade - False Swipe - TM122
  (475, 47500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Gallade - Dream Eater - TM127
  (475, 47500, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 5),
  -- Gallade - Charge Beam - TM130
  (475, 47500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 6),
  -- Gallade - Drain Punch - TM131
  (475, 47500, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 7),
  -- Gallade - Dual Chop - TM135
  (475, 47500, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 8),
  -- Gallade - Triple Axel - TM144
  (475, 47500, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 9),
  -- Gallade - Razor Wind - TM145
  (475, 47500, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 10),
  -- Gallade - Vacuum Wave - TM150
  (475, 47500, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 11),
  -- Gallade - Solar Blade - TM152
  (475, 47500, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 12),
  -- Froslass - Facade - TM109
  (478, 47800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Froslass - Chilling Water - TM110
  (478, 47800, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Froslass - Trailblaze - TM115
  (478, 47800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Froslass - Frost Breath - TM138
  (478, 47800, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 4),
  -- Froslass - Triple Axel - TM144
  (478, 47800, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 5),
  -- Froslass - Icicle Spear - TM149
  (478, 47800, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 6),
  -- Froslass - Petal Dance - TM151
  (478, 47800, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 7),
  -- Froslass - Sheer Cold - TM155
  (478, 47800, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 8),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Double Team - Level 1
  (479, 47900, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Confuse Ray - Level 8
  (479, 47900, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Rotom - Charge - Level 12
  (479, 47900, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Rotom - Parabolic Charge - Level 15
  (479, 47900, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom - Parting Shot - Level 17
  (479, 47900, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Rotom - Thunder Wave - Level 20
  (479, 47900, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rotom - Psybeam - Level 23
  (479, 47900, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Rotom - Eerie Impulse - Level 25
  (479, 47900, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rotom - Shadow Ball - Level 30
  (479, 47900, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Rotom - Taunt - Level 34
  (479, 47900, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Rotom - Substitute - Level 40
  (479, 47900, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rotom - Light Screen - Level 44
  (479, 47900, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Rotom - Discharge - Level 50
  (479, 47900, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom - Thunder Wave - TM008
  (479, 47900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Rotom - Light Screen - TM016
  (479, 47900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Rotom - Protect - TM017
  (479, 47900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Rotom - Swift - TM027
  (479, 47900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Rotom - Reflect - TM031
  (479, 47900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Rotom - Double Team - TM032
  (479, 47900, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Rotom - Endure - TM035
  (479, 47900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Rotom - Discharge - TM039
  (479, 47900, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 22),
  -- Rotom - Hyper Beam - TM044
  (479, 47900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Rotom - Agility - TM047
  (479, 47900, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Rotom - Will-O-Wisp - TM057
  (479, 47900, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 25),
  -- Rotom - Volt Switch - TM066
  (479, 47900, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 26),
  -- Rotom - Thunderbolt - TM067
  (479, 47900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 27),
  -- Rotom - Hyper Voice - TM071
  (479, 47900, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 28),
  -- Rotom - Shadow Ball - TM074
  (479, 47900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Rotom - Nasty Plot - TM083
  (479, 47900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 30),
  -- Rotom - Substitute - TM085
  (479, 47900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Rotom - Dark Pulse - TM090
  (479, 47900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Rotom - Curse - TM091
  (479, 47900, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Rotom - Taunt - TM095
  (479, 47900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Rotom - Electroweb - TM101
  (479, 47900, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 35),
  -- Rotom - Thunder - TM106
  (479, 47900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 36),
  -- Rotom - Facade - TM109
  (479, 47900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 37),
  -- Rotom - Ominous Wind - TM119
  (479, 47900, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 38),
  -- Rotom - Magnet Bomb - TM126
  (479, 47900, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 39),
  -- Rotom - Dream Eater - TM127
  (479, 47900, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 40),
  -- Rotom - Charge Beam - TM130
  (479, 47900, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 41),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Double Team - Level 1
  (479, 47901, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Overheat - Level 1
  (479, 47901, 315, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Confuse Ray - Level 8
  (479, 47901, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Charge - Level 12
  (479, 47901, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Parabolic Charge - Level 15
  (479, 47901, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Parting Shot - Level 17
  (479, 47901, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Thunder Wave - Level 20
  (479, 47901, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Psybeam - Level 23
  (479, 47901, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Eerie Impulse - Level 25
  (479, 47901, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Shadow Ball - Level 30
  (479, 47901, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Taunt - Level 34
  (479, 47901, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Substitute - Level 40
  (479, 47901, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Light Screen - Level 44
  (479, 47901, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Rotom (Heat) - Discharge - Level 50
  (479, 47901, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Rotom (Heat) - Thunder Wave - TM008
  (479, 47901, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rotom (Heat) - Light Screen - TM016
  (479, 47901, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Rotom (Heat) - Protect - TM017
  (479, 47901, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Rotom (Heat) - Swift - TM027
  (479, 47901, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Rotom (Heat) - Reflect - TM031
  (479, 47901, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Rotom (Heat) - Double Team - TM032
  (479, 47901, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Rotom (Heat) - Endure - TM035
  (479, 47901, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Rotom (Heat) - Discharge - TM039
  (479, 47901, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Rotom (Heat) - Hyper Beam - TM044
  (479, 47901, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Rotom (Heat) - Agility - TM047
  (479, 47901, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Rotom (Heat) - Overheat - TM050
  (479, 47901, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 26),
  -- Rotom (Heat) - Will-O-Wisp - TM057
  (479, 47901, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 27),
  -- Rotom (Heat) - Volt Switch - TM066
  (479, 47901, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 28),
  -- Rotom (Heat) - Thunderbolt - TM067
  (479, 47901, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 29),
  -- Rotom (Heat) - Hyper Voice - TM071
  (479, 47901, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 30),
  -- Rotom (Heat) - Shadow Ball - TM074
  (479, 47901, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 31),
  -- Rotom (Heat) - Nasty Plot - TM083
  (479, 47901, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 32),
  -- Rotom (Heat) - Substitute - TM085
  (479, 47901, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Rotom (Heat) - Dark Pulse - TM090
  (479, 47901, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 34),
  -- Rotom (Heat) - Curse - TM091
  (479, 47901, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Rotom (Heat) - Taunt - TM095
  (479, 47901, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Rotom (Heat) - Electroweb - TM101
  (479, 47901, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 37),
  -- Rotom (Heat) - Thunder - TM106
  (479, 47901, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Rotom (Heat) - Facade - TM109
  (479, 47901, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 39),
  -- Rotom (Heat) - Ominous Wind - TM119
  (479, 47901, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 40),
  -- Rotom (Heat) - Magnet Bomb - TM126
  (479, 47901, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 41),
  -- Rotom (Heat) - Dream Eater - TM127
  (479, 47901, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 42),
  -- Rotom (Heat) - Charge Beam - TM130
  (479, 47901, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 43),
  -- Rotom (Wash) - Hydro Pump - Level 1
  (479, 47902, 56, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Double Team - Level 1
  (479, 47902, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Confuse Ray - Level 8
  (479, 47902, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Charge - Level 12
  (479, 47902, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Parabolic Charge - Level 15
  (479, 47902, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Parting Shot - Level 17
  (479, 47902, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Thunder Wave - Level 20
  (479, 47902, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Psybeam - Level 23
  (479, 47902, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Eerie Impulse - Level 25
  (479, 47902, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Shadow Ball - Level 30
  (479, 47902, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Taunt - Level 34
  (479, 47902, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Substitute - Level 40
  (479, 47902, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Light Screen - Level 44
  (479, 47902, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Rotom (Wash) - Discharge - Level 50
  (479, 47902, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Rotom (Wash) - Thunder Wave - TM008
  (479, 47902, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rotom (Wash) - Light Screen - TM016
  (479, 47902, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Rotom (Wash) - Protect - TM017
  (479, 47902, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Rotom (Wash) - Swift - TM027
  (479, 47902, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Rotom (Wash) - Reflect - TM031
  (479, 47902, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Rotom (Wash) - Double Team - TM032
  (479, 47902, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Rotom (Wash) - Endure - TM035
  (479, 47902, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Rotom (Wash) - Discharge - TM039
  (479, 47902, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Rotom (Wash) - Hyper Beam - TM044
  (479, 47902, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Rotom (Wash) - Agility - TM047
  (479, 47902, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Rotom (Wash) - Will-O-Wisp - TM057
  (479, 47902, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Rotom (Wash) - Volt Switch - TM066
  (479, 47902, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 27),
  -- Rotom (Wash) - Thunderbolt - TM067
  (479, 47902, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Rotom (Wash) - Hyper Voice - TM071
  (479, 47902, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Rotom (Wash) - Shadow Ball - TM074
  (479, 47902, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Rotom (Wash) - Nasty Plot - TM083
  (479, 47902, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Rotom (Wash) - Substitute - TM085
  (479, 47902, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Rotom (Wash) - Dark Pulse - TM090
  (479, 47902, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Rotom (Wash) - Curse - TM091
  (479, 47902, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Rotom (Wash) - Taunt - TM095
  (479, 47902, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Rotom (Wash) - Hydro Pump - TM096
  (479, 47902, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 36),
  -- Rotom (Wash) - Electroweb - TM101
  (479, 47902, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 37),
  -- Rotom (Wash) - Thunder - TM106
  (479, 47902, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Rotom (Wash) - Facade - TM109
  (479, 47902, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 39),
  -- Rotom (Wash) - Ominous Wind - TM119
  (479, 47902, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 40),
  -- Rotom (Wash) - Magnet Bomb - TM126
  (479, 47902, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 41),
  -- Rotom (Wash) - Dream Eater - TM127
  (479, 47902, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 42),
  -- Rotom (Wash) - Charge Beam - TM130
  (479, 47902, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 43),
  -- Rotom (Frost) - Blizzard - Level 1
  (479, 47903, 59, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Double Team - Level 1
  (479, 47903, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Confuse Ray - Level 8
  (479, 47903, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Charge - Level 12
  (479, 47903, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Parabolic Charge - Level 15
  (479, 47903, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Parting Shot - Level 17
  (479, 47903, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Thunder Wave - Level 20
  (479, 47903, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Psybeam - Level 23
  (479, 47903, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Eerie Impulse - Level 25
  (479, 47903, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Shadow Ball - Level 30
  (479, 47903, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Taunt - Level 34
  (479, 47903, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Substitute - Level 40
  (479, 47903, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Light Screen - Level 44
  (479, 47903, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Rotom (Frost) - Discharge - Level 50
  (479, 47903, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Rotom (Frost) - Thunder Wave - TM008
  (479, 47903, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rotom (Frost) - Light Screen - TM016
  (479, 47903, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Rotom (Frost) - Protect - TM017
  (479, 47903, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Rotom (Frost) - Swift - TM027
  (479, 47903, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Rotom (Frost) - Reflect - TM031
  (479, 47903, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Rotom (Frost) - Double Team - TM032
  (479, 47903, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Rotom (Frost) - Endure - TM035
  (479, 47903, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Rotom (Frost) - Discharge - TM039
  (479, 47903, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Rotom (Frost) - Hyper Beam - TM044
  (479, 47903, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Rotom (Frost) - Agility - TM047
  (479, 47903, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Rotom (Frost) - Will-O-Wisp - TM057
  (479, 47903, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Rotom (Frost) - Volt Switch - TM066
  (479, 47903, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 27),
  -- Rotom (Frost) - Thunderbolt - TM067
  (479, 47903, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Rotom (Frost) - Hyper Voice - TM071
  (479, 47903, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Rotom (Frost) - Shadow Ball - TM074
  (479, 47903, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Rotom (Frost) - Nasty Plot - TM083
  (479, 47903, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Rotom (Frost) - Substitute - TM085
  (479, 47903, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Rotom (Frost) - Dark Pulse - TM090
  (479, 47903, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Rotom (Frost) - Curse - TM091
  (479, 47903, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Rotom (Frost) - Taunt - TM095
  (479, 47903, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Rotom (Frost) - Electroweb - TM101
  (479, 47903, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 36),
  -- Rotom (Frost) - Blizzard - TM105
  (479, 47903, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Rotom (Frost) - Thunder - TM106
  (479, 47903, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Rotom (Frost) - Facade - TM109
  (479, 47903, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 39),
  -- Rotom (Frost) - Ominous Wind - TM119
  (479, 47903, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 40),
  -- Rotom (Frost) - Magnet Bomb - TM126
  (479, 47903, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 41),
  -- Rotom (Frost) - Dream Eater - TM127
  (479, 47903, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 42),
  -- Rotom (Frost) - Charge Beam - TM130
  (479, 47903, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 43),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Double Team - Level 1
  (479, 47904, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Air Slash - Level 1
  (479, 47904, 403, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Confuse Ray - Level 8
  (479, 47904, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Charge - Level 12
  (479, 47904, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Parabolic Charge - Level 15
  (479, 47904, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Parting Shot - Level 17
  (479, 47904, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Thunder Wave - Level 20
  (479, 47904, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Psybeam - Level 23
  (479, 47904, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Eerie Impulse - Level 25
  (479, 47904, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Shadow Ball - Level 30
  (479, 47904, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Taunt - Level 34
  (479, 47904, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Substitute - Level 40
  (479, 47904, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Light Screen - Level 44
  (479, 47904, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Rotom (Fan) - Discharge - Level 50
  (479, 47904, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Rotom (Fan) - Thunder Wave - TM008
  (479, 47904, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rotom (Fan) - Light Screen - TM016
  (479, 47904, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Rotom (Fan) - Protect - TM017
  (479, 47904, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Rotom (Fan) - Swift - TM027
  (479, 47904, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Rotom (Fan) - Reflect - TM031
  (479, 47904, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Rotom (Fan) - Double Team - TM032
  (479, 47904, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Rotom (Fan) - Endure - TM035
  (479, 47904, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Rotom (Fan) - Discharge - TM039
  (479, 47904, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Rotom (Fan) - Hyper Beam - TM044
  (479, 47904, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Rotom (Fan) - Agility - TM047
  (479, 47904, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Rotom (Fan) - Will-O-Wisp - TM057
  (479, 47904, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Rotom (Fan) - Volt Switch - TM066
  (479, 47904, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 27),
  -- Rotom (Fan) - Thunderbolt - TM067
  (479, 47904, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Rotom (Fan) - Hyper Voice - TM071
  (479, 47904, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Rotom (Fan) - Shadow Ball - TM074
  (479, 47904, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Rotom (Fan) - Nasty Plot - TM083
  (479, 47904, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Rotom (Fan) - Substitute - TM085
  (479, 47904, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Rotom (Fan) - Dark Pulse - TM090
  (479, 47904, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Rotom (Fan) - Curse - TM091
  (479, 47904, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Rotom (Fan) - Taunt - TM095
  (479, 47904, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Rotom (Fan) - Electroweb - TM101
  (479, 47904, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 36),
  -- Rotom (Fan) - Thunder - TM106
  (479, 47904, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 37),
  -- Rotom (Fan) - Facade - TM109
  (479, 47904, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 38),
  -- Rotom (Fan) - Ominous Wind - TM119
  (479, 47904, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 39),
  -- Rotom (Fan) - Magnet Bomb - TM126
  (479, 47904, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 40),
  -- Rotom (Fan) - Dream Eater - TM127
  (479, 47904, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 41),
  -- Rotom (Fan) - Charge Beam - TM130
  (479, 47904, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 42),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Double Team - Level 1
  (479, 47905, 104, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Leaf Storm - Level 1
  (479, 47905, 437, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Confuse Ray - Level 8
  (479, 47905, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Charge - Level 12
  (479, 47905, 268, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Parabolic Charge - Level 15
  (479, 47905, 570, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Parting Shot - Level 17
  (479, 47905, 575, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Thunder Wave - Level 20
  (479, 47905, 86, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Psybeam - Level 23
  (479, 47905, 60, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Eerie Impulse - Level 25
  (479, 47905, 598, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Shadow Ball - Level 30
  (479, 47905, 247, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Taunt - Level 34
  (479, 47905, 269, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Substitute - Level 40
  (479, 47905, 164, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Light Screen - Level 44
  (479, 47905, 113, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Rotom (Mow) - Discharge - Level 50
  (479, 47905, 435, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Rotom (Mow) - Thunder Wave - TM008
  (479, 47905, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rotom (Mow) - Light Screen - TM016
  (479, 47905, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Rotom (Mow) - Protect - TM017
  (479, 47905, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Rotom (Mow) - Swift - TM027
  (479, 47905, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Rotom (Mow) - Reflect - TM031
  (479, 47905, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Rotom (Mow) - Double Team - TM032
  (479, 47905, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Rotom (Mow) - Endure - TM035
  (479, 47905, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Rotom (Mow) - Discharge - TM039
  (479, 47905, 435, 27, NULL, 2, NULL, NULL, 26002039, NULL, 23),
  -- Rotom (Mow) - Hyper Beam - TM044
  (479, 47905, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Rotom (Mow) - Agility - TM047
  (479, 47905, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Rotom (Mow) - Will-O-Wisp - TM057
  (479, 47905, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Rotom (Mow) - Volt Switch - TM066
  (479, 47905, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 27),
  -- Rotom (Mow) - Thunderbolt - TM067
  (479, 47905, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Rotom (Mow) - Hyper Voice - TM071
  (479, 47905, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Rotom (Mow) - Shadow Ball - TM074
  (479, 47905, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Rotom (Mow) - Nasty Plot - TM083
  (479, 47905, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Rotom (Mow) - Substitute - TM085
  (479, 47905, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Rotom (Mow) - Dark Pulse - TM090
  (479, 47905, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Rotom (Mow) - Curse - TM091
  (479, 47905, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Rotom (Mow) - Taunt - TM095
  (479, 47905, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Rotom (Mow) - Electroweb - TM101
  (479, 47905, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 36),
  -- Rotom (Mow) - Thunder - TM106
  (479, 47905, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 37),
  -- Rotom (Mow) - Facade - TM109
  (479, 47905, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 38),
  -- Rotom (Mow) - Ominous Wind - TM119
  (479, 47905, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 39),
  -- Rotom (Mow) - Magnet Bomb - TM126
  (479, 47905, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 40),
  -- Rotom (Mow) - Dream Eater - TM127
  (479, 47905, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 41),
  -- Rotom (Mow) - Charge Beam - TM130
  (479, 47905, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 42),
  -- Heatran - Leer - Level 1
  (485, 48500, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Fire Spin - Level 1
  (485, 48500, 83, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatran - Heat Crash - Level 1
  (485, 48500, 535, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heatran - Metal Claw - Level 6
  (485, 48500, 232, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Heatran - Rock Blast - Level 12
  (485, 48500, 350, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Heatran - Fire Fang - Level 18
  (485, 48500, 424, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Heatran - Take Down - Level 24
  (485, 48500, 36, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Heatran - Iron Head - Level 30
  (485, 48500, 442, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Heatran - Crunch - Level 36
  (485, 48500, 242, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Heatran - Lava Plume - Level 42
  (485, 48500, 436, 27, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Heatran - Metal Sound - Level 48
  (485, 48500, 319, 27, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Heatran - Heavy Slam - Level 50
  (485, 48500, 484, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Heatran - Earth Power - Level 54
  (485, 48500, 414, 27, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Heatran - Lunge - Level 59
  (485, 48500, 679, 27, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Heatran - Heat Wave - Level 64
  (485, 48500, 257, 27, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Heatran - Stone Edge - Level 66
  (485, 48500, 444, 27, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Heatran - Magma Storm - Level 72
  (485, 48500, 463, 27, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Heatran - Rock Slide - TM012
  (485, 48500, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Heatran - Fire Fang - TM014
  (485, 48500, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Heatran - Protect - TM017
  (485, 48500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Heatran - Power Gem - TM019
  (485, 48500, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 21),
  -- Heatran - Crunch - TM025
  (485, 48500, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Heatran - Dig - TM028
  (485, 48500, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Heatran - Body Slam - TM033
  (485, 48500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Heatran - Endure - TM035
  (485, 48500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Heatran - Rock Tomb - TM036
  (485, 48500, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Heatran - Stealth Rock - TM037
  (485, 48500, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Heatran - Fire Blast - TM038
  (485, 48500, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Heatran - Hyper Beam - TM044
  (485, 48500, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Heatran - Overheat - TM050
  (485, 48500, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 30),
  -- Heatran - Earth Power - TM052
  (485, 48500, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Heatran - Giga Impact - TM055
  (485, 48500, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Heatran - Will-O-Wisp - TM057
  (485, 48500, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 33),
  -- Heatran - Iron Head - TM058
  (485, 48500, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 34),
  -- Heatran - Flamethrower - TM062
  (485, 48500, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 35),
  -- Heatran - Solar Beam - TM064
  (485, 48500, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 36),
  -- Heatran - Stone Edge - TM065
  (485, 48500, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 37),
  -- Heatran - Heat Wave - TM068
  (485, 48500, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 38),
  -- Heatran - Earthquake - TM069
  (485, 48500, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 39),
  -- Heatran - Fire Spin - TM072
  (485, 48500, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 40),
  -- Heatran - Dragon Pulse - TM075
  (485, 48500, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 41),
  -- Heatran - Bulldoze - TM078
  (485, 48500, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 42),
  -- Heatran - Iron Defense - TM080
  (485, 48500, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 43),
  -- Heatran - Flash Cannon - TM084
  (485, 48500, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 44),
  -- Heatran - Substitute - TM085
  (485, 48500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Heatran - Dark Pulse - TM090
  (485, 48500, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 46),
  -- Heatran - Taunt - TM095
  (485, 48500, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Heatran - Flare Blitz - TM104
  (485, 48500, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 48),
  -- Heatran - Facade - TM109
  (485, 48500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 49),
  -- Heatran - Flame Charge - TM114
  (485, 48500, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 50),
  -- Heatran - Ancient Power - TM120
  (485, 48500, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 51),
  -- Heatran - Scorching Sands - TM136
  (485, 48500, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 52),
  -- Heatran - First Impression - TM142
  (485, 48500, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 53),
  -- Heatran - Steel Beam - TM157
  (485, 48500, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 54),
  -- Darkrai - Confusion - Level 1
  (491, 49100, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Confuse Ray - Level 1
  (491, 49100, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Shadow Sneak - Level 1
  (491, 49100, 425, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darkrai - Brutal Swing - Level 10
  (491, 49100, 693, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 27, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Darkrai - Snarl - Level 16
  (491, 49100, 555, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Darkrai - Psybeam - Level 32
  (491, 49100, 60, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 27, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Darkrai - Future Sight - Level 50
  (491, 49100, 248, 27, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 27, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 27, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Darkrai - Phantom Force - Level 70
  (491, 49100, 566, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 27, NULL, 1, 75, NULL, NULL, NULL, 14),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 27, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 27, NULL, 1, 93, NULL, NULL, NULL, 16),
  -- Darkrai - Psyshock - TM003
  (491, 49100, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Darkrai - Calm Mind - TM006
  (491, 49100, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Darkrai - Thunder Wave - TM008
  (491, 49100, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Darkrai - Brick Break - TM010
  (491, 49100, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Darkrai - Rock Slide - TM012
  (491, 49100, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Darkrai - Ice Beam - TM013
  (491, 49100, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 22),
  -- Darkrai - Protect - TM017
  (491, 49100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Darkrai - Crunch - TM025
  (491, 49100, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Darkrai - Swift - TM027
  (491, 49100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Darkrai - Swords Dance - TM030
  (491, 49100, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Darkrai - Double Team - TM032
  (491, 49100, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 27),
  -- Darkrai - Endure - TM035
  (491, 49100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Darkrai - Rock Tomb - TM036
  (491, 49100, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Darkrai - Hyper Beam - TM044
  (491, 49100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Darkrai - Knock Off - TM045
  (491, 49100, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 31),
  -- Darkrai - Icy Wind - TM049
  (491, 49100, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Darkrai - Sludge Bomb - TM053
  (491, 49100, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 33),
  -- Darkrai - Giga Impact - TM055
  (491, 49100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Darkrai - Will-O-Wisp - TM057
  (491, 49100, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 35),
  -- Darkrai - Future Sight - TM060
  (491, 49100, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 36),
  -- Darkrai - Shadow Claw - TM061
  (491, 49100, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 37),
  -- Darkrai - Psychic - TM063
  (491, 49100, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Darkrai - Thunderbolt - TM067
  (491, 49100, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 39),
  -- Darkrai - Shadow Ball - TM074
  (491, 49100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 40),
  -- Darkrai - Poison Jab - TM077
  (491, 49100, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 41),
  -- Darkrai - X-Scissor - TM081
  (491, 49100, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 42),
  -- Darkrai - Nasty Plot - TM083
  (491, 49100, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 43),
  -- Darkrai - Substitute - TM085
  (491, 49100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Darkrai - Dark Pulse - TM090
  (491, 49100, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 45),
  -- Darkrai - Curse - TM091
  (491, 49100, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 46),
  -- Darkrai - Taunt - TM095
  (491, 49100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Darkrai - Focus Blast - TM102
  (491, 49100, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Darkrai - Blizzard - TM105
  (491, 49100, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 49),
  -- Darkrai - Thunder - TM106
  (491, 49100, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 50),
  -- Darkrai - Facade - TM109
  (491, 49100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 51),
  -- Darkrai - Shadow Punch - TM118
  (491, 49100, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 52),
  -- Darkrai - Ominous Wind - TM119
  (491, 49100, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 53),
  -- Darkrai - Torment - TM121
  (491, 49100, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 54),
  -- Darkrai - Dream Eater - TM127
  (491, 49100, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 55),
  -- Darkrai - Charge Beam - TM130
  (491, 49100, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 56),
  -- Darkrai - Drain Punch - TM131
  (491, 49100, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 57),
  -- Darkrai - Razor Wind - TM145
  (491, 49100, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 58),
  -- Darkrai - Icicle Spear - TM149
  (491, 49100, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 59),
  -- Darkrai - Vacuum Wave - TM150
  (491, 49100, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 60),
  -- Tepig - Facade - TM109
  (498, 49800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Tepig - Flame Charge - TM114
  (498, 49800, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Tepig - Trailblaze - TM115
  (498, 49800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Pignite - Facade - TM109
  (499, 49900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pignite - Low Sweep - TM113
  (499, 49900, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Pignite - Flame Charge - TM114
  (499, 49900, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 3),
  -- Pignite - Trailblaze - TM115
  (499, 49900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 4),
  -- Pignite - Drain Punch - TM131
  (499, 49900, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Emboar - Comet Punch - TM108
  (500, 50000, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Emboar - Facade - TM109
  (500, 50000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Emboar - Low Sweep - TM113
  (500, 50000, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Emboar - Flame Charge - TM114
  (500, 50000, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 4),
  -- Emboar - Trailblaze - TM115
  (500, 50000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 5),
  -- Emboar - Circle Throw - TM129
  (500, 50000, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 6),
  -- Emboar - Drain Punch - TM131
  (500, 50000, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 7),
  -- Emboar - Dual Chop - TM135
  (500, 50000, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 8),
  -- Emboar - Storm Throw - TM137
  (500, 50000, 480, 27, NULL, 2, NULL, NULL, 27002137, NULL, 9),
  -- Emboar - Scald - TM148
  (500, 50000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 10),
  -- Emboar - Vacuum Wave - TM150
  (500, 50000, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 11),
  -- Emboar - Solar Blade - TM152
  (500, 50000, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 12),
  -- Emboar - Blast Burn - TM158
  (500, 50000, 307, 27, NULL, 2, NULL, NULL, 27002158, NULL, 13);
