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
-- The Indigo Disk learnset delta rows for species 501-550.
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
  -- Oshawott - Whirlpool - TM208
  (501, 50100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Dewott - Whirlpool - TM208
  (502, 50200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Samurott - Whirlpool - TM208
  (503, 50300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Samurott - Upper Hand - TM229
  (503, 50300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 2),
  -- Samurott (Hisuian Samurott) - Whirlpool - TM208
  (503, 50301, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Samurott (Hisuian Samurott) - Throat Chop - TM221
  (503, 50301, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Samurott (Hisuian Samurott) - Upper Hand - TM229
  (503, 50301, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Blitzle - Charge - TM173
  (522, 52200, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Blitzle - Uproar - TM191
  (522, 52200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Blitzle - Double-Edge - TM204
  (522, 52200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Blitzle - Endeavor - TM205
  (522, 52200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Blitzle - Supercell Slam - TM210
  (522, 52200, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 5),
  -- Blitzle - Electroweb - TM211
  (522, 52200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 6),
  -- Zebstrika - Roar - TM172
  (523, 52300, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zebstrika - Charge - TM173
  (523, 52300, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Zebstrika - High Horsepower - TM186
  (523, 52300, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Zebstrika - Uproar - TM191
  (523, 52300, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Zebstrika - Double-Edge - TM204
  (523, 52300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Zebstrika - Endeavor - TM205
  (523, 52300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Zebstrika - Supercell Slam - TM210
  (523, 52300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 7),
  -- Zebstrika - Electroweb - TM211
  (523, 52300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 8),
  -- Drilbur - Sand Tomb - TM176
  (529, 52900, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Drilbur - High Horsepower - TM186
  (529, 52900, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Drilbur - Double-Edge - TM204
  (529, 52900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Drilbur - Scorching Sands - TM215
  (529, 52900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Drilbur - Metal Sound - TM223
  (529, 52900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Drilbur - Curse - TM224
  (529, 52900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Excadrill - Sand Tomb - TM176
  (530, 53000, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Excadrill - High Horsepower - TM186
  (530, 53000, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Excadrill - Double-Edge - TM204
  (530, 53000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Excadrill - Scorching Sands - TM215
  (530, 53000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Excadrill - Throat Chop - TM221
  (530, 53000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Excadrill - Metal Sound - TM223
  (530, 53000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 6),
  -- Excadrill - Curse - TM224
  (530, 53000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Timburr - Double-Edge - TM204
  (532, 53200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Timburr - Coaching - TM213
  (532, 53200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Timburr - Curse - TM224
  (532, 53200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Gurdurr - Double-Edge - TM204
  (533, 53300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gurdurr - Coaching - TM213
  (533, 53300, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Gurdurr - Curse - TM224
  (533, 53300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Conkeldurr - Double-Edge - TM204
  (534, 53400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Conkeldurr - Coaching - TM213
  (534, 53400, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Conkeldurr - Curse - TM224
  (534, 53400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Conkeldurr - Hard Press - TM225
  (534, 53400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Conkeldurr - Upper Hand - TM229
  (534, 53400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Sewaddle - Electroweb - TM211
  (540, 54000, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Sewaddle - Skitter Smack - TM219
  (540, 54000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Swadloon - Electroweb - TM211
  (541, 54100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Swadloon - Skitter Smack - TM219
  (541, 54100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Leavanny - Electroweb - TM211
  (542, 54200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Leavanny - Triple Axel - TM212
  (542, 54200, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 2),
  -- Leavanny - Skitter Smack - TM219
  (542, 54200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Leavanny - Throat Chop - TM221
  (542, 54200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Cottonee - Grassy Glide - TM194
  (546, 54600, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Cottonee - Endeavor - TM205
  (546, 54600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Whimsicott - Grassy Glide - TM194
  (547, 54700, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Whimsicott - Endeavor - TM205
  (547, 54700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lilligant - Psych Up - TM203
  (549, 54900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lilligant - Petal Blizzard - TM206
  (549, 54900, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Lilligant - Alluring Voice - TM227
  (549, 54900, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Psych Up - TM203
  (549, 54901, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lilligant (Hisuian Lilligant) - Petal Blizzard - TM206
  (549, 54901, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Lilligant (Hisuian Lilligant) - Triple Axel - TM212
  (549, 54901, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Coaching - TM213
  (549, 54901, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Lilligant (Hisuian Lilligant) - Upper Hand - TM229
  (549, 54901, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Basculin - Double-Edge - TM204
  (550, 55000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Basculin - Endeavor - TM205
  (550, 55000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Basculin - Whirlpool - TM208
  (550, 55000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Basculin - Muddy Water - TM209
  (550, 55000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Basculin (Blue-Striped) - Double-Edge - TM204
  (550, 55001, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Basculin (Blue-Striped) - Endeavor - TM205
  (550, 55001, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Basculin (Blue-Striped) - Whirlpool - TM208
  (550, 55001, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Basculin (Blue-Striped) - Muddy Water - TM209
  (550, 55001, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Basculin (White-Striped) - Double-Edge - TM204
  (550, 55002, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Basculin (White-Striped) - Endeavor - TM205
  (550, 55002, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Basculin (White-Striped) - Whirlpool - TM208
  (550, 55002, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Basculin (White-Striped) - Muddy Water - TM209
  (550, 55002, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4);
