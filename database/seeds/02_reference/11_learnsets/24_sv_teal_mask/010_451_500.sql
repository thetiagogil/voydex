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
-- The Teal Mask learnset delta rows for species 451-500.
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
  -- Croagunk - Toxic - TM175
  (453, 45300, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Croagunk - Spite - TM177
  (453, 45300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Croagunk - Knock Off - TM181
  (453, 45300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Croagunk - Super Fang - TM183
  (453, 45300, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Croagunk - Vacuum Wave - TM184
  (453, 45300, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 5),
  -- Croagunk - Focus Punch - TM192
  (453, 45300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Croagunk - Lash Out - TM199
  (453, 45300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Toxicroak - Toxic - TM175
  (454, 45400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Toxicroak - Spite - TM177
  (454, 45400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Toxicroak - Knock Off - TM181
  (454, 45400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Toxicroak - Super Fang - TM183
  (454, 45400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Toxicroak - Vacuum Wave - TM184
  (454, 45400, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 5),
  -- Toxicroak - Focus Punch - TM192
  (454, 45400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Toxicroak - Lash Out - TM199
  (454, 45400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Finneon - Flip Turn - TM196
  (456, 45600, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Lumineon - Flip Turn - TM196
  (457, 45700, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Snover - Icicle Spear - TM187
  (459, 45900, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Snover - Weather Ball - TM193
  (459, 45900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Snover - Grassy Glide - TM194
  (459, 45900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Abomasnow - Icicle Spear - TM187
  (460, 46000, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Abomasnow - Focus Punch - TM192
  (460, 46000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Abomasnow - Weather Ball - TM193
  (460, 46000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Abomasnow - Grassy Glide - TM194
  (460, 46000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Weavile - Spite - TM177
  (461, 46100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Weavile - Knock Off - TM181
  (461, 46100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Weavile - Icicle Spear - TM187
  (461, 46100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Weavile - Focus Punch - TM192
  (461, 46100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Weavile - Lash Out - TM199
  (461, 46100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Magnezone - Charge - TM173
  (462, 46200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Magnezone - Gravity - TM178
  (462, 46200, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Magnezone - Gyro Ball - TM180
  (462, 46200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Yanmega - Bug Bite - TM182
  (469, 46900, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Yanmega - Lunge - TM185
  (469, 46900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Yanmega - Uproar - TM191
  (469, 46900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Yanmega - Dual Wingbeat - TM197
  (469, 46900, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Leafeon - Roar - TM172
  (470, 47000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Leafeon - Knock Off - TM181
  (470, 47000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Leafeon - Solar Blade - TM190
  (470, 47000, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Leafeon - Weather Ball - TM193
  (470, 47000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Leafeon - Grassy Glide - TM194
  (470, 47000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Glaceon - Roar - TM172
  (471, 47100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Glaceon - Haze - TM174
  (471, 47100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Glaceon - Gravity - TM178
  (471, 47100, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Glaceon - Icicle Spear - TM187
  (471, 47100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 4),
  -- Glaceon - Weather Ball - TM193
  (471, 47100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Gliscor - Toxic - TM175
  (472, 47200, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Gliscor - Sand Tomb - TM176
  (472, 47200, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Gliscor - Knock Off - TM181
  (472, 47200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Gliscor - Lunge - TM185
  (472, 47200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Gliscor - High Horsepower - TM186
  (472, 47200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Gliscor - Dual Wingbeat - TM197
  (472, 47200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 6),
  -- Gliscor - Scale Shot - TM200
  (472, 47200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Mamoswine - Roar - TM172
  (473, 47300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mamoswine - Haze - TM174
  (473, 47300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Mamoswine - Sand Tomb - TM176
  (473, 47300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 3),
  -- Mamoswine - Smack Down - TM179
  (473, 47300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 4),
  -- Mamoswine - Knock Off - TM181
  (473, 47300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 5),
  -- Mamoswine - High Horsepower - TM186
  (473, 47300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Mamoswine - Icicle Spear - TM187
  (473, 47300, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 7),
  -- Gallade - Knock Off - TM181
  (475, 47500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Gallade - Vacuum Wave - TM184
  (475, 47500, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Gallade - Solar Blade - TM190
  (475, 47500, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Gallade - Focus Punch - TM192
  (475, 47500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Probopass - Sand Tomb - TM176
  (476, 47600, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Probopass - Gravity - TM178
  (476, 47600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Probopass - Smack Down - TM179
  (476, 47600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Probopass - High Horsepower - TM186
  (476, 47600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Dusknoir - Haze - TM174
  (477, 47700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dusknoir - Spite - TM177
  (477, 47700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Dusknoir - Gravity - TM178
  (477, 47700, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Dusknoir - Focus Punch - TM192
  (477, 47700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Dusknoir - Poltergeist - TM198
  (477, 47700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 5),
  -- Froslass - Haze - TM174
  (478, 47800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Froslass - Spite - TM177
  (478, 47800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Froslass - Icicle Spear - TM187
  (478, 47800, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Froslass - Weather Ball - TM193
  (478, 47800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Froslass - Poltergeist - TM198
  (478, 47800, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 5),
  -- Rotom - Charge - TM173
  (479, 47900, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Rotom - Spite - TM177
  (479, 47900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Rotom - Uproar - TM191
  (479, 47900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Rotom - Poltergeist - TM198
  (479, 47900, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Uxie - Knock Off - TM181
  (480, 48000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Mesprit - Knock Off - TM181
  (481, 48100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Azelf - Knock Off - TM181
  (482, 48200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Azelf - Uproar - TM191
  (482, 48200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Dialga - Roar - TM172
  (483, 48300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Dialga - Gravity - TM178
  (483, 48300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Dialga - Scale Shot - TM200
  (483, 48300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Palkia - Roar - TM172
  (484, 48400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Palkia - Gravity - TM178
  (484, 48400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Palkia - Dual Wingbeat - TM197
  (484, 48400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Palkia - Scale Shot - TM200
  (484, 48400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Heatran - Lunge - TM185
  (485, 48500, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Heatran - Heat Crash - TM189
  (485, 48500, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Heatran - Burning Jealousy - TM195
  (485, 48500, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Regigigas - Gravity - TM178
  (486, 48600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Regigigas - Smack Down - TM179
  (486, 48600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Regigigas - Knock Off - TM181
  (486, 48600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Regigigas - High Horsepower - TM186
  (486, 48600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Regigigas - Heat Crash - TM189
  (486, 48600, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Regigigas - Focus Punch - TM192
  (486, 48600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Giratina - Roar - TM172
  (487, 48700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Giratina - Spite - TM177
  (487, 48700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Giratina - Gravity - TM178
  (487, 48700, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Giratina - Dual Wingbeat - TM197
  (487, 48700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Giratina - Poltergeist - TM198
  (487, 48700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 5),
  -- Cresselia - Gravity - TM178
  (488, 48800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Phione - Haze - TM174
  (489, 48900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Phione - Knock Off - TM181
  (489, 48900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Phione - Scald - TM188
  (489, 48900, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Phione - Weather Ball - TM193
  (489, 48900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Phione - Flip Turn - TM196
  (489, 48900, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Manaphy - Haze - TM174
  (490, 49000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Manaphy - Knock Off - TM181
  (490, 49000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Manaphy - Scald - TM188
  (490, 49000, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Manaphy - Weather Ball - TM193
  (490, 49000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Manaphy - Flip Turn - TM196
  (490, 49000, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Darkrai - Haze - TM174
  (491, 49100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Darkrai - Spite - TM177
  (491, 49100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Darkrai - Knock Off - TM181
  (491, 49100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Darkrai - Focus Punch - TM192
  (491, 49100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Darkrai - Lash Out - TM199
  (491, 49100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Arceus - Roar - TM172
  (493, 49300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Arceus - Gravity - TM178
  (493, 49300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2);
