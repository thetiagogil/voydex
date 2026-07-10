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
-- The Teal Mask learnset delta rows for species 251-300.
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
  -- Poochyena - Roar - TM172
  (261, 26100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Poochyena - Spite - TM177
  (261, 26100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Poochyena - Super Fang - TM183
  (261, 26100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Poochyena - Uproar - TM191
  (261, 26100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Poochyena - Lash Out - TM199
  (261, 26100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Mightyena - Roar - TM172
  (262, 26200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mightyena - Spite - TM177
  (262, 26200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Mightyena - Super Fang - TM183
  (262, 26200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Mightyena - Uproar - TM191
  (262, 26200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Mightyena - Lash Out - TM199
  (262, 26200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Lotad - Uproar - TM191
  (270, 27000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Lotad - Weather Ball - TM193
  (270, 27000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Lotad - Grassy Glide - TM194
  (270, 27000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Lombre - Knock Off - TM181
  (271, 27100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Lombre - Uproar - TM191
  (271, 27100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Lombre - Weather Ball - TM193
  (271, 27100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Lombre - Grassy Glide - TM194
  (271, 27100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Ludicolo - Knock Off - TM181
  (272, 27200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Ludicolo - Uproar - TM191
  (272, 27200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Ludicolo - Focus Punch - TM192
  (272, 27200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Ludicolo - Weather Ball - TM193
  (272, 27200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Ludicolo - Grassy Glide - TM194
  (272, 27200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Seedot - Spite - TM177
  (273, 27300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Seedot - Grassy Glide - TM194
  (273, 27300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Nuzleaf - Spite - TM177
  (274, 27400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Nuzleaf - Knock Off - TM181
  (274, 27400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Nuzleaf - Solar Blade - TM190
  (274, 27400, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Nuzleaf - Uproar - TM191
  (274, 27400, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Nuzleaf - Weather Ball - TM193
  (274, 27400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Nuzleaf - Grassy Glide - TM194
  (274, 27400, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 6),
  -- Nuzleaf - Lash Out - TM199
  (274, 27400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Shiftry - Spite - TM177
  (275, 27500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Shiftry - Knock Off - TM181
  (275, 27500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Shiftry - Vacuum Wave - TM184
  (275, 27500, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Shiftry - Solar Blade - TM190
  (275, 27500, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 4),
  -- Shiftry - Uproar - TM191
  (275, 27500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Shiftry - Weather Ball - TM193
  (275, 27500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Shiftry - Grassy Glide - TM194
  (275, 27500, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 7),
  -- Shiftry - Lash Out - TM199
  (275, 27500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Wingull - Knock Off - TM181
  (278, 27800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Wingull - Dual Wingbeat - TM197
  (278, 27800, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Pelipper - Knock Off - TM181
  (279, 27900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Pelipper - Weather Ball - TM193
  (279, 27900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Pelipper - Dual Wingbeat - TM197
  (279, 27900, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Ralts - Knock Off - TM181
  (280, 28000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Kirlia - Knock Off - TM181
  (281, 28100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Gardevoir - Gravity - TM178
  (282, 28200, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Gardevoir - Knock Off - TM181
  (282, 28200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Gardevoir - Vacuum Wave - TM184
  (282, 28200, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Gardevoir - Misty Explosion - TM201
  (282, 28200, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 4),
  -- Surskit - Haze - TM174
  (283, 28300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Surskit - Bug Bite - TM182
  (283, 28300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Surskit - Lunge - TM185
  (283, 28300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Masquerain - Haze - TM174
  (284, 28400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Masquerain - Bug Bite - TM182
  (284, 28400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Masquerain - Lunge - TM185
  (284, 28400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Masquerain - Weather Ball - TM193
  (284, 28400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Masquerain - Dual Wingbeat - TM197
  (284, 28400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Shroomish - Toxic - TM175
  (285, 28500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Breloom - Toxic - TM175
  (286, 28600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Breloom - Focus Punch - TM192
  (286, 28600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Slakoth - Focus Punch - TM192
  (287, 28700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Vigoroth - Roar - TM172
  (288, 28800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Vigoroth - Knock Off - TM181
  (288, 28800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Vigoroth - Uproar - TM191
  (288, 28800, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Vigoroth - Focus Punch - TM192
  (288, 28800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Vigoroth - Lash Out - TM199
  (288, 28800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Slaking - Roar - TM172
  (289, 28900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Slaking - Smack Down - TM179
  (289, 28900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Slaking - Knock Off - TM181
  (289, 28900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Slaking - High Horsepower - TM186
  (289, 28900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Slaking - Uproar - TM191
  (289, 28900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Slaking - Focus Punch - TM192
  (289, 28900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Slaking - Lash Out - TM199
  (289, 28900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Makuhita - Smack Down - TM179
  (296, 29600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Makuhita - Knock Off - TM181
  (296, 29600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Makuhita - Vacuum Wave - TM184
  (296, 29600, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Makuhita - Focus Punch - TM192
  (296, 29600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Hariyama - Smack Down - TM179
  (297, 29700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Hariyama - Knock Off - TM181
  (297, 29700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Hariyama - Vacuum Wave - TM184
  (297, 29700, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Hariyama - Focus Punch - TM192
  (297, 29700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Hariyama - Lash Out - TM199
  (297, 29700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Nosepass - Sand Tomb - TM176
  (299, 29900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Nosepass - Gravity - TM178
  (299, 29900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Nosepass - Smack Down - TM179
  (299, 29900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Nosepass - High Horsepower - TM186
  (299, 29900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4);
