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
-- The Indigo Disk learnset delta rows for species 751-800.
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
  -- Dewpider - Bug Bite - TM182
  (751, 75100, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Dewpider - Lunge - TM185
  (751, 75100, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Dewpider - Endeavor - TM205
  (751, 75100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Dewpider - Skitter Smack - TM219
  (751, 75100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Araquanid - Bug Bite - TM182
  (752, 75200, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Araquanid - Lunge - TM185
  (752, 75200, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Araquanid - Endeavor - TM205
  (752, 75200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Araquanid - Skitter Smack - TM219
  (752, 75200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Fomantis - Petal Blizzard - TM206
  (753, 75300, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 1),
  -- Fomantis - Skitter Smack - TM219
  (753, 75300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Lurantis - Petal Blizzard - TM206
  (754, 75400, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 1),
  -- Lurantis - Skitter Smack - TM219
  (754, 75400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Salandit - Endeavor - TM205
  (757, 75700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Salandit - Temper Flare - TM207
  (757, 75700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Salandit - Sludge Wave - TM214
  (757, 75700, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Salandit - Skitter Smack - TM219
  (757, 75700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Salazzle - Endeavor - TM205
  (758, 75800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Salazzle - Temper Flare - TM207
  (758, 75800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Salazzle - Sludge Wave - TM214
  (758, 75800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Salazzle - Skitter Smack - TM219
  (758, 75800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Salazzle - Breaking Swipe - TM222
  (758, 75800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Salazzle - Dragon Cheer - TM226
  (758, 75800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Bounsweet - Endeavor - TM205
  (761, 76100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Steenee - Endeavor - TM205
  (762, 76200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Steenee - Petal Blizzard - TM206
  (762, 76200, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Steenee - Triple Axel - TM212
  (762, 76200, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Tsareena - Endeavor - TM205
  (763, 76300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Tsareena - Petal Blizzard - TM206
  (763, 76300, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Tsareena - Triple Axel - TM212
  (763, 76300, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Comfey - Knock Off - TM181
  (764, 76400, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Comfey - Grassy Glide - TM194
  (764, 76400, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Comfey - Pain Split - TM202
  (764, 76400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 3),
  -- Comfey - Psych Up - TM203
  (764, 76400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 4),
  -- Comfey - Petal Blizzard - TM206
  (764, 76400, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 5),
  -- Comfey - Alluring Voice - TM227
  (764, 76400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Oranguru - Pain Split - TM202
  (765, 76500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Oranguru - Psych Up - TM203
  (765, 76500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Oranguru - Endeavor - TM205
  (765, 76500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Oranguru - Future Sight - TM217
  (765, 76500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Oranguru - Expanding Force - TM218
  (765, 76500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Oranguru - Psychic Noise - TM228
  (765, 76500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Passimian - Pain Split - TM202
  (766, 76600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Passimian - Double-Edge - TM204
  (766, 76600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Passimian - Electroweb - TM211
  (766, 76600, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Passimian - Coaching - TM213
  (766, 76600, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Passimian - Curse - TM224
  (766, 76600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Passimian - Upper Hand - TM229
  (766, 76600, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Sandygast - Pain Split - TM202
  (769, 76900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Sandygast - Scorching Sands - TM215
  (769, 76900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Sandygast - Curse - TM224
  (769, 76900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Palossand - Pain Split - TM202
  (770, 77000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Palossand - Scorching Sands - TM215
  (770, 77000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Palossand - Curse - TM224
  (770, 77000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Minior - Gravity - TM178
  (774, 77400, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Minior - Gyro Ball - TM180
  (774, 77400, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Minior - Double-Edge - TM204
  (774, 77400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Minior - Endeavor - TM205
  (774, 77400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Minior - Scorching Sands - TM215
  (774, 77400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 5),
  -- Minior - Meteor Beam - TM220
  (774, 77400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 6),
  -- Komala - Psych Up - TM203
  (775, 77500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Komala - Double-Edge - TM204
  (775, 77500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Komala - Endeavor - TM205
  (775, 77500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Komala - Curse - TM224
  (775, 77500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Mimikyu - Pain Split - TM202
  (778, 77800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mimikyu - Psych Up - TM203
  (778, 77800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Mimikyu - Curse - TM224
  (778, 77800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Bruxish - Pain Split - TM202
  (779, 77900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Bruxish - Whirlpool - TM208
  (779, 77900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Bruxish - Expanding Force - TM218
  (779, 77900, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Bruxish - Psychic Noise - TM228
  (779, 77900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Jangmo-o - Breaking Swipe - TM222
  (782, 78200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 1),
  -- Jangmo-o - Dragon Cheer - TM226
  (782, 78200, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Hakamo-o - Double-Edge - TM204
  (783, 78300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Hakamo-o - Coaching - TM213
  (783, 78300, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Hakamo-o - Throat Chop - TM221
  (783, 78300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Hakamo-o - Breaking Swipe - TM222
  (783, 78300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Hakamo-o - Dragon Cheer - TM226
  (783, 78300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Hakamo-o - Upper Hand - TM229
  (783, 78300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Kommo-o - Double-Edge - TM204
  (784, 78400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Kommo-o - Endeavor - TM205
  (784, 78400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Kommo-o - Coaching - TM213
  (784, 78400, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Kommo-o - Throat Chop - TM221
  (784, 78400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Kommo-o - Breaking Swipe - TM222
  (784, 78400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Kommo-o - Metal Sound - TM223
  (784, 78400, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 6),
  -- Kommo-o - Dragon Cheer - TM226
  (784, 78400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 7),
  -- Kommo-o - Upper Hand - TM229
  (784, 78400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 8),
  -- Solgaleo - Psych Up - TM203
  (791, 79100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Solgaleo - Double-Edge - TM204
  (791, 79100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Solgaleo - Endeavor - TM205
  (791, 79100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Solgaleo - Future Sight - TM217
  (791, 79100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Solgaleo - Expanding Force - TM218
  (791, 79100, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Solgaleo - Meteor Beam - TM220
  (791, 79100, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 6),
  -- Solgaleo - Metal Sound - TM223
  (791, 79100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 7),
  -- Lunala - Psych Up - TM203
  (792, 79200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lunala - Future Sight - TM217
  (792, 79200, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Lunala - Expanding Force - TM218
  (792, 79200, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Lunala - Meteor Beam - TM220
  (792, 79200, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Necrozma - Future Sight - TM217
  (800, 80000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 1),
  -- Necrozma - Expanding Force - TM218
  (800, 80000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Necrozma - Meteor Beam - TM220
  (800, 80000, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Necrozma (Dusk Mane) - Future Sight - TM217
  (800, 80001, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 1),
  -- Necrozma (Dusk Mane) - Expanding Force - TM218
  (800, 80001, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Necrozma (Dusk Mane) - Meteor Beam - TM220
  (800, 80001, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Necrozma (Dawn Wings) - Future Sight - TM217
  (800, 80002, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 1),
  -- Necrozma (Dawn Wings) - Expanding Force - TM218
  (800, 80002, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Necrozma (Dawn Wings) - Meteor Beam - TM220
  (800, 80002, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3);
