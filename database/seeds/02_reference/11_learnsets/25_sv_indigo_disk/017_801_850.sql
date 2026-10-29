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
-- The Indigo Disk learnset delta rows for species 801-850.
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
  -- Magearna - Pain Split - TM202
  (801, 80100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Magearna - Electroweb - TM211
  (801, 80100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Magearna - Metal Sound - TM223
  (801, 80100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Grookey - Endeavor - TM205
  (810, 81000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Thwackey - Double-Edge - TM204
  (811, 81100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Thwackey - Endeavor - TM205
  (811, 81100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Rillaboom - Double-Edge - TM204
  (812, 81200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Rillaboom - Endeavor - TM205
  (812, 81200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Scorbunny - Double-Edge - TM204
  (813, 81300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Scorbunny - Temper Flare - TM207
  (813, 81300, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Raboot - Double-Edge - TM204
  (814, 81400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Raboot - Temper Flare - TM207
  (814, 81400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Cinderace - Double-Edge - TM204
  (815, 81500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cinderace - Temper Flare - TM207
  (815, 81500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Cinderace - Coaching - TM213
  (815, 81500, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Cinderace - Scorching Sands - TM215
  (815, 81500, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Sobble - Whirlpool - TM208
  (816, 81600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Sobble - Muddy Water - TM209
  (816, 81600, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Drizzile - Whirlpool - TM208
  (817, 81700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Drizzile - Muddy Water - TM209
  (817, 81700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Inteleon - Psych Up - TM203
  (818, 81800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Inteleon - Whirlpool - TM208
  (818, 81800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Inteleon - Muddy Water - TM209
  (818, 81800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Inteleon - Skitter Smack - TM219
  (818, 81800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Inteleon - Breaking Swipe - TM222
  (818, 81800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Skwovet - Double-Edge - TM204
  (819, 81900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Skwovet - Endeavor - TM205
  (819, 81900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Skwovet - Curse - TM224
  (819, 81900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Greedent - Double-Edge - TM204
  (820, 82000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Greedent - Endeavor - TM205
  (820, 82000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Greedent - Curse - TM224
  (820, 82000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Corviknight - Double-Edge - TM204
  (823, 82300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Corviknight - Metal Sound - TM223
  (823, 82300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Corviknight - Curse - TM224
  (823, 82300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Chewtle - Whirlpool - TM208
  (833, 83300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Chewtle - Skitter Smack - TM219
  (833, 83300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Drednaw - Double-Edge - TM204
  (834, 83400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Drednaw - Whirlpool - TM208
  (834, 83400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Drednaw - Muddy Water - TM209
  (834, 83400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Drednaw - Skitter Smack - TM219
  (834, 83400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Drednaw - Meteor Beam - TM220
  (834, 83400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Drednaw - Throat Chop - TM221
  (834, 83400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Rolycoly - Temper Flare - TM207
  (837, 83700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Rolycoly - Meteor Beam - TM220
  (837, 83700, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Rolycoly - Curse - TM224
  (837, 83700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Carkol - Temper Flare - TM207
  (838, 83800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Carkol - Scorching Sands - TM215
  (838, 83800, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Carkol - Meteor Beam - TM220
  (838, 83800, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Carkol - Curse - TM224
  (838, 83800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Coalossal - Temper Flare - TM207
  (839, 83900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Coalossal - Scorching Sands - TM215
  (839, 83900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Coalossal - Meteor Beam - TM220
  (839, 83900, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Coalossal - Curse - TM224
  (839, 83900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Flapple - Endeavor - TM205
  (841, 84100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Appletun - Curse - TM224
  (842, 84200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 1),
  -- Silicobra - Scorching Sands - TM215
  (843, 84300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 1),
  -- Silicobra - Skitter Smack - TM219
  (843, 84300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Sandaconda - Endeavor - TM205
  (844, 84400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Sandaconda - Scorching Sands - TM215
  (844, 84400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Sandaconda - Skitter Smack - TM219
  (844, 84400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Cramorant - Endeavor - TM205
  (845, 84500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Cramorant - Whirlpool - TM208
  (845, 84500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Cramorant - Feather Dance - TM216
  (845, 84500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Cramorant - Throat Chop - TM221
  (845, 84500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Arrokuda - Double-Edge - TM204
  (846, 84600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Arrokuda - Whirlpool - TM208
  (846, 84600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Arrokuda - Throat Chop - TM221
  (846, 84600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Barraskewda - Double-Edge - TM204
  (847, 84700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Barraskewda - Whirlpool - TM208
  (847, 84700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Barraskewda - Throat Chop - TM221
  (847, 84700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Toxel - Endeavor - TM205
  (848, 84800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Toxel - Metal Sound - TM223
  (848, 84800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Toxtricity - Endeavor - TM205
  (849, 84900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Toxtricity - Electroweb - TM211
  (849, 84900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Toxtricity - Sludge Wave - TM214
  (849, 84900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Toxtricity - Throat Chop - TM221
  (849, 84900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Toxtricity - Metal Sound - TM223
  (849, 84900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Toxtricity - Psychic Noise - TM228
  (849, 84900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Toxtricity (Low Key) - Endeavor - TM205
  (849, 84901, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Toxtricity (Low Key) - Electroweb - TM211
  (849, 84901, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Toxtricity (Low Key) - Sludge Wave - TM214
  (849, 84901, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Toxtricity (Low Key) - Throat Chop - TM221
  (849, 84901, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Toxtricity (Low Key) - Metal Sound - TM223
  (849, 84901, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Toxtricity (Low Key) - Psychic Noise - TM228
  (849, 84901, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6);
