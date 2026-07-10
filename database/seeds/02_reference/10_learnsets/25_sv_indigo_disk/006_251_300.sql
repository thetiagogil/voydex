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
-- The Indigo Disk learnset delta rows for species 251-300.
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
  -- Treecko - Grassy Glide - TM194
  (252, 25200, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Treecko - Endeavor - TM205
  (252, 25200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Treecko - Breaking Swipe - TM222
  (252, 25200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Treecko - Upper Hand - TM229
  (252, 25200, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Grovyle - Vacuum Wave - TM184
  (253, 25300, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Grovyle - Focus Punch - TM192
  (253, 25300, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Grovyle - Grassy Glide - TM194
  (253, 25300, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Grovyle - Endeavor - TM205
  (253, 25300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Grovyle - Breaking Swipe - TM222
  (253, 25300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Grovyle - Upper Hand - TM229
  (253, 25300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Sceptile - Roar - TM172
  (254, 25400, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Sceptile - Vacuum Wave - TM184
  (254, 25400, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Sceptile - Solar Blade - TM190
  (254, 25400, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Sceptile - Focus Punch - TM192
  (254, 25400, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sceptile - Grassy Glide - TM194
  (254, 25400, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Sceptile - Scale Shot - TM200
  (254, 25400, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Sceptile - Double-Edge - TM204
  (254, 25400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Sceptile - Endeavor - TM205
  (254, 25400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Sceptile - Throat Chop - TM221
  (254, 25400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 9),
  -- Sceptile - Breaking Swipe - TM222
  (254, 25400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 10),
  -- Sceptile - Dragon Cheer - TM226
  (254, 25400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 11),
  -- Sceptile - Upper Hand - TM229
  (254, 25400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 12),
  -- Torchic - Uproar - TM191
  (255, 25500, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Torchic - Double-Edge - TM204
  (255, 25500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Torchic - Temper Flare - TM207
  (255, 25500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Torchic - Feather Dance - TM216
  (255, 25500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Torchic - Curse - TM224
  (255, 25500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Combusken - Vacuum Wave - TM184
  (256, 25600, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Combusken - Uproar - TM191
  (256, 25600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Combusken - Focus Punch - TM192
  (256, 25600, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Combusken - Double-Edge - TM204
  (256, 25600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Combusken - Temper Flare - TM207
  (256, 25600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 5),
  -- Combusken - Coaching - TM213
  (256, 25600, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 6),
  -- Combusken - Feather Dance - TM216
  (256, 25600, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 7),
  -- Combusken - Curse - TM224
  (256, 25600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Blaziken - Roar - TM172
  (257, 25700, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Blaziken - Knock Off - TM181
  (257, 25700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Blaziken - Vacuum Wave - TM184
  (257, 25700, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Blaziken - Heat Crash - TM189
  (257, 25700, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Blaziken - Uproar - TM191
  (257, 25700, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Blaziken - Focus Punch - TM192
  (257, 25700, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Blaziken - Double-Edge - TM204
  (257, 25700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Blaziken - Temper Flare - TM207
  (257, 25700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 8),
  -- Blaziken - Coaching - TM213
  (257, 25700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 9),
  -- Blaziken - Scorching Sands - TM215
  (257, 25700, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 10),
  -- Blaziken - Feather Dance - TM216
  (257, 25700, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 11),
  -- Blaziken - Curse - TM224
  (257, 25700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 12),
  -- Blaziken - Upper Hand - TM229
  (257, 25700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 13),
  -- Mudkip - Roar - TM172
  (258, 25800, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mudkip - Uproar - TM191
  (258, 25800, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Mudkip - Double-Edge - TM204
  (258, 25800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Mudkip - Endeavor - TM205
  (258, 25800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Mudkip - Whirlpool - TM208
  (258, 25800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 5),
  -- Mudkip - Muddy Water - TM209
  (258, 25800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 6),
  -- Mudkip - Sludge Wave - TM214
  (258, 25800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 7),
  -- Mudkip - Curse - TM224
  (258, 25800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Marshtomp - Roar - TM172
  (259, 25900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Marshtomp - Sand Tomb - TM176
  (259, 25900, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Marshtomp - Uproar - TM191
  (259, 25900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Marshtomp - Focus Punch - TM192
  (259, 25900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Marshtomp - Double-Edge - TM204
  (259, 25900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Marshtomp - Endeavor - TM205
  (259, 25900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Marshtomp - Whirlpool - TM208
  (259, 25900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Marshtomp - Muddy Water - TM209
  (259, 25900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Marshtomp - Sludge Wave - TM214
  (259, 25900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 9),
  -- Marshtomp - Curse - TM224
  (259, 25900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Swampert - Roar - TM172
  (260, 26000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Swampert - Sand Tomb - TM176
  (260, 26000, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Swampert - Smack Down - TM179
  (260, 26000, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Swampert - Knock Off - TM181
  (260, 26000, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Swampert - High Horsepower - TM186
  (260, 26000, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Swampert - Uproar - TM191
  (260, 26000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 6),
  -- Swampert - Focus Punch - TM192
  (260, 26000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Swampert - Weather Ball - TM193
  (260, 26000, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 8),
  -- Swampert - Flip Turn - TM196
  (260, 26000, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 9),
  -- Swampert - Double-Edge - TM204
  (260, 26000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 10),
  -- Swampert - Endeavor - TM205
  (260, 26000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 11),
  -- Swampert - Whirlpool - TM208
  (260, 26000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 12),
  -- Swampert - Muddy Water - TM209
  (260, 26000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 13),
  -- Swampert - Sludge Wave - TM214
  (260, 26000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 14),
  -- Swampert - Curse - TM224
  (260, 26000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 15),
  -- Swampert - Hard Press - TM225
  (260, 26000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 16),
  -- Poochyena - Double-Edge - TM204
  (261, 26100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Poochyena - Endeavor - TM205
  (261, 26100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mightyena - Double-Edge - TM204
  (262, 26200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mightyena - Endeavor - TM205
  (262, 26200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mightyena - Throat Chop - TM221
  (262, 26200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Lotad - Double-Edge - TM204
  (270, 27000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lotad - Whirlpool - TM208
  (270, 27000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Lotad - Muddy Water - TM209
  (270, 27000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Lombre - Double-Edge - TM204
  (271, 27100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lombre - Whirlpool - TM208
  (271, 27100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Lombre - Muddy Water - TM209
  (271, 27100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Ludicolo - Double-Edge - TM204
  (272, 27200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ludicolo - Whirlpool - TM208
  (272, 27200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Ludicolo - Muddy Water - TM209
  (272, 27200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Seedot - Double-Edge - TM204
  (273, 27300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Seedot - Endeavor - TM205
  (273, 27300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Seedot - Curse - TM224
  (273, 27300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Nuzleaf - Psych Up - TM203
  (274, 27400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Nuzleaf - Double-Edge - TM204
  (274, 27400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Nuzleaf - Endeavor - TM205
  (274, 27400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Nuzleaf - Curse - TM224
  (274, 27400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Shiftry - Psych Up - TM203
  (275, 27500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Shiftry - Double-Edge - TM204
  (275, 27500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Shiftry - Endeavor - TM205
  (275, 27500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Shiftry - Petal Blizzard - TM206
  (275, 27500, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 4),
  -- Shiftry - Throat Chop - TM221
  (275, 27500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Shiftry - Curse - TM224
  (275, 27500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Shiftry - Upper Hand - TM229
  (275, 27500, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 7),
  -- Wingull - Whirlpool - TM208
  (278, 27800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Wingull - Muddy Water - TM209
  (278, 27800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Wingull - Feather Dance - TM216
  (278, 27800, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Pelipper - Whirlpool - TM208
  (279, 27900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Pelipper - Muddy Water - TM209
  (279, 27900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Pelipper - Feather Dance - TM216
  (279, 27900, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Ralts - Pain Split - TM202
  (280, 28000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Ralts - Psych Up - TM203
  (280, 28000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Ralts - Future Sight - TM217
  (280, 28000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Ralts - Expanding Force - TM218
  (280, 28000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Ralts - Alluring Voice - TM227
  (280, 28000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Kirlia - Pain Split - TM202
  (281, 28100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Kirlia - Psych Up - TM203
  (281, 28100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Kirlia - Triple Axel - TM212
  (281, 28100, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Kirlia - Future Sight - TM217
  (281, 28100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Kirlia - Expanding Force - TM218
  (281, 28100, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Kirlia - Alluring Voice - TM227
  (281, 28100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Gardevoir - Pain Split - TM202
  (282, 28200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gardevoir - Psych Up - TM203
  (282, 28200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Gardevoir - Triple Axel - TM212
  (282, 28200, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Gardevoir - Future Sight - TM217
  (282, 28200, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Gardevoir - Expanding Force - TM218
  (282, 28200, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Gardevoir - Alluring Voice - TM227
  (282, 28200, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Gardevoir - Psychic Noise - TM228
  (282, 28200, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Surskit - Psych Up - TM203
  (283, 28300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Surskit - Skitter Smack - TM219
  (283, 28300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Masquerain - Psych Up - TM203
  (284, 28400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Masquerain - Skitter Smack - TM219
  (284, 28400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Slakoth - Throat Chop - TM221
  (287, 28700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Slakoth - Curse - TM224
  (287, 28700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Vigoroth - Double-Edge - TM204
  (288, 28800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Vigoroth - Endeavor - TM205
  (288, 28800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Vigoroth - Throat Chop - TM221
  (288, 28800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Vigoroth - Curse - TM224
  (288, 28800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Slaking - Double-Edge - TM204
  (289, 28900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Slaking - Endeavor - TM205
  (289, 28900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Slaking - Throat Chop - TM221
  (289, 28900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Slaking - Curse - TM224
  (289, 28900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Slaking - Hard Press - TM225
  (289, 28900, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Makuhita - Double-Edge - TM204
  (296, 29600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Makuhita - Coaching - TM213
  (296, 29600, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Makuhita - Upper Hand - TM229
  (296, 29600, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Hariyama - Double-Edge - TM204
  (297, 29700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Hariyama - Coaching - TM213
  (297, 29700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Hariyama - Throat Chop - TM221
  (297, 29700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Hariyama - Curse - TM224
  (297, 29700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Hariyama - Upper Hand - TM229
  (297, 29700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Azurill - Alluring Voice - TM227
  (298, 29800, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 1),
  -- Nosepass - Pain Split - TM202
  (299, 29900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Nosepass - Double-Edge - TM204
  (299, 29900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Nosepass - Meteor Beam - TM220
  (299, 29900, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Nosepass - Curse - TM224
  (299, 29900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4);
