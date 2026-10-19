-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 851-900.
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
  -- Sinistea - Spite - TM177
  (854, 85400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Sinistea - Poltergeist - TM198
  (854, 85400, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2),
  -- Polteageist - Spite - TM177
  (855, 85500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Polteageist - Poltergeist - TM198
  (855, 85500, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2),
  -- Hatterene - Gravity - TM178
  (858, 85800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Hatterene - Misty Explosion - TM201
  (858, 85800, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 2),
  -- Impidimp - Burning Jealousy - TM195
  (859, 85900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 1),
  -- Impidimp - Lash Out - TM199
  (859, 85900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Morgrem - Burning Jealousy - TM195
  (860, 86000, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 1),
  -- Morgrem - Lash Out - TM199
  (860, 86000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Grimmsnarl - Focus Punch - TM192
  (861, 86100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Grimmsnarl - Burning Jealousy - TM195
  (861, 86100, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Grimmsnarl - Lash Out - TM199
  (861, 86100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Perrserker - Spite - TM177
  (863, 86300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Perrserker - Gyro Ball - TM180
  (863, 86300, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Perrserker - Knock Off - TM181
  (863, 86300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Perrserker - Lash Out - TM199
  (863, 86300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Falinks - Knock Off - TM181
  (870, 87000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Falinks - Lunge - TM185
  (870, 87000, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Falinks - High Horsepower - TM186
  (870, 87000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Falinks - Uproar - TM191
  (870, 87000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Pincurchin - Charge - TM173
  (871, 87100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pincurchin - Scald - TM188
  (871, 87100, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Snom - Bug Bite - TM182
  (872, 87200, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Snom - Lunge - TM185
  (872, 87200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Snom - Icicle Spear - TM187
  (872, 87200, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Frosmoth - Bug Bite - TM182
  (873, 87300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Frosmoth - Lunge - TM185
  (873, 87300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Frosmoth - Icicle Spear - TM187
  (873, 87300, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Frosmoth - Weather Ball - TM193
  (873, 87300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Stonjourner - Sand Tomb - TM176
  (874, 87400, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Stonjourner - Gravity - TM178
  (874, 87400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Stonjourner - Smack Down - TM179
  (874, 87400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Stonjourner - High Horsepower - TM186
  (874, 87400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Stonjourner - Heat Crash - TM189
  (874, 87400, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Eiscue - Icicle Spear - TM187
  (875, 87500, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Eiscue - Weather Ball - TM193
  (875, 87500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Eiscue - Flip Turn - TM196
  (875, 87500, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Indeedee - Gravity - TM178
  (876, 87600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Morpeko - Charge - TM173
  (877, 87700, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Morpeko - Spite - TM177
  (877, 87700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Morpeko - Knock Off - TM181
  (877, 87700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Morpeko - Super Fang - TM183
  (877, 87700, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Morpeko - Uproar - TM191
  (877, 87700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Morpeko - Lash Out - TM199
  (877, 87700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Cufant - High Horsepower - TM186
  (878, 87800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Copperajah - Smack Down - TM179
  (879, 87900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Copperajah - Knock Off - TM181
  (879, 87900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Copperajah - High Horsepower - TM186
  (879, 87900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Copperajah - Heat Crash - TM189
  (879, 87900, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Zacian - Solar Blade - TM190
  (888, 88800, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Zamazenta - Roar - TM172
  (889, 88900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Eternatus - Toxic - TM175
  (890, 89000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Eternatus - Gravity - TM178
  (890, 89000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Kubfu - Focus Punch - TM192
  (891, 89100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Urshifu - Roar - TM172
  (892, 89200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Urshifu - Focus Punch - TM192
  (892, 89200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Urshifu - Lash Out - TM199
  (892, 89200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Urshifu (Rapid Strike) - Focus Punch - TM192
  (892, 89201, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Zarude - Roar - TM172
  (893, 89300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zarude - Knock Off - TM181
  (893, 89300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Zarude - Solar Blade - TM190
  (893, 89300, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Zarude - Focus Punch - TM192
  (893, 89300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Zarude - Grassy Glide - TM194
  (893, 89300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Zarude - Lash Out - TM199
  (893, 89300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Regieleki - Charge - TM173
  (894, 89400, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Regidrago - Scale Shot - TM200
  (895, 89500, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 1),
  -- Glastrier - Roar - TM172
  (896, 89600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Glastrier - High Horsepower - TM186
  (896, 89600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Glastrier - Lash Out - TM199
  (896, 89600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Spectrier - Haze - TM174
  (897, 89700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Spectrier - Poltergeist - TM198
  (897, 89700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2),
  -- Spectrier - Lash Out - TM199
  (897, 89700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Calyrex - Gravity - TM178
  (898, 89800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Calyrex - Solar Blade - TM190
  (898, 89800, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Calyrex (Ice Rider) - Roar - TM172
  (898, 89801, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Calyrex (Ice Rider) - Gravity - TM178
  (898, 89801, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Calyrex (Ice Rider) - High Horsepower - TM186
  (898, 89801, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Calyrex (Ice Rider) - Icicle Spear - TM187
  (898, 89801, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 4),
  -- Calyrex (Ice Rider) - Solar Blade - TM190
  (898, 89801, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 5),
  -- Calyrex (Ice Rider) - Lash Out - TM199
  (898, 89801, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Calyrex (Shadow Rider) - Haze - TM174
  (898, 89802, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Calyrex (Shadow Rider) - Gravity - TM178
  (898, 89802, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Calyrex (Shadow Rider) - Solar Blade - TM190
  (898, 89802, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Calyrex (Shadow Rider) - Lash Out - TM199
  (898, 89802, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Wyrdeer - Roar - TM172
  (899, 89900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Wyrdeer - Spite - TM177
  (899, 89900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Wyrdeer - Gravity - TM178
  (899, 89900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Wyrdeer - Lunge - TM185
  (899, 89900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Wyrdeer - High Horsepower - TM186
  (899, 89900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Wyrdeer - Uproar - TM191
  (899, 89900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 6),
  -- Kleavor - Smack Down - TM179
  (900, 90000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Kleavor - Bug Bite - TM182
  (900, 90000, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Kleavor - Vacuum Wave - TM184
  (900, 90000, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Kleavor - Lunge - TM185
  (900, 90000, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Kleavor - Dual Wingbeat - TM197
  (900, 90000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5);
