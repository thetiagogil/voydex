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
-- Mega Dimension learnset delta rows for species 651-700.
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
  -- Quilladin - Facade - TM109
  (651, 65100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Quilladin - Low Sweep - TM113
  (651, 65100, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Quilladin - Trailblaze - TM115
  (651, 65100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Quilladin - Seed Bomb - TM128
  (651, 65100, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Quilladin - Drain Punch - TM131
  (651, 65100, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Chesnaught - Facade - TM109
  (652, 65200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Chesnaught - Low Sweep - TM113
  (652, 65200, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Chesnaught - Trailblaze - TM115
  (652, 65200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Chesnaught - Seed Bomb - TM128
  (652, 65200, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Chesnaught - Drain Punch - TM131
  (652, 65200, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Chesnaught - Dual Chop - TM135
  (652, 65200, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 6),
  -- Chesnaught - Skull Bash - TM146
  (652, 65200, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 7),
  -- Chesnaught - Solar Blade - TM152
  (652, 65200, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 8),
  -- Chesnaught - Frenzy Plant - TM160
  (652, 65200, 338, 27, NULL, 2, NULL, NULL, 27002160, NULL, 9),
  -- Fennekin - Facade - TM109
  (653, 65300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Fennekin - Flame Charge - TM114
  (653, 65300, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Braixen - Facade - TM109
  (654, 65400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Braixen - Flame Charge - TM114
  (654, 65400, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Delphox - Facade - TM109
  (655, 65500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Delphox - Flame Charge - TM114
  (655, 65500, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Delphox - Silver Wind - TM117
  (655, 65500, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 3),
  -- Delphox - Ominous Wind - TM119
  (655, 65500, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 4),
  -- Delphox - Dream Eater - TM127
  (655, 65500, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 5),
  -- Delphox - Charge Beam - TM130
  (655, 65500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 6),
  -- Delphox - Scorching Sands - TM136
  (655, 65500, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 7),
  -- Delphox - Razor Wind - TM145
  (655, 65500, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 8),
  -- Delphox - Blast Burn - TM158
  (655, 65500, 307, 27, NULL, 2, NULL, NULL, 27002158, NULL, 9),
  -- Froakie - Facade - TM109
  (656, 65600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Froakie - Chilling Water - TM110
  (656, 65600, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Froakie - Trailblaze - TM115
  (656, 65600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Froakie - False Swipe - TM122
  (656, 65600, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Frogadier - Facade - TM109
  (657, 65700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Frogadier - Chilling Water - TM110
  (657, 65700, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Frogadier - Trailblaze - TM115
  (657, 65700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Frogadier - False Swipe - TM122
  (657, 65700, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Greninja - Facade - TM109
  (658, 65800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Greninja - Chilling Water - TM110
  (658, 65800, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Greninja - Low Sweep - TM113
  (658, 65800, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Greninja - Trailblaze - TM115
  (658, 65800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 4),
  -- Greninja - False Swipe - TM122
  (658, 65800, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 5),
  -- Greninja - Razor Wind - TM145
  (658, 65800, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 6),
  -- Greninja - Vacuum Wave - TM150
  (658, 65800, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 7),
  -- Greninja - Hydro Cannon - TM159
  (658, 65800, 308, 27, NULL, 2, NULL, NULL, 27002159, NULL, 8),
  -- Bunnelby - Facade - TM109
  (659, 65900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Diggersby - Comet Punch - TM108
  (660, 66000, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Diggersby - Facade - TM109
  (660, 66000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Diggersby - Circle Throw - TM129
  (660, 66000, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 3),
  -- Diggersby - Drain Punch - TM131
  (660, 66000, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 4),
  -- Diggersby - Scorching Sands - TM136
  (660, 66000, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 5),
  -- Diggersby - Skull Bash - TM146
  (660, 66000, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Diggersby - Fissure - TM154
  (660, 66000, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 7),
  -- Fletchling - Flame Charge - TM114
  (661, 66100, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 1),
  -- Fletchling - Dual Wingbeat - TM134
  (661, 66100, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 2),
  -- Fletchinder - Facade - TM109
  (662, 66200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Fletchinder - Flame Charge - TM114
  (662, 66200, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Fletchinder - Dual Wingbeat - TM134
  (662, 66200, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 3),
  -- Fletchinder - Vacuum Wave - TM150
  (662, 66200, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 4),
  -- Talonflame - Facade - TM109
  (663, 66300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Talonflame - Flame Charge - TM114
  (663, 66300, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Talonflame - Blaze Kick - TM133
  (663, 66300, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 3),
  -- Talonflame - Dual Wingbeat - TM134
  (663, 66300, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 4),
  -- Talonflame - Vacuum Wave - TM150
  (663, 66300, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 5),
  -- Talonflame - Sky Attack - TM153
  (663, 66300, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 6),
  -- Scatterbug - Facade - TM109
  (664, 66400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Spewpa - Facade - TM109
  (665, 66500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Vivillon - Facade - TM109
  (666, 66600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Vivillon - Silver Wind - TM117
  (666, 66600, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 2),
  -- Vivillon - Ominous Wind - TM119
  (666, 66600, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 3),
  -- Vivillon - Dual Wingbeat - TM134
  (666, 66600, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 4),
  -- Vivillon - Petal Dance - TM151
  (666, 66600, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 5),
  -- Litleo - Facade - TM109
  (667, 66700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Litleo - Flame Charge - TM114
  (667, 66700, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Litleo - Trailblaze - TM115
  (667, 66700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Litleo - Psychic Fangs - TM124
  (667, 66700, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Pyroar - Facade - TM109
  (668, 66800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pyroar - Flame Charge - TM114
  (668, 66800, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Pyroar - Trailblaze - TM115
  (668, 66800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Pyroar - Psychic Fangs - TM124
  (668, 66800, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Flabebe - Facade - TM109
  (669, 66900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Flabebe - Chilling Water - TM110
  (669, 66900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Flabebe - Trailblaze - TM115
  (669, 66900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Flabebe - Seed Bomb - TM128
  (669, 66900, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Flabebe - Petal Dance - TM151
  (669, 66900, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 5),
  -- Floette - Facade - TM109
  (670, 67000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Floette - Chilling Water - TM110
  (670, 67000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Floette - Trailblaze - TM115
  (670, 67000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Floette - Silver Wind - TM117
  (670, 67000, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 4),
  -- Floette - Ominous Wind - TM119
  (670, 67000, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 5),
  -- Floette - Seed Bomb - TM128
  (670, 67000, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 6),
  -- Floette - Petal Dance - TM151
  (670, 67000, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 7),
  -- Floette - Solar Blade - TM152
  (670, 67000, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 8),
  -- Florges - Facade - TM109
  (671, 67100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Florges - Chilling Water - TM110
  (671, 67100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Florges - Trailblaze - TM115
  (671, 67100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Florges - Silver Wind - TM117
  (671, 67100, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 4),
  -- Florges - Ominous Wind - TM119
  (671, 67100, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 5),
  -- Florges - Seed Bomb - TM128
  (671, 67100, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 6),
  -- Florges - Petal Dance - TM151
  (671, 67100, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 7),
  -- Florges - Solar Blade - TM152
  (671, 67100, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 8),
  -- Skiddo - Facade - TM109
  (672, 67200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Skiddo - Trailblaze - TM115
  (672, 67200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Skiddo - Seed Bomb - TM128
  (672, 67200, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 3),
  -- Gogoat - Facade - TM109
  (673, 67300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Gogoat - Trailblaze - TM115
  (673, 67300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Gogoat - Seed Bomb - TM128
  (673, 67300, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 3),
  -- Gogoat - Skull Bash - TM146
  (673, 67300, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 4),
  -- Gogoat - Solar Blade - TM152
  (673, 67300, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 5),
  -- Pancham - Comet Punch - TM108
  (674, 67400, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Pancham - Facade - TM109
  (674, 67400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Pancham - Low Sweep - TM113
  (674, 67400, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Pancham - False Swipe - TM122
  (674, 67400, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Pancham - Circle Throw - TM129
  (674, 67400, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 5),
  -- Pancham - Drain Punch - TM131
  (674, 67400, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Pancham - Storm Throw - TM137
  (674, 67400, 480, 27, NULL, 2, NULL, NULL, 27002137, NULL, 7),
  -- Pangoro - Comet Punch - TM108
  (675, 67500, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Pangoro - Facade - TM109
  (675, 67500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Pangoro - Low Sweep - TM113
  (675, 67500, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Pangoro - False Swipe - TM122
  (675, 67500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Pangoro - Circle Throw - TM129
  (675, 67500, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 5),
  -- Pangoro - Drain Punch - TM131
  (675, 67500, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Pangoro - Dual Chop - TM135
  (675, 67500, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 7),
  -- Pangoro - Storm Throw - TM137
  (675, 67500, 480, 27, NULL, 2, NULL, NULL, 27002137, NULL, 8),
  -- Furfrou - Facade - TM109
  (676, 67600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Furfrou - Psychic Fangs - TM124
  (676, 67600, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 2),
  -- Furfrou - Mimic - TM125
  (676, 67600, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 3),
  -- Furfrou - Charge Beam - TM130
  (676, 67600, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Furfrou - Double Hit - TM132
  (676, 67600, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 5),
  -- Furfrou - Skull Bash - TM146
  (676, 67600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Furfrou - Tri Attack - TM147
  (676, 67600, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 7),
  -- Espurr - Facade - TM109
  (677, 67700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Espurr - Charge Beam - TM130
  (677, 67700, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 2),
  -- Espurr - Fake Out - TM141
  (677, 67700, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 3),
  -- Meowstic - Facade - TM109
  (678, 67800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Meowstic - Trailblaze - TM115
  (678, 67800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Meowstic - Pay Day - TM116
  (678, 67800, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 3),
  -- Meowstic - Ominous Wind - TM119
  (678, 67800, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 4),
  -- Meowstic - Charge Beam - TM130
  (678, 67800, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Meowstic - Fake Out - TM141
  (678, 67800, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 6),
  -- Meowstic - Tri Attack - TM147
  (678, 67800, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 7),
  -- Honedge - Facade - TM109
  (679, 67900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Honedge - False Swipe - TM122
  (679, 67900, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 2),
  -- Honedge - Solar Blade - TM152
  (679, 67900, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 3),
  -- Honedge - Steel Beam - TM157
  (679, 67900, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 4),
  -- Doublade - Facade - TM109
  (680, 68000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Doublade - False Swipe - TM122
  (680, 68000, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 2),
  -- Doublade - Double Hit - TM132
  (680, 68000, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 3),
  -- Doublade - Dual Chop - TM135
  (680, 68000, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 4),
  -- Doublade - Razor Wind - TM145
  (680, 68000, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 5),
  -- Doublade - Solar Blade - TM152
  (680, 68000, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 6),
  -- Doublade - Steel Beam - TM157
  (680, 68000, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 7),
  -- Aegislash - Facade - TM109
  (681, 68100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aegislash - Ominous Wind - TM119
  (681, 68100, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 2),
  -- Aegislash - False Swipe - TM122
  (681, 68100, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Aegislash - Double Hit - TM132
  (681, 68100, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 4),
  -- Aegislash - Dual Chop - TM135
  (681, 68100, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 5),
  -- Aegislash - Razor Wind - TM145
  (681, 68100, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 6),
  -- Aegislash - Solar Blade - TM152
  (681, 68100, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 7),
  -- Aegislash - Steel Beam - TM157
  (681, 68100, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 8),
  -- Spritzee - Facade - TM109
  (682, 68200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aromatisse - Facade - TM109
  (683, 68300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aromatisse - Silver Wind - TM117
  (683, 68300, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 2),
  -- Aromatisse - Ominous Wind - TM119
  (683, 68300, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 3),
  -- Aromatisse - Dream Eater - TM127
  (683, 68300, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Aromatisse - Charge Beam - TM130
  (683, 68300, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Aromatisse - Drain Punch - TM131
  (683, 68300, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Swirlix - Facade - TM109
  (684, 68400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Slurpuff - Facade - TM109
  (685, 68500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Slurpuff - Silver Wind - TM117
  (685, 68500, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 2),
  -- Slurpuff - Ominous Wind - TM119
  (685, 68500, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 3),
  -- Slurpuff - Dream Eater - TM127
  (685, 68500, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Slurpuff - Drain Punch - TM131
  (685, 68500, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Inkay - Facade - TM109
  (686, 68600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Inkay - Mimic - TM125
  (686, 68600, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 2),
  -- Inkay - Swagger - TM139
  (686, 68600, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 3),
  -- Malamar - Comet Punch - TM108
  (687, 68700, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Malamar - Facade - TM109
  (687, 68700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Malamar - Trailblaze - TM115
  (687, 68700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Malamar - Torment - TM121
  (687, 68700, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Malamar - Mimic - TM125
  (687, 68700, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 5),
  -- Malamar - Circle Throw - TM129
  (687, 68700, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 6),
  -- Malamar - Double Hit - TM132
  (687, 68700, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 7),
  -- Malamar - Swagger - TM139
  (687, 68700, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 8),
  -- Binacle - Facade - TM109
  (688, 68800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Binacle - Ancient Power - TM120
  (688, 68800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Binacle - False Swipe - TM122
  (688, 68800, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Binacle - Scald - TM148
  (688, 68800, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 4),
  -- Barbaracle - Comet Punch - TM108
  (689, 68900, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Barbaracle - Facade - TM109
  (689, 68900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Barbaracle - Ancient Power - TM120
  (689, 68900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Barbaracle - False Swipe - TM122
  (689, 68900, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Barbaracle - Double Hit - TM132
  (689, 68900, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 5),
  -- Barbaracle - Dual Chop - TM135
  (689, 68900, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 6),
  -- Barbaracle - Muddy Water - TM140
  (689, 68900, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 7),
  -- Barbaracle - Skull Bash - TM146
  (689, 68900, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 8),
  -- Barbaracle - Scald - TM148
  (689, 68900, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 9),
  -- Barbaracle - Meteor Beam - TM156
  (689, 68900, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 10),
  -- Skrelp - Facade - TM109
  (690, 69000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Skrelp - Chilling Water - TM110
  (690, 69000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Skrelp - Acid Spray - TM112
  (690, 69000, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 3),
  -- Skrelp - Muddy Water - TM140
  (690, 69000, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 4),
  -- Skrelp - Scale Shot - TM143
  (690, 69000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Skrelp - Scald - TM148
  (690, 69000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 6),
  -- Dragalge - Facade - TM109
  (691, 69100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Dragalge - Chilling Water - TM110
  (691, 69100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Dragalge - Acid Spray - TM112
  (691, 69100, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 3),
  -- Dragalge - Muddy Water - TM140
  (691, 69100, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 4),
  -- Dragalge - Scale Shot - TM143
  (691, 69100, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Dragalge - Scald - TM148
  (691, 69100, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 6),
  -- Clauncher - Facade - TM109
  (692, 69200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Clauncher - Chilling Water - TM110
  (692, 69200, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Clauncher - Muddy Water - TM140
  (692, 69200, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 3),
  -- Clawitzer - Facade - TM109
  (693, 69300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Clawitzer - Chilling Water - TM110
  (693, 69300, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Clawitzer - Acid Spray - TM112
  (693, 69300, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 3),
  -- Clawitzer - Muddy Water - TM140
  (693, 69300, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 4),
  -- Clawitzer - Scald - TM148
  (693, 69300, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 5),
  -- Helioptile - Facade - TM109
  (694, 69400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Helioptile - Low Sweep - TM113
  (694, 69400, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Helioptile - Seed Bomb - TM128
  (694, 69400, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 3),
  -- Helioptile - Scale Shot - TM143
  (694, 69400, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 4),
  -- Heliolisk - Facade - TM109
  (695, 69500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Heliolisk - Low Sweep - TM113
  (695, 69500, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Heliolisk - Seed Bomb - TM128
  (695, 69500, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 3),
  -- Heliolisk - Charge Beam - TM130
  (695, 69500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Heliolisk - Scale Shot - TM143
  (695, 69500, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Heliolisk - Razor Wind - TM145
  (695, 69500, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 6),
  -- Tyrunt - Facade - TM109
  (696, 69600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Tyrunt - Ancient Power - TM120
  (696, 69600, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Tyrunt - Poison Fang - TM123
  (696, 69600, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 3),
  -- Tyrunt - Psychic Fangs - TM124
  (696, 69600, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Tyrunt - Scale Shot - TM143
  (696, 69600, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Tyrunt - Meteor Beam - TM156
  (696, 69600, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 6),
  -- Tyrantrum - Facade - TM109
  (697, 69700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Tyrantrum - Ancient Power - TM120
  (697, 69700, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Tyrantrum - Poison Fang - TM123
  (697, 69700, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 3),
  -- Tyrantrum - Psychic Fangs - TM124
  (697, 69700, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Tyrantrum - Scale Shot - TM143
  (697, 69700, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Tyrantrum - Meteor Beam - TM156
  (697, 69700, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 6),
  -- Amaura - Facade - TM109
  (698, 69800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Amaura - Ancient Power - TM120
  (698, 69800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Amaura - Meteor Beam - TM156
  (698, 69800, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 3),
  -- Aurorus - Facade - TM109
  (699, 69900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aurorus - Chilling Water - TM110
  (699, 69900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Aurorus - Ancient Power - TM120
  (699, 69900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Aurorus - Charge Beam - TM130
  (699, 69900, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Aurorus - Icicle Spear - TM149
  (699, 69900, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 5),
  -- Aurorus - Sheer Cold - TM155
  (699, 69900, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 6),
  -- Aurorus - Meteor Beam - TM156
  (699, 69900, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 7),
  -- Sylveon - Facade - TM109
  (700, 70000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Sylveon - Trailblaze - TM115
  (700, 70000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Sylveon - Mimic - TM125
  (700, 70000, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 3),
  -- Sylveon - Skull Bash - TM146
  (700, 70000, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 4);
