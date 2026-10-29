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
-- The Indigo Disk learnset delta rows for species 901-950.
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
  -- Ursaluna - Double-Edge - TM204
  (901, 90100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ursaluna - Supercell Slam - TM210
  (901, 90100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Ursaluna - Throat Chop - TM221
  (901, 90100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Ursaluna - Curse - TM224
  (901, 90100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Ursaluna - Hard Press - TM225
  (901, 90100, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Ursaluna (Bloodmoon) - Double-Edge - TM204
  (901, 90101, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ursaluna (Bloodmoon) - Hard Press - TM225
  (901, 90101, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 2),
  -- Basculegion - Pain Split - TM202
  (902, 90200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Basculegion - Double-Edge - TM204
  (902, 90200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Basculegion - Endeavor - TM205
  (902, 90200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Basculegion - Whirlpool - TM208
  (902, 90200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Basculegion - Muddy Water - TM209
  (902, 90200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Basculegion (Female) - Pain Split - TM202
  (902, 90201, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Basculegion (Female) - Double-Edge - TM204
  (902, 90201, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Basculegion (Female) - Endeavor - TM205
  (902, 90201, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Basculegion (Female) - Whirlpool - TM208
  (902, 90201, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Basculegion (Female) - Muddy Water - TM209
  (902, 90201, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Sneasler - Coaching - TM213
  (903, 90300, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Sneasler - Sludge Wave - TM214
  (903, 90300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Sneasler - Throat Chop - TM221
  (903, 90300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Sneasler - Upper Hand - TM229
  (903, 90300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Overqwil - Pain Split - TM202
  (904, 90400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Overqwil - Double-Edge - TM204
  (904, 90400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Overqwil - Sludge Wave - TM214
  (904, 90400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Overqwil - Throat Chop - TM221
  (904, 90400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Overqwil - Curse - TM224
  (904, 90400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Enamorus - Psych Up - TM203
  (905, 90500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Enamorus - Alluring Voice - TM227
  (905, 90500, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 2),
  -- Enamorus (Therian) - Psych Up - TM203
  (905, 90501, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Enamorus (Therian) - Alluring Voice - TM227
  (905, 90501, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 2),
  -- Sprigatito - Petal Blizzard - TM206
  (906, 90600, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 1),
  -- Floragato - Petal Blizzard - TM206
  (907, 90700, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 1),
  -- Meowscarada - Psych Up - TM203
  (908, 90800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Meowscarada - Petal Blizzard - TM206
  (908, 90800, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Meowscarada - Triple Axel - TM212
  (908, 90800, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Meowscarada - Throat Chop - TM221
  (908, 90800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Fuecoco - Temper Flare - TM207
  (909, 90900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Fuecoco - Curse - TM224
  (909, 90900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Crocalor - Temper Flare - TM207
  (910, 91000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Crocalor - Curse - TM224
  (910, 91000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Skeledirge - Temper Flare - TM207
  (911, 91100, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Skeledirge - Scorching Sands - TM215
  (911, 91100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Skeledirge - Curse - TM224
  (911, 91100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Skeledirge - Alluring Voice - TM227
  (911, 91100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Quaxly - Psych Up - TM203
  (912, 91200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Quaxly - Whirlpool - TM208
  (912, 91200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Quaxwell - Psych Up - TM203
  (913, 91300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Quaxwell - Whirlpool - TM208
  (913, 91300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Quaxwell - Triple Axel - TM212
  (913, 91300, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Quaxwell - Feather Dance - TM216
  (913, 91300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Quaquaval - Psych Up - TM203
  (914, 91400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Quaquaval - Endeavor - TM205
  (914, 91400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Quaquaval - Whirlpool - TM208
  (914, 91400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Quaquaval - Triple Axel - TM212
  (914, 91400, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Quaquaval - Coaching - TM213
  (914, 91400, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 5),
  -- Quaquaval - Feather Dance - TM216
  (914, 91400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 6),
  -- Quaquaval - Upper Hand - TM229
  (914, 91400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 7),
  -- Lechonk - Double-Edge - TM204
  (915, 91500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lechonk - Endeavor - TM205
  (915, 91500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lechonk - Curse - TM224
  (915, 91500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Oinkologne - Double-Edge - TM204
  (916, 91600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Oinkologne - Endeavor - TM205
  (916, 91600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Oinkologne - Curse - TM224
  (916, 91600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Oinkologne (Female) - Double-Edge - TM204
  (916, 91601, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Oinkologne (Female) - Endeavor - TM205
  (916, 91601, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Oinkologne (Female) - Curse - TM224
  (916, 91601, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Tarountula - Skitter Smack - TM219
  (917, 91700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Tarountula - Throat Chop - TM221
  (917, 91700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Spidops - Pain Split - TM202
  (918, 91800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Spidops - Electroweb - TM211
  (918, 91800, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Spidops - Skitter Smack - TM219
  (918, 91800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Spidops - Throat Chop - TM221
  (918, 91800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Spidops - Upper Hand - TM229
  (918, 91800, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Nymble - Skitter Smack - TM219
  (919, 91900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Lokix - Double-Edge - TM204
  (920, 92000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lokix - Skitter Smack - TM219
  (920, 92000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Lokix - Throat Chop - TM221
  (920, 92000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Pawmi - Electroweb - TM211
  (921, 92100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Pawmo - Electroweb - TM211
  (922, 92200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Pawmo - Coaching - TM213
  (922, 92200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Pawmo - Upper Hand - TM229
  (922, 92200, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Pawmot - Double-Edge - TM204
  (923, 92300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Pawmot - Supercell Slam - TM210
  (923, 92300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Pawmot - Electroweb - TM211
  (923, 92300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Pawmot - Coaching - TM213
  (923, 92300, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Pawmot - Throat Chop - TM221
  (923, 92300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Pawmot - Upper Hand - TM229
  (923, 92300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Tandemaus - Double-Edge - TM204
  (924, 92400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Maushold - Double-Edge - TM204
  (925, 92500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Fidough - Psych Up - TM203
  (926, 92600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Fidough - Double-Edge - TM204
  (926, 92600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Fidough - Endeavor - TM205
  (926, 92600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Fidough - Alluring Voice - TM227
  (926, 92600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Dachsbun - Psych Up - TM203
  (927, 92700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Dachsbun - Double-Edge - TM204
  (927, 92700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Dachsbun - Endeavor - TM205
  (927, 92700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Dachsbun - Alluring Voice - TM227
  (927, 92700, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Arboliva - Psych Up - TM203
  (930, 93000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Arboliva - Petal Blizzard - TM206
  (930, 93000, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Arboliva - Alluring Voice - TM227
  (930, 93000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Squawkabilly - Double-Edge - TM204
  (931, 93100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Squawkabilly - Endeavor - TM205
  (931, 93100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Squawkabilly - Feather Dance - TM216
  (931, 93100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Nacli - Meteor Beam - TM220
  (932, 93200, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 1),
  -- Nacli - Curse - TM224
  (932, 93200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Naclstack - Double-Edge - TM204
  (933, 93300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Naclstack - Meteor Beam - TM220
  (933, 93300, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Naclstack - Curse - TM224
  (933, 93300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Garganacl - Double-Edge - TM204
  (934, 93400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Garganacl - Meteor Beam - TM220
  (934, 93400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Garganacl - Curse - TM224
  (934, 93400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Garganacl - Hard Press - TM225
  (934, 93400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Armarouge - Psych Up - TM203
  (936, 93600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Armarouge - Scorching Sands - TM215
  (936, 93600, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Armarouge - Expanding Force - TM218
  (936, 93600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Armarouge - Meteor Beam - TM220
  (936, 93600, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Ceruledge - Psych Up - TM203
  (937, 93700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Ceruledge - Throat Chop - TM221
  (937, 93700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Ceruledge - Curse - TM224
  (937, 93700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Tadbulb - Muddy Water - TM209
  (938, 93800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Tadbulb - Electroweb - TM211
  (938, 93800, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Bellibolt - Muddy Water - TM209
  (939, 93900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Bellibolt - Supercell Slam - TM210
  (939, 93900, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Bellibolt - Electroweb - TM211
  (939, 93900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Wattrel - Endeavor - TM205
  (940, 94000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Wattrel - Electroweb - TM211
  (940, 94000, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Wattrel - Feather Dance - TM216
  (940, 94000, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Kilowattrel - Endeavor - TM205
  (941, 94100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kilowattrel - Supercell Slam - TM210
  (941, 94100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Kilowattrel - Electroweb - TM211
  (941, 94100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Kilowattrel - Feather Dance - TM216
  (941, 94100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Maschiff - Double-Edge - TM204
  (942, 94200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Maschiff - Endeavor - TM205
  (942, 94200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mabosstiff - Pain Split - TM202
  (943, 94300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mabosstiff - Double-Edge - TM204
  (943, 94300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Mabosstiff - Endeavor - TM205
  (943, 94300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Mabosstiff - Curse - TM224
  (943, 94300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Shroodle - Psych Up - TM203
  (944, 94400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Shroodle - Double-Edge - TM204
  (944, 94400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Shroodle - Endeavor - TM205
  (944, 94400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Shroodle - Sludge Wave - TM214
  (944, 94400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Shroodle - Skitter Smack - TM219
  (944, 94400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Shroodle - Throat Chop - TM221
  (944, 94400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Grafaiai - Psych Up - TM203
  (945, 94500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Grafaiai - Double-Edge - TM204
  (945, 94500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Grafaiai - Endeavor - TM205
  (945, 94500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Grafaiai - Sludge Wave - TM214
  (945, 94500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Grafaiai - Skitter Smack - TM219
  (945, 94500, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Grafaiai - Throat Chop - TM221
  (945, 94500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Bramblin - Pain Split - TM202
  (946, 94600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Bramblin - Curse - TM224
  (946, 94600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Brambleghast - Pain Split - TM202
  (947, 94700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Brambleghast - Skitter Smack - TM219
  (947, 94700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Brambleghast - Curse - TM224
  (947, 94700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Toedscool - Pain Split - TM202
  (948, 94800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Toedscruel - Pain Split - TM202
  (949, 94900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Toedscruel - Skitter Smack - TM219
  (949, 94900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Klawf - Endeavor - TM205
  (950, 95000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Klawf - Temper Flare - TM207
  (950, 95000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Klawf - Skitter Smack - TM219
  (950, 95000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Klawf - Meteor Beam - TM220
  (950, 95000, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Klawf - Throat Chop - TM221
  (950, 95000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5);
