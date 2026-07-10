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
-- The Teal Mask learnset delta rows for species 601-650.
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
  -- Tynamo - Charge - TM173
  (602, 60200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Tynamo - Knock Off - TM181
  (602, 60200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Eelektrik - Charge - TM173
  (603, 60300, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Eelektrik - Knock Off - TM181
  (603, 60300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Eelektrik - Super Fang - TM183
  (603, 60300, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Eelektrik - Lunge - TM185
  (603, 60300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Eelektross - Charge - TM173
  (604, 60400, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Eelektross - Knock Off - TM181
  (604, 60400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Eelektross - Super Fang - TM183
  (604, 60400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Eelektross - Lunge - TM185
  (604, 60400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Eelektross - Focus Punch - TM192
  (604, 60400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Litwick - Haze - TM174
  (607, 60700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Litwick - Spite - TM177
  (607, 60700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Litwick - Burning Jealousy - TM195
  (607, 60700, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Litwick - Poltergeist - TM198
  (607, 60700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Lampent - Haze - TM174
  (608, 60800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Lampent - Spite - TM177
  (608, 60800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Lampent - Burning Jealousy - TM195
  (608, 60800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Lampent - Poltergeist - TM198
  (608, 60800, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Lampent - Lash Out - TM199
  (608, 60800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Chandelure - Haze - TM174
  (609, 60900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Chandelure - Spite - TM177
  (609, 60900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Chandelure - Burning Jealousy - TM195
  (609, 60900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Chandelure - Poltergeist - TM198
  (609, 60900, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Chandelure - Lash Out - TM199
  (609, 60900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Axew - Roar - TM172
  (610, 61000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Axew - Scale Shot - TM200
  (610, 61000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Fraxure - Roar - TM172
  (611, 61100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Fraxure - Scale Shot - TM200
  (611, 61100, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Haxorus - Roar - TM172
  (612, 61200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Haxorus - Scale Shot - TM200
  (612, 61200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Cubchoo - Icicle Spear - TM187
  (613, 61300, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Cubchoo - Focus Punch - TM192
  (613, 61300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Beartic - Roar - TM172
  (614, 61400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Beartic - Icicle Spear - TM187
  (614, 61400, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Beartic - Focus Punch - TM192
  (614, 61400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Cryogonal - Haze - TM174
  (615, 61500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Cryogonal - Icicle Spear - TM187
  (615, 61500, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Mienfoo - Knock Off - TM181
  (619, 61900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Mienfoo - Focus Punch - TM192
  (619, 61900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Mienshao - Knock Off - TM181
  (620, 62000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Mienshao - Vacuum Wave - TM184
  (620, 62000, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Mienshao - Focus Punch - TM192
  (620, 62000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Pawniard - Spite - TM177
  (624, 62400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Pawniard - Lash Out - TM199
  (624, 62400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Bisharp - Spite - TM177
  (625, 62500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Bisharp - Lash Out - TM199
  (625, 62500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Rufflet - Dual Wingbeat - TM197
  (627, 62700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Braviary - Dual Wingbeat - TM197
  (628, 62800, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Braviary (Hisuian Braviary) - Vacuum Wave - TM184
  (628, 62801, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Braviary (Hisuian Braviary) - Dual Wingbeat - TM197
  (628, 62801, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Vullaby - Toxic - TM175
  (629, 62900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Vullaby - Spite - TM177
  (629, 62900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Vullaby - Knock Off - TM181
  (629, 62900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Vullaby - Uproar - TM191
  (629, 62900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Vullaby - Dual Wingbeat - TM197
  (629, 62900, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Vullaby - Lash Out - TM199
  (629, 62900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Mandibuzz - Toxic - TM175
  (630, 63000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Mandibuzz - Spite - TM177
  (630, 63000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Mandibuzz - Knock Off - TM181
  (630, 63000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Mandibuzz - Uproar - TM191
  (630, 63000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Mandibuzz - Dual Wingbeat - TM197
  (630, 63000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Mandibuzz - Lash Out - TM199
  (630, 63000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Deino - Roar - TM172
  (633, 63300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Deino - Spite - TM177
  (633, 63300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Zweilous - Roar - TM172
  (634, 63400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zweilous - Spite - TM177
  (634, 63400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Zweilous - Lash Out - TM199
  (634, 63400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Hydreigon - Roar - TM172
  (635, 63500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Hydreigon - Spite - TM177
  (635, 63500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Hydreigon - Dual Wingbeat - TM197
  (635, 63500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Hydreigon - Lash Out - TM199
  (635, 63500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Hydreigon - Scale Shot - TM200
  (635, 63500, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Larvesta - Bug Bite - TM182
  (636, 63600, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Larvesta - Lunge - TM185
  (636, 63600, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Volcarona - Bug Bite - TM182
  (637, 63700, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Volcarona - Lunge - TM185
  (637, 63700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Volcarona - Dual Wingbeat - TM197
  (637, 63700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Cobalion - Roar - TM172
  (638, 63800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Cobalion - Vacuum Wave - TM184
  (638, 63800, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Terrakion - Roar - TM172
  (639, 63900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Terrakion - Smack Down - TM179
  (639, 63900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Terrakion - High Horsepower - TM186
  (639, 63900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Virizion - Roar - TM172
  (640, 64000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Virizion - Vacuum Wave - TM184
  (640, 64000, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Virizion - Solar Blade - TM190
  (640, 64000, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Virizion - Grassy Glide - TM194
  (640, 64000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Tornadus - Smack Down - TM179
  (641, 64100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Tornadus - Knock Off - TM181
  (641, 64100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Tornadus - Uproar - TM191
  (641, 64100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Tornadus - Weather Ball - TM193
  (641, 64100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Tornadus - Lash Out - TM199
  (641, 64100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Thundurus - Charge - TM173
  (642, 64200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Thundurus - Smack Down - TM179
  (642, 64200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Thundurus - Knock Off - TM181
  (642, 64200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Thundurus - Uproar - TM191
  (642, 64200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Thundurus - Weather Ball - TM193
  (642, 64200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Thundurus - Lash Out - TM199
  (642, 64200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Reshiram - Roar - TM172
  (643, 64300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Reshiram - Heat Crash - TM189
  (643, 64300, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Reshiram - Weather Ball - TM193
  (643, 64300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Reshiram - Dual Wingbeat - TM197
  (643, 64300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Reshiram - Scale Shot - TM200
  (643, 64300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Zekrom - Roar - TM172
  (644, 64400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zekrom - Charge - TM173
  (644, 64400, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Zekrom - Haze - TM174
  (644, 64400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 3),
  -- Zekrom - Focus Punch - TM192
  (644, 64400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Zekrom - Weather Ball - TM193
  (644, 64400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Zekrom - Dual Wingbeat - TM197
  (644, 64400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 6),
  -- Zekrom - Scale Shot - TM200
  (644, 64400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Landorus - Sand Tomb - TM176
  (645, 64500, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Landorus - Gravity - TM178
  (645, 64500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Landorus - Smack Down - TM179
  (645, 64500, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Landorus - Weather Ball - TM193
  (645, 64500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Kyurem - Roar - TM172
  (646, 64600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Kyurem - Icicle Spear - TM187
  (646, 64600, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Kyurem - Weather Ball - TM193
  (646, 64600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Kyurem - Dual Wingbeat - TM197
  (646, 64600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Kyurem - Scale Shot - TM200
  (646, 64600, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Keldeo - Roar - TM172
  (647, 64700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Keldeo - Vacuum Wave - TM184
  (647, 64700, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Keldeo - Flip Turn - TM196
  (647, 64700, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Meloetta - Gravity - TM178
  (648, 64800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Meloetta - Knock Off - TM181
  (648, 64800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Meloetta - Focus Punch - TM192
  (648, 64800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Chespin - Roar - TM172
  (650, 65000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Chespin - Super Fang - TM183
  (650, 65000, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Chespin - Focus Punch - TM192
  (650, 65000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Chespin - Grassy Glide - TM194
  (650, 65000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4);
