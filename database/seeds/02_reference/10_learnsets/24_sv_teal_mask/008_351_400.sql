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
-- The Teal Mask learnset delta rows for species 351-400.
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
  -- Shuppet - Spite - TM177
  (353, 35300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Shuppet - Poltergeist - TM198
  (353, 35300, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2),
  -- Shuppet - Lash Out - TM199
  (353, 35300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Banette - Spite - TM177
  (354, 35400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Banette - Knock Off - TM181
  (354, 35400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Banette - Burning Jealousy - TM195
  (354, 35400, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Banette - Poltergeist - TM198
  (354, 35400, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Banette - Lash Out - TM199
  (354, 35400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Duskull - Haze - TM174
  (355, 35500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Duskull - Spite - TM177
  (355, 35500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Duskull - Gravity - TM178
  (355, 35500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Duskull - Poltergeist - TM198
  (355, 35500, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Dusclops - Haze - TM174
  (356, 35600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dusclops - Spite - TM177
  (356, 35600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Dusclops - Gravity - TM178
  (356, 35600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Dusclops - Focus Punch - TM192
  (356, 35600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Dusclops - Poltergeist - TM198
  (356, 35600, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 5),
  -- Tropius - Roar - TM172
  (357, 35700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Tropius - Spite - TM177
  (357, 35700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Tropius - Solar Blade - TM190
  (357, 35700, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Tropius - Dual Wingbeat - TM197
  (357, 35700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Chimecho - Gravity - TM178
  (358, 35800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Chimecho - Knock Off - TM181
  (358, 35800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Chimecho - Uproar - TM191
  (358, 35800, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Snorunt - Spite - TM177
  (361, 36100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Snorunt - Icicle Spear - TM187
  (361, 36100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Snorunt - Weather Ball - TM193
  (361, 36100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Glalie - Spite - TM177
  (362, 36200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Glalie - Gyro Ball - TM180
  (362, 36200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Glalie - Icicle Spear - TM187
  (362, 36200, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Glalie - Weather Ball - TM193
  (362, 36200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Luvdisc - Flip Turn - TM196
  (370, 37000, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Luvdisc - Scale Shot - TM200
  (370, 37000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Bagon - Roar - TM172
  (371, 37100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Shelgon - Roar - TM172
  (372, 37200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Salamence - Roar - TM172
  (373, 37300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Salamence - Dual Wingbeat - TM197
  (373, 37300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Regirock - Sand Tomb - TM176
  (377, 37700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Regirock - Gravity - TM178
  (377, 37700, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Regirock - Smack Down - TM179
  (377, 37700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Regirock - Focus Punch - TM192
  (377, 37700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Regice - Gravity - TM178
  (378, 37800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Regice - Icicle Spear - TM187
  (378, 37800, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Regice - Focus Punch - TM192
  (378, 37800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Registeel - Sand Tomb - TM176
  (379, 37900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Registeel - Gravity - TM178
  (379, 37900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Registeel - Focus Punch - TM192
  (379, 37900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Latias - Roar - TM172
  (380, 38000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Latias - Weather Ball - TM193
  (380, 38000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Latias - Dual Wingbeat - TM197
  (380, 38000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Latias - Scale Shot - TM200
  (380, 38000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Latios - Roar - TM172
  (381, 38100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Latios - Weather Ball - TM193
  (381, 38100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Latios - Flip Turn - TM196
  (381, 38100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Latios - Dual Wingbeat - TM197
  (381, 38100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Latios - Scale Shot - TM200
  (381, 38100, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Kyogre - Roar - TM172
  (382, 38200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Groudon - Roar - TM172
  (383, 38300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Groudon - Sand Tomb - TM176
  (383, 38300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Groudon - Smack Down - TM179
  (383, 38300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Groudon - High Horsepower - TM186
  (383, 38300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Groudon - Heat Crash - TM189
  (383, 38300, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Groudon - Focus Punch - TM192
  (383, 38300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Rayquaza - Roar - TM172
  (384, 38400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Rayquaza - Gyro Ball - TM180
  (384, 38400, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Rayquaza - Scale Shot - TM200
  (384, 38400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Jirachi - Gravity - TM178
  (385, 38500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Deoxys - Gravity - TM178
  (386, 38600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Deoxys - Knock Off - TM181
  (386, 38600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Turtwig - Roar - TM172
  (387, 38700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Turtwig - Sand Tomb - TM176
  (387, 38700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Turtwig - Smack Down - TM179
  (387, 38700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Turtwig - Grassy Glide - TM194
  (387, 38700, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Grotle - Roar - TM172
  (388, 38800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Grotle - Sand Tomb - TM176
  (388, 38800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Grotle - Smack Down - TM179
  (388, 38800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Grotle - Grassy Glide - TM194
  (388, 38800, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Torterra - Roar - TM172
  (389, 38900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Torterra - Sand Tomb - TM176
  (389, 38900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Torterra - Smack Down - TM179
  (389, 38900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Torterra - High Horsepower - TM186
  (389, 38900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Torterra - Grassy Glide - TM194
  (389, 38900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Chimchar - Knock Off - TM181
  (390, 39000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Chimchar - Vacuum Wave - TM184
  (390, 39000, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Chimchar - Uproar - TM191
  (390, 39000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Chimchar - Focus Punch - TM192
  (390, 39000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Chimchar - Burning Jealousy - TM195
  (390, 39000, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Monferno - Smack Down - TM179
  (391, 39100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Monferno - Knock Off - TM181
  (391, 39100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Monferno - Vacuum Wave - TM184
  (391, 39100, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Monferno - Uproar - TM191
  (391, 39100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Monferno - Focus Punch - TM192
  (391, 39100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Monferno - Burning Jealousy - TM195
  (391, 39100, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 6),
  -- Monferno - Lash Out - TM199
  (391, 39100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Infernape - Roar - TM172
  (392, 39200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Infernape - Smack Down - TM179
  (392, 39200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Infernape - Knock Off - TM181
  (392, 39200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Infernape - Vacuum Wave - TM184
  (392, 39200, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 4),
  -- Infernape - Uproar - TM191
  (392, 39200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Infernape - Focus Punch - TM192
  (392, 39200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Infernape - Burning Jealousy - TM195
  (392, 39200, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 7),
  -- Infernape - Lash Out - TM199
  (392, 39200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Piplup - Haze - TM174
  (393, 39300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Piplup - Weather Ball - TM193
  (393, 39300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Piplup - Flip Turn - TM196
  (393, 39300, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Prinplup - Haze - TM174
  (394, 39400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Prinplup - Weather Ball - TM193
  (394, 39400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Prinplup - Flip Turn - TM196
  (394, 39400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Empoleon - Roar - TM172
  (395, 39500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Empoleon - Haze - TM174
  (395, 39500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Empoleon - Knock Off - TM181
  (395, 39500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Empoleon - Vacuum Wave - TM184
  (395, 39500, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 4),
  -- Empoleon - Uproar - TM191
  (395, 39500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Empoleon - Weather Ball - TM193
  (395, 39500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Empoleon - Flip Turn - TM196
  (395, 39500, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 7),
  -- Empoleon - Dual Wingbeat - TM197
  (395, 39500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 8),
  -- Empoleon - Lash Out - TM199
  (395, 39500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 9),
  -- Starly - Uproar - TM191
  (396, 39600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Starly - Dual Wingbeat - TM197
  (396, 39600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Staravia - Uproar - TM191
  (397, 39700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Staravia - Dual Wingbeat - TM197
  (397, 39700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Staraptor - Uproar - TM191
  (398, 39800, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Staraptor - Dual Wingbeat - TM197
  (398, 39800, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2);
