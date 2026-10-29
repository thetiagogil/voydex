-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- Correction: legendary and mythical rows and every form's Scarlet / Violet
-- TMs are checked against each game's own data (PKHeX learnset and personal
-- tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 651-700.
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
  -- Quilladin - Roar - TM172
  (651, 65100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Quilladin - Gyro Ball - TM180
  (651, 65100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Quilladin - Super Fang - TM183
  (651, 65100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Quilladin - Focus Punch - TM192
  (651, 65100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Quilladin - Grassy Glide - TM194
  (651, 65100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Chesnaught - Roar - TM172
  (652, 65200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Chesnaught - Smack Down - TM179
  (652, 65200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Chesnaught - Gyro Ball - TM180
  (652, 65200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Chesnaught - Knock Off - TM181
  (652, 65200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Chesnaught - Super Fang - TM183
  (652, 65200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 5),
  -- Chesnaught - High Horsepower - TM186
  (652, 65200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Chesnaught - Focus Punch - TM192
  (652, 65200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Chesnaught - Grassy Glide - TM194
  (652, 65200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 8),
  -- Fennekin - Burning Jealousy - TM195
  (653, 65300, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 1),
  -- Braixen - Burning Jealousy - TM195
  (654, 65400, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 1),
  -- Delphox - Burning Jealousy - TM195
  (655, 65500, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 1),
  -- Froakie - Smack Down - TM179
  (656, 65600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Frogadier - Smack Down - TM179
  (657, 65700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Greninja - Haze - TM174
  (658, 65800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Greninja - Smack Down - TM179
  (658, 65800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Greninja - Weather Ball - TM193
  (658, 65800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Fletchling - Dual Wingbeat - TM197
  (661, 66100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Fletchinder - Dual Wingbeat - TM197
  (662, 66200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Talonflame - Dual Wingbeat - TM197
  (663, 66300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Scatterbug - Bug Bite - TM182
  (664, 66400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Spewpa - Bug Bite - TM182
  (665, 66500, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Vivillon - Bug Bite - TM182
  (666, 66600, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Vivillon - Weather Ball - TM193
  (666, 66600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Litleo - Roar - TM172
  (667, 66700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Pyroar - Roar - TM172
  (668, 66800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Pyroar - Burning Jealousy - TM195
  (668, 66800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Florges - Misty Explosion - TM201
  (671, 67100, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 1),
  -- Skiddo - Roar - TM172
  (672, 67200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Skiddo - Grassy Glide - TM194
  (672, 67200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Gogoat - Roar - TM172
  (673, 67300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Gogoat - High Horsepower - TM186
  (673, 67300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Gogoat - Grassy Glide - TM194
  (673, 67300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Meowstic - Gravity - TM178
  (678, 67800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Meowstic (Female) - Gravity - TM178
  (678, 67801, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Skrelp - Haze - TM174
  (690, 69000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Skrelp - Toxic - TM175
  (690, 69000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Skrelp - Spite - TM177
  (690, 69000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Skrelp - Flip Turn - TM196
  (690, 69000, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 4),
  -- Skrelp - Scale Shot - TM200
  (690, 69000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Dragalge - Haze - TM174
  (691, 69100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dragalge - Toxic - TM175
  (691, 69100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Dragalge - Spite - TM177
  (691, 69100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Dragalge - Scald - TM188
  (691, 69100, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 4),
  -- Dragalge - Flip Turn - TM196
  (691, 69100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Dragalge - Scale Shot - TM200
  (691, 69100, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Clauncher - Smack Down - TM179
  (692, 69200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Clauncher - Weather Ball - TM193
  (692, 69200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Clauncher - Flip Turn - TM196
  (692, 69200, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Clawitzer - Smack Down - TM179
  (693, 69300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Clawitzer - Weather Ball - TM193
  (693, 69300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Clawitzer - Flip Turn - TM196
  (693, 69300, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Sylveon - Roar - TM172
  (700, 70000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Sylveon - Weather Ball - TM193
  (700, 70000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Sylveon - Misty Explosion - TM201
  (700, 70000, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 3);
