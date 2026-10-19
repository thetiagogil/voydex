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
-- The Indigo Disk learnset delta rows for species 351-400.
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
  -- Shuppet - Pain Split - TM202
  (353, 35300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Shuppet - Psych Up - TM203
  (353, 35300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Shuppet - Skitter Smack - TM219
  (353, 35300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Shuppet - Curse - TM224
  (353, 35300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Banette - Pain Split - TM202
  (354, 35400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Banette - Psych Up - TM203
  (354, 35400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Banette - Skitter Smack - TM219
  (354, 35400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Banette - Throat Chop - TM221
  (354, 35400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Banette - Curse - TM224
  (354, 35400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Duskull - Pain Split - TM202
  (355, 35500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Duskull - Psych Up - TM203
  (355, 35500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Duskull - Future Sight - TM217
  (355, 35500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Duskull - Skitter Smack - TM219
  (355, 35500, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Duskull - Curse - TM224
  (355, 35500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Dusclops - Pain Split - TM202
  (356, 35600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Dusclops - Psych Up - TM203
  (356, 35600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Dusclops - Future Sight - TM217
  (356, 35600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Dusclops - Skitter Smack - TM219
  (356, 35600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Dusclops - Curse - TM224
  (356, 35600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Tropius - Double-Edge - TM204
  (357, 35700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tropius - Petal Blizzard - TM206
  (357, 35700, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Tropius - Curse - TM224
  (357, 35700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Chimecho - Psych Up - TM203
  (358, 35800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Chimecho - Double-Edge - TM204
  (358, 35800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Chimecho - Future Sight - TM217
  (358, 35800, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Chimecho - Expanding Force - TM218
  (358, 35800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Chimecho - Curse - TM224
  (358, 35800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Chimecho - Psychic Noise - TM228
  (358, 35800, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Luvdisc - Psych Up - TM203
  (370, 37000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Luvdisc - Endeavor - TM205
  (370, 37000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Luvdisc - Whirlpool - TM208
  (370, 37000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Bagon - Double-Edge - TM204
  (371, 37100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Bagon - Dragon Cheer - TM226
  (371, 37100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Shelgon - Double-Edge - TM204
  (372, 37200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Shelgon - Temper Flare - TM207
  (372, 37200, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Shelgon - Dragon Cheer - TM226
  (372, 37200, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Salamence - Double-Edge - TM204
  (373, 37300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Salamence - Temper Flare - TM207
  (373, 37300, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Salamence - Breaking Swipe - TM222
  (373, 37300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Salamence - Dragon Cheer - TM226
  (373, 37300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Metang - Gravity - TM178
  (375, 37500, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Metang - Gyro Ball - TM180
  (375, 37500, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Metang - Focus Punch - TM192
  (375, 37500, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Metang - Psych Up - TM203
  (375, 37500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 4),
  -- Metang - Double-Edge - TM204
  (375, 37500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Metang - Future Sight - TM217
  (375, 37500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 6),
  -- Metang - Expanding Force - TM218
  (375, 37500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 7),
  -- Metang - Meteor Beam - TM220
  (375, 37500, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 8),
  -- Metang - Hard Press - TM225
  (375, 37500, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 9),
  -- Metang - Psychic Noise - TM228
  (375, 37500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Metagross - Gravity - TM178
  (376, 37600, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Metagross - Gyro Ball - TM180
  (376, 37600, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Metagross - Knock Off - TM181
  (376, 37600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Metagross - Focus Punch - TM192
  (376, 37600, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Metagross - Psych Up - TM203
  (376, 37600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 5),
  -- Metagross - Double-Edge - TM204
  (376, 37600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Metagross - Future Sight - TM217
  (376, 37600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 7),
  -- Metagross - Expanding Force - TM218
  (376, 37600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 8),
  -- Metagross - Meteor Beam - TM220
  (376, 37600, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 9),
  -- Metagross - Hard Press - TM225
  (376, 37600, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 10),
  -- Metagross - Psychic Noise - TM228
  (376, 37600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 11),
  -- Regirock - Double-Edge - TM204
  (377, 37700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Regirock - Meteor Beam - TM220
  (377, 37700, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Regirock - Curse - TM224
  (377, 37700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Regirock - Hard Press - TM225
  (377, 37700, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Regice - Curse - TM224
  (378, 37800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 1),
  -- Registeel - Double-Edge - TM204
  (379, 37900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Registeel - Meteor Beam - TM220
  (379, 37900, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Registeel - Metal Sound - TM223
  (379, 37900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Registeel - Curse - TM224
  (379, 37900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Registeel - Hard Press - TM225
  (379, 37900, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Latias - Psych Up - TM203
  (380, 38000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Latias - Double-Edge - TM204
  (380, 38000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Latias - Whirlpool - TM208
  (380, 38000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Latias - Future Sight - TM217
  (380, 38000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Latias - Breaking Swipe - TM222
  (380, 38000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Latias - Dragon Cheer - TM226
  (380, 38000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Latias - Alluring Voice - TM227
  (380, 38000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 7),
  -- Latios - Psych Up - TM203
  (381, 38100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Latios - Double-Edge - TM204
  (381, 38100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Latios - Future Sight - TM217
  (381, 38100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Latios - Breaking Swipe - TM222
  (381, 38100, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Latios - Dragon Cheer - TM226
  (381, 38100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Latios - Psychic Noise - TM228
  (381, 38100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Kyogre - Double-Edge - TM204
  (382, 38200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Kyogre - Whirlpool - TM208
  (382, 38200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Kyogre - Muddy Water - TM209
  (382, 38200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Groudon - Double-Edge - TM204
  (383, 38300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Groudon - Scorching Sands - TM215
  (383, 38300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Rayquaza - Double-Edge - TM204
  (384, 38400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Rayquaza - Whirlpool - TM208
  (384, 38400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Rayquaza - Meteor Beam - TM220
  (384, 38400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Rayquaza - Breaking Swipe - TM222
  (384, 38400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Rayquaza - Dragon Cheer - TM226
  (384, 38400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Jirachi - Psych Up - TM203
  (385, 38500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Jirachi - Double-Edge - TM204
  (385, 38500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Jirachi - Future Sight - TM217
  (385, 38500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Jirachi - Expanding Force - TM218
  (385, 38500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Jirachi - Meteor Beam - TM220
  (385, 38500, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Jirachi - Metal Sound - TM223
  (385, 38500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 6),
  -- Jirachi - Psychic Noise - TM228
  (385, 38500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Deoxys - Pain Split - TM202
  (386, 38600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Deoxys - Psych Up - TM203
  (386, 38600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Deoxys - Future Sight - TM217
  (386, 38600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Deoxys - Expanding Force - TM218
  (386, 38600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Deoxys - Meteor Beam - TM220
  (386, 38600, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Deoxys - Throat Chop - TM221
  (386, 38600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Deoxys - Psychic Noise - TM228
  (386, 38600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Turtwig - Double-Edge - TM204
  (387, 38700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Turtwig - Curse - TM224
  (387, 38700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Grotle - Double-Edge - TM204
  (388, 38800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Grotle - Curse - TM224
  (388, 38800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Torterra - Double-Edge - TM204
  (389, 38900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Torterra - Scorching Sands - TM215
  (389, 38900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Torterra - Curse - TM224
  (389, 38900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Torterra - Hard Press - TM225
  (389, 38900, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Chimchar - Psych Up - TM203
  (390, 39000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Chimchar - Double-Edge - TM204
  (390, 39000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Chimchar - Endeavor - TM205
  (390, 39000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Chimchar - Temper Flare - TM207
  (390, 39000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Monferno - Psych Up - TM203
  (391, 39100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Monferno - Double-Edge - TM204
  (391, 39100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Monferno - Endeavor - TM205
  (391, 39100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Monferno - Temper Flare - TM207
  (391, 39100, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Monferno - Upper Hand - TM229
  (391, 39100, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Infernape - Psych Up - TM203
  (392, 39200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Infernape - Double-Edge - TM204
  (392, 39200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Infernape - Endeavor - TM205
  (392, 39200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Infernape - Temper Flare - TM207
  (392, 39200, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Infernape - Coaching - TM213
  (392, 39200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 5),
  -- Infernape - Scorching Sands - TM215
  (392, 39200, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 6),
  -- Infernape - Throat Chop - TM221
  (392, 39200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 7),
  -- Infernape - Upper Hand - TM229
  (392, 39200, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 8),
  -- Piplup - Psych Up - TM203
  (393, 39300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Piplup - Whirlpool - TM208
  (393, 39300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Piplup - Triple Axel - TM212
  (393, 39300, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Piplup - Feather Dance - TM216
  (393, 39300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Prinplup - Psych Up - TM203
  (394, 39400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Prinplup - Double-Edge - TM204
  (394, 39400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Prinplup - Whirlpool - TM208
  (394, 39400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Prinplup - Triple Axel - TM212
  (394, 39400, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Prinplup - Feather Dance - TM216
  (394, 39400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 5),
  -- Empoleon - Psych Up - TM203
  (395, 39500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Empoleon - Double-Edge - TM204
  (395, 39500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Empoleon - Whirlpool - TM208
  (395, 39500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Empoleon - Triple Axel - TM212
  (395, 39500, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Empoleon - Feather Dance - TM216
  (395, 39500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 5),
  -- Empoleon - Throat Chop - TM221
  (395, 39500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Empoleon - Metal Sound - TM223
  (395, 39500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 7),
  -- Starly - Double-Edge - TM204
  (396, 39600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Starly - Endeavor - TM205
  (396, 39600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Starly - Feather Dance - TM216
  (396, 39600, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Staravia - Double-Edge - TM204
  (397, 39700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Staravia - Endeavor - TM205
  (397, 39700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Staravia - Feather Dance - TM216
  (397, 39700, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Staraptor - Double-Edge - TM204
  (398, 39800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Staraptor - Endeavor - TM205
  (398, 39800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Staraptor - Feather Dance - TM216
  (398, 39800, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3);
