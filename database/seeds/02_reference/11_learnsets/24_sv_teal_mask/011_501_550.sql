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
-- The Teal Mask learnset delta rows for species 501-550.
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
  -- Oshawott - Knock Off - TM181
  (501, 50100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Oshawott - Flip Turn - TM196
  (501, 50100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Dewott - Knock Off - TM181
  (502, 50200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Dewott - Vacuum Wave - TM184
  (502, 50200, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Dewott - Flip Turn - TM196
  (502, 50200, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Samurott - Knock Off - TM181
  (503, 50300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Samurott - Vacuum Wave - TM184
  (503, 50300, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Samurott - Flip Turn - TM196
  (503, 50300, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Samurott (Hisuian Samurott) - Knock Off - TM181
  (503, 50301, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Samurott (Hisuian Samurott) - Vacuum Wave - TM184
  (503, 50301, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Samurott (Hisuian Samurott) - Flip Turn - TM196
  (503, 50301, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Samurott (Hisuian Samurott) - Lash Out - TM199
  (503, 50301, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Timburr - Smack Down - TM179
  (532, 53200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Timburr - Knock Off - TM181
  (532, 53200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Timburr - Focus Punch - TM192
  (532, 53200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Gurdurr - Smack Down - TM179
  (533, 53300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Gurdurr - Knock Off - TM181
  (533, 53300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Gurdurr - High Horsepower - TM186
  (533, 53300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Gurdurr - Focus Punch - TM192
  (533, 53300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Conkeldurr - Smack Down - TM179
  (534, 53400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Conkeldurr - Knock Off - TM181
  (534, 53400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Conkeldurr - High Horsepower - TM186
  (534, 53400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Conkeldurr - Focus Punch - TM192
  (534, 53400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sewaddle - Bug Bite - TM182
  (540, 54000, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Sewaddle - Lunge - TM185
  (540, 54000, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Sewaddle - Grassy Glide - TM194
  (540, 54000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Swadloon - Bug Bite - TM182
  (541, 54100, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Swadloon - Lunge - TM185
  (541, 54100, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Swadloon - Grassy Glide - TM194
  (541, 54100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Leavanny - Knock Off - TM181
  (542, 54200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Leavanny - Bug Bite - TM182
  (542, 54200, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Leavanny - Lunge - TM185
  (542, 54200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Leavanny - Grassy Glide - TM194
  (542, 54200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Petilil - Grassy Glide - TM194
  (548, 54800, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Lilligant - Solar Blade - TM190
  (549, 54900, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Lilligant - Weather Ball - TM193
  (549, 54900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Lilligant - Grassy Glide - TM194
  (549, 54900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Vacuum Wave - TM184
  (549, 54901, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Lilligant (Hisuian Lilligant) - Solar Blade - TM190
  (549, 54901, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Lilligant (Hisuian Lilligant) - Weather Ball - TM193
  (549, 54901, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Grassy Glide - TM194
  (549, 54901, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Basculin - Flip Turn - TM196
  (550, 55000, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Basculin - Scale Shot - TM200
  (550, 55000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Basculin (Blue-Striped) - Flip Turn - TM196
  (550, 55001, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Basculin (Blue-Striped) - Scale Shot - TM200
  (550, 55001, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Basculin (White-Striped) - Uproar - TM191
  (550, 55002, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Basculin (White-Striped) - Flip Turn - TM196
  (550, 55002, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Basculin (White-Striped) - Scale Shot - TM200
  (550, 55002, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3);
