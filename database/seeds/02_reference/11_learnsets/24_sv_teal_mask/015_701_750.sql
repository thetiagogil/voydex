-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 701-750.
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
  -- Hawlucha - Lunge - TM185
  (701, 70100, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Hawlucha - Uproar - TM191
  (701, 70100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Hawlucha - Focus Punch - TM192
  (701, 70100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Hawlucha - Dual Wingbeat - TM197
  (701, 70100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Dedenne - Charge - TM173
  (702, 70200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Dedenne - Super Fang - TM183
  (702, 70200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Carbink - Sand Tomb - TM176
  (703, 70300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Carbink - Gravity - TM178
  (703, 70300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Carbink - Smack Down - TM179
  (703, 70300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Carbink - Gyro Ball - TM180
  (703, 70300, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Carbink - Misty Explosion - TM201
  (703, 70300, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 5),
  -- Sliggoo - Toxic - TM175
  (705, 70500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Sliggoo (Hisuian Sliggoo) - Gyro Ball - TM180
  (705, 70501, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Goodra - Toxic - TM175
  (706, 70600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Goodra - Knock Off - TM181
  (706, 70600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Goodra - Scald - TM188
  (706, 70600, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Goodra - Focus Punch - TM192
  (706, 70600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Goodra - Weather Ball - TM193
  (706, 70600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Goodra (Hisuian Goodra) - Gyro Ball - TM180
  (706, 70601, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Goodra (Hisuian Goodra) - Knock Off - TM181
  (706, 70601, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Goodra (Hisuian Goodra) - Weather Ball - TM193
  (706, 70601, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Goodra (Hisuian Goodra) - Lash Out - TM199
  (706, 70601, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Phantump - Spite - TM177
  (708, 70800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Phantump - Grassy Glide - TM194
  (708, 70800, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Phantump - Poltergeist - TM198
  (708, 70800, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Phantump - Lash Out - TM199
  (708, 70800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Trevenant - Haze - TM174
  (709, 70900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Trevenant - Toxic - TM175
  (709, 70900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Trevenant - Spite - TM177
  (709, 70900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Trevenant - Knock Off - TM181
  (709, 70900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Trevenant - Grassy Glide - TM194
  (709, 70900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Trevenant - Burning Jealousy - TM195
  (709, 70900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 6),
  -- Trevenant - Poltergeist - TM198
  (709, 70900, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 7),
  -- Trevenant - Lash Out - TM199
  (709, 70900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Bergmite - Gyro Ball - TM180
  (712, 71200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Bergmite - Icicle Spear - TM187
  (712, 71200, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Avalugg - Gyro Ball - TM180
  (713, 71300, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Avalugg - High Horsepower - TM186
  (713, 71300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Avalugg - Icicle Spear - TM187
  (713, 71300, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Avalugg (Hisuian Avalugg) - Gyro Ball - TM180
  (713, 71301, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Avalugg (Hisuian Avalugg) - High Horsepower - TM186
  (713, 71301, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Avalugg (Hisuian Avalugg) - Icicle Spear - TM187
  (713, 71301, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Noibat - Super Fang - TM183
  (714, 71400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Noibat - Uproar - TM191
  (714, 71400, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Noibat - Dual Wingbeat - TM197
  (714, 71400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Noivern - Super Fang - TM183
  (715, 71500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Noivern - Uproar - TM191
  (715, 71500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Noivern - Dual Wingbeat - TM197
  (715, 71500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Diancie - Sand Tomb - TM176
  (719, 71900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Diancie - Gravity - TM178
  (719, 71900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Diancie - Smack Down - TM179
  (719, 71900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Diancie - Gyro Ball - TM180
  (719, 71900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Diancie - Misty Explosion - TM201
  (719, 71900, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 5),
  -- Hoopa - Gravity - TM178
  (720, 72000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Hoopa - Knock Off - TM181
  (720, 72000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Hoopa - Focus Punch - TM192
  (720, 72000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Hoopa - Lash Out - TM199
  (720, 72000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Hoopa (Unbound) - Gravity - TM178
  (720, 72001, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Hoopa (Unbound) - Knock Off - TM181
  (720, 72001, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Hoopa (Unbound) - Focus Punch - TM192
  (720, 72001, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Hoopa (Unbound) - Lash Out - TM199
  (720, 72001, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Volcanion - Roar - TM172
  (721, 72100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Volcanion - Haze - TM174
  (721, 72100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Volcanion - Smack Down - TM179
  (721, 72100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Volcanion - Gyro Ball - TM180
  (721, 72100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Volcanion - Scald - TM188
  (721, 72100, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 5),
  -- Volcanion - Heat Crash - TM189
  (721, 72100, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 6),
  -- Volcanion - Weather Ball - TM193
  (721, 72100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 7),
  -- Rowlet - Haze - TM174
  (722, 72200, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Rowlet - Knock Off - TM181
  (722, 72200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Rowlet - Grassy Glide - TM194
  (722, 72200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Rowlet - Dual Wingbeat - TM197
  (722, 72200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Dartrix - Haze - TM174
  (723, 72300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dartrix - Knock Off - TM181
  (723, 72300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Dartrix - Grassy Glide - TM194
  (723, 72300, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Dartrix - Dual Wingbeat - TM197
  (723, 72300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Decidueye - Haze - TM174
  (724, 72400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Decidueye - Spite - TM177
  (724, 72400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Decidueye - Smack Down - TM179
  (724, 72400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Decidueye - Knock Off - TM181
  (724, 72400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Decidueye - Solar Blade - TM190
  (724, 72400, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 5),
  -- Decidueye - Grassy Glide - TM194
  (724, 72400, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 6),
  -- Decidueye - Dual Wingbeat - TM197
  (724, 72400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 7),
  -- Decidueye - Poltergeist - TM198
  (724, 72400, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 8),
  -- Decidueye (Hisuian Decidueye) - Haze - TM174
  (724, 72401, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Decidueye (Hisuian Decidueye) - Smack Down - TM179
  (724, 72401, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Decidueye (Hisuian Decidueye) - Knock Off - TM181
  (724, 72401, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Decidueye (Hisuian Decidueye) - Focus Punch - TM192
  (724, 72401, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Decidueye (Hisuian Decidueye) - Grassy Glide - TM194
  (724, 72401, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Decidueye (Hisuian Decidueye) - Dual Wingbeat - TM197
  (724, 72401, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 6),
  -- Yungoos - Super Fang - TM183
  (734, 73400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Gumshoos - Roar - TM172
  (735, 73500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Gumshoos - Knock Off - TM181
  (735, 73500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Gumshoos - Super Fang - TM183
  (735, 73500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Gumshoos - Focus Punch - TM192
  (735, 73500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Grubbin - Charge - TM173
  (736, 73600, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Grubbin - Bug Bite - TM182
  (736, 73600, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Grubbin - Lunge - TM185
  (736, 73600, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Charjabug - Charge - TM173
  (737, 73700, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Charjabug - Bug Bite - TM182
  (737, 73700, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Charjabug - Lunge - TM185
  (737, 73700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Vikavolt - Charge - TM173
  (738, 73800, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Vikavolt - Bug Bite - TM182
  (738, 73800, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Vikavolt - Lunge - TM185
  (738, 73800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Crabrawler - Knock Off - TM181
  (739, 73900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Crabrawler - Focus Punch - TM192
  (739, 73900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Crabominable - Knock Off - TM181
  (740, 74000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Crabominable - Focus Punch - TM192
  (740, 74000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Oricorio - Dual Wingbeat - TM197
  (741, 74100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Cutiefly - Bug Bite - TM182
  (742, 74200, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Ribombee - Bug Bite - TM182
  (743, 74300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Ribombee - Lunge - TM185
  (743, 74300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Ribombee - Dual Wingbeat - TM197
  (743, 74300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Rockruff - Roar - TM172
  (744, 74400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Lycanroc - Roar - TM172
  (745, 74500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Lycanroc (Midnight) - Roar - TM172
  (745, 74501, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Lycanroc (Midnight) - Knock Off - TM181
  (745, 74501, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Lycanroc (Midnight) - Focus Punch - TM192
  (745, 74501, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Lycanroc (Midnight) - Lash Out - TM199
  (745, 74501, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Lycanroc (Dusk) - Roar - TM172
  (745, 74502, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mareanie - Haze - TM174
  (747, 74700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Mareanie - Toxic - TM175
  (747, 74700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Mareanie - Lunge - TM185
  (747, 74700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Toxapex - Haze - TM174
  (748, 74800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Toxapex - Toxic - TM175
  (748, 74800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Toxapex - Smack Down - TM179
  (748, 74800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Toxapex - Lunge - TM185
  (748, 74800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Mudbray - Roar - TM172
  (749, 74900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mudbray - Sand Tomb - TM176
  (749, 74900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Mudbray - Smack Down - TM179
  (749, 74900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Mudbray - High Horsepower - TM186
  (749, 74900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Mudsdale - Roar - TM172
  (750, 75000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mudsdale - Sand Tomb - TM176
  (750, 75000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Mudsdale - Smack Down - TM179
  (750, 75000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Mudsdale - High Horsepower - TM186
  (750, 75000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Mudsdale - Lash Out - TM199
  (750, 75000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5);
