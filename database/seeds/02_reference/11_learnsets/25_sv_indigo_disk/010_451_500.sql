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
-- The Indigo Disk learnset delta rows for species 451-500.
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
  -- Croagunk - Coaching - TM213
  (453, 45300, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Croagunk - Sludge Wave - TM214
  (453, 45300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Croagunk - Upper Hand - TM229
  (453, 45300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Toxicroak - Coaching - TM213
  (454, 45400, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Toxicroak - Sludge Wave - TM214
  (454, 45400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Toxicroak - Throat Chop - TM221
  (454, 45400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Toxicroak - Upper Hand - TM229
  (454, 45400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Finneon - Psych Up - TM203
  (456, 45600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Finneon - Whirlpool - TM208
  (456, 45600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Finneon - Alluring Voice - TM227
  (456, 45600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Lumineon - Psych Up - TM203
  (457, 45700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lumineon - Whirlpool - TM208
  (457, 45700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Lumineon - Alluring Voice - TM227
  (457, 45700, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Snover - Double-Edge - TM204
  (459, 45900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Snover - Curse - TM224
  (459, 45900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Abomasnow - Double-Edge - TM204
  (460, 46000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Abomasnow - Curse - TM224
  (460, 46000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Abomasnow - Hard Press - TM225
  (460, 46000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Weavile - Triple Axel - TM212
  (461, 46100, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 1),
  -- Weavile - Throat Chop - TM221
  (461, 46100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Weavile - Upper Hand - TM229
  (461, 46100, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Magnezone - Double-Edge - TM204
  (462, 46200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Magnezone - Supercell Slam - TM210
  (462, 46200, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Magnezone - Electroweb - TM211
  (462, 46200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Magnezone - Metal Sound - TM223
  (462, 46200, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Magnezone - Hard Press - TM225
  (462, 46200, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Rhyperior - Roar - TM172
  (464, 46400, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Rhyperior - Smack Down - TM179
  (464, 46400, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Rhyperior - High Horsepower - TM186
  (464, 46400, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Rhyperior - Heat Crash - TM189
  (464, 46400, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Rhyperior - Uproar - TM191
  (464, 46400, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Rhyperior - Focus Punch - TM192
  (464, 46400, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Rhyperior - Double-Edge - TM204
  (464, 46400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Rhyperior - Endeavor - TM205
  (464, 46400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Rhyperior - Temper Flare - TM207
  (464, 46400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Rhyperior - Supercell Slam - TM210
  (464, 46400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 10),
  -- Rhyperior - Scorching Sands - TM215
  (464, 46400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 11),
  -- Rhyperior - Meteor Beam - TM220
  (464, 46400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 12),
  -- Rhyperior - Breaking Swipe - TM222
  (464, 46400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 13),
  -- Rhyperior - Curse - TM224
  (464, 46400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 14),
  -- Electivire - Charge - TM173
  (466, 46600, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Electivire - Knock Off - TM181
  (466, 46600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Electivire - Uproar - TM191
  (466, 46600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Electivire - Focus Punch - TM192
  (466, 46600, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Electivire - Weather Ball - TM193
  (466, 46600, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Electivire - Double-Edge - TM204
  (466, 46600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Electivire - Supercell Slam - TM210
  (466, 46600, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 7),
  -- Electivire - Electroweb - TM211
  (466, 46600, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 8),
  -- Electivire - Metal Sound - TM223
  (466, 46600, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 9),
  -- Magmortar - Roar - TM172
  (467, 46700, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Magmortar - Knock Off - TM181
  (467, 46700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Magmortar - Heat Crash - TM189
  (467, 46700, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Magmortar - Uproar - TM191
  (467, 46700, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Magmortar - Focus Punch - TM192
  (467, 46700, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Magmortar - Weather Ball - TM193
  (467, 46700, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Magmortar - Burning Jealousy - TM195
  (467, 46700, 807, 25, NULL, 2, NULL, NULL, 24002195, NULL, 7),
  -- Magmortar - Double-Edge - TM204
  (467, 46700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 8),
  -- Magmortar - Temper Flare - TM207
  (467, 46700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Magmortar - Scorching Sands - TM215
  (467, 46700, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 10),
  -- Magmortar - Curse - TM224
  (467, 46700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 11),
  -- Yanmega - Psych Up - TM203
  (469, 46900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Yanmega - Double-Edge - TM204
  (469, 46900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Yanmega - Skitter Smack - TM219
  (469, 46900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Yanmega - Psychic Noise - TM228
  (469, 46900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Leafeon - Double-Edge - TM204
  (470, 47000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Leafeon - Curse - TM224
  (470, 47000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Leafeon - Alluring Voice - TM227
  (470, 47000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Glaceon - Double-Edge - TM204
  (471, 47100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Glaceon - Triple Axel - TM212
  (471, 47100, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 2),
  -- Glaceon - Curse - TM224
  (471, 47100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Glaceon - Alluring Voice - TM227
  (471, 47100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Gliscor - Double-Edge - TM204
  (472, 47200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gliscor - Skitter Smack - TM219
  (472, 47200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Gliscor - Throat Chop - TM221
  (472, 47200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Gliscor - Breaking Swipe - TM222
  (472, 47200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Mamoswine - Double-Edge - TM204
  (473, 47300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mamoswine - Endeavor - TM205
  (473, 47300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mamoswine - Throat Chop - TM221
  (473, 47300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Mamoswine - Curse - TM224
  (473, 47300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Mamoswine - Hard Press - TM225
  (473, 47300, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Porygon-Z - Charge - TM173
  (474, 47400, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Porygon-Z - Gravity - TM178
  (474, 47400, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Porygon-Z - Uproar - TM191
  (474, 47400, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Porygon-Z - Double-Edge - TM204
  (474, 47400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Porygon-Z - Electroweb - TM211
  (474, 47400, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 5),
  -- Gallade - Pain Split - TM202
  (475, 47500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gallade - Psych Up - TM203
  (475, 47500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Gallade - Triple Axel - TM212
  (475, 47500, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Gallade - Coaching - TM213
  (475, 47500, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Gallade - Future Sight - TM217
  (475, 47500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 5),
  -- Gallade - Expanding Force - TM218
  (475, 47500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 6),
  -- Gallade - Throat Chop - TM221
  (475, 47500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 7),
  -- Gallade - Alluring Voice - TM227
  (475, 47500, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 8),
  -- Gallade - Upper Hand - TM229
  (475, 47500, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 9),
  -- Probopass - Pain Split - TM202
  (476, 47600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Probopass - Double-Edge - TM204
  (476, 47600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Probopass - Supercell Slam - TM210
  (476, 47600, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Probopass - Meteor Beam - TM220
  (476, 47600, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Probopass - Metal Sound - TM223
  (476, 47600, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Probopass - Curse - TM224
  (476, 47600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Probopass - Hard Press - TM225
  (476, 47600, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 7),
  -- Dusknoir - Pain Split - TM202
  (477, 47700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Dusknoir - Psych Up - TM203
  (477, 47700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Dusknoir - Future Sight - TM217
  (477, 47700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Dusknoir - Skitter Smack - TM219
  (477, 47700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Dusknoir - Curse - TM224
  (477, 47700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Dusknoir - Hard Press - TM225
  (477, 47700, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 6),
  -- Froslass - Pain Split - TM202
  (478, 47800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Froslass - Psych Up - TM203
  (478, 47800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Froslass - Triple Axel - TM212
  (478, 47800, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Froslass - Curse - TM224
  (478, 47800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Rotom - Pain Split - TM202
  (479, 47900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Rotom - Electroweb - TM211
  (479, 47900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Uxie - Pain Split - TM202
  (480, 48000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Uxie - Psych Up - TM203
  (480, 48000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Uxie - Future Sight - TM217
  (480, 48000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Uxie - Expanding Force - TM218
  (480, 48000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Uxie - Psychic Noise - TM228
  (480, 48000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Mesprit - Pain Split - TM202
  (481, 48100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mesprit - Psych Up - TM203
  (481, 48100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Mesprit - Double-Edge - TM204
  (481, 48100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Mesprit - Future Sight - TM217
  (481, 48100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Mesprit - Expanding Force - TM218
  (481, 48100, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Mesprit - Psychic Noise - TM228
  (481, 48100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Azelf - Psych Up - TM203
  (482, 48200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Azelf - Double-Edge - TM204
  (482, 48200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Azelf - Endeavor - TM205
  (482, 48200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Azelf - Future Sight - TM217
  (482, 48200, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Azelf - Expanding Force - TM218
  (482, 48200, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Dialga - Psych Up - TM203
  (483, 48300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Dialga - Breaking Swipe - TM222
  (483, 48300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Dialga - Metal Sound - TM223
  (483, 48300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Palkia - Psych Up - TM203
  (484, 48400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Palkia - Whirlpool - TM208
  (484, 48400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Palkia - Breaking Swipe - TM222
  (484, 48400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Heatran - Scorching Sands - TM215
  (485, 48500, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 1),
  -- Heatran - Metal Sound - TM223
  (485, 48500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Heatran - Hard Press - TM225
  (485, 48500, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Regigigas - Double-Edge - TM204
  (486, 48600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Regigigas - Hard Press - TM225
  (486, 48600, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 2),
  -- Giratina - Pain Split - TM202
  (487, 48700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Giratina - Skitter Smack - TM219
  (487, 48700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Giratina - Breaking Swipe - TM222
  (487, 48700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Giratina - Curse - TM224
  (487, 48700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Cresselia - Psych Up - TM203
  (488, 48800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Cresselia - Future Sight - TM217
  (488, 48800, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Cresselia - Expanding Force - TM218
  (488, 48800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Phione - Psych Up - TM203
  (489, 48900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Phione - Whirlpool - TM208
  (489, 48900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Phione - Alluring Voice - TM227
  (489, 48900, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Manaphy - Psych Up - TM203
  (490, 49000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Manaphy - Whirlpool - TM208
  (490, 49000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Manaphy - Alluring Voice - TM227
  (490, 49000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Darkrai - Psych Up - TM203
  (491, 49100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Darkrai - Throat Chop - TM221
  (491, 49100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Darkrai - Curse - TM224
  (491, 49100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Arceus - Psych Up - TM203
  (493, 49300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Arceus - Double-Edge - TM204
  (493, 49300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Arceus - Supercell Slam - TM210
  (493, 49300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Arceus - Scorching Sands - TM215
  (493, 49300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Arceus - Future Sight - TM217
  (493, 49300, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 5),
  -- Arceus - Meteor Beam - TM220
  (493, 49300, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 6),
  -- Snivy - Knock Off - TM181
  (495, 49500, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Snivy - Grassy Glide - TM194
  (495, 49500, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Snivy - Double-Edge - TM204
  (495, 49500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Snivy - Petal Blizzard - TM206
  (495, 49500, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 4),
  -- Servine - Knock Off - TM181
  (496, 49600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Servine - Grassy Glide - TM194
  (496, 49600, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Servine - Double-Edge - TM204
  (496, 49600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Servine - Petal Blizzard - TM206
  (496, 49600, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 4),
  -- Serperior - Knock Off - TM181
  (497, 49700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Serperior - Grassy Glide - TM194
  (497, 49700, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Serperior - Scale Shot - TM200
  (497, 49700, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Serperior - Double-Edge - TM204
  (497, 49700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Serperior - Petal Blizzard - TM206
  (497, 49700, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 5),
  -- Serperior - Breaking Swipe - TM222
  (497, 49700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Tepig - Roar - TM172
  (498, 49800, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Tepig - Gyro Ball - TM180
  (498, 49800, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Tepig - Heat Crash - TM189
  (498, 49800, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Tepig - Double-Edge - TM204
  (498, 49800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Tepig - Endeavor - TM205
  (498, 49800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Tepig - Temper Flare - TM207
  (498, 49800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 6),
  -- Tepig - Curse - TM224
  (498, 49800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Pignite - Roar - TM172
  (499, 49900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Pignite - Gyro Ball - TM180
  (499, 49900, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Pignite - Knock Off - TM181
  (499, 49900, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Pignite - High Horsepower - TM186
  (499, 49900, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Pignite - Heat Crash - TM189
  (499, 49900, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Pignite - Focus Punch - TM192
  (499, 49900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Pignite - Double-Edge - TM204
  (499, 49900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Pignite - Endeavor - TM205
  (499, 49900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Pignite - Temper Flare - TM207
  (499, 49900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Pignite - Coaching - TM213
  (499, 49900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 10),
  -- Pignite - Curse - TM224
  (499, 49900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 11),
  -- Emboar - Roar - TM172
  (500, 50000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Emboar - Smack Down - TM179
  (500, 50000, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Emboar - Gyro Ball - TM180
  (500, 50000, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Emboar - Knock Off - TM181
  (500, 50000, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Emboar - High Horsepower - TM186
  (500, 50000, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Emboar - Scald - TM188
  (500, 50000, 503, 25, NULL, 2, NULL, NULL, 24002188, NULL, 6),
  -- Emboar - Heat Crash - TM189
  (500, 50000, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 7),
  -- Emboar - Focus Punch - TM192
  (500, 50000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 8),
  -- Emboar - Double-Edge - TM204
  (500, 50000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 9),
  -- Emboar - Endeavor - TM205
  (500, 50000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 10),
  -- Emboar - Temper Flare - TM207
  (500, 50000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 11),
  -- Emboar - Coaching - TM213
  (500, 50000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 12),
  -- Emboar - Curse - TM224
  (500, 50000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 13),
  -- Emboar - Hard Press - TM225
  (500, 50000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 14);
