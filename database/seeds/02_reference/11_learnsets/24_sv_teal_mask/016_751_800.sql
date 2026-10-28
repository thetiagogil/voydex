-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 751-800.
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
  -- Fomantis - Bug Bite - TM182
  (753, 75300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Fomantis - Weather Ball - TM193
  (753, 75300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Fomantis - Grassy Glide - TM194
  (753, 75300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Lurantis - Knock Off - TM181
  (754, 75400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Lurantis - Bug Bite - TM182
  (754, 75400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Lurantis - Solar Blade - TM190
  (754, 75400, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Lurantis - Weather Ball - TM193
  (754, 75400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Lurantis - Grassy Glide - TM194
  (754, 75400, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Salandit - Toxic - TM175
  (757, 75700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Salandit - Knock Off - TM181
  (757, 75700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Salandit - Burning Jealousy - TM195
  (757, 75700, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Salandit - Scale Shot - TM200
  (757, 75700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Salazzle - Toxic - TM175
  (758, 75800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Salazzle - Knock Off - TM181
  (758, 75800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Salazzle - Burning Jealousy - TM195
  (758, 75800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Salazzle - Scale Shot - TM200
  (758, 75800, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Bounsweet - Grassy Glide - TM194
  (761, 76100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Steenee - Grassy Glide - TM194
  (762, 76200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Tsareena - Knock Off - TM181
  (763, 76300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Tsareena - Solar Blade - TM190
  (763, 76300, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Tsareena - Grassy Glide - TM194
  (763, 76300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Oranguru - Gravity - TM178
  (765, 76500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Oranguru - Knock Off - TM181
  (765, 76500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Passimian - Smack Down - TM179
  (766, 76600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Passimian - Gyro Ball - TM180
  (766, 76600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Passimian - Knock Off - TM181
  (766, 76600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Passimian - Vacuum Wave - TM184
  (766, 76600, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 4),
  -- Passimian - Uproar - TM191
  (766, 76600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Passimian - Focus Punch - TM192
  (766, 76600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Sandygast - Sand Tomb - TM176
  (769, 76900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Sandygast - Spite - TM177
  (769, 76900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Sandygast - Gravity - TM178
  (769, 76900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Sandygast - Poltergeist - TM198
  (769, 76900, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Palossand - Sand Tomb - TM176
  (770, 77000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Palossand - Spite - TM177
  (770, 77000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Palossand - Gravity - TM178
  (770, 77000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Palossand - Poltergeist - TM198
  (770, 77000, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Komala - Knock Off - TM181
  (775, 77500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Komala - Super Fang - TM183
  (775, 77500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Mimikyu - Spite - TM177
  (778, 77800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Mimikyu - Burning Jealousy - TM195
  (778, 77800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Bruxish - Super Fang - TM183
  (779, 77900, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Bruxish - Flip Turn - TM196
  (779, 77900, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Jangmo-o - Roar - TM172
  (782, 78200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Jangmo-o - Focus Punch - TM192
  (782, 78200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Jangmo-o - Scale Shot - TM200
  (782, 78200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Hakamo-o - Roar - TM172
  (783, 78300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Hakamo-o - Vacuum Wave - TM184
  (783, 78300, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Hakamo-o - Focus Punch - TM192
  (783, 78300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Hakamo-o - Scale Shot - TM200
  (783, 78300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Kommo-o - Roar - TM172
  (784, 78400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Kommo-o - Vacuum Wave - TM184
  (784, 78400, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Kommo-o - Focus Punch - TM192
  (784, 78400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Kommo-o - Scale Shot - TM200
  (784, 78400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Solgaleo - Roar - TM172
  (791, 79100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Solgaleo - Gyro Ball - TM180
  (791, 79100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Solgaleo - Knock Off - TM181
  (791, 79100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Solgaleo - Heat Crash - TM189
  (791, 79100, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Lunala - Spite - TM177
  (792, 79200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Lunala - Dual Wingbeat - TM197
  (792, 79200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Lunala - Poltergeist - TM198
  (792, 79200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Necrozma - Gravity - TM178
  (800, 80000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Necrozma - Gyro Ball - TM180
  (800, 80000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Necrozma - Knock Off - TM181
  (800, 80000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Necrozma (Dusk Mane) - Gravity - TM178
  (800, 80001, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Necrozma (Dusk Mane) - Gyro Ball - TM180
  (800, 80001, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Necrozma (Dusk Mane) - Knock Off - TM181
  (800, 80001, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Necrozma (Dawn Wings) - Gravity - TM178
  (800, 80002, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Necrozma (Dawn Wings) - Gyro Ball - TM180
  (800, 80002, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Necrozma (Dawn Wings) - Knock Off - TM181
  (800, 80002, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3);
