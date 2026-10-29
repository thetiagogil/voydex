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
-- The Indigo Disk learnset delta rows for species 651-700.
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
  -- Quilladin - Pain Split - TM202
  (651, 65100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Quilladin - Endeavor - TM205
  (651, 65100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Quilladin - Curse - TM224
  (651, 65100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Chesnaught - Pain Split - TM202
  (652, 65200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Chesnaught - Double-Edge - TM204
  (652, 65200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Chesnaught - Endeavor - TM205
  (652, 65200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Chesnaught - Coaching - TM213
  (652, 65200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Chesnaught - Curse - TM224
  (652, 65200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Delphox - Psych Up - TM203
  (655, 65500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Delphox - Scorching Sands - TM215
  (655, 65500, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Delphox - Future Sight - TM217
  (655, 65500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Delphox - Expanding Force - TM218
  (655, 65500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Delphox - Psychic Noise - TM228
  (655, 65500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Greninja - Sludge Wave - TM214
  (658, 65800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Greninja - Upper Hand - TM229
  (658, 65800, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 2),
  -- Fletchling - Double-Edge - TM204
  (661, 66100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Fletchling - Feather Dance - TM216
  (661, 66100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Fletchinder - Double-Edge - TM204
  (662, 66200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Fletchinder - Temper Flare - TM207
  (662, 66200, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Fletchinder - Feather Dance - TM216
  (662, 66200, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Talonflame - Double-Edge - TM204
  (663, 66300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Talonflame - Temper Flare - TM207
  (663, 66300, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Talonflame - Feather Dance - TM216
  (663, 66300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Talonflame - Upper Hand - TM229
  (663, 66300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Vivillon - Skitter Smack - TM219
  (666, 66600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Litleo - Double-Edge - TM204
  (667, 66700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Litleo - Endeavor - TM205
  (667, 66700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Pyroar - Double-Edge - TM204
  (668, 66800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Pyroar - Endeavor - TM205
  (668, 66800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Pyroar - Temper Flare - TM207
  (668, 66800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Flabebe - Endeavor - TM205
  (669, 66900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Flabebe - Petal Blizzard - TM206
  (669, 66900, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Flabebe - Alluring Voice - TM227
  (669, 66900, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Floette - Endeavor - TM205
  (670, 67000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Floette - Petal Blizzard - TM206
  (670, 67000, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Floette - Alluring Voice - TM227
  (670, 67000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Florges - Endeavor - TM205
  (671, 67100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Florges - Petal Blizzard - TM206
  (671, 67100, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Florges - Alluring Voice - TM227
  (671, 67100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Florges - Psychic Noise - TM228
  (671, 67100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Skiddo - Double-Edge - TM204
  (672, 67200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Skiddo - Endeavor - TM205
  (672, 67200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Gogoat - Double-Edge - TM204
  (673, 67300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gogoat - Endeavor - TM205
  (673, 67300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Gogoat - Throat Chop - TM221
  (673, 67300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Espurr - Gravity - TM178
  (677, 67700, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Espurr - Psych Up - TM203
  (677, 67700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Espurr - Expanding Force - TM218
  (677, 67700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Espurr - Psychic Noise - TM228
  (677, 67700, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Meowstic - Psych Up - TM203
  (678, 67800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Meowstic - Expanding Force - TM218
  (678, 67800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Meowstic - Alluring Voice - TM227
  (678, 67800, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Meowstic - Psychic Noise - TM228
  (678, 67800, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Meowstic (Female) - Psych Up - TM203
  (678, 67801, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Meowstic (Female) - Future Sight - TM217
  (678, 67801, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Meowstic (Female) - Expanding Force - TM218
  (678, 67801, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Meowstic (Female) - Alluring Voice - TM227
  (678, 67801, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Meowstic (Female) - Psychic Noise - TM228
  (678, 67801, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Inkay - Spite - TM177
  (686, 68600, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Inkay - Gravity - TM178
  (686, 68600, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Inkay - Knock Off - TM181
  (686, 68600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Inkay - Lunge - TM185
  (686, 68600, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Inkay - Lash Out - TM199
  (686, 68600, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Inkay - Psych Up - TM203
  (686, 68600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 6),
  -- Inkay - Future Sight - TM217
  (686, 68600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 7),
  -- Inkay - Expanding Force - TM218
  (686, 68600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 8),
  -- Malamar - Spite - TM177
  (687, 68700, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Malamar - Gravity - TM178
  (687, 68700, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Malamar - Knock Off - TM181
  (687, 68700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Malamar - Lunge - TM185
  (687, 68700, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Malamar - Lash Out - TM199
  (687, 68700, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Malamar - Psych Up - TM203
  (687, 68700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 6),
  -- Malamar - Future Sight - TM217
  (687, 68700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 7),
  -- Malamar - Expanding Force - TM218
  (687, 68700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 8),
  -- Malamar - Throat Chop - TM221
  (687, 68700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 9),
  -- Malamar - Psychic Noise - TM228
  (687, 68700, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Skrelp - Whirlpool - TM208
  (690, 69000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Skrelp - Muddy Water - TM209
  (690, 69000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Skrelp - Sludge Wave - TM214
  (690, 69000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Dragalge - Whirlpool - TM208
  (691, 69100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Dragalge - Muddy Water - TM209
  (691, 69100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Dragalge - Sludge Wave - TM214
  (691, 69100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Clauncher - Muddy Water - TM209
  (692, 69200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Clauncher - Sludge Wave - TM214
  (692, 69200, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Clawitzer - Muddy Water - TM209
  (693, 69300, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Clawitzer - Sludge Wave - TM214
  (693, 69300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Sylveon - Psych Up - TM203
  (700, 70000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Sylveon - Double-Edge - TM204
  (700, 70000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Sylveon - Curse - TM224
  (700, 70000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Sylveon - Alluring Voice - TM227
  (700, 70000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4);
