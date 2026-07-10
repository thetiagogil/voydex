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
-- The Teal Mask learnset delta rows for species 901-950.
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
  -- Ursaluna - Roar - TM172
  (901, 90100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ursaluna - Smack Down - TM179
  (901, 90100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Ursaluna - High Horsepower - TM186
  (901, 90100, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Ursaluna - Uproar - TM191
  (901, 90100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Ursaluna - Focus Punch - TM192
  (901, 90100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Ursaluna (Bloodmoon) - Roar - TM172
  (901, 90101, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ursaluna (Bloodmoon) - Smack Down - TM179
  (901, 90101, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Ursaluna (Bloodmoon) - Vacuum Wave - TM184
  (901, 90101, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Ursaluna (Bloodmoon) - High Horsepower - TM186
  (901, 90101, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Ursaluna (Bloodmoon) - Uproar - TM191
  (901, 90101, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Ursaluna (Bloodmoon) - Focus Punch - TM192
  (901, 90101, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Basculegion - Spite - TM177
  (902, 90200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Basculegion - Uproar - TM191
  (902, 90200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Basculegion - Flip Turn - TM196
  (902, 90200, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Basculegion - Scale Shot - TM200
  (902, 90200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Sneasler - Toxic - TM175
  (903, 90300, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Sneasler - Spite - TM177
  (903, 90300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Sneasler - Vacuum Wave - TM184
  (903, 90300, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Sneasler - Focus Punch - TM192
  (903, 90300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sneasler - Lash Out - TM199
  (903, 90300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Overqwil - Haze - TM174
  (904, 90400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Overqwil - Toxic - TM175
  (904, 90400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Overqwil - Spite - TM177
  (904, 90400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Overqwil - Gyro Ball - TM180
  (904, 90400, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Overqwil - Lash Out - TM199
  (904, 90400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Overqwil - Scale Shot - TM200
  (904, 90400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Enamorus - Uproar - TM191
  (905, 90500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Enamorus - Weather Ball - TM193
  (905, 90500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Enamorus - Misty Explosion - TM201
  (905, 90500, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 3),
  -- Sprigatito - Grassy Glide - TM194
  (906, 90600, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Floragato - Grassy Glide - TM194
  (907, 90700, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Meowscarada - Knock Off - TM181
  (908, 90800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Meowscarada - Grassy Glide - TM194
  (908, 90800, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Meowscarada - Lash Out - TM199
  (908, 90800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Fuecoco - Roar - TM172
  (909, 90900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Crocalor - Roar - TM172
  (910, 91000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Skeledirge - Roar - TM172
  (911, 91100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Skeledirge - Heat Crash - TM189
  (911, 91100, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Skeledirge - Poltergeist - TM198
  (911, 91100, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Quaxwell - Flip Turn - TM196
  (913, 91300, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Quaquaval - Knock Off - TM181
  (914, 91400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Quaquaval - Flip Turn - TM196
  (914, 91400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Lechonk - Super Fang - TM183
  (915, 91500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Lechonk - Uproar - TM191
  (915, 91500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Oinkologne - Super Fang - TM183
  (916, 91600, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Oinkologne - High Horsepower - TM186
  (916, 91600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Oinkologne - Uproar - TM191
  (916, 91600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Oinkologne - Lash Out - TM199
  (916, 91600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Tarountula - Knock Off - TM181
  (917, 91700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Tarountula - Bug Bite - TM182
  (917, 91700, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Tarountula - Lunge - TM185
  (917, 91700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Spidops - Knock Off - TM181
  (918, 91800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Spidops - Bug Bite - TM182
  (918, 91800, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Spidops - Lunge - TM185
  (918, 91800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Nymble - Bug Bite - TM182
  (919, 91900, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Lokix - Spite - TM177
  (920, 92000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Lokix - Knock Off - TM181
  (920, 92000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Lokix - Bug Bite - TM182
  (920, 92000, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 3),
  -- Lokix - Lunge - TM185
  (920, 92000, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Lokix - Lash Out - TM199
  (920, 92000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Pawmi - Charge - TM173
  (921, 92100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pawmi - Super Fang - TM183
  (921, 92100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Pawmo - Charge - TM173
  (922, 92200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pawmo - Knock Off - TM181
  (922, 92200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Pawmo - Super Fang - TM183
  (922, 92200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Pawmo - Focus Punch - TM192
  (922, 92200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Pawmot - Charge - TM173
  (923, 92300, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pawmot - Knock Off - TM181
  (923, 92300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Pawmot - Super Fang - TM183
  (923, 92300, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Pawmot - Focus Punch - TM192
  (923, 92300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Tandemaus - Super Fang - TM183
  (924, 92400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Maushold - Super Fang - TM183
  (925, 92500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Fidough - Roar - TM172
  (926, 92600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Dachsbun - Roar - TM172
  (927, 92700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Smoliv - Solar Blade - TM190
  (928, 92800, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Smoliv - Weather Ball - TM193
  (928, 92800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Dolliv - Solar Blade - TM190
  (929, 92900, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Dolliv - Weather Ball - TM193
  (929, 92900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Arboliva - Solar Blade - TM190
  (930, 93000, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Arboliva - Weather Ball - TM193
  (930, 93000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Squawkabilly - Uproar - TM191
  (931, 93100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Squawkabilly - Dual Wingbeat - TM197
  (931, 93100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Squawkabilly - Lash Out - TM199
  (931, 93100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Nacli - Smack Down - TM179
  (932, 93200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Naclstack - Smack Down - TM179
  (933, 93300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Garganacl - Gravity - TM178
  (934, 93400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Garganacl - Smack Down - TM179
  (934, 93400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Garganacl - Focus Punch - TM192
  (934, 93400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Charcadet - Spite - TM177
  (935, 93500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Armarouge - Spite - TM177
  (936, 93600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Armarouge - Weather Ball - TM193
  (936, 93600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Ceruledge - Spite - TM177
  (937, 93700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Ceruledge - Vacuum Wave - TM184
  (937, 93700, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Ceruledge - Solar Blade - TM190
  (937, 93700, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Ceruledge - Poltergeist - TM198
  (937, 93700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Tadbulb - Charge - TM173
  (938, 93800, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Tadbulb - Weather Ball - TM193
  (938, 93800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Bellibolt - Charge - TM173
  (939, 93900, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Bellibolt - Toxic - TM175
  (939, 93900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Bellibolt - Weather Ball - TM193
  (939, 93900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Wattrel - Charge - TM173
  (940, 94000, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Wattrel - Uproar - TM191
  (940, 94000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Wattrel - Weather Ball - TM193
  (940, 94000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Wattrel - Dual Wingbeat - TM197
  (940, 94000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Kilowattrel - Charge - TM173
  (941, 94100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Kilowattrel - Uproar - TM191
  (941, 94100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Kilowattrel - Weather Ball - TM193
  (941, 94100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Kilowattrel - Dual Wingbeat - TM197
  (941, 94100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Maschiff - Roar - TM172
  (942, 94200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Maschiff - Lash Out - TM199
  (942, 94200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Mabosstiff - Roar - TM172
  (943, 94300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mabosstiff - Spite - TM177
  (943, 94300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Mabosstiff - Lash Out - TM199
  (943, 94300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Shroodle - Toxic - TM175
  (944, 94400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Shroodle - Knock Off - TM181
  (944, 94400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Shroodle - Super Fang - TM183
  (944, 94400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Grafaiai - Toxic - TM175
  (945, 94500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Grafaiai - Knock Off - TM181
  (945, 94500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Grafaiai - Super Fang - TM183
  (945, 94500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Bramblin - Spite - TM177
  (946, 94600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Bramblin - Grassy Glide - TM194
  (946, 94600, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Bramblin - Poltergeist - TM198
  (946, 94600, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Brambleghast - Spite - TM177
  (947, 94700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Brambleghast - Grassy Glide - TM194
  (947, 94700, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Brambleghast - Poltergeist - TM198
  (947, 94700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Toedscool - Toxic - TM175
  (948, 94800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Toedscool - Knock Off - TM181
  (948, 94800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Toedscool - Lunge - TM185
  (948, 94800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Toedscool - Grassy Glide - TM194
  (948, 94800, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Toedscruel - Toxic - TM175
  (949, 94900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Toedscruel - Knock Off - TM181
  (949, 94900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Toedscruel - Lunge - TM185
  (949, 94900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Toedscruel - Grassy Glide - TM194
  (949, 94900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Klawf - Smack Down - TM179
  (950, 95000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Klawf - Knock Off - TM181
  (950, 95000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Klawf - High Horsepower - TM186
  (950, 95000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3);
