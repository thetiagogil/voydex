-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- Correction: legendary and mythical rows and every form's Scarlet / Violet
-- TMs are checked against each game's own data (PKHeX learnset and personal
-- tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 451-500.
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
  -- Croagunk - Poison Sting - Level 1
  (453, 45300, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 1
  (453, 45300, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croagunk - Astonish - Level 4
  (453, 45300, 310, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 8
  (453, 45300, 269, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Croagunk - Flatter - Level 12
  (453, 45300, 260, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Croagunk - Low Kick - Level 16
  (453, 45300, 67, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Croagunk - Venoshock - Level 20
  (453, 45300, 474, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Croagunk - Sucker Punch - Level 24
  (453, 45300, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Swagger - Level 28
  (453, 45300, 207, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Croagunk - Poison Jab - Level 32
  (453, 45300, 398, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Croagunk - Toxic - Level 36
  (453, 45300, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 40
  (453, 45300, 417, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Croagunk - Sludge Bomb - Level 44
  (453, 45300, 188, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Croagunk - Belch - Level 48
  (453, 45300, 562, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croagunk - Take Down - TM001
  (453, 45300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Croagunk - Mud-Slap - TM005
  (453, 45300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Croagunk - Scary Face - TM006
  (453, 45300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Croagunk - Protect - TM007
  (453, 45300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Croagunk - Low Kick - TM012
  (453, 45300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Croagunk - Acid Spray - TM013
  (453, 45300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Croagunk - Thief - TM018
  (453, 45300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Croagunk - Chilling Water - TM022
  (453, 45300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Croagunk - Facade - TM025
  (453, 45300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Croagunk - Aerial Ace - TM027
  (453, 45300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Croagunk - Bulldoze - TM028
  (453, 45300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Croagunk - Icy Wind - TM034
  (453, 45300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Croagunk - Mud Shot - TM035
  (453, 45300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Croagunk - Rock Tomb - TM036
  (453, 45300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Croagunk - Low Sweep - TM039
  (453, 45300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Croagunk - Fling - TM043
  (453, 45300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Croagunk - Venoshock - TM045
  (453, 45300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Croagunk - Endure - TM047
  (453, 45300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Croagunk - Sunny Day - TM049
  (453, 45300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Croagunk - Rain Dance - TM050
  (453, 45300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Croagunk - Dig - TM055
  (453, 45300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Croagunk - Brick Break - TM058
  (453, 45300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Croagunk - Shadow Claw - TM061
  (453, 45300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Croagunk - Foul Play - TM062
  (453, 45300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Croagunk - Bulk Up - TM064
  (453, 45300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Croagunk - Thunder Punch - TM068
  (453, 45300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Croagunk - Ice Punch - TM069
  (453, 45300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Croagunk - Sleep Talk - TM070
  (453, 45300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Croagunk - Drain Punch - TM073
  (453, 45300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Croagunk - Poison Jab - TM083
  (453, 45300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Croagunk - Rest - TM085
  (453, 45300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Croagunk - Rock Slide - TM086
  (453, 45300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Croagunk - Taunt - TM087
  (453, 45300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Croagunk - Gunk Shot - TM102
  (453, 45300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 48),
  -- Croagunk - Substitute - TM103
  (453, 45300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Croagunk - X-Scissor - TM105
  (453, 45300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 50),
  -- Croagunk - Shadow Ball - TM114
  (453, 45300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Croagunk - Encore - TM122
  (453, 45300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Croagunk - Helping Hand - TM130
  (453, 45300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Croagunk - Baton Pass - TM132
  (453, 45300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Croagunk - Reversal - TM134
  (453, 45300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Croagunk - Nasty Plot - TM140
  (453, 45300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Croagunk - Sludge Bomb - TM148
  (453, 45300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Croagunk - Earthquake - TM149
  (453, 45300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Croagunk - Focus Blast - TM158
  (453, 45300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Croagunk - Tera Blast - TM171
  (453, 45300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Counter - Egg
  (453, 45300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Croagunk - Quick Guard - Egg
  (453, 45300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Taunt - Level 1
  (454, 45400, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxicroak - Flatter - Level 12
  (454, 45400, 260, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Toxicroak - Low Kick - Level 16
  (454, 45400, 67, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Toxicroak - Venoshock - Level 20
  (454, 45400, 474, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Toxicroak - Sucker Punch - Level 24
  (454, 45400, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Toxicroak - Swagger - Level 28
  (454, 45400, 207, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Toxicroak - Poison Jab - Level 32
  (454, 45400, 398, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Toxicroak - Toxic - Level 36
  (454, 45400, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Toxicroak - Nasty Plot - Level 42
  (454, 45400, 417, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Toxicroak - Sludge Bomb - Level 48
  (454, 45400, 188, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Toxicroak - Belch - Level 54
  (454, 45400, 562, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Toxicroak - Take Down - TM001
  (454, 45400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Toxicroak - Mud-Slap - TM005
  (454, 45400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Toxicroak - Scary Face - TM006
  (454, 45400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Toxicroak - Protect - TM007
  (454, 45400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Toxicroak - Low Kick - TM012
  (454, 45400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Toxicroak - Acid Spray - TM013
  (454, 45400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Toxicroak - Thief - TM018
  (454, 45400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Toxicroak - Chilling Water - TM022
  (454, 45400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Toxicroak - Facade - TM025
  (454, 45400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Toxicroak - Aerial Ace - TM027
  (454, 45400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Toxicroak - Bulldoze - TM028
  (454, 45400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Toxicroak - Icy Wind - TM034
  (454, 45400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Toxicroak - Mud Shot - TM035
  (454, 45400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Toxicroak - Rock Tomb - TM036
  (454, 45400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Toxicroak - Low Sweep - TM039
  (454, 45400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Toxicroak - Fling - TM043
  (454, 45400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Toxicroak - Venoshock - TM045
  (454, 45400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Toxicroak - Endure - TM047
  (454, 45400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Toxicroak - Sunny Day - TM049
  (454, 45400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Toxicroak - Rain Dance - TM050
  (454, 45400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Toxicroak - Dig - TM055
  (454, 45400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Toxicroak - Brick Break - TM058
  (454, 45400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Toxicroak - Shadow Claw - TM061
  (454, 45400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Toxicroak - Foul Play - TM062
  (454, 45400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Toxicroak - Bulk Up - TM064
  (454, 45400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Toxicroak - Thunder Punch - TM068
  (454, 45400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Toxicroak - Ice Punch - TM069
  (454, 45400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Toxicroak - Sleep Talk - TM070
  (454, 45400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Toxicroak - Drain Punch - TM073
  (454, 45400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Toxicroak - Poison Jab - TM083
  (454, 45400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Toxicroak - Rest - TM085
  (454, 45400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Toxicroak - Rock Slide - TM086
  (454, 45400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Toxicroak - Taunt - TM087
  (454, 45400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Toxicroak - Swords Dance - TM088
  (454, 45400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Toxicroak - Dark Pulse - TM094
  (454, 45400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Toxicroak - Gunk Shot - TM102
  (454, 45400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 50),
  -- Toxicroak - Substitute - TM103
  (454, 45400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Toxicroak - X-Scissor - TM105
  (454, 45400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 52),
  -- Toxicroak - Shadow Ball - TM114
  (454, 45400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Toxicroak - Encore - TM122
  (454, 45400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Toxicroak - Helping Hand - TM130
  (454, 45400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Toxicroak - Baton Pass - TM132
  (454, 45400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 56),
  -- Toxicroak - Reversal - TM134
  (454, 45400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 57),
  -- Toxicroak - Nasty Plot - TM140
  (454, 45400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 58),
  -- Toxicroak - Sludge Bomb - TM148
  (454, 45400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 59),
  -- Toxicroak - Earthquake - TM149
  (454, 45400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Toxicroak - Stone Edge - TM150
  (454, 45400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Toxicroak - Giga Impact - TM152
  (454, 45400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Toxicroak - Focus Blast - TM158
  (454, 45400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Toxicroak - Hyper Beam - TM163
  (454, 45400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Toxicroak - Close Combat - TM167
  (454, 45400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 65),
  -- Toxicroak - Tera Blast - TM171
  (454, 45400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Toxicroak - Headbutt - Egg
  (454, 45400, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Toxicroak - Counter - Egg
  (454, 45400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Toxicroak - Dynamic Punch - Egg
  (454, 45400, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Toxicroak - Cross Chop - Egg
  (454, 45400, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Toxicroak - Fake Out - Egg
  (454, 45400, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Toxicroak - Feint - Egg
  (454, 45400, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Toxicroak - Vacuum Wave - Egg
  (454, 45400, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Toxicroak - Bullet Punch - Egg
  (454, 45400, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Toxicroak - Quick Guard - Egg
  (454, 45400, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Finneon - Pound - Level 1
  (456, 45600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 23, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 23, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 23, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Finneon - Attract - Level 26
  (456, 45600, 213, 23, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 23, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Finneon - Tailwind - Level 49
  (456, 45600, 366, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Finneon - Take Down - TM001
  (456, 45600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Finneon - Charm - TM002
  (456, 45600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Finneon - Agility - TM004
  (456, 45600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Finneon - Protect - TM007
  (456, 45600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Finneon - Water Pulse - TM011
  (456, 45600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Finneon - Acrobatics - TM014
  (456, 45600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Finneon - Psybeam - TM016
  (456, 45600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Finneon - Confuse Ray - TM017
  (456, 45600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Finneon - Thief - TM018
  (456, 45600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Finneon - Chilling Water - TM022
  (456, 45600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Finneon - Facade - TM025
  (456, 45600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Finneon - Swift - TM032
  (456, 45600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Finneon - Icy Wind - TM034
  (456, 45600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Finneon - Endure - TM047
  (456, 45600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Finneon - Rain Dance - TM050
  (456, 45600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Finneon - U-turn - TM060
  (456, 45600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Finneon - Sleep Talk - TM070
  (456, 45600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Finneon - Waterfall - TM077
  (456, 45600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Finneon - Dazzling Gleam - TM079
  (456, 45600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Finneon - Rest - TM085
  (456, 45600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Finneon - Substitute - TM103
  (456, 45600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Finneon - Tailwind - TM113
  (456, 45600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 35),
  -- Finneon - Surf - TM123
  (456, 45600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Finneon - Helping Hand - TM130
  (456, 45600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Finneon - Ice Beam - TM135
  (456, 45600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Finneon - Hydro Pump - TM142
  (456, 45600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Finneon - Blizzard - TM143
  (456, 45600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Finneon - Tera Blast - TM171
  (456, 45600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Finneon - Psybeam - Egg
  (456, 45600, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Aurora Beam - Egg
  (456, 45600, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Agility - Egg
  (456, 45600, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Confuse Ray - Egg
  (456, 45600, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Flail - Egg
  (456, 45600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Sweet Kiss - Egg
  (456, 45600, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Charm - Egg
  (456, 45600, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Tickle - Egg
  (456, 45600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Aqua Tail - Egg
  (456, 45600, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Gust - Level 1
  (457, 45700, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Soak - Level 1
  (457, 45700, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Lumineon - Attract - Level 26
  (457, 45700, 213, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 23, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Lumineon - Tailwind - Level 59
  (457, 45700, 366, 23, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Lumineon - Take Down - TM001
  (457, 45700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Lumineon - Charm - TM002
  (457, 45700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Lumineon - Agility - TM004
  (457, 45700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Lumineon - Protect - TM007
  (457, 45700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Lumineon - Water Pulse - TM011
  (457, 45700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Lumineon - Acrobatics - TM014
  (457, 45700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Lumineon - Psybeam - TM016
  (457, 45700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Lumineon - Confuse Ray - TM017
  (457, 45700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Lumineon - Thief - TM018
  (457, 45700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Lumineon - Chilling Water - TM022
  (457, 45700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Lumineon - Facade - TM025
  (457, 45700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Lumineon - Swift - TM032
  (457, 45700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Lumineon - Icy Wind - TM034
  (457, 45700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Lumineon - Air Cutter - TM040
  (457, 45700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Lumineon - Endure - TM047
  (457, 45700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Lumineon - Rain Dance - TM050
  (457, 45700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Lumineon - U-turn - TM060
  (457, 45700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Lumineon - Air Slash - TM065
  (457, 45700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Lumineon - Sleep Talk - TM070
  (457, 45700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Lumineon - Waterfall - TM077
  (457, 45700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Lumineon - Dazzling Gleam - TM079
  (457, 45700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 34),
  -- Lumineon - Rest - TM085
  (457, 45700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Lumineon - Substitute - TM103
  (457, 45700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Lumineon - Tailwind - TM113
  (457, 45700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 37),
  -- Lumineon - Encore - TM122
  (457, 45700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Lumineon - Surf - TM123
  (457, 45700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Lumineon - Helping Hand - TM130
  (457, 45700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Lumineon - Ice Beam - TM135
  (457, 45700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Lumineon - Hydro Pump - TM142
  (457, 45700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Lumineon - Blizzard - TM143
  (457, 45700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Lumineon - Giga Impact - TM152
  (457, 45700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Lumineon - Hyper Beam - TM163
  (457, 45700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Lumineon - Tera Blast - TM171
  (457, 45700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Lumineon - Psybeam - Egg
  (457, 45700, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lumineon - Aurora Beam - Egg
  (457, 45700, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lumineon - Agility - Egg
  (457, 45700, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lumineon - Confuse Ray - Egg
  (457, 45700, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lumineon - Flail - Egg
  (457, 45700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lumineon - Sweet Kiss - Egg
  (457, 45700, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lumineon - Charm - Egg
  (457, 45700, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lumineon - Tickle - Egg
  (457, 45700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lumineon - Aqua Tail - Egg
  (457, 45700, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Leafage - Level 5
  (459, 45900, 670, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Mist - Level 10
  (459, 45900, 54, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snover - Ice Shard - Level 15
  (459, 45900, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snover - Razor Leaf - Level 20
  (459, 45900, 75, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snover - Icy Wind - Level 25
  (459, 45900, 196, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snover - Swagger - Level 30
  (459, 45900, 207, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 35
  (459, 45900, 275, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 41
  (459, 45900, 452, 23, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 45
  (459, 45900, 59, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 50
  (459, 45900, 329, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snover - Take Down - TM001
  (459, 45900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Snover - Mud-Slap - TM005
  (459, 45900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Snover - Protect - TM007
  (459, 45900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Snover - Water Pulse - TM011
  (459, 45900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Snover - Trailblaze - TM020
  (459, 45900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Snover - Chilling Water - TM022
  (459, 45900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Snover - Facade - TM025
  (459, 45900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Snover - Magical Leaf - TM033
  (459, 45900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Snover - Icy Wind - TM034
  (459, 45900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Snover - Avalanche - TM046
  (459, 45900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 22),
  -- Snover - Endure - TM047
  (459, 45900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Snover - Rain Dance - TM050
  (459, 45900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Snover - Snowscape - TM052
  (459, 45900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 25),
  -- Snover - Bullet Seed - TM056
  (459, 45900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Snover - Body Slam - TM066
  (459, 45900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Snover - Ice Punch - TM069
  (459, 45900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 28),
  -- Snover - Sleep Talk - TM070
  (459, 45900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Snover - Seed Bomb - TM071
  (459, 45900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Snover - Grass Knot - TM081
  (459, 45900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Snover - Rest - TM085
  (459, 45900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Snover - Swords Dance - TM088
  (459, 45900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Snover - Substitute - TM103
  (459, 45900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Snover - Giga Drain - TM111
  (459, 45900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Snover - Energy Ball - TM119
  (459, 45900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Snover - Ice Spinner - TM124
  (459, 45900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 37),
  -- Snover - Helping Hand - TM130
  (459, 45900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Snover - Ice Beam - TM135
  (459, 45900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Snover - Blizzard - TM143
  (459, 45900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Snover - Leaf Storm - TM159
  (459, 45900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Snover - Solar Beam - TM168
  (459, 45900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Snover - Tera Blast - TM171
  (459, 45900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Growth - Egg
  (459, 45900, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Weather Ball - Egg
  (459, 45900, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Mist - Level 1
  (460, 46000, 54, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Leafage - Level 1
  (460, 46000, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Aurora Veil - Level 1
  (460, 46000, 694, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Ice Shard - Level 15
  (460, 46000, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Abomasnow - Razor Leaf - Level 20
  (460, 46000, 75, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Abomasnow - Icy Wind - Level 25
  (460, 46000, 196, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 30
  (460, 46000, 207, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Abomasnow - Ingrain - Level 35
  (460, 46000, 275, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Abomasnow - Wood Hammer - Level 43
  (460, 46000, 452, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Abomasnow - Blizzard - Level 49
  (460, 46000, 59, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Abomasnow - Sheer Cold - Level 56
  (460, 46000, 329, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Abomasnow - Take Down - TM001
  (460, 46000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Abomasnow - Mud-Slap - TM005
  (460, 46000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Abomasnow - Scary Face - TM006
  (460, 46000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Abomasnow - Protect - TM007
  (460, 46000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Abomasnow - Water Pulse - TM011
  (460, 46000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Abomasnow - Low Kick - TM012
  (460, 46000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Abomasnow - Trailblaze - TM020
  (460, 46000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Abomasnow - Chilling Water - TM022
  (460, 46000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Abomasnow - Facade - TM025
  (460, 46000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Abomasnow - Bulldoze - TM028
  (460, 46000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Abomasnow - Magical Leaf - TM033
  (460, 46000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Abomasnow - Icy Wind - TM034
  (460, 46000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Abomasnow - Rock Tomb - TM036
  (460, 46000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Abomasnow - Fling - TM043
  (460, 46000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Abomasnow - Avalanche - TM046
  (460, 46000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 28),
  -- Abomasnow - Endure - TM047
  (460, 46000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Abomasnow - Rain Dance - TM050
  (460, 46000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Abomasnow - Snowscape - TM052
  (460, 46000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Abomasnow - Bullet Seed - TM056
  (460, 46000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Abomasnow - Brick Break - TM058
  (460, 46000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Abomasnow - Body Slam - TM066
  (460, 46000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Abomasnow - Ice Punch - TM069
  (460, 46000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Abomasnow - Sleep Talk - TM070
  (460, 46000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Abomasnow - Seed Bomb - TM071
  (460, 46000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Abomasnow - Grass Knot - TM081
  (460, 46000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Abomasnow - Stomping Tantrum - TM084
  (460, 46000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Abomasnow - Rest - TM085
  (460, 46000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Abomasnow - Rock Slide - TM086
  (460, 46000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Abomasnow - Swords Dance - TM088
  (460, 46000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Abomasnow - Body Press - TM089
  (460, 46000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Abomasnow - Substitute - TM103
  (460, 46000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Abomasnow - Giga Drain - TM111
  (460, 46000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Abomasnow - Energy Ball - TM119
  (460, 46000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Abomasnow - Ice Spinner - TM124
  (460, 46000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 47),
  -- Abomasnow - Helping Hand - TM130
  (460, 46000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Abomasnow - Earth Power - TM133
  (460, 46000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 49),
  -- Abomasnow - Ice Beam - TM135
  (460, 46000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Abomasnow - Blizzard - TM143
  (460, 46000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 51),
  -- Abomasnow - Earthquake - TM149
  (460, 46000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Abomasnow - Giga Impact - TM152
  (460, 46000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Abomasnow - Outrage - TM156
  (460, 46000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 54),
  -- Abomasnow - Focus Blast - TM158
  (460, 46000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 55),
  -- Abomasnow - Leaf Storm - TM159
  (460, 46000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 56),
  -- Abomasnow - Hyper Beam - TM163
  (460, 46000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Abomasnow - Solar Beam - TM168
  (460, 46000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Abomasnow - Tera Blast - TM171
  (460, 46000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Abomasnow - Stomp - Egg
  (460, 46000, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Abomasnow - Double-Edge - Egg
  (460, 46000, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Abomasnow - Leech Seed - Egg
  (460, 46000, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Abomasnow - Growth - Egg
  (460, 46000, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Abomasnow - Weather Ball - Egg
  (460, 46000, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Abomasnow - Ice Punch - Evolution
  (460, 46000, 8, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Agility - Level 1
  (461, 46100, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Slash - Level 1
  (461, 46100, 163, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Beat Up - Level 1
  (461, 46100, 251, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Weavile - Ice Shard - Level 1
  (461, 46100, 420, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Weavile - Metal Claw - Level 18
  (461, 46100, 232, 23, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Weavile - Icy Wind - Level 24
  (461, 46100, 196, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Weavile - Fury Swipes - Level 30
  (461, 46100, 154, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Weavile - Hone Claws - Level 36
  (461, 46100, 468, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Weavile - Fling - Level 42
  (461, 46100, 374, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Weavile - Nasty Plot - Level 48
  (461, 46100, 417, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Weavile - Screech - Level 54
  (461, 46100, 103, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Weavile - Night Slash - Level 60
  (461, 46100, 400, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Weavile - Dark Pulse - Level 66
  (461, 46100, 399, 23, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Weavile - Take Down - TM001
  (461, 46100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Weavile - Fake Tears - TM003
  (461, 46100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Weavile - Agility - TM004
  (461, 46100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Weavile - Scary Face - TM006
  (461, 46100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Weavile - Protect - TM007
  (461, 46100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Weavile - Water Pulse - TM011
  (461, 46100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Weavile - Low Kick - TM012
  (461, 46100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 25),
  -- Weavile - Thief - TM018
  (461, 46100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Weavile - Trailblaze - TM020
  (461, 46100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 27),
  -- Weavile - Chilling Water - TM022
  (461, 46100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 28),
  -- Weavile - Facade - TM025
  (461, 46100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Weavile - Aerial Ace - TM027
  (461, 46100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 30),
  -- Weavile - Snarl - TM030
  (461, 46100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Weavile - Metal Claw - TM031
  (461, 46100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 32),
  -- Weavile - Swift - TM032
  (461, 46100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Weavile - Icy Wind - TM034
  (461, 46100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 34),
  -- Weavile - Low Sweep - TM039
  (461, 46100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 35),
  -- Weavile - Fling - TM043
  (461, 46100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Weavile - Avalanche - TM046
  (461, 46100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 37),
  -- Weavile - Endure - TM047
  (461, 46100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Weavile - Sunny Day - TM049
  (461, 46100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Weavile - Rain Dance - TM050
  (461, 46100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 40),
  -- Weavile - Snowscape - TM052
  (461, 46100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 41),
  -- Weavile - Dig - TM055
  (461, 46100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Weavile - False Swipe - TM057
  (461, 46100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 43),
  -- Weavile - Brick Break - TM058
  (461, 46100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 44),
  -- Weavile - Shadow Claw - TM061
  (461, 46100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 45),
  -- Weavile - Foul Play - TM062
  (461, 46100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 46),
  -- Weavile - Ice Punch - TM069
  (461, 46100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Weavile - Sleep Talk - TM070
  (461, 46100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Weavile - Metronome - TM080
  (461, 46100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 49),
  -- Weavile - Poison Jab - TM083
  (461, 46100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 50),
  -- Weavile - Rest - TM085
  (461, 46100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Weavile - Taunt - TM087
  (461, 46100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 52),
  -- Weavile - Swords Dance - TM088
  (461, 46100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 53),
  -- Weavile - Dark Pulse - TM094
  (461, 46100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 54),
  -- Weavile - Substitute - TM103
  (461, 46100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Weavile - X-Scissor - TM105
  (461, 46100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 56),
  -- Weavile - Shadow Ball - TM114
  (461, 46100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Weavile - Surf - TM123
  (461, 46100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 58),
  -- Weavile - Ice Spinner - TM124
  (461, 46100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 59),
  -- Weavile - Calm Mind - TM129
  (461, 46100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 60),
  -- Weavile - Helping Hand - TM130
  (461, 46100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Weavile - Baton Pass - TM132
  (461, 46100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 62),
  -- Weavile - Reversal - TM134
  (461, 46100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 63),
  -- Weavile - Ice Beam - TM135
  (461, 46100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 64),
  -- Weavile - Nasty Plot - TM140
  (461, 46100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 65),
  -- Weavile - Blizzard - TM143
  (461, 46100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 66),
  -- Weavile - Giga Impact - TM152
  (461, 46100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 67),
  -- Weavile - Focus Blast - TM158
  (461, 46100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 68),
  -- Weavile - Hyper Beam - TM163
  (461, 46100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 69),
  -- Weavile - Tera Blast - TM171
  (461, 46100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 70),
  -- Weavile - Bite - Egg
  (461, 46100, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Weavile - Counter - Egg
  (461, 46100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Weavile - Spite - Egg
  (461, 46100, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Weavile - Fake Out - Egg
  (461, 46100, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Weavile - Feint - Egg
  (461, 46100, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Weavile - Ice Shard - Egg
  (461, 46100, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Weavile - Double Hit - Egg
  (461, 46100, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Weavile - Icicle Crash - Egg
  (461, 46100, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Thunder Wave - Level 1
  (462, 46200, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Tri Attack - Level 1
  (462, 46200, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Magnetic Flux - Level 1
  (462, 46200, 602, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magnezone - Electric Terrain - Level 1
  (462, 46200, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Magnezone - Electro Ball - Level 12
  (462, 46200, 486, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Magnezone - Gyro Ball - Level 16
  (462, 46200, 360, 23, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Magnezone - Spark - Level 20
  (462, 46200, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Magnezone - Screech - Level 24
  (462, 46200, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Magnezone - Magnet Rise - Level 28
  (462, 46200, 393, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Magnezone - Flash Cannon - Level 34
  (462, 46200, 430, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Magnezone - Discharge - Level 40
  (462, 46200, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Magnezone - Metal Sound - Level 46
  (462, 46200, 319, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Magnezone - Light Screen - Level 52
  (462, 46200, 113, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Magnezone - Lock-On - Level 58
  (462, 46200, 199, 23, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Magnezone - Zap Cannon - Level 64
  (462, 46200, 192, 23, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Magnezone - Take Down - TM001
  (462, 46200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Magnezone - Protect - TM007
  (462, 46200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Magnezone - Confuse Ray - TM017
  (462, 46200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Magnezone - Charge Beam - TM023
  (462, 46200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Magnezone - Facade - TM025
  (462, 46200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Magnezone - Swift - TM032
  (462, 46200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Magnezone - Endure - TM047
  (462, 46200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Magnezone - Volt Switch - TM048
  (462, 46200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Magnezone - Sunny Day - TM049
  (462, 46200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Magnezone - Rain Dance - TM050
  (462, 46200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Magnezone - Sandstorm - TM051
  (462, 46200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Magnezone - Body Slam - TM066
  (462, 46200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Magnezone - Sleep Talk - TM070
  (462, 46200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Magnezone - Electro Ball - TM072
  (462, 46200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 33),
  -- Magnezone - Reflect - TM074
  (462, 46200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Magnezone - Light Screen - TM075
  (462, 46200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Magnezone - Thunder Wave - TM082
  (462, 46200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Magnezone - Rest - TM085
  (462, 46200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Magnezone - Body Press - TM089
  (462, 46200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Magnezone - Flash Cannon - TM093
  (462, 46200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Magnezone - Eerie Impulse - TM096
  (462, 46200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 40),
  -- Magnezone - Iron Head - TM099
  (462, 46200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Magnezone - Substitute - TM103
  (462, 46200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Magnezone - Iron Defense - TM104
  (462, 46200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Magnezone - Heavy Slam - TM121
  (462, 46200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 44),
  -- Magnezone - Thunderbolt - TM126
  (462, 46200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Magnezone - Helping Hand - TM130
  (462, 46200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Magnezone - Electric Terrain - TM136
  (462, 46200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 47),
  -- Magnezone - Wild Charge - TM147
  (462, 46200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 48),
  -- Magnezone - Giga Impact - TM152
  (462, 46200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Magnezone - Hyper Beam - TM163
  (462, 46200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Magnezone - Thunder - TM166
  (462, 46200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Magnezone - Steel Beam - TM170
  (462, 46200, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 52),
  -- Magnezone - Tera Blast - TM171
  (462, 46200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Magnezone - Explosion - Egg
  (462, 46200, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magnezone - Electroweb - Egg
  (462, 46200, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Rhyperior - Tackle - Level 1
  (464, 46400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Hammer Arm - Level 1
  (464, 46400, 359, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Smack Down - Level 1
  (464, 46400, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Bulldoze - Level 1
  (464, 46400, 523, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Horn Attack - Level 15
  (464, 46400, 30, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rhyperior - Scary Face - Level 20
  (464, 46400, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rhyperior - Stomp - Level 25
  (464, 46400, 23, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 30
  (464, 46400, 350, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rhyperior - Drill Run - Level 35
  (464, 46400, 529, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Rhyperior - Take Down - Level 40
  (464, 46400, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Rhyperior - Earthquake - Level 47
  (464, 46400, 89, 23, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rhyperior - Stone Edge - Level 54
  (464, 46400, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Rhyperior - Megahorn - Level 61
  (464, 46400, 224, 23, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Rhyperior - Horn Drill - Level 68
  (464, 46400, 32, 23, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Rhyperior - Rock Wrecker - Level 75
  (464, 46400, 439, 23, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Rhyperior - Take Down - TM001
  (464, 46400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Rhyperior - Mud-Slap - TM005
  (464, 46400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Rhyperior - Scary Face - TM006
  (464, 46400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Rhyperior - Protect - TM007
  (464, 46400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Rhyperior - Fire Fang - TM008
  (464, 46400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Rhyperior - Thunder Fang - TM009
  (464, 46400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Rhyperior - Ice Fang - TM010
  (464, 46400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Rhyperior - Thief - TM018
  (464, 46400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Rhyperior - Facade - TM025
  (464, 46400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Rhyperior - Bulldoze - TM028
  (464, 46400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Rhyperior - Metal Claw - TM031
  (464, 46400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 27),
  -- Rhyperior - Icy Wind - TM034
  (464, 46400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Rhyperior - Mud Shot - TM035
  (464, 46400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Rhyperior - Rock Tomb - TM036
  (464, 46400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Rhyperior - Fling - TM043
  (464, 46400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Rhyperior - Dragon Tail - TM044
  (464, 46400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 32),
  -- Rhyperior - Avalanche - TM046
  (464, 46400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 33),
  -- Rhyperior - Endure - TM047
  (464, 46400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Rhyperior - Sunny Day - TM049
  (464, 46400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Rhyperior - Rain Dance - TM050
  (464, 46400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Rhyperior - Sandstorm - TM051
  (464, 46400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 37),
  -- Rhyperior - Smart Strike - TM053
  (464, 46400, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 38),
  -- Rhyperior - Dig - TM055
  (464, 46400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Rhyperior - Brick Break - TM058
  (464, 46400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Rhyperior - Shadow Claw - TM061
  (464, 46400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 41),
  -- Rhyperior - Body Slam - TM066
  (464, 46400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Rhyperior - Fire Punch - TM067
  (464, 46400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 43),
  -- Rhyperior - Thunder Punch - TM068
  (464, 46400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 44),
  -- Rhyperior - Ice Punch - TM069
  (464, 46400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 45),
  -- Rhyperior - Sleep Talk - TM070
  (464, 46400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Rhyperior - Rock Blast - TM076
  (464, 46400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 47),
  -- Rhyperior - Poison Jab - TM083
  (464, 46400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 48),
  -- Rhyperior - Stomping Tantrum - TM084
  (464, 46400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Rhyperior - Rest - TM085
  (464, 46400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Rhyperior - Rock Slide - TM086
  (464, 46400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 51),
  -- Rhyperior - Swords Dance - TM088
  (464, 46400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 52),
  -- Rhyperior - Body Press - TM089
  (464, 46400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 53),
  -- Rhyperior - Flash Cannon - TM093
  (464, 46400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 54),
  -- Rhyperior - Iron Head - TM099
  (464, 46400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 55),
  -- Rhyperior - Substitute - TM103
  (464, 46400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Rhyperior - Iron Defense - TM104
  (464, 46400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 57),
  -- Rhyperior - Drill Run - TM106
  (464, 46400, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 58),
  -- Rhyperior - Crunch - TM108
  (464, 46400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 59),
  -- Rhyperior - Dragon Pulse - TM115
  (464, 46400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 60),
  -- Rhyperior - Stealth Rock - TM116
  (464, 46400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 61),
  -- Rhyperior - Heavy Slam - TM121
  (464, 46400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 62),
  -- Rhyperior - Surf - TM123
  (464, 46400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 63),
  -- Rhyperior - Flamethrower - TM125
  (464, 46400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 64),
  -- Rhyperior - Thunderbolt - TM126
  (464, 46400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 65),
  -- Rhyperior - Helping Hand - TM130
  (464, 46400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 66),
  -- Rhyperior - Earth Power - TM133
  (464, 46400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 67),
  -- Rhyperior - Reversal - TM134
  (464, 46400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 68),
  -- Rhyperior - Ice Beam - TM135
  (464, 46400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 69),
  -- Rhyperior - Fire Blast - TM141
  (464, 46400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 70),
  -- Rhyperior - Hydro Pump - TM142
  (464, 46400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 71),
  -- Rhyperior - Blizzard - TM143
  (464, 46400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 72),
  -- Rhyperior - Earthquake - TM149
  (464, 46400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 73),
  -- Rhyperior - Stone Edge - TM150
  (464, 46400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 74),
  -- Rhyperior - Giga Impact - TM152
  (464, 46400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 75),
  -- Rhyperior - Outrage - TM156
  (464, 46400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 76),
  -- Rhyperior - Focus Blast - TM158
  (464, 46400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 77),
  -- Rhyperior - Hyper Beam - TM163
  (464, 46400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 78),
  -- Rhyperior - Thunder - TM166
  (464, 46400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 79),
  -- Rhyperior - Tera Blast - TM171
  (464, 46400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 80),
  -- Rhyperior - Counter - Egg
  (464, 46400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Rhyperior - Curse - Egg
  (464, 46400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Rhyperior - Metal Burst - Egg
  (464, 46400, 368, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Rhyperior - Rock Polish - Egg
  (464, 46400, 397, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Rhyperior - Dragon Rush - Egg
  (464, 46400, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Rhyperior - Guard Split - Egg
  (464, 46400, 470, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Charge - Level 1
  (466, 46600, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electivire - Shock Wave - Level 16
  (466, 46600, 351, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electivire - Thunder Wave - Level 20
  (466, 46600, 86, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electivire - Screech - Level 24
  (466, 46600, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electivire - Thunder Punch - Level 28
  (466, 46600, 9, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electivire - Discharge - Level 34
  (466, 46600, 435, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Electivire - Low Kick - Level 40
  (466, 46600, 67, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Electivire - Thunderbolt - Level 46
  (466, 46600, 85, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Electivire - Light Screen - Level 52
  (466, 46600, 113, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Electivire - Thunder - Level 58
  (466, 46600, 87, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Electivire - Giga Impact - Level 64
  (466, 46600, 416, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Electivire - Take Down - TM001
  (466, 46600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Electivire - Protect - TM007
  (466, 46600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Electivire - Low Kick - TM012
  (466, 46600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Electivire - Thief - TM018
  (466, 46600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Electivire - Trailblaze - TM020
  (466, 46600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Electivire - Charge Beam - TM023
  (466, 46600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Electivire - Facade - TM025
  (466, 46600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Electivire - Bulldoze - TM028
  (466, 46600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Electivire - Swift - TM032
  (466, 46600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Electivire - Rock Tomb - TM036
  (466, 46600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Electivire - Low Sweep - TM039
  (466, 46600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Electivire - Fling - TM043
  (466, 46600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Electivire - Endure - TM047
  (466, 46600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Electivire - Volt Switch - TM048
  (466, 46600, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 29),
  -- Electivire - Rain Dance - TM050
  (466, 46600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Electivire - Dig - TM055
  (466, 46600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Electivire - Brick Break - TM058
  (466, 46600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Electivire - Bulk Up - TM064
  (466, 46600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Electivire - Body Slam - TM066
  (466, 46600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Electivire - Fire Punch - TM067
  (466, 46600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Electivire - Thunder Punch - TM068
  (466, 46600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Electivire - Ice Punch - TM069
  (466, 46600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Electivire - Sleep Talk - TM070
  (466, 46600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Electivire - Electro Ball - TM072
  (466, 46600, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 39),
  -- Electivire - Reflect - TM074
  (466, 46600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Electivire - Light Screen - TM075
  (466, 46600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Electivire - Metronome - TM080
  (466, 46600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Electivire - Thunder Wave - TM082
  (466, 46600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Electivire - Stomping Tantrum - TM084
  (466, 46600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 44),
  -- Electivire - Rest - TM085
  (466, 46600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Electivire - Rock Slide - TM086
  (466, 46600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Electivire - Taunt - TM087
  (466, 46600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Electivire - Eerie Impulse - TM096
  (466, 46600, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Electivire - Substitute - TM103
  (466, 46600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Electivire - Psychic - TM120
  (466, 46600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 50),
  -- Electivire - Flamethrower - TM125
  (466, 46600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Electivire - Thunderbolt - TM126
  (466, 46600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Electivire - Helping Hand - TM130
  (466, 46600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Electivire - Electric Terrain - TM136
  (466, 46600, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 54),
  -- Electivire - Wild Charge - TM147
  (466, 46600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 55),
  -- Electivire - Earthquake - TM149
  (466, 46600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Electivire - Giga Impact - TM152
  (466, 46600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Electivire - Focus Blast - TM158
  (466, 46600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Electivire - Hyper Beam - TM163
  (466, 46600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Electivire - Thunder - TM166
  (466, 46600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Electivire - Tera Blast - TM171
  (466, 46600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Electivire - Dynamic Punch - Egg
  (466, 46600, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Electivire - Cross Chop - Egg
  (466, 46600, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Electivire - Focus Punch - Egg
  (466, 46600, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Electivire - Follow Me - Egg
  (466, 46600, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Electivire - Hammer Arm - Egg
  (466, 46600, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Electivire - Feint - Egg
  (466, 46600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Clear Smog - Level 12
  (467, 46700, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmortar - Flame Wheel - Level 16
  (467, 46700, 172, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmortar - Confuse Ray - Level 20
  (467, 46700, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmortar - Scary Face - Level 24
  (467, 46700, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Punch - Level 28
  (467, 46700, 7, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmortar - Lava Plume - Level 34
  (467, 46700, 436, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmortar - Low Kick - Level 40
  (467, 46700, 67, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmortar - Flamethrower - Level 46
  (467, 46700, 53, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmortar - Sunny Day - Level 52
  (467, 46700, 241, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmortar - Fire Blast - Level 58
  (467, 46700, 126, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmortar - Hyper Beam - Level 64
  (467, 46700, 63, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmortar - Take Down - TM001
  (467, 46700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Magmortar - Scary Face - TM006
  (467, 46700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Magmortar - Protect - TM007
  (467, 46700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Magmortar - Low Kick - TM012
  (467, 46700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Magmortar - Acid Spray - TM013
  (467, 46700, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Magmortar - Confuse Ray - TM017
  (467, 46700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Magmortar - Thief - TM018
  (467, 46700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Magmortar - Fire Spin - TM024
  (467, 46700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Magmortar - Facade - TM025
  (467, 46700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Magmortar - Bulldoze - TM028
  (467, 46700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Magmortar - Rock Tomb - TM036
  (467, 46700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Magmortar - Flame Charge - TM038
  (467, 46700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 27),
  -- Magmortar - Low Sweep - TM039
  (467, 46700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Magmortar - Fling - TM043
  (467, 46700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Magmortar - Endure - TM047
  (467, 46700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Magmortar - Sunny Day - TM049
  (467, 46700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Magmortar - Brick Break - TM058
  (467, 46700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Magmortar - Body Slam - TM066
  (467, 46700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Magmortar - Fire Punch - TM067
  (467, 46700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Magmortar - Thunder Punch - TM068
  (467, 46700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Magmortar - Sleep Talk - TM070
  (467, 46700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Magmortar - Metronome - TM080
  (467, 46700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 37),
  -- Magmortar - Poison Jab - TM083
  (467, 46700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Magmortar - Stomping Tantrum - TM084
  (467, 46700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Magmortar - Rest - TM085
  (467, 46700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Magmortar - Rock Slide - TM086
  (467, 46700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Magmortar - Taunt - TM087
  (467, 46700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Magmortar - Substitute - TM103
  (467, 46700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Magmortar - Will-O-Wisp - TM107
  (467, 46700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Magmortar - Hyper Voice - TM117
  (467, 46700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 45),
  -- Magmortar - Heat Wave - TM118
  (467, 46700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 46),
  -- Magmortar - Psychic - TM120
  (467, 46700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 47),
  -- Magmortar - Flamethrower - TM125
  (467, 46700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Magmortar - Thunderbolt - TM126
  (467, 46700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Magmortar - Helping Hand - TM130
  (467, 46700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Magmortar - Fire Blast - TM141
  (467, 46700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 51),
  -- Magmortar - Earthquake - TM149
  (467, 46700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Magmortar - Giga Impact - TM152
  (467, 46700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Magmortar - Overheat - TM157
  (467, 46700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 54),
  -- Magmortar - Focus Blast - TM158
  (467, 46700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 55),
  -- Magmortar - Hyper Beam - TM163
  (467, 46700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Magmortar - Flare Blitz - TM165
  (467, 46700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 57),
  -- Magmortar - Solar Beam - TM168
  (467, 46700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Magmortar - Tera Blast - TM171
  (467, 46700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Magmortar - Mach Punch - Egg
  (467, 46700, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Magmortar - Belly Drum - Egg
  (467, 46700, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Magmortar - Dynamic Punch - Egg
  (467, 46700, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Magmortar - Cross Chop - Egg
  (467, 46700, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Magmortar - Follow Me - Egg
  (467, 46700, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Magmortar - Belch - Egg
  (467, 46700, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Air Slash - Level 1
  (469, 46900, 403, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Bug Buzz - Level 1
  (469, 46900, 405, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Quick Attack - Level 14
  (469, 46900, 98, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Yanmega - Bug Bite - Level 30
  (469, 46900, 450, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Yanmega - Take Down - TM001
  (469, 46900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Yanmega - Scary Face - TM006
  (469, 46900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Yanmega - Protect - TM007
  (469, 46900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Yanmega - Struggle Bug - TM015
  (469, 46900, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 19),
  -- Yanmega - Thief - TM018
  (469, 46900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Yanmega - Pounce - TM021
  (469, 46900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Yanmega - Facade - TM025
  (469, 46900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Yanmega - Aerial Ace - TM027
  (469, 46900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Yanmega - Swift - TM032
  (469, 46900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Yanmega - Air Cutter - TM040
  (469, 46900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Yanmega - Endure - TM047
  (469, 46900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Yanmega - Sunny Day - TM049
  (469, 46900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Yanmega - U-turn - TM060
  (469, 46900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Yanmega - Air Slash - TM065
  (469, 46900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 29),
  -- Yanmega - Sleep Talk - TM070
  (469, 46900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Yanmega - Rest - TM085
  (469, 46900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Yanmega - Swords Dance - TM088
  (469, 46900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Yanmega - Leech Life - TM095
  (469, 46900, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 33),
  -- Yanmega - Substitute - TM103
  (469, 46900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Yanmega - Crunch - TM108
  (469, 46900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 35),
  -- Yanmega - Giga Drain - TM111
  (469, 46900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Yanmega - Tailwind - TM113
  (469, 46900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 37),
  -- Yanmega - Shadow Ball - TM114
  (469, 46900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Yanmega - Psychic - TM120
  (469, 46900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 39),
  -- Yanmega - Reversal - TM134
  (469, 46900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 40),
  -- Yanmega - Giga Impact - TM152
  (469, 46900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Yanmega - Bug Buzz - TM162
  (469, 46900, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 42),
  -- Yanmega - Hyper Beam - TM163
  (469, 46900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Yanmega - Solar Beam - TM168
  (469, 46900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Yanmega - Tera Blast - TM171
  (469, 46900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Yanmega - Whirlwind - Egg
  (469, 46900, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Yanmega - Double-Edge - Egg
  (469, 46900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yanmega - Feint - Egg
  (469, 46900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yanmega - Hypnosis - Reminder
  (469, 46900, 95, 23, NULL, 9, NULL, NULL, NULL, NULL, 49),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Take Down - Level 1
  (470, 47000, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Double-Edge - Level 1
  (470, 47000, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leafeon - Bite - Level 1
  (470, 47000, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Leafeon - Growl - Level 1
  (470, 47000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Leafeon - Swift - Level 1
  (470, 47000, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Leafeon - Charm - Level 1
  (470, 47000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Leafeon - Baton Pass - Level 1
  (470, 47000, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Leafeon - Covet - Level 1
  (470, 47000, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Leafeon - Copycat - Level 1
  (470, 47000, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Leafeon - Quick Attack - Level 10
  (470, 47000, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Leafeon - Baby-Doll Eyes - Level 15
  (470, 47000, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Leafeon - Leech Seed - Level 20
  (470, 47000, 73, 23, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Leafeon - Magical Leaf - Level 25
  (470, 47000, 345, 23, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Leafeon - Synthesis - Level 30
  (470, 47000, 235, 23, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Leafeon - Sunny Day - Level 35
  (470, 47000, 241, 23, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Leafeon - Giga Drain - Level 40
  (470, 47000, 202, 23, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Leafeon - Swords Dance - Level 45
  (470, 47000, 14, 23, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Leafeon - Leaf Blade - Level 50
  (470, 47000, 348, 23, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Leafeon - Last Resort - Level 55
  (470, 47000, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Leafeon - Take Down - TM001
  (470, 47000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 24),
  -- Leafeon - Charm - TM002
  (470, 47000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 25),
  -- Leafeon - Fake Tears - TM003
  (470, 47000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 26),
  -- Leafeon - Mud-Slap - TM005
  (470, 47000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 27),
  -- Leafeon - Protect - TM007
  (470, 47000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Leafeon - Trailblaze - TM020
  (470, 47000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Leafeon - Facade - TM025
  (470, 47000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Leafeon - Aerial Ace - TM027
  (470, 47000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 31),
  -- Leafeon - Swift - TM032
  (470, 47000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Leafeon - Magical Leaf - TM033
  (470, 47000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 33),
  -- Leafeon - Mud Shot - TM035
  (470, 47000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 34),
  -- Leafeon - Stored Power - TM041
  (470, 47000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Leafeon - Endure - TM047
  (470, 47000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Leafeon - Sunny Day - TM049
  (470, 47000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Leafeon - Rain Dance - TM050
  (470, 47000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Leafeon - Dig - TM055
  (470, 47000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Leafeon - Bullet Seed - TM056
  (470, 47000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 40),
  -- Leafeon - Body Slam - TM066
  (470, 47000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Leafeon - Sleep Talk - TM070
  (470, 47000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Leafeon - Seed Bomb - TM071
  (470, 47000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Leafeon - Grass Knot - TM081
  (470, 47000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Leafeon - Rest - TM085
  (470, 47000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Leafeon - Swords Dance - TM088
  (470, 47000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Leafeon - Substitute - TM103
  (470, 47000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Leafeon - X-Scissor - TM105
  (470, 47000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 48),
  -- Leafeon - Giga Drain - TM111
  (470, 47000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Leafeon - Shadow Ball - TM114
  (470, 47000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Leafeon - Hyper Voice - TM117
  (470, 47000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 51),
  -- Leafeon - Energy Ball - TM119
  (470, 47000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Leafeon - Calm Mind - TM129
  (470, 47000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 53),
  -- Leafeon - Helping Hand - TM130
  (470, 47000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Leafeon - Baton Pass - TM132
  (470, 47000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 55),
  -- Leafeon - Giga Impact - TM152
  (470, 47000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Leafeon - Leaf Storm - TM159
  (470, 47000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 57),
  -- Leafeon - Hyper Beam - TM163
  (470, 47000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Leafeon - Solar Beam - TM168
  (470, 47000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Leafeon - Tera Blast - TM171
  (470, 47000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Leafeon - Double Kick - Egg
  (470, 47000, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Leafeon - Curse - Egg
  (470, 47000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Leafeon - Flail - Egg
  (470, 47000, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Leafeon - Mud-Slap - Egg
  (470, 47000, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Leafeon - Detect - Egg
  (470, 47000, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Leafeon - Wish - Egg
  (470, 47000, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Leafeon - Yawn - Egg
  (470, 47000, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Leafeon - Tickle - Egg
  (470, 47000, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Leafeon - Razor Leaf - Evolution
  (470, 47000, 75, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Take Down - Level 1
  (471, 47100, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Double-Edge - Level 1
  (471, 47100, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glaceon - Growl - Level 1
  (471, 47100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glaceon - Swift - Level 1
  (471, 47100, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Glaceon - Charm - Level 1
  (471, 47100, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Glaceon - Baton Pass - Level 1
  (471, 47100, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Glaceon - Covet - Level 1
  (471, 47100, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Glaceon - Copycat - Level 1
  (471, 47100, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 12),
  -- Glaceon - Quick Attack - Level 10
  (471, 47100, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 13),
  -- Glaceon - Baby-Doll Eyes - Level 15
  (471, 47100, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Glaceon - Ice Shard - Level 20
  (471, 47100, 420, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Glaceon - Bite - Level 25
  (471, 47100, 44, 23, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Glaceon - Ice Fang - Level 30
  (471, 47100, 423, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Glaceon - Snowscape - Level 35
  (471, 47100, 883, 23, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Glaceon - Freeze-Dry - Level 40
  (471, 47100, 573, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Glaceon - Mirror Coat - Level 45
  (471, 47100, 243, 23, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Glaceon - Blizzard - Level 50
  (471, 47100, 59, 23, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Glaceon - Last Resort - Level 55
  (471, 47100, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Glaceon - Take Down - TM001
  (471, 47100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Glaceon - Charm - TM002
  (471, 47100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Glaceon - Fake Tears - TM003
  (471, 47100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 25),
  -- Glaceon - Mud-Slap - TM005
  (471, 47100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Glaceon - Protect - TM007
  (471, 47100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 27),
  -- Glaceon - Ice Fang - TM010
  (471, 47100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 28),
  -- Glaceon - Water Pulse - TM011
  (471, 47100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 29),
  -- Glaceon - Trailblaze - TM020
  (471, 47100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Glaceon - Chilling Water - TM022
  (471, 47100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 31),
  -- Glaceon - Facade - TM025
  (471, 47100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Glaceon - Swift - TM032
  (471, 47100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Glaceon - Icy Wind - TM034
  (471, 47100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 34),
  -- Glaceon - Mud Shot - TM035
  (471, 47100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 35),
  -- Glaceon - Stored Power - TM041
  (471, 47100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Glaceon - Avalanche - TM046
  (471, 47100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 37),
  -- Glaceon - Endure - TM047
  (471, 47100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Glaceon - Sunny Day - TM049
  (471, 47100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Glaceon - Rain Dance - TM050
  (471, 47100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 40),
  -- Glaceon - Snowscape - TM052
  (471, 47100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 41),
  -- Glaceon - Dig - TM055
  (471, 47100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Glaceon - Body Slam - TM066
  (471, 47100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Glaceon - Sleep Talk - TM070
  (471, 47100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Glaceon - Rest - TM085
  (471, 47100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Glaceon - Substitute - TM103
  (471, 47100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Glaceon - Shadow Ball - TM114
  (471, 47100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Glaceon - Hyper Voice - TM117
  (471, 47100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 48),
  -- Glaceon - Calm Mind - TM129
  (471, 47100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Glaceon - Helping Hand - TM130
  (471, 47100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Glaceon - Baton Pass - TM132
  (471, 47100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Glaceon - Ice Beam - TM135
  (471, 47100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Glaceon - Blizzard - TM143
  (471, 47100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Glaceon - Giga Impact - TM152
  (471, 47100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Glaceon - Hyper Beam - TM163
  (471, 47100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Glaceon - Tera Blast - TM171
  (471, 47100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Glaceon - Double Kick - Egg
  (471, 47100, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Glaceon - Curse - Egg
  (471, 47100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Glaceon - Flail - Egg
  (471, 47100, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Glaceon - Mud-Slap - Egg
  (471, 47100, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Glaceon - Detect - Egg
  (471, 47100, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Glaceon - Wish - Egg
  (471, 47100, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Glaceon - Yawn - Egg
  (471, 47100, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Glaceon - Tickle - Egg
  (471, 47100, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Glaceon - Icy Wind - Evolution
  (471, 47100, 196, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Quick Attack - Level 13
  (472, 47200, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Gliscor - Fury Cutter - Level 16
  (472, 47200, 210, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Gliscor - Knock Off - Level 19
  (472, 47200, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Gliscor - Acrobatics - Level 22
  (472, 47200, 512, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gliscor - Night Slash - Level 27
  (472, 47200, 400, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Gliscor - U-turn - Level 30
  (472, 47200, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gliscor - Screech - Level 35
  (472, 47200, 103, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Gliscor - X-Scissor - Level 40
  (472, 47200, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Gliscor - Crabhammer - Level 45
  (472, 47200, 152, 23, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Gliscor - Swords Dance - Level 50
  (472, 47200, 14, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Gliscor - Take Down - TM001
  (472, 47200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Gliscor - Agility - TM004
  (472, 47200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Gliscor - Mud-Slap - TM005
  (472, 47200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Gliscor - Scary Face - TM006
  (472, 47200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Gliscor - Protect - TM007
  (472, 47200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Gliscor - Fire Fang - TM008
  (472, 47200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Gliscor - Thunder Fang - TM009
  (472, 47200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Gliscor - Ice Fang - TM010
  (472, 47200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Gliscor - Acrobatics - TM014
  (472, 47200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 25),
  -- Gliscor - Struggle Bug - TM015
  (472, 47200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 26),
  -- Gliscor - Thief - TM018
  (472, 47200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 27),
  -- Gliscor - Facade - TM025
  (472, 47200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Gliscor - Poison Tail - TM026
  (472, 47200, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 29),
  -- Gliscor - Aerial Ace - TM027
  (472, 47200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 30),
  -- Gliscor - Bulldoze - TM028
  (472, 47200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 31),
  -- Gliscor - Metal Claw - TM031
  (472, 47200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 32),
  -- Gliscor - Swift - TM032
  (472, 47200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Gliscor - Mud Shot - TM035
  (472, 47200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 34),
  -- Gliscor - Rock Tomb - TM036
  (472, 47200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 35),
  -- Gliscor - Fling - TM043
  (472, 47200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Gliscor - Venoshock - TM045
  (472, 47200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 37),
  -- Gliscor - Endure - TM047
  (472, 47200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Gliscor - Sunny Day - TM049
  (472, 47200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Gliscor - Rain Dance - TM050
  (472, 47200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 40),
  -- Gliscor - Sandstorm - TM051
  (472, 47200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 41),
  -- Gliscor - False Swipe - TM057
  (472, 47200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 42),
  -- Gliscor - Brick Break - TM058
  (472, 47200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Gliscor - U-turn - TM060
  (472, 47200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 44),
  -- Gliscor - Psychic Fangs - TM063
  (472, 47200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 45),
  -- Gliscor - Sleep Talk - TM070
  (472, 47200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Gliscor - Poison Jab - TM083
  (472, 47200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Gliscor - Rest - TM085
  (472, 47200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Gliscor - Rock Slide - TM086
  (472, 47200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 49),
  -- Gliscor - Taunt - TM087
  (472, 47200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 50),
  -- Gliscor - Swords Dance - TM088
  (472, 47200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 51),
  -- Gliscor - Spikes - TM090
  (472, 47200, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 52),
  -- Gliscor - Toxic Spikes - TM091
  (472, 47200, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 53),
  -- Gliscor - Dark Pulse - TM094
  (472, 47200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 54),
  -- Gliscor - Gunk Shot - TM102
  (472, 47200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 55),
  -- Gliscor - Substitute - TM103
  (472, 47200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Gliscor - X-Scissor - TM105
  (472, 47200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 57),
  -- Gliscor - Crunch - TM108
  (472, 47200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 58),
  -- Gliscor - Tailwind - TM113
  (472, 47200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 59),
  -- Gliscor - Stealth Rock - TM116
  (472, 47200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 60),
  -- Gliscor - Baton Pass - TM132
  (472, 47200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 61),
  -- Gliscor - Earth Power - TM133
  (472, 47200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 62),
  -- Gliscor - Sludge Bomb - TM148
  (472, 47200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 63),
  -- Gliscor - Earthquake - TM149
  (472, 47200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 64),
  -- Gliscor - Stone Edge - TM150
  (472, 47200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 65),
  -- Gliscor - Giga Impact - TM152
  (472, 47200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 66),
  -- Gliscor - Hyper Beam - TM163
  (472, 47200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Gliscor - Tera Blast - TM171
  (472, 47200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Gliscor - Wing Attack - Egg
  (472, 47200, 17, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gliscor - Double-Edge - Egg
  (472, 47200, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gliscor - Counter - Egg
  (472, 47200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Gliscor - Feint - Egg
  (472, 47200, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Gliscor - Night Slash - Egg
  (472, 47200, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Gliscor - Cross Poison - Egg
  (472, 47200, 440, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mamoswine - Tackle - Level 1
  (473, 47300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Flail - Level 1
  (473, 47300, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Mud-Slap - Level 1
  (473, 47300, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Ice Fang - Level 1
  (473, 47300, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mamoswine - Ice Shard - Level 15
  (473, 47300, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mamoswine - Mist - Level 20
  (473, 47300, 54, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Mamoswine - Endure - Level 25
  (473, 47300, 203, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Mamoswine - Icy Wind - Level 30
  (473, 47300, 196, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Mamoswine - Amnesia - Level 37
  (473, 47300, 133, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Mamoswine - Take Down - Level 44
  (473, 47300, 36, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Mamoswine - Earthquake - Level 51
  (473, 47300, 89, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Mamoswine - Blizzard - Level 58
  (473, 47300, 59, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Mamoswine - Thrash - Level 65
  (473, 47300, 37, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Mamoswine - Take Down - TM001
  (473, 47300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Mamoswine - Charm - TM002
  (473, 47300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Mamoswine - Mud-Slap - TM005
  (473, 47300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Mamoswine - Scary Face - TM006
  (473, 47300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Mamoswine - Protect - TM007
  (473, 47300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Mamoswine - Ice Fang - TM010
  (473, 47300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Mamoswine - Trailblaze - TM020
  (473, 47300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Mamoswine - Facade - TM025
  (473, 47300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Mamoswine - Bulldoze - TM028
  (473, 47300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Mamoswine - Icy Wind - TM034
  (473, 47300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Mamoswine - Mud Shot - TM035
  (473, 47300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Mamoswine - Rock Tomb - TM036
  (473, 47300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Mamoswine - Avalanche - TM046
  (473, 47300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 28),
  -- Mamoswine - Endure - TM047
  (473, 47300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Mamoswine - Rain Dance - TM050
  (473, 47300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Mamoswine - Sandstorm - TM051
  (473, 47300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Mamoswine - Snowscape - TM052
  (473, 47300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Mamoswine - Dig - TM055
  (473, 47300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Mamoswine - Body Slam - TM066
  (473, 47300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Mamoswine - Sleep Talk - TM070
  (473, 47300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Mamoswine - Reflect - TM074
  (473, 47300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Mamoswine - Rock Blast - TM076
  (473, 47300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Mamoswine - Stomping Tantrum - TM084
  (473, 47300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Mamoswine - Rest - TM085
  (473, 47300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Mamoswine - Rock Slide - TM086
  (473, 47300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Mamoswine - Body Press - TM089
  (473, 47300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Mamoswine - Iron Head - TM099
  (473, 47300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Mamoswine - Substitute - TM103
  (473, 47300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Mamoswine - Stealth Rock - TM116
  (473, 47300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Mamoswine - Heavy Slam - TM121
  (473, 47300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Mamoswine - Amnesia - TM128
  (473, 47300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Mamoswine - Earth Power - TM133
  (473, 47300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Mamoswine - Reversal - TM134
  (473, 47300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Mamoswine - Ice Beam - TM135
  (473, 47300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Mamoswine - Blizzard - TM143
  (473, 47300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Mamoswine - Earthquake - TM149
  (473, 47300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Mamoswine - Stone Edge - TM150
  (473, 47300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Mamoswine - Giga Impact - TM152
  (473, 47300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Mamoswine - Hyper Beam - TM163
  (473, 47300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Mamoswine - Tera Blast - TM171
  (473, 47300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Mamoswine - Double-Edge - Egg
  (473, 47300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mamoswine - Bite - Egg
  (473, 47300, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mamoswine - Fissure - Egg
  (473, 47300, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mamoswine - Curse - Egg
  (473, 47300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mamoswine - Ancient Power - Egg
  (473, 47300, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mamoswine - Icicle Crash - Egg
  (473, 47300, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mamoswine - Freeze-Dry - Egg
  (473, 47300, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mamoswine - Double Hit - Evolution
  (473, 47300, 458, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Defense Curl - Level 1
  (474, 47400, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Recycle - Level 1
  (474, 47400, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Magnet Rise - Level 1
  (474, 47400, 393, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Porygon-Z - Thunder Shock - Level 15
  (474, 47400, 84, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Porygon-Z - Psybeam - Level 20
  (474, 47400, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Porygon-Z - Conversion 2 - Level 25
  (474, 47400, 176, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Porygon-Z - Agility - Level 30
  (474, 47400, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Porygon-Z - Recover - Level 35
  (474, 47400, 105, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 45
  (474, 47400, 161, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Porygon-Z - Double-Edge - Level 50
  (474, 47400, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Porygon-Z - Lock-On - Level 55
  (474, 47400, 199, 23, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Porygon-Z - Zap Cannon - Level 60
  (474, 47400, 192, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Porygon-Z - Hyper Beam - Level 65
  (474, 47400, 63, 23, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Porygon-Z - Take Down - TM001
  (474, 47400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Porygon-Z - Agility - TM004
  (474, 47400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Porygon-Z - Protect - TM007
  (474, 47400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Porygon-Z - Psybeam - TM016
  (474, 47400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Porygon-Z - Thief - TM018
  (474, 47400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Porygon-Z - Charge Beam - TM023
  (474, 47400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Porygon-Z - Facade - TM025
  (474, 47400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Porygon-Z - Swift - TM032
  (474, 47400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Porygon-Z - Icy Wind - TM034
  (474, 47400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Porygon-Z - Endure - TM047
  (474, 47400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Porygon-Z - Sunny Day - TM049
  (474, 47400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Porygon-Z - Rain Dance - TM050
  (474, 47400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Porygon-Z - Psyshock - TM054
  (474, 47400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Porygon-Z - Zen Headbutt - TM059
  (474, 47400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Porygon-Z - Foul Play - TM062
  (474, 47400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Porygon-Z - Sleep Talk - TM070
  (474, 47400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Porygon-Z - Thunder Wave - TM082
  (474, 47400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Porygon-Z - Rest - TM085
  (474, 47400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Porygon-Z - Dark Pulse - TM094
  (474, 47400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Porygon-Z - Eerie Impulse - TM096
  (474, 47400, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 38),
  -- Porygon-Z - Substitute - TM103
  (474, 47400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Porygon-Z - Trick - TM109
  (474, 47400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 40),
  -- Porygon-Z - Shadow Ball - TM114
  (474, 47400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Porygon-Z - Psychic - TM120
  (474, 47400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Porygon-Z - Thunderbolt - TM126
  (474, 47400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Porygon-Z - Ice Beam - TM135
  (474, 47400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 44),
  -- Porygon-Z - Nasty Plot - TM140
  (474, 47400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 45),
  -- Porygon-Z - Blizzard - TM143
  (474, 47400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 46),
  -- Porygon-Z - Giga Impact - TM152
  (474, 47400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Porygon-Z - Trick Room - TM161
  (474, 47400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 48),
  -- Porygon-Z - Hyper Beam - TM163
  (474, 47400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Porygon-Z - Thunder - TM166
  (474, 47400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Porygon-Z - Solar Beam - TM168
  (474, 47400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Porygon-Z - Tera Blast - TM171
  (474, 47400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Growl - Level 1
  (475, 47500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Psybeam - Level 1
  (475, 47500, 60, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Psychic - Level 1
  (475, 47500, 94, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Hypnosis - Level 1
  (475, 47500, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gallade - Dream Eater - Level 1
  (475, 47500, 138, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gallade - Charm - Level 1
  (475, 47500, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gallade - Fury Cutter - Level 1
  (475, 47500, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Gallade - Future Sight - Level 1
  (475, 47500, 248, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Gallade - Imprison - Level 1
  (475, 47500, 286, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Gallade - Calm Mind - Level 1
  (475, 47500, 347, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Gallade - Sacred Sword - Level 1
  (475, 47500, 533, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Gallade - Disarming Voice - Level 1
  (475, 47500, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Gallade - Draining Kiss - Level 1
  (475, 47500, 577, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Gallade - Life Dew - Level 1
  (475, 47500, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Gallade - Aqua Cutter - Level 1
  (475, 47500, 895, 23, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Gallade - Helping Hand - Level 9
  (475, 47500, 270, 23, NULL, 1, 9, NULL, NULL, NULL, 21),
  -- Gallade - Feint - Level 12
  (475, 47500, 364, 23, NULL, 1, 12, NULL, NULL, NULL, 22),
  -- Gallade - Teleport - Level 15
  (475, 47500, 100, 23, NULL, 1, 15, NULL, NULL, NULL, 23),
  -- Gallade - Aerial Ace - Level 18
  (475, 47500, 332, 23, NULL, 1, 18, NULL, NULL, NULL, 24),
  -- Gallade - False Swipe - Level 23
  (475, 47500, 206, 23, NULL, 1, 23, NULL, NULL, NULL, 25),
  -- Gallade - Protect - Level 28
  (475, 47500, 182, 23, NULL, 1, 28, NULL, NULL, NULL, 26),
  -- Gallade - Swords Dance - Level 35
  (475, 47500, 14, 23, NULL, 1, 35, NULL, NULL, NULL, 27),
  -- Gallade - Psycho Cut - Level 42
  (475, 47500, 427, 23, NULL, 1, 42, NULL, NULL, NULL, 28),
  -- Gallade - Heal Pulse - Level 49
  (475, 47500, 505, 23, NULL, 1, 49, NULL, NULL, NULL, 29),
  -- Gallade - Wide Guard - Level 56
  (475, 47500, 469, 23, NULL, 1, 56, NULL, NULL, NULL, 30),
  -- Gallade - Quick Guard - Level 56
  (475, 47500, 501, 23, NULL, 1, 56, NULL, NULL, NULL, 31),
  -- Gallade - Close Combat - Level 63
  (475, 47500, 370, 23, NULL, 1, 63, NULL, NULL, NULL, 32),
  -- Gallade - Take Down - TM001
  (475, 47500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 33),
  -- Gallade - Charm - TM002
  (475, 47500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 34),
  -- Gallade - Agility - TM004
  (475, 47500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 35),
  -- Gallade - Protect - TM007
  (475, 47500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 36),
  -- Gallade - Low Kick - TM012
  (475, 47500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 37),
  -- Gallade - Psybeam - TM016
  (475, 47500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 38),
  -- Gallade - Confuse Ray - TM017
  (475, 47500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 39),
  -- Gallade - Thief - TM018
  (475, 47500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 40),
  -- Gallade - Disarming Voice - TM019
  (475, 47500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 41),
  -- Gallade - Charge Beam - TM023
  (475, 47500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 42),
  -- Gallade - Facade - TM025
  (475, 47500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 43),
  -- Gallade - Aerial Ace - TM027
  (475, 47500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 44),
  -- Gallade - Bulldoze - TM028
  (475, 47500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 45),
  -- Gallade - Hex - TM029
  (475, 47500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 46),
  -- Gallade - Swift - TM032
  (475, 47500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 47),
  -- Gallade - Magical Leaf - TM033
  (475, 47500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 48),
  -- Gallade - Icy Wind - TM034
  (475, 47500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 49),
  -- Gallade - Rock Tomb - TM036
  (475, 47500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 50),
  -- Gallade - Draining Kiss - TM037
  (475, 47500, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 51),
  -- Gallade - Low Sweep - TM039
  (475, 47500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 52),
  -- Gallade - Stored Power - TM041
  (475, 47500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 53),
  -- Gallade - Night Shade - TM042
  (475, 47500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 54),
  -- Gallade - Fling - TM043
  (475, 47500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 55),
  -- Gallade - Endure - TM047
  (475, 47500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 56),
  -- Gallade - Sunny Day - TM049
  (475, 47500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 57),
  -- Gallade - Rain Dance - TM050
  (475, 47500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 58),
  -- Gallade - Psyshock - TM054
  (475, 47500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 59),
  -- Gallade - False Swipe - TM057
  (475, 47500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 60),
  -- Gallade - Brick Break - TM058
  (475, 47500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 61),
  -- Gallade - Zen Headbutt - TM059
  (475, 47500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 62),
  -- Gallade - Shadow Claw - TM061
  (475, 47500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 63),
  -- Gallade - Bulk Up - TM064
  (475, 47500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 64),
  -- Gallade - Air Slash - TM065
  (475, 47500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 65),
  -- Gallade - Body Slam - TM066
  (475, 47500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 66),
  -- Gallade - Fire Punch - TM067
  (475, 47500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 67),
  -- Gallade - Thunder Punch - TM068
  (475, 47500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 68),
  -- Gallade - Ice Punch - TM069
  (475, 47500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 69),
  -- Gallade - Sleep Talk - TM070
  (475, 47500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 70),
  -- Gallade - Drain Punch - TM073
  (475, 47500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 71),
  -- Gallade - Reflect - TM074
  (475, 47500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 72),
  -- Gallade - Light Screen - TM075
  (475, 47500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 73),
  -- Gallade - Dazzling Gleam - TM079
  (475, 47500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 74),
  -- Gallade - Metronome - TM080
  (475, 47500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 75),
  -- Gallade - Grass Knot - TM081
  (475, 47500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 76),
  -- Gallade - Thunder Wave - TM082
  (475, 47500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 77),
  -- Gallade - Poison Jab - TM083
  (475, 47500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 78),
  -- Gallade - Rest - TM085
  (475, 47500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 79),
  -- Gallade - Rock Slide - TM086
  (475, 47500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 80),
  -- Gallade - Taunt - TM087
  (475, 47500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 81),
  -- Gallade - Swords Dance - TM088
  (475, 47500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 82),
  -- Gallade - Imprison - TM092
  (475, 47500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 83),
  -- Gallade - Skill Swap - TM098
  (475, 47500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 84),
  -- Gallade - Substitute - TM103
  (475, 47500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 85),
  -- Gallade - X-Scissor - TM105
  (475, 47500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 86),
  -- Gallade - Will-O-Wisp - TM107
  (475, 47500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 87),
  -- Gallade - Trick - TM109
  (475, 47500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 88),
  -- Gallade - Aura Sphere - TM112
  (475, 47500, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 89),
  -- Gallade - Shadow Ball - TM114
  (475, 47500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 90),
  -- Gallade - Hyper Voice - TM117
  (475, 47500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 91),
  -- Gallade - Energy Ball - TM119
  (475, 47500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 92),
  -- Gallade - Psychic - TM120
  (475, 47500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 93),
  -- Gallade - Encore - TM122
  (475, 47500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 94),
  -- Gallade - Thunderbolt - TM126
  (475, 47500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 95),
  -- Gallade - Calm Mind - TM129
  (475, 47500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 96),
  -- Gallade - Helping Hand - TM130
  (475, 47500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 97),
  -- Gallade - Reversal - TM134
  (475, 47500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 98),
  -- Gallade - Psychic Terrain - TM138
  (475, 47500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 99),
  -- Gallade - Misty Terrain - TM139
  (475, 47500, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 100),
  -- Gallade - Earthquake - TM149
  (475, 47500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 101),
  -- Gallade - Stone Edge - TM150
  (475, 47500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 102),
  -- Gallade - Giga Impact - TM152
  (475, 47500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 103),
  -- Gallade - Focus Blast - TM158
  (475, 47500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 104),
  -- Gallade - Trick Room - TM161
  (475, 47500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 105),
  -- Gallade - Hyper Beam - TM163
  (475, 47500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 106),
  -- Gallade - Close Combat - TM167
  (475, 47500, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 107),
  -- Gallade - Tera Blast - TM171
  (475, 47500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 108),
  -- Gallade - Disable - Egg
  (475, 47500, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 109),
  -- Gallade - Confuse Ray - Egg
  (475, 47500, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 110),
  -- Gallade - Destiny Bond - Egg
  (475, 47500, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 111),
  -- Gallade - Mean Look - Egg
  (475, 47500, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 112),
  -- Gallade - Memento - Egg
  (475, 47500, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 113),
  -- Gallade - Knock Off - Egg
  (475, 47500, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 114),
  -- Gallade - Shadow Sneak - Egg
  (475, 47500, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 115),
  -- Gallade - Mystical Fire - Egg
  (475, 47500, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 116),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 23, NULL, 7, NULL, NULL, NULL, NULL, 117),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Wide Guard - Level 1
  (476, 47600, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Magnetic Flux - Level 1
  (476, 47600, 602, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Probopass - Thunder Wave - Level 13
  (476, 47600, 86, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Probopass - Rest - Level 16
  (476, 47600, 156, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Probopass - Spark - Level 19
  (476, 47600, 209, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Probopass - Rock Slide - Level 22
  (476, 47600, 157, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Probopass - Power Gem - Level 25
  (476, 47600, 408, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Probopass - Rock Blast - Level 28
  (476, 47600, 350, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Probopass - Discharge - Level 31
  (476, 47600, 435, 23, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Probopass - Sandstorm - Level 34
  (476, 47600, 201, 23, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Probopass - Earth Power - Level 37
  (476, 47600, 414, 23, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Probopass - Stone Edge - Level 40
  (476, 47600, 444, 23, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Probopass - Zap Cannon - Level 43
  (476, 47600, 192, 23, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Probopass - Lock-On - Level 43
  (476, 47600, 199, 23, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Probopass - Take Down - TM001
  (476, 47600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Probopass - Protect - TM007
  (476, 47600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Probopass - Facade - TM025
  (476, 47600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Probopass - Bulldoze - TM028
  (476, 47600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Probopass - Rock Tomb - TM036
  (476, 47600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Probopass - Endure - TM047
  (476, 47600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Probopass - Volt Switch - TM048
  (476, 47600, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Probopass - Sunny Day - TM049
  (476, 47600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Probopass - Sandstorm - TM051
  (476, 47600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Probopass - Body Slam - TM066
  (476, 47600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Probopass - Fire Punch - TM067
  (476, 47600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Probopass - Thunder Punch - TM068
  (476, 47600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Probopass - Ice Punch - TM069
  (476, 47600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 32),
  -- Probopass - Sleep Talk - TM070
  (476, 47600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Probopass - Rock Blast - TM076
  (476, 47600, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Probopass - Dazzling Gleam - TM079
  (476, 47600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Probopass - Thunder Wave - TM082
  (476, 47600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Probopass - Stomping Tantrum - TM084
  (476, 47600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Probopass - Rest - TM085
  (476, 47600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Probopass - Rock Slide - TM086
  (476, 47600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Probopass - Taunt - TM087
  (476, 47600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Probopass - Body Press - TM089
  (476, 47600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Probopass - Flash Cannon - TM093
  (476, 47600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 42),
  -- Probopass - Iron Head - TM099
  (476, 47600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 43),
  -- Probopass - Power Gem - TM101
  (476, 47600, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Probopass - Substitute - TM103
  (476, 47600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Probopass - Iron Defense - TM104
  (476, 47600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 46),
  -- Probopass - Stealth Rock - TM116
  (476, 47600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Probopass - Heavy Slam - TM121
  (476, 47600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Probopass - Thunderbolt - TM126
  (476, 47600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Probopass - Helping Hand - TM130
  (476, 47600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Probopass - Earth Power - TM133
  (476, 47600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Probopass - Earthquake - TM149
  (476, 47600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Probopass - Stone Edge - TM150
  (476, 47600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 53),
  -- Probopass - Giga Impact - TM152
  (476, 47600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Probopass - Hyper Beam - TM163
  (476, 47600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Probopass - Thunder - TM166
  (476, 47600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Probopass - Steel Beam - TM170
  (476, 47600, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Probopass - Tera Blast - TM171
  (476, 47600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Probopass - Double-Edge - Egg
  (476, 47600, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Probopass - Rollout - Egg
  (476, 47600, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Probopass - Head Smash - Egg
  (476, 47600, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Probopass - Wide Guard - Egg
  (476, 47600, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Probopass - Tri Attack - Evolution
  (476, 47600, 161, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Astonish - Level 1
  (477, 47700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Shadow Punch - Level 1
  (477, 47700, 325, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusknoir - Shadow Sneak - Level 1
  (477, 47700, 425, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dusknoir - Confuse Ray - Level 12
  (477, 47700, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Dusknoir - Night Shade - Level 16
  (477, 47700, 101, 23, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Dusknoir - Payback - Level 20
  (477, 47700, 371, 23, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Dusknoir - Will-O-Wisp - Level 24
  (477, 47700, 261, 23, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Dusknoir - Mean Look - Level 28
  (477, 47700, 212, 23, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Dusknoir - Hex - Level 32
  (477, 47700, 506, 23, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Dusknoir - Curse - Level 36
  (477, 47700, 174, 23, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Dusknoir - Shadow Ball - Level 42
  (477, 47700, 247, 23, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Future Sight - Level 48
  (477, 47700, 248, 23, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Dusknoir - Destiny Bond - Level 54
  (477, 47700, 194, 23, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Dusknoir - Protect - TM007
  (477, 47700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Dusknoir - Confuse Ray - TM017
  (477, 47700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Dusknoir - Thief - TM018
  (477, 47700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Dusknoir - Charge Beam - TM023
  (477, 47700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Dusknoir - Facade - TM025
  (477, 47700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Dusknoir - Hex - TM029
  (477, 47700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Dusknoir - Swift - TM032
  (477, 47700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Dusknoir - Icy Wind - TM034
  (477, 47700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Dusknoir - Rock Tomb - TM036
  (477, 47700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Dusknoir - Night Shade - TM042
  (477, 47700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Dusknoir - Fling - TM043
  (477, 47700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Dusknoir - Endure - TM047
  (477, 47700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Dusknoir - Sunny Day - TM049
  (477, 47700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Dusknoir - Rain Dance - TM050
  (477, 47700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Dusknoir - Brick Break - TM058
  (477, 47700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Dusknoir - Body Slam - TM066
  (477, 47700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Dusknoir - Fire Punch - TM067
  (477, 47700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Dusknoir - Thunder Punch - TM068
  (477, 47700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Dusknoir - Ice Punch - TM069
  (477, 47700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Dusknoir - Sleep Talk - TM070
  (477, 47700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Dusknoir - Metronome - TM080
  (477, 47700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Dusknoir - Rest - TM085
  (477, 47700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Dusknoir - Rock Slide - TM086
  (477, 47700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Dusknoir - Taunt - TM087
  (477, 47700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Dusknoir - Imprison - TM092
  (477, 47700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Dusknoir - Dark Pulse - TM094
  (477, 47700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Dusknoir - Leech Life - TM095
  (477, 47700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 47),
  -- Dusknoir - Skill Swap - TM098
  (477, 47700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Dusknoir - Substitute - TM103
  (477, 47700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Dusknoir - Will-O-Wisp - TM107
  (477, 47700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 50),
  -- Dusknoir - Trick - TM109
  (477, 47700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 51),
  -- Dusknoir - Shadow Ball - TM114
  (477, 47700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Dusknoir - Psychic - TM120
  (477, 47700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Dusknoir - Calm Mind - TM129
  (477, 47700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 54),
  -- Dusknoir - Helping Hand - TM130
  (477, 47700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Dusknoir - Ice Beam - TM135
  (477, 47700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 56),
  -- Dusknoir - Blizzard - TM143
  (477, 47700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 57),
  -- Dusknoir - Earthquake - TM149
  (477, 47700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Dusknoir - Phantom Force - TM151
  (477, 47700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 59),
  -- Dusknoir - Giga Impact - TM152
  (477, 47700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Dusknoir - Focus Blast - TM158
  (477, 47700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Dusknoir - Trick Room - TM161
  (477, 47700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 62),
  -- Dusknoir - Hyper Beam - TM163
  (477, 47700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Dusknoir - Tera Blast - TM171
  (477, 47700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Dusknoir - Haze - Egg
  (477, 47700, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dusknoir - Pain Split - Egg
  (477, 47700, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dusknoir - Memento - Egg
  (477, 47700, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Froslass - Headbutt - Level 1
  (478, 47800, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Bite - Level 1
  (478, 47800, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Froslass - Protect - Level 1
  (478, 47800, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Froslass - Destiny Bond - Level 1
  (478, 47800, 194, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Froslass - Crunch - Level 1
  (478, 47800, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Froslass - Ice Fang - Level 1
  (478, 47800, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Froslass - Ice Shard - Level 15
  (478, 47800, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Froslass - Draining Kiss - Level 20
  (478, 47800, 577, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Froslass - Icy Wind - Level 25
  (478, 47800, 196, 23, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Froslass - Frost Breath - Level 30
  (478, 47800, 524, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Froslass - Confuse Ray - Level 35
  (478, 47800, 109, 23, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Froslass - Snowscape - Level 40
  (478, 47800, 883, 23, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Froslass - Will-O-Wisp - Level 47
  (478, 47800, 261, 23, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Froslass - Aurora Veil - Level 54
  (478, 47800, 694, 23, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Froslass - Shadow Ball - Level 61
  (478, 47800, 247, 23, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Froslass - Blizzard - Level 68
  (478, 47800, 59, 23, NULL, 1, 68, NULL, NULL, NULL, 20),
  -- Froslass - Take Down - TM001
  (478, 47800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Froslass - Charm - TM002
  (478, 47800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Froslass - Fake Tears - TM003
  (478, 47800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 23),
  -- Froslass - Scary Face - TM006
  (478, 47800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 24),
  -- Froslass - Protect - TM007
  (478, 47800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Froslass - Ice Fang - TM010
  (478, 47800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 26),
  -- Froslass - Water Pulse - TM011
  (478, 47800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 27),
  -- Froslass - Confuse Ray - TM017
  (478, 47800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 28),
  -- Froslass - Trailblaze - TM020
  (478, 47800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Froslass - Chilling Water - TM022
  (478, 47800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 30),
  -- Froslass - Facade - TM025
  (478, 47800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Froslass - Hex - TM029
  (478, 47800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 32),
  -- Froslass - Icy Wind - TM034
  (478, 47800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 33),
  -- Froslass - Draining Kiss - TM037
  (478, 47800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 34),
  -- Froslass - Night Shade - TM042
  (478, 47800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 35),
  -- Froslass - Fling - TM043
  (478, 47800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Froslass - Avalanche - TM046
  (478, 47800, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 37),
  -- Froslass - Endure - TM047
  (478, 47800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Froslass - Rain Dance - TM050
  (478, 47800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Froslass - Snowscape - TM052
  (478, 47800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 40),
  -- Froslass - Body Slam - TM066
  (478, 47800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Froslass - Ice Punch - TM069
  (478, 47800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Froslass - Sleep Talk - TM070
  (478, 47800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Froslass - Reflect - TM074
  (478, 47800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Froslass - Light Screen - TM075
  (478, 47800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Froslass - Thunder Wave - TM082
  (478, 47800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Froslass - Rest - TM085
  (478, 47800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Froslass - Taunt - TM087
  (478, 47800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Froslass - Spikes - TM090
  (478, 47800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 49),
  -- Froslass - Imprison - TM092
  (478, 47800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 50),
  -- Froslass - Substitute - TM103
  (478, 47800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Froslass - Will-O-Wisp - TM107
  (478, 47800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 52),
  -- Froslass - Crunch - TM108
  (478, 47800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Froslass - Trick - TM109
  (478, 47800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 54),
  -- Froslass - Shadow Ball - TM114
  (478, 47800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Froslass - Psychic - TM120
  (478, 47800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 56),
  -- Froslass - Ice Spinner - TM124
  (478, 47800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 57),
  -- Froslass - Thunderbolt - TM126
  (478, 47800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 58),
  -- Froslass - Helping Hand - TM130
  (478, 47800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Froslass - Ice Beam - TM135
  (478, 47800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 60),
  -- Froslass - Blizzard - TM143
  (478, 47800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 61),
  -- Froslass - Giga Impact - TM152
  (478, 47800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Froslass - Hyper Beam - TM163
  (478, 47800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Froslass - Thunder - TM166
  (478, 47800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 64),
  -- Froslass - Tera Blast - TM171
  (478, 47800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Froslass - Disable - Egg
  (478, 47800, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Froslass - Rollout - Egg
  (478, 47800, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Froslass - Block - Egg
  (478, 47800, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Froslass - Switcheroo - Egg
  (478, 47800, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Froslass - Icicle Crash - Egg
  (478, 47800, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Froslass - Hex - Evolution
  (478, 47800, 506, 23, NULL, 7, NULL, NULL, NULL, NULL, 71),
  -- Rotom - Double Team - Level 1
  (479, 47900, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Thunder Shock - Level 5
  (479, 47900, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom - Confuse Ray - Level 10
  (479, 47900, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom - Charge - Level 15
  (479, 47900, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom - Electro Ball - Level 20
  (479, 47900, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom - Thunder Wave - Level 25
  (479, 47900, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 30
  (479, 47900, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom - Hex - Level 35
  (479, 47900, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 40
  (479, 47900, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom - Trick - Level 45
  (479, 47900, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom - Discharge - Level 50
  (479, 47900, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Uproar - Level 55
  (479, 47900, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom - Protect - TM007
  (479, 47900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom - Confuse Ray - TM017
  (479, 47900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom - Thief - TM018
  (479, 47900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom - Charge Beam - TM023
  (479, 47900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom - Facade - TM025
  (479, 47900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom - Hex - TM029
  (479, 47900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom - Swift - TM032
  (479, 47900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom - Stored Power - TM041
  (479, 47900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom - Night Shade - TM042
  (479, 47900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom - Endure - TM047
  (479, 47900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom - Volt Switch - TM048
  (479, 47900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom - Sunny Day - TM049
  (479, 47900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom - Rain Dance - TM050
  (479, 47900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom - Foul Play - TM062
  (479, 47900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom - Sleep Talk - TM070
  (479, 47900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom - Electro Ball - TM072
  (479, 47900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom - Reflect - TM074
  (479, 47900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom - Light Screen - TM075
  (479, 47900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom - Thunder Wave - TM082
  (479, 47900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom - Rest - TM085
  (479, 47900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom - Dark Pulse - TM094
  (479, 47900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom - Eerie Impulse - TM096
  (479, 47900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom - Substitute - TM103
  (479, 47900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom - Will-O-Wisp - TM107
  (479, 47900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom - Trick - TM109
  (479, 47900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom - Shadow Ball - TM114
  (479, 47900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom - Hyper Voice - TM117
  (479, 47900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom - Thunderbolt - TM126
  (479, 47900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom - Helping Hand - TM130
  (479, 47900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom - Electric Terrain - TM136
  (479, 47900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom - Nasty Plot - TM140
  (479, 47900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom - Thunder - TM166
  (479, 47900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom - Tera Blast - TM171
  (479, 47900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Rotom (Heat) - Double Team - Level 1
  (479, 47901, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Thunder Shock - Level 5
  (479, 47901, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Confuse Ray - Level 10
  (479, 47901, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Charge - Level 15
  (479, 47901, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Electro Ball - Level 20
  (479, 47901, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Thunder Wave - Level 25
  (479, 47901, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Shock Wave - Level 30
  (479, 47901, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Hex - Level 35
  (479, 47901, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Substitute - Level 40
  (479, 47901, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Trick - Level 45
  (479, 47901, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Discharge - Level 50
  (479, 47901, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Uproar - Level 55
  (479, 47901, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Protect - TM007
  (479, 47901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom (Heat) - Confuse Ray - TM017
  (479, 47901, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom (Heat) - Thief - TM018
  (479, 47901, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom (Heat) - Charge Beam - TM023
  (479, 47901, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom (Heat) - Facade - TM025
  (479, 47901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom (Heat) - Hex - TM029
  (479, 47901, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom (Heat) - Swift - TM032
  (479, 47901, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom (Heat) - Stored Power - TM041
  (479, 47901, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom (Heat) - Night Shade - TM042
  (479, 47901, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom (Heat) - Endure - TM047
  (479, 47901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom (Heat) - Volt Switch - TM048
  (479, 47901, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom (Heat) - Sunny Day - TM049
  (479, 47901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom (Heat) - Rain Dance - TM050
  (479, 47901, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom (Heat) - Foul Play - TM062
  (479, 47901, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom (Heat) - Sleep Talk - TM070
  (479, 47901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom (Heat) - Electro Ball - TM072
  (479, 47901, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom (Heat) - Reflect - TM074
  (479, 47901, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom (Heat) - Light Screen - TM075
  (479, 47901, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom (Heat) - Thunder Wave - TM082
  (479, 47901, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom (Heat) - Rest - TM085
  (479, 47901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom (Heat) - Dark Pulse - TM094
  (479, 47901, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom (Heat) - Eerie Impulse - TM096
  (479, 47901, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom (Heat) - Substitute - TM103
  (479, 47901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom (Heat) - Will-O-Wisp - TM107
  (479, 47901, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom (Heat) - Trick - TM109
  (479, 47901, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom (Heat) - Shadow Ball - TM114
  (479, 47901, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom (Heat) - Hyper Voice - TM117
  (479, 47901, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom (Heat) - Thunderbolt - TM126
  (479, 47901, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom (Heat) - Helping Hand - TM130
  (479, 47901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom (Heat) - Electric Terrain - TM136
  (479, 47901, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom (Heat) - Nasty Plot - TM140
  (479, 47901, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom (Heat) - Thunder - TM166
  (479, 47901, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom (Heat) - Tera Blast - TM171
  (479, 47901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Rotom (Wash) - Double Team - Level 1
  (479, 47902, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Thunder Shock - Level 5
  (479, 47902, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Confuse Ray - Level 10
  (479, 47902, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Charge - Level 15
  (479, 47902, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Electro Ball - Level 20
  (479, 47902, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Thunder Wave - Level 25
  (479, 47902, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Shock Wave - Level 30
  (479, 47902, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Hex - Level 35
  (479, 47902, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Substitute - Level 40
  (479, 47902, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Trick - Level 45
  (479, 47902, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Discharge - Level 50
  (479, 47902, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Uproar - Level 55
  (479, 47902, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Protect - TM007
  (479, 47902, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom (Wash) - Confuse Ray - TM017
  (479, 47902, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom (Wash) - Thief - TM018
  (479, 47902, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom (Wash) - Charge Beam - TM023
  (479, 47902, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom (Wash) - Facade - TM025
  (479, 47902, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom (Wash) - Hex - TM029
  (479, 47902, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom (Wash) - Swift - TM032
  (479, 47902, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom (Wash) - Stored Power - TM041
  (479, 47902, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom (Wash) - Night Shade - TM042
  (479, 47902, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom (Wash) - Endure - TM047
  (479, 47902, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom (Wash) - Volt Switch - TM048
  (479, 47902, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom (Wash) - Sunny Day - TM049
  (479, 47902, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom (Wash) - Rain Dance - TM050
  (479, 47902, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom (Wash) - Foul Play - TM062
  (479, 47902, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom (Wash) - Sleep Talk - TM070
  (479, 47902, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom (Wash) - Electro Ball - TM072
  (479, 47902, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom (Wash) - Reflect - TM074
  (479, 47902, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom (Wash) - Light Screen - TM075
  (479, 47902, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom (Wash) - Thunder Wave - TM082
  (479, 47902, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom (Wash) - Rest - TM085
  (479, 47902, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom (Wash) - Dark Pulse - TM094
  (479, 47902, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom (Wash) - Eerie Impulse - TM096
  (479, 47902, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom (Wash) - Substitute - TM103
  (479, 47902, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom (Wash) - Will-O-Wisp - TM107
  (479, 47902, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom (Wash) - Trick - TM109
  (479, 47902, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom (Wash) - Shadow Ball - TM114
  (479, 47902, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom (Wash) - Hyper Voice - TM117
  (479, 47902, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom (Wash) - Thunderbolt - TM126
  (479, 47902, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom (Wash) - Helping Hand - TM130
  (479, 47902, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom (Wash) - Electric Terrain - TM136
  (479, 47902, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom (Wash) - Nasty Plot - TM140
  (479, 47902, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom (Wash) - Thunder - TM166
  (479, 47902, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom (Wash) - Tera Blast - TM171
  (479, 47902, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Rotom (Frost) - Double Team - Level 1
  (479, 47903, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Thunder Shock - Level 5
  (479, 47903, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Confuse Ray - Level 10
  (479, 47903, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Charge - Level 15
  (479, 47903, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Electro Ball - Level 20
  (479, 47903, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Thunder Wave - Level 25
  (479, 47903, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Shock Wave - Level 30
  (479, 47903, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Hex - Level 35
  (479, 47903, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Substitute - Level 40
  (479, 47903, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Trick - Level 45
  (479, 47903, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Discharge - Level 50
  (479, 47903, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Uproar - Level 55
  (479, 47903, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Protect - TM007
  (479, 47903, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom (Frost) - Confuse Ray - TM017
  (479, 47903, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom (Frost) - Thief - TM018
  (479, 47903, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom (Frost) - Charge Beam - TM023
  (479, 47903, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom (Frost) - Facade - TM025
  (479, 47903, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom (Frost) - Hex - TM029
  (479, 47903, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom (Frost) - Swift - TM032
  (479, 47903, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom (Frost) - Stored Power - TM041
  (479, 47903, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom (Frost) - Night Shade - TM042
  (479, 47903, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom (Frost) - Endure - TM047
  (479, 47903, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom (Frost) - Volt Switch - TM048
  (479, 47903, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom (Frost) - Sunny Day - TM049
  (479, 47903, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom (Frost) - Rain Dance - TM050
  (479, 47903, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom (Frost) - Foul Play - TM062
  (479, 47903, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom (Frost) - Sleep Talk - TM070
  (479, 47903, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom (Frost) - Electro Ball - TM072
  (479, 47903, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom (Frost) - Reflect - TM074
  (479, 47903, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom (Frost) - Light Screen - TM075
  (479, 47903, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom (Frost) - Thunder Wave - TM082
  (479, 47903, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom (Frost) - Rest - TM085
  (479, 47903, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom (Frost) - Dark Pulse - TM094
  (479, 47903, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom (Frost) - Eerie Impulse - TM096
  (479, 47903, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom (Frost) - Substitute - TM103
  (479, 47903, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom (Frost) - Will-O-Wisp - TM107
  (479, 47903, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom (Frost) - Trick - TM109
  (479, 47903, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom (Frost) - Shadow Ball - TM114
  (479, 47903, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom (Frost) - Hyper Voice - TM117
  (479, 47903, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom (Frost) - Thunderbolt - TM126
  (479, 47903, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom (Frost) - Helping Hand - TM130
  (479, 47903, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom (Frost) - Electric Terrain - TM136
  (479, 47903, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom (Frost) - Nasty Plot - TM140
  (479, 47903, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom (Frost) - Thunder - TM166
  (479, 47903, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom (Frost) - Tera Blast - TM171
  (479, 47903, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Rotom (Fan) - Double Team - Level 1
  (479, 47904, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Thunder Shock - Level 5
  (479, 47904, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Confuse Ray - Level 10
  (479, 47904, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Charge - Level 15
  (479, 47904, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Electro Ball - Level 20
  (479, 47904, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Thunder Wave - Level 25
  (479, 47904, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Shock Wave - Level 30
  (479, 47904, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Hex - Level 35
  (479, 47904, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Substitute - Level 40
  (479, 47904, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Trick - Level 45
  (479, 47904, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Discharge - Level 50
  (479, 47904, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Uproar - Level 55
  (479, 47904, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Protect - TM007
  (479, 47904, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom (Fan) - Confuse Ray - TM017
  (479, 47904, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom (Fan) - Thief - TM018
  (479, 47904, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom (Fan) - Charge Beam - TM023
  (479, 47904, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom (Fan) - Facade - TM025
  (479, 47904, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom (Fan) - Hex - TM029
  (479, 47904, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom (Fan) - Swift - TM032
  (479, 47904, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom (Fan) - Stored Power - TM041
  (479, 47904, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom (Fan) - Night Shade - TM042
  (479, 47904, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom (Fan) - Endure - TM047
  (479, 47904, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom (Fan) - Volt Switch - TM048
  (479, 47904, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom (Fan) - Sunny Day - TM049
  (479, 47904, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom (Fan) - Rain Dance - TM050
  (479, 47904, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom (Fan) - Foul Play - TM062
  (479, 47904, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom (Fan) - Sleep Talk - TM070
  (479, 47904, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom (Fan) - Electro Ball - TM072
  (479, 47904, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom (Fan) - Reflect - TM074
  (479, 47904, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom (Fan) - Light Screen - TM075
  (479, 47904, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom (Fan) - Thunder Wave - TM082
  (479, 47904, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom (Fan) - Rest - TM085
  (479, 47904, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom (Fan) - Dark Pulse - TM094
  (479, 47904, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom (Fan) - Eerie Impulse - TM096
  (479, 47904, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom (Fan) - Substitute - TM103
  (479, 47904, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom (Fan) - Will-O-Wisp - TM107
  (479, 47904, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom (Fan) - Trick - TM109
  (479, 47904, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom (Fan) - Shadow Ball - TM114
  (479, 47904, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom (Fan) - Hyper Voice - TM117
  (479, 47904, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom (Fan) - Thunderbolt - TM126
  (479, 47904, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom (Fan) - Helping Hand - TM130
  (479, 47904, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom (Fan) - Electric Terrain - TM136
  (479, 47904, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom (Fan) - Nasty Plot - TM140
  (479, 47904, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom (Fan) - Thunder - TM166
  (479, 47904, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom (Fan) - Tera Blast - TM171
  (479, 47904, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Rotom (Mow) - Double Team - Level 1
  (479, 47905, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Thunder Shock - Level 5
  (479, 47905, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Confuse Ray - Level 10
  (479, 47905, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Charge - Level 15
  (479, 47905, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Electro Ball - Level 20
  (479, 47905, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Thunder Wave - Level 25
  (479, 47905, 86, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Shock Wave - Level 30
  (479, 47905, 351, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Hex - Level 35
  (479, 47905, 506, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Substitute - Level 40
  (479, 47905, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Trick - Level 45
  (479, 47905, 271, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Discharge - Level 50
  (479, 47905, 435, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Uproar - Level 55
  (479, 47905, 253, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Protect - TM007
  (479, 47905, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Rotom (Mow) - Confuse Ray - TM017
  (479, 47905, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Rotom (Mow) - Thief - TM018
  (479, 47905, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Rotom (Mow) - Charge Beam - TM023
  (479, 47905, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Rotom (Mow) - Facade - TM025
  (479, 47905, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rotom (Mow) - Hex - TM029
  (479, 47905, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Rotom (Mow) - Swift - TM032
  (479, 47905, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rotom (Mow) - Stored Power - TM041
  (479, 47905, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Rotom (Mow) - Night Shade - TM042
  (479, 47905, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Rotom (Mow) - Endure - TM047
  (479, 47905, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Rotom (Mow) - Volt Switch - TM048
  (479, 47905, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Rotom (Mow) - Sunny Day - TM049
  (479, 47905, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Rotom (Mow) - Rain Dance - TM050
  (479, 47905, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Rotom (Mow) - Foul Play - TM062
  (479, 47905, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Rotom (Mow) - Sleep Talk - TM070
  (479, 47905, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Rotom (Mow) - Electro Ball - TM072
  (479, 47905, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Rotom (Mow) - Reflect - TM074
  (479, 47905, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Rotom (Mow) - Light Screen - TM075
  (479, 47905, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Rotom (Mow) - Thunder Wave - TM082
  (479, 47905, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Rotom (Mow) - Rest - TM085
  (479, 47905, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Rotom (Mow) - Dark Pulse - TM094
  (479, 47905, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Rotom (Mow) - Eerie Impulse - TM096
  (479, 47905, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Rotom (Mow) - Substitute - TM103
  (479, 47905, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Rotom (Mow) - Will-O-Wisp - TM107
  (479, 47905, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Rotom (Mow) - Trick - TM109
  (479, 47905, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Rotom (Mow) - Shadow Ball - TM114
  (479, 47905, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Rotom (Mow) - Hyper Voice - TM117
  (479, 47905, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Rotom (Mow) - Thunderbolt - TM126
  (479, 47905, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Rotom (Mow) - Helping Hand - TM130
  (479, 47905, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Rotom (Mow) - Electric Terrain - TM136
  (479, 47905, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Rotom (Mow) - Nasty Plot - TM140
  (479, 47905, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Rotom (Mow) - Thunder - TM166
  (479, 47905, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Rotom (Mow) - Tera Blast - TM171
  (479, 47905, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Swift - Level 7
  (480, 48000, 129, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 14
  (480, 48000, 203, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Uxie - Psybeam - Level 21
  (480, 48000, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Imprison - Level 28
  (480, 48000, 286, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Uxie - Extrasensory - Level 35
  (480, 48000, 326, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 42
  (480, 48000, 133, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Uxie - Psychic - Level 49
  (480, 48000, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Uxie - Yawn - Level 56
  (480, 48000, 281, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Uxie - Future Sight - Level 63
  (480, 48000, 248, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Uxie - Flail - Level 70
  (480, 48000, 175, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Uxie - Memento - Level 77
  (480, 48000, 262, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Uxie - Mystical Power - Level 84
  (480, 48000, 832, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Uxie - Mud-Slap - TM005
  (480, 48000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Uxie - Protect - TM007
  (480, 48000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Uxie - Water Pulse - TM011
  (480, 48000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Uxie - Acrobatics - TM014
  (480, 48000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Uxie - Psybeam - TM016
  (480, 48000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Uxie - Confuse Ray - TM017
  (480, 48000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Uxie - Charge Beam - TM023
  (480, 48000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Uxie - Facade - TM025
  (480, 48000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Uxie - Swift - TM032
  (480, 48000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Uxie - Draining Kiss - TM037
  (480, 48000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Uxie - Stored Power - TM041
  (480, 48000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Uxie - Fling - TM043
  (480, 48000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Uxie - Endure - TM047
  (480, 48000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Uxie - Sunny Day - TM049
  (480, 48000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Uxie - Rain Dance - TM050
  (480, 48000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Uxie - Sandstorm - TM051
  (480, 48000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Uxie - Psyshock - TM054
  (480, 48000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Uxie - Zen Headbutt - TM059
  (480, 48000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Uxie - U-turn - TM060
  (480, 48000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Uxie - Foul Play - TM062
  (480, 48000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Uxie - Fire Punch - TM067
  (480, 48000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Uxie - Thunder Punch - TM068
  (480, 48000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Uxie - Ice Punch - TM069
  (480, 48000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Uxie - Sleep Talk - TM070
  (480, 48000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Uxie - Drain Punch - TM073
  (480, 48000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Uxie - Reflect - TM074
  (480, 48000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Uxie - Light Screen - TM075
  (480, 48000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Uxie - Dazzling Gleam - TM079
  (480, 48000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Uxie - Metronome - TM080
  (480, 48000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 43),
  -- Uxie - Grass Knot - TM081
  (480, 48000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Uxie - Thunder Wave - TM082
  (480, 48000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Uxie - Rest - TM085
  (480, 48000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Uxie - Imprison - TM092
  (480, 48000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Uxie - Skill Swap - TM098
  (480, 48000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Uxie - Substitute - TM103
  (480, 48000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Uxie - Trick - TM109
  (480, 48000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 50),
  -- Uxie - Giga Drain - TM111
  (480, 48000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 51),
  -- Uxie - Shadow Ball - TM114
  (480, 48000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Uxie - Stealth Rock - TM116
  (480, 48000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Uxie - Energy Ball - TM119
  (480, 48000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Uxie - Psychic - TM120
  (480, 48000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Uxie - Encore - TM122
  (480, 48000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Uxie - Thunderbolt - TM126
  (480, 48000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Uxie - Play Rough - TM127
  (480, 48000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 58),
  -- Uxie - Amnesia - TM128
  (480, 48000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 59),
  -- Uxie - Calm Mind - TM129
  (480, 48000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 60),
  -- Uxie - Helping Hand - TM130
  (480, 48000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Uxie - Baton Pass - TM132
  (480, 48000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 62),
  -- Uxie - Nasty Plot - TM140
  (480, 48000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Uxie - Giga Impact - TM152
  (480, 48000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Uxie - Trick Room - TM161
  (480, 48000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Uxie - Hyper Beam - TM163
  (480, 48000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Uxie - Thunder - TM166
  (480, 48000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 67),
  -- Uxie - Solar Beam - TM168
  (480, 48000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 68),
  -- Uxie - Tera Blast - TM171
  (480, 48000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Uxie - Tri Attack - Reminder
  (480, 48000, 161, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Uxie - Snore - Reminder
  (480, 48000, 173, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Uxie - Safeguard - Reminder
  (480, 48000, 219, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Uxie - Iron Tail - Reminder
  (480, 48000, 231, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Uxie - Psycho Cut - Reminder
  (480, 48000, 427, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Uxie - Wonder Room - Reminder
  (480, 48000, 472, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Uxie - Magic Room - Reminder
  (480, 48000, 478, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Uxie - Round - Reminder
  (480, 48000, 496, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Uxie - Ally Switch - Reminder
  (480, 48000, 502, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Uxie - Expanding Force - Reminder
  (480, 48000, 797, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Swift - Level 7
  (481, 48100, 129, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 14
  (481, 48100, 182, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Mesprit - Psybeam - Level 21
  (481, 48100, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Imprison - Level 28
  (481, 48100, 286, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Mesprit - Extrasensory - Level 35
  (481, 48100, 326, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 42
  (481, 48100, 204, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Mesprit - Psychic - Level 49
  (481, 48100, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Mesprit - Flatter - Level 56
  (481, 48100, 260, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Mesprit - Future Sight - Level 63
  (481, 48100, 248, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Mesprit - Copycat - Level 70
  (481, 48100, 383, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Mesprit - Healing Wish - Level 77
  (481, 48100, 361, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Mesprit - Mystical Power - Level 84
  (481, 48100, 832, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Mesprit - Charm - TM002
  (481, 48100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Mesprit - Protect - TM007
  (481, 48100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Mesprit - Water Pulse - TM011
  (481, 48100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Mesprit - Acrobatics - TM014
  (481, 48100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Mesprit - Psybeam - TM016
  (481, 48100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Mesprit - Confuse Ray - TM017
  (481, 48100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Mesprit - Charge Beam - TM023
  (481, 48100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Mesprit - Facade - TM025
  (481, 48100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Mesprit - Swift - TM032
  (481, 48100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Mesprit - Draining Kiss - TM037
  (481, 48100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Mesprit - Stored Power - TM041
  (481, 48100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Mesprit - Fling - TM043
  (481, 48100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Mesprit - Endure - TM047
  (481, 48100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Mesprit - Sunny Day - TM049
  (481, 48100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Mesprit - Rain Dance - TM050
  (481, 48100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Mesprit - Sandstorm - TM051
  (481, 48100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Mesprit - Psyshock - TM054
  (481, 48100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Mesprit - Zen Headbutt - TM059
  (481, 48100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Mesprit - U-turn - TM060
  (481, 48100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Mesprit - Fire Punch - TM067
  (481, 48100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Mesprit - Thunder Punch - TM068
  (481, 48100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Mesprit - Ice Punch - TM069
  (481, 48100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Mesprit - Sleep Talk - TM070
  (481, 48100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Mesprit - Drain Punch - TM073
  (481, 48100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Mesprit - Reflect - TM074
  (481, 48100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Mesprit - Light Screen - TM075
  (481, 48100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Mesprit - Dazzling Gleam - TM079
  (481, 48100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 41),
  -- Mesprit - Metronome - TM080
  (481, 48100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Mesprit - Grass Knot - TM081
  (481, 48100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Mesprit - Thunder Wave - TM082
  (481, 48100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Mesprit - Rest - TM085
  (481, 48100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Mesprit - Imprison - TM092
  (481, 48100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 46),
  -- Mesprit - Skill Swap - TM098
  (481, 48100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 47),
  -- Mesprit - Substitute - TM103
  (481, 48100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Mesprit - Trick - TM109
  (481, 48100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 49),
  -- Mesprit - Shadow Ball - TM114
  (481, 48100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Mesprit - Stealth Rock - TM116
  (481, 48100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 51),
  -- Mesprit - Energy Ball - TM119
  (481, 48100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Mesprit - Psychic - TM120
  (481, 48100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Mesprit - Encore - TM122
  (481, 48100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Mesprit - Thunderbolt - TM126
  (481, 48100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Mesprit - Play Rough - TM127
  (481, 48100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 56),
  -- Mesprit - Calm Mind - TM129
  (481, 48100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 57),
  -- Mesprit - Helping Hand - TM130
  (481, 48100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Mesprit - Baton Pass - TM132
  (481, 48100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 59),
  -- Mesprit - Ice Beam - TM135
  (481, 48100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 60),
  -- Mesprit - Nasty Plot - TM140
  (481, 48100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 61),
  -- Mesprit - Blizzard - TM143
  (481, 48100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 62),
  -- Mesprit - Giga Impact - TM152
  (481, 48100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Mesprit - Trick Room - TM161
  (481, 48100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 64),
  -- Mesprit - Hyper Beam - TM163
  (481, 48100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Mesprit - Thunder - TM166
  (481, 48100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Mesprit - Tera Blast - TM171
  (481, 48100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Mesprit - Tri Attack - Reminder
  (481, 48100, 161, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Mesprit - Snore - Reminder
  (481, 48100, 173, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Mesprit - Safeguard - Reminder
  (481, 48100, 219, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Mesprit - Iron Tail - Reminder
  (481, 48100, 231, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Mesprit - Psycho Cut - Reminder
  (481, 48100, 427, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Mesprit - Wonder Room - Reminder
  (481, 48100, 472, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Mesprit - Magic Room - Reminder
  (481, 48100, 478, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Mesprit - Round - Reminder
  (481, 48100, 496, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Mesprit - Ally Switch - Reminder
  (481, 48100, 502, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Mesprit - Expanding Force - Reminder
  (481, 48100, 797, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Swift - Level 7
  (482, 48200, 129, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 14
  (482, 48200, 197, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Azelf - Psybeam - Level 21
  (482, 48200, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Imprison - Level 28
  (482, 48200, 286, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Azelf - Extrasensory - Level 35
  (482, 48200, 326, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 42
  (482, 48200, 417, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Azelf - Psychic - Level 49
  (482, 48200, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Azelf - Uproar - Level 56
  (482, 48200, 253, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Azelf - Future Sight - Level 63
  (482, 48200, 248, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Azelf - Last Resort - Level 70
  (482, 48200, 387, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Azelf - Explosion - Level 77
  (482, 48200, 153, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Azelf - Mystical Power - Level 84
  (482, 48200, 832, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Azelf - Mud-Slap - TM005
  (482, 48200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Azelf - Protect - TM007
  (482, 48200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Azelf - Water Pulse - TM011
  (482, 48200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Azelf - Acrobatics - TM014
  (482, 48200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Azelf - Psybeam - TM016
  (482, 48200, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Azelf - Charge Beam - TM023
  (482, 48200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Azelf - Facade - TM025
  (482, 48200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Azelf - Swift - TM032
  (482, 48200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Azelf - Draining Kiss - TM037
  (482, 48200, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Azelf - Stored Power - TM041
  (482, 48200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Azelf - Fling - TM043
  (482, 48200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Azelf - Endure - TM047
  (482, 48200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Azelf - Sunny Day - TM049
  (482, 48200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Azelf - Rain Dance - TM050
  (482, 48200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Azelf - Sandstorm - TM051
  (482, 48200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Azelf - Psyshock - TM054
  (482, 48200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Azelf - Zen Headbutt - TM059
  (482, 48200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Azelf - U-turn - TM060
  (482, 48200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Azelf - Fire Punch - TM067
  (482, 48200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Azelf - Thunder Punch - TM068
  (482, 48200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Azelf - Ice Punch - TM069
  (482, 48200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Azelf - Sleep Talk - TM070
  (482, 48200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Azelf - Drain Punch - TM073
  (482, 48200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 37),
  -- Azelf - Reflect - TM074
  (482, 48200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Azelf - Light Screen - TM075
  (482, 48200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Azelf - Dazzling Gleam - TM079
  (482, 48200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 40),
  -- Azelf - Metronome - TM080
  (482, 48200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Azelf - Grass Knot - TM081
  (482, 48200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Azelf - Thunder Wave - TM082
  (482, 48200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Azelf - Rest - TM085
  (482, 48200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Azelf - Taunt - TM087
  (482, 48200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Azelf - Imprison - TM092
  (482, 48200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 46),
  -- Azelf - Skill Swap - TM098
  (482, 48200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 47),
  -- Azelf - Substitute - TM103
  (482, 48200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Azelf - Trick - TM109
  (482, 48200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 49),
  -- Azelf - Shadow Ball - TM114
  (482, 48200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Azelf - Stealth Rock - TM116
  (482, 48200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 51),
  -- Azelf - Energy Ball - TM119
  (482, 48200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Azelf - Psychic - TM120
  (482, 48200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Azelf - Encore - TM122
  (482, 48200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Azelf - Flamethrower - TM125
  (482, 48200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 55),
  -- Azelf - Thunderbolt - TM126
  (482, 48200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Azelf - Play Rough - TM127
  (482, 48200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Azelf - Calm Mind - TM129
  (482, 48200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Azelf - Helping Hand - TM130
  (482, 48200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Azelf - Baton Pass - TM132
  (482, 48200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Azelf - Nasty Plot - TM140
  (482, 48200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 61),
  -- Azelf - Fire Blast - TM141
  (482, 48200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 62),
  -- Azelf - Giga Impact - TM152
  (482, 48200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Azelf - Trick Room - TM161
  (482, 48200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 64),
  -- Azelf - Hyper Beam - TM163
  (482, 48200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Azelf - Thunder - TM166
  (482, 48200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Azelf - Tera Blast - TM171
  (482, 48200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Azelf - Self-Destruct - Reminder
  (482, 48200, 120, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Azelf - Tri Attack - Reminder
  (482, 48200, 161, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Azelf - Snore - Reminder
  (482, 48200, 173, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Azelf - Safeguard - Reminder
  (482, 48200, 219, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Azelf - Iron Tail - Reminder
  (482, 48200, 231, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Azelf - Payback - Reminder
  (482, 48200, 371, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Azelf - Assurance - Reminder
  (482, 48200, 372, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Azelf - Psycho Cut - Reminder
  (482, 48200, 427, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Azelf - Wonder Room - Reminder
  (482, 48200, 472, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Azelf - Magic Room - Reminder
  (482, 48200, 478, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Azelf - Round - Reminder
  (482, 48200, 496, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Azelf - Ally Switch - Reminder
  (482, 48200, 502, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Azelf - Expanding Force - Reminder
  (482, 48200, 797, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Metal Claw - Level 1
  (483, 48300, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Dragon Breath - Level 8
  (483, 48300, 225, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 16
  (483, 48300, 246, 23, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 24
  (483, 48300, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Dialga - Flash Cannon - Level 32
  (483, 48300, 430, 23, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Dialga - Dragon Claw - Level 40
  (483, 48300, 337, 23, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Dialga - Aura Sphere - Level 48
  (483, 48300, 396, 23, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Dialga - Power Gem - Level 56
  (483, 48300, 408, 23, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Dialga - Metal Burst - Level 64
  (483, 48300, 368, 23, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Dialga - Earth Power - Level 72
  (483, 48300, 414, 23, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Dialga - Iron Tail - Level 80
  (483, 48300, 231, 23, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Dialga - Roar of Time - Level 88
  (483, 48300, 459, 23, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Dialga - Take Down - TM001
  (483, 48300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Dialga - Scary Face - TM006
  (483, 48300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Dialga - Protect - TM007
  (483, 48300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Dialga - Facade - TM025
  (483, 48300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Dialga - Bulldoze - TM028
  (483, 48300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Dialga - Metal Claw - TM031
  (483, 48300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 19),
  -- Dialga - Swift - TM032
  (483, 48300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Dialga - Rock Tomb - TM036
  (483, 48300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Dialga - Dragon Tail - TM044
  (483, 48300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 22),
  -- Dialga - Endure - TM047
  (483, 48300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Dialga - Sunny Day - TM049
  (483, 48300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Dialga - Rain Dance - TM050
  (483, 48300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Dialga - Sandstorm - TM051
  (483, 48300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Dialga - Brick Break - TM058
  (483, 48300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Dialga - Shadow Claw - TM061
  (483, 48300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Dialga - Bulk Up - TM064
  (483, 48300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 29),
  -- Dialga - Body Slam - TM066
  (483, 48300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Dialga - Sleep Talk - TM070
  (483, 48300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Dialga - Dragon Claw - TM078
  (483, 48300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 32),
  -- Dialga - Thunder Wave - TM082
  (483, 48300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Dialga - Stomping Tantrum - TM084
  (483, 48300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Dialga - Rest - TM085
  (483, 48300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Dialga - Rock Slide - TM086
  (483, 48300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Dialga - Body Press - TM089
  (483, 48300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Dialga - Flash Cannon - TM093
  (483, 48300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Dialga - Iron Head - TM099
  (483, 48300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Dialga - Power Gem - TM101
  (483, 48300, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 40),
  -- Dialga - Substitute - TM103
  (483, 48300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Dialga - Iron Defense - TM104
  (483, 48300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Dialga - Trick - TM109
  (483, 48300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Dialga - Aura Sphere - TM112
  (483, 48300, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 44),
  -- Dialga - Dragon Pulse - TM115
  (483, 48300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 45),
  -- Dialga - Stealth Rock - TM116
  (483, 48300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Dialga - Hyper Voice - TM117
  (483, 48300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Dialga - Heavy Slam - TM121
  (483, 48300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Dialga - Flamethrower - TM125
  (483, 48300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Dialga - Thunderbolt - TM126
  (483, 48300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Dialga - Earth Power - TM133
  (483, 48300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Dialga - Ice Beam - TM135
  (483, 48300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Dialga - Fire Blast - TM141
  (483, 48300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Dialga - Blizzard - TM143
  (483, 48300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Dialga - Earthquake - TM149
  (483, 48300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Dialga - Stone Edge - TM150
  (483, 48300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Dialga - Giga Impact - TM152
  (483, 48300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Dialga - Outrage - TM156
  (483, 48300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Dialga - Overheat - TM157
  (483, 48300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 59),
  -- Dialga - Focus Blast - TM158
  (483, 48300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Dialga - Trick Room - TM161
  (483, 48300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 61),
  -- Dialga - Hyper Beam - TM163
  (483, 48300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Dialga - Thunder - TM166
  (483, 48300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 63),
  -- Dialga - Draco Meteor - TM169
  (483, 48300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 64),
  -- Dialga - Steel Beam - TM170
  (483, 48300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Dialga - Tera Blast - TM171
  (483, 48300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Water Pulse - Level 1
  (484, 48400, 352, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Dragon Breath - Level 8
  (484, 48400, 225, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 16
  (484, 48400, 246, 23, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 24
  (484, 48400, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Palkia - Aqua Ring - Level 32
  (484, 48400, 392, 23, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Palkia - Aura Sphere - Level 48
  (484, 48400, 396, 23, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Palkia - Power Gem - Level 56
  (484, 48400, 408, 23, NULL, 1, 56, NULL, NULL, NULL, 8),
  -- Palkia - Aqua Tail - Level 64
  (484, 48400, 401, 23, NULL, 1, 64, NULL, NULL, NULL, 9),
  -- Palkia - Earth Power - Level 72
  (484, 48400, 414, 23, NULL, 1, 72, NULL, NULL, NULL, 10),
  -- Palkia - Spacial Rend - Level 80
  (484, 48400, 460, 23, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Palkia - Hydro Pump - Level 88
  (484, 48400, 56, 23, NULL, 1, 88, NULL, NULL, NULL, 12),
  -- Palkia - Take Down - TM001
  (484, 48400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Palkia - Scary Face - TM006
  (484, 48400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Palkia - Protect - TM007
  (484, 48400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Palkia - Water Pulse - TM011
  (484, 48400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Palkia - Chilling Water - TM022
  (484, 48400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Palkia - Facade - TM025
  (484, 48400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Palkia - Aerial Ace - TM027
  (484, 48400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Palkia - Bulldoze - TM028
  (484, 48400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Palkia - Swift - TM032
  (484, 48400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Palkia - Icy Wind - TM034
  (484, 48400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Palkia - Rock Tomb - TM036
  (484, 48400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Palkia - Fling - TM043
  (484, 48400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Palkia - Dragon Tail - TM044
  (484, 48400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Palkia - Avalanche - TM046
  (484, 48400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Palkia - Endure - TM047
  (484, 48400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Palkia - Sunny Day - TM049
  (484, 48400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Palkia - Rain Dance - TM050
  (484, 48400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Palkia - Sandstorm - TM051
  (484, 48400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Palkia - Snowscape - TM052
  (484, 48400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Palkia - Brick Break - TM058
  (484, 48400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Palkia - Shadow Claw - TM061
  (484, 48400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Palkia - Bulk Up - TM064
  (484, 48400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Palkia - Body Slam - TM066
  (484, 48400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Palkia - Sleep Talk - TM070
  (484, 48400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Palkia - Waterfall - TM077
  (484, 48400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 37),
  -- Palkia - Dragon Claw - TM078
  (484, 48400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Palkia - Thunder Wave - TM082
  (484, 48400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Palkia - Stomping Tantrum - TM084
  (484, 48400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Palkia - Rest - TM085
  (484, 48400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Palkia - Rock Slide - TM086
  (484, 48400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Palkia - Body Press - TM089
  (484, 48400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Palkia - Power Gem - TM101
  (484, 48400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Palkia - Substitute - TM103
  (484, 48400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Palkia - Trick - TM109
  (484, 48400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Palkia - Liquidation - TM110
  (484, 48400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 47),
  -- Palkia - Aura Sphere - TM112
  (484, 48400, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 48),
  -- Palkia - Dragon Pulse - TM115
  (484, 48400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Palkia - Hyper Voice - TM117
  (484, 48400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Palkia - Heavy Slam - TM121
  (484, 48400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 51),
  -- Palkia - Surf - TM123
  (484, 48400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 52),
  -- Palkia - Flamethrower - TM125
  (484, 48400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Palkia - Thunderbolt - TM126
  (484, 48400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 54),
  -- Palkia - Earth Power - TM133
  (484, 48400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 55),
  -- Palkia - Ice Beam - TM135
  (484, 48400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 56),
  -- Palkia - Fire Blast - TM141
  (484, 48400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 57),
  -- Palkia - Hydro Pump - TM142
  (484, 48400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 58),
  -- Palkia - Blizzard - TM143
  (484, 48400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 59),
  -- Palkia - Earthquake - TM149
  (484, 48400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Palkia - Stone Edge - TM150
  (484, 48400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Palkia - Giga Impact - TM152
  (484, 48400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Palkia - Outrage - TM156
  (484, 48400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 63),
  -- Palkia - Focus Blast - TM158
  (484, 48400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 64),
  -- Palkia - Trick Room - TM161
  (484, 48400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Palkia - Hyper Beam - TM163
  (484, 48400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Palkia - Thunder - TM166
  (484, 48400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 67),
  -- Palkia - Draco Meteor - TM169
  (484, 48400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 68),
  -- Palkia - Tera Blast - TM171
  (484, 48400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Heatran - Leer - Level 1
  (485, 48500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Fire Spin - Level 1
  (485, 48500, 83, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatran - Metal Claw - Level 6
  (485, 48500, 232, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heatran - Ancient Power - Level 12
  (485, 48500, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Heatran - Fire Fang - Level 18
  (485, 48500, 424, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 24
  (485, 48500, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Heatran - Iron Head - Level 30
  (485, 48500, 442, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Heatran - Crunch - Level 36
  (485, 48500, 242, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Heatran - Lava Plume - Level 42
  (485, 48500, 436, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Heatran - Metal Sound - Level 48
  (485, 48500, 319, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Heatran - Earth Power - Level 54
  (485, 48500, 414, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Heatran - Heat Wave - Level 60
  (485, 48500, 257, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Heatran - Stone Edge - Level 66
  (485, 48500, 444, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Heatran - Magma Storm - Level 72
  (485, 48500, 463, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Heatran - Take Down - TM001
  (485, 48500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Heatran - Scary Face - TM006
  (485, 48500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Heatran - Protect - TM007
  (485, 48500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Heatran - Fire Fang - TM008
  (485, 48500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Heatran - Pounce - TM021
  (485, 48500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Heatran - Fire Spin - TM024
  (485, 48500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Heatran - Facade - TM025
  (485, 48500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Heatran - Bulldoze - TM028
  (485, 48500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Heatran - Metal Claw - TM031
  (485, 48500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Heatran - Rock Tomb - TM036
  (485, 48500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Heatran - Flame Charge - TM038
  (485, 48500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Heatran - Endure - TM047
  (485, 48500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Heatran - Sunny Day - TM049
  (485, 48500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Heatran - Sandstorm - TM051
  (485, 48500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Heatran - Dig - TM055
  (485, 48500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Heatran - Body Slam - TM066
  (485, 48500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Heatran - Sleep Talk - TM070
  (485, 48500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Heatran - Rock Blast - TM076
  (485, 48500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 32),
  -- Heatran - Stomping Tantrum - TM084
  (485, 48500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Heatran - Rest - TM085
  (485, 48500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Heatran - Rock Slide - TM086
  (485, 48500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Heatran - Taunt - TM087
  (485, 48500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Heatran - Body Press - TM089
  (485, 48500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Heatran - Flash Cannon - TM093
  (485, 48500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Heatran - Dark Pulse - TM094
  (485, 48500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Heatran - Iron Head - TM099
  (485, 48500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Heatran - Power Gem - TM101
  (485, 48500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 41),
  -- Heatran - Substitute - TM103
  (485, 48500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Heatran - Iron Defense - TM104
  (485, 48500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Heatran - Will-O-Wisp - TM107
  (485, 48500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Heatran - Crunch - TM108
  (485, 48500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Heatran - Dragon Pulse - TM115
  (485, 48500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Heatran - Stealth Rock - TM116
  (485, 48500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Heatran - Heat Wave - TM118
  (485, 48500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Heatran - Heavy Slam - TM121
  (485, 48500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 49),
  -- Heatran - Flamethrower - TM125
  (485, 48500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 50),
  -- Heatran - Earth Power - TM133
  (485, 48500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Heatran - Fire Blast - TM141
  (485, 48500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Heatran - Earthquake - TM149
  (485, 48500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Heatran - Stone Edge - TM150
  (485, 48500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Heatran - Giga Impact - TM152
  (485, 48500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Heatran - Overheat - TM157
  (485, 48500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 56),
  -- Heatran - Hyper Beam - TM163
  (485, 48500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Heatran - Flare Blitz - TM165
  (485, 48500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 58),
  -- Heatran - Solar Beam - TM168
  (485, 48500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Heatran - Steel Beam - TM170
  (485, 48500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 60),
  -- Heatran - Tera Blast - TM171
  (485, 48500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Regigigas - Pound - Level 1
  (486, 48600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Payback - Level 6
  (486, 48600, 371, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regigigas - Facade - Level 12
  (486, 48600, 263, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regigigas - Stomp - Level 18
  (486, 48600, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regigigas - Protect - Level 24
  (486, 48600, 182, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 30
  (486, 48600, 282, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regigigas - Mega Punch - Level 36
  (486, 48600, 5, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regigigas - Body Press - Level 42
  (486, 48600, 776, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regigigas - Wide Guard - Level 48
  (486, 48600, 469, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regigigas - Zen Headbutt - Level 54
  (486, 48600, 428, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regigigas - Heavy Slam - Level 60
  (486, 48600, 484, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regigigas - Hammer Arm - Level 66
  (486, 48600, 359, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regigigas - Giga Impact - Level 72
  (486, 48600, 416, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regigigas - Crush Grip - Level 78
  (486, 48600, 462, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regigigas - Protect - TM007
  (486, 48600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Regigigas - Confuse Ray - TM017
  (486, 48600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Regigigas - Facade - TM025
  (486, 48600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Regigigas - Bulldoze - TM028
  (486, 48600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Regigigas - Icy Wind - TM034
  (486, 48600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Regigigas - Rock Tomb - TM036
  (486, 48600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Regigigas - Fling - TM043
  (486, 48600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Regigigas - Avalanche - TM046
  (486, 48600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 23),
  -- Regigigas - Endure - TM047
  (486, 48600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Regigigas - Sunny Day - TM049
  (486, 48600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Regigigas - Rain Dance - TM050
  (486, 48600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Regigigas - Brick Break - TM058
  (486, 48600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Regigigas - Zen Headbutt - TM059
  (486, 48600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Regigigas - Body Slam - TM066
  (486, 48600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Regigigas - Fire Punch - TM067
  (486, 48600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Regigigas - Thunder Punch - TM068
  (486, 48600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Regigigas - Ice Punch - TM069
  (486, 48600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 32),
  -- Regigigas - Sleep Talk - TM070
  (486, 48600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Regigigas - Drain Punch - TM073
  (486, 48600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 34),
  -- Regigigas - Thunder Wave - TM082
  (486, 48600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Regigigas - Stomping Tantrum - TM084
  (486, 48600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Regigigas - Rest - TM085
  (486, 48600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Regigigas - Rock Slide - TM086
  (486, 48600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Regigigas - Body Press - TM089
  (486, 48600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Regigigas - Iron Head - TM099
  (486, 48600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Regigigas - Substitute - TM103
  (486, 48600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Regigigas - Heavy Slam - TM121
  (486, 48600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 42),
  -- Regigigas - Thunderbolt - TM126
  (486, 48600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Regigigas - Earth Power - TM133
  (486, 48600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Regigigas - Earthquake - TM149
  (486, 48600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Regigigas - Stone Edge - TM150
  (486, 48600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Regigigas - Giga Impact - TM152
  (486, 48600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Regigigas - Focus Blast - TM158
  (486, 48600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Regigigas - Hyper Beam - TM163
  (486, 48600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Regigigas - Thunder - TM166
  (486, 48600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Regigigas - Tera Blast - TM171
  (486, 48600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Giratina - Shadow Sneak - Level 1
  (487, 48700, 425, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Defog - Level 1
  (487, 48700, 432, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Dragon Breath - Level 7
  (487, 48700, 225, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 14
  (487, 48700, 246, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Giratina - Hex - Level 21
  (487, 48700, 506, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Giratina - Slash - Level 28
  (487, 48700, 163, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Giratina - Scary Face - Level 35
  (487, 48700, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina - Pain Split - Level 49
  (487, 48700, 220, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 56
  (487, 48700, 396, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Giratina - Dragon Claw - Level 63
  (487, 48700, 337, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Giratina - Earth Power - Level 70
  (487, 48700, 414, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Giratina - Shadow Force - Level 77
  (487, 48700, 467, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Giratina - Destiny Bond - Level 84
  (487, 48700, 194, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Giratina - Take Down - TM001
  (487, 48700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Giratina - Scary Face - TM006
  (487, 48700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Giratina - Protect - TM007
  (487, 48700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Giratina - Confuse Ray - TM017
  (487, 48700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Giratina - Facade - TM025
  (487, 48700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Giratina - Bulldoze - TM028
  (487, 48700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Giratina - Hex - TM029
  (487, 48700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Giratina - Swift - TM032
  (487, 48700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Giratina - Icy Wind - TM034
  (487, 48700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Giratina - Dragon Tail - TM044
  (487, 48700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Giratina - Endure - TM047
  (487, 48700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Giratina - Sunny Day - TM049
  (487, 48700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Giratina - Rain Dance - TM050
  (487, 48700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Giratina - Shadow Claw - TM061
  (487, 48700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Giratina - Body Slam - TM066
  (487, 48700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Giratina - Sleep Talk - TM070
  (487, 48700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Giratina - Dragon Claw - TM078
  (487, 48700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 31),
  -- Giratina - Thunder Wave - TM082
  (487, 48700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Giratina - Rest - TM085
  (487, 48700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Giratina - Dark Pulse - TM094
  (487, 48700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Giratina - Fly - TM097
  (487, 48700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 35),
  -- Giratina - Iron Head - TM099
  (487, 48700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Giratina - Substitute - TM103
  (487, 48700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Giratina - Will-O-Wisp - TM107
  (487, 48700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Giratina - Aura Sphere - TM112
  (487, 48700, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 39),
  -- Giratina - Shadow Ball - TM114
  (487, 48700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 40),
  -- Giratina - Dragon Pulse - TM115
  (487, 48700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Giratina - Hyper Voice - TM117
  (487, 48700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 42),
  -- Giratina - Energy Ball - TM119
  (487, 48700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Giratina - Psychic - TM120
  (487, 48700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Giratina - Thunderbolt - TM126
  (487, 48700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Giratina - Calm Mind - TM129
  (487, 48700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Giratina - Earth Power - TM133
  (487, 48700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Giratina - Earthquake - TM149
  (487, 48700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Giratina - Stone Edge - TM150
  (487, 48700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Giratina - Phantom Force - TM151
  (487, 48700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 50),
  -- Giratina - Giga Impact - TM152
  (487, 48700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Giratina - Outrage - TM156
  (487, 48700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Giratina - Hyper Beam - TM163
  (487, 48700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Giratina - Thunder - TM166
  (487, 48700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Giratina - Draco Meteor - TM169
  (487, 48700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 55),
  -- Giratina - Tera Blast - TM171
  (487, 48700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Giratina (Origin) - Shadow Sneak - Level 1
  (487, 48701, 425, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Defog - Level 1
  (487, 48701, 432, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Dragon Breath - Level 7
  (487, 48701, 225, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 14
  (487, 48701, 246, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Hex - Level 21
  (487, 48701, 506, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Slash - Level 28
  (487, 48701, 163, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Scary Face - Level 35
  (487, 48701, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Pain Split - Level 49
  (487, 48701, 220, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 56
  (487, 48701, 396, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Dragon Claw - Level 63
  (487, 48701, 337, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Earth Power - Level 70
  (487, 48701, 414, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Shadow Force - Level 77
  (487, 48701, 467, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Destiny Bond - Level 84
  (487, 48701, 194, 23, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Giratina (Origin) - Take Down - TM001
  (487, 48701, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Giratina (Origin) - Scary Face - TM006
  (487, 48701, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Giratina (Origin) - Protect - TM007
  (487, 48701, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Giratina (Origin) - Confuse Ray - TM017
  (487, 48701, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Giratina (Origin) - Facade - TM025
  (487, 48701, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Giratina (Origin) - Bulldoze - TM028
  (487, 48701, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Giratina (Origin) - Hex - TM029
  (487, 48701, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Giratina (Origin) - Swift - TM032
  (487, 48701, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Giratina (Origin) - Icy Wind - TM034
  (487, 48701, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Giratina (Origin) - Dragon Tail - TM044
  (487, 48701, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Giratina (Origin) - Endure - TM047
  (487, 48701, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Giratina (Origin) - Sunny Day - TM049
  (487, 48701, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Giratina (Origin) - Rain Dance - TM050
  (487, 48701, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Giratina (Origin) - Shadow Claw - TM061
  (487, 48701, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Giratina (Origin) - Body Slam - TM066
  (487, 48701, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Giratina (Origin) - Sleep Talk - TM070
  (487, 48701, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Giratina (Origin) - Dragon Claw - TM078
  (487, 48701, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 31),
  -- Giratina (Origin) - Thunder Wave - TM082
  (487, 48701, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Giratina (Origin) - Rest - TM085
  (487, 48701, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Giratina (Origin) - Dark Pulse - TM094
  (487, 48701, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Giratina (Origin) - Fly - TM097
  (487, 48701, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 35),
  -- Giratina (Origin) - Iron Head - TM099
  (487, 48701, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Giratina (Origin) - Substitute - TM103
  (487, 48701, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Giratina (Origin) - Will-O-Wisp - TM107
  (487, 48701, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Giratina (Origin) - Aura Sphere - TM112
  (487, 48701, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 39),
  -- Giratina (Origin) - Shadow Ball - TM114
  (487, 48701, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 40),
  -- Giratina (Origin) - Dragon Pulse - TM115
  (487, 48701, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Giratina (Origin) - Hyper Voice - TM117
  (487, 48701, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 42),
  -- Giratina (Origin) - Energy Ball - TM119
  (487, 48701, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Giratina (Origin) - Psychic - TM120
  (487, 48701, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Giratina (Origin) - Thunderbolt - TM126
  (487, 48701, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Giratina (Origin) - Calm Mind - TM129
  (487, 48701, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Giratina (Origin) - Earth Power - TM133
  (487, 48701, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Giratina (Origin) - Earthquake - TM149
  (487, 48701, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Giratina (Origin) - Stone Edge - TM150
  (487, 48701, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Giratina (Origin) - Phantom Force - TM151
  (487, 48701, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 50),
  -- Giratina (Origin) - Giga Impact - TM152
  (487, 48701, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Giratina (Origin) - Outrage - TM156
  (487, 48701, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Giratina (Origin) - Hyper Beam - TM163
  (487, 48701, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Giratina (Origin) - Thunder - TM166
  (487, 48701, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Giratina (Origin) - Draco Meteor - TM169
  (487, 48701, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 55),
  -- Giratina (Origin) - Tera Blast - TM171
  (487, 48701, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Mist - Level 6
  (488, 48800, 54, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cresselia - Aurora Beam - Level 12
  (488, 48800, 62, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cresselia - Psybeam - Level 18
  (488, 48800, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cresselia - Ally Switch - Level 24
  (488, 48800, 502, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 30
  (488, 48800, 163, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Cresselia - Psycho Cut - Level 36
  (488, 48800, 427, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cresselia - Moonlight - Level 42
  (488, 48800, 236, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cresselia - Safeguard - Level 48
  (488, 48800, 219, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cresselia - Psychic - Level 54
  (488, 48800, 94, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Cresselia - Moonblast - Level 60
  (488, 48800, 585, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Cresselia - Future Sight - Level 66
  (488, 48800, 248, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cresselia - Lunar Dance - Level 72
  (488, 48800, 461, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Cresselia - Lunar Blessing - Level 72
  (488, 48800, 849, 23, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Cresselia - Mud-Slap - TM005
  (488, 48800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Cresselia - Scary Face - TM006
  (488, 48800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Cresselia - Protect - TM007
  (488, 48800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Cresselia - Psybeam - TM016
  (488, 48800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Cresselia - Confuse Ray - TM017
  (488, 48800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Cresselia - Charge Beam - TM023
  (488, 48800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Cresselia - Facade - TM025
  (488, 48800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Cresselia - Swift - TM032
  (488, 48800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Cresselia - Icy Wind - TM034
  (488, 48800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Cresselia - Stored Power - TM041
  (488, 48800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Cresselia - Endure - TM047
  (488, 48800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Cresselia - Sunny Day - TM049
  (488, 48800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Cresselia - Rain Dance - TM050
  (488, 48800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Cresselia - Psyshock - TM054
  (488, 48800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Cresselia - Zen Headbutt - TM059
  (488, 48800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Cresselia - Body Slam - TM066
  (488, 48800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Cresselia - Sleep Talk - TM070
  (488, 48800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Cresselia - Reflect - TM074
  (488, 48800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Cresselia - Light Screen - TM075
  (488, 48800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Cresselia - Dazzling Gleam - TM079
  (488, 48800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Cresselia - Grass Knot - TM081
  (488, 48800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Cresselia - Thunder Wave - TM082
  (488, 48800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Cresselia - Rest - TM085
  (488, 48800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Cresselia - Skill Swap - TM098
  (488, 48800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Cresselia - Power Gem - TM101
  (488, 48800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 40),
  -- Cresselia - Substitute - TM103
  (488, 48800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Cresselia - Trick - TM109
  (488, 48800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Cresselia - Shadow Ball - TM114
  (488, 48800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Cresselia - Energy Ball - TM119
  (488, 48800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Cresselia - Psychic - TM120
  (488, 48800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Cresselia - Thunderbolt - TM126
  (488, 48800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Cresselia - Calm Mind - TM129
  (488, 48800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Cresselia - Helping Hand - TM130
  (488, 48800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Cresselia - Ice Beam - TM135
  (488, 48800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Cresselia - Psychic Terrain - TM138
  (488, 48800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 50),
  -- Cresselia - Giga Impact - TM152
  (488, 48800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Cresselia - Trick Room - TM161
  (488, 48800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 52),
  -- Cresselia - Hyper Beam - TM163
  (488, 48800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Cresselia - Thunder - TM166
  (488, 48800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Cresselia - Solar Beam - TM168
  (488, 48800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Cresselia - Tera Blast - TM171
  (488, 48800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Phione - Water Gun - Level 1
  (489, 48900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 23, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 23, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 23, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 23, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 23, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 23, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 23, NULL, 1, 61, NULL, NULL, NULL, 9),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 23, NULL, 1, 69, NULL, NULL, NULL, 10),
  -- Phione - Take Heart - Level 75
  (489, 48900, 850, 23, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Phione - Charm - TM002
  (489, 48900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 12),
  -- Phione - Protect - TM007
  (489, 48900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Phione - Water Pulse - TM011
  (489, 48900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 14),
  -- Phione - Disarming Voice - TM019
  (489, 48900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Phione - Chilling Water - TM022
  (489, 48900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Phione - Facade - TM025
  (489, 48900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Phione - Swift - TM032
  (489, 48900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Phione - Icy Wind - TM034
  (489, 48900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Phione - Fling - TM043
  (489, 48900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 20),
  -- Phione - Endure - TM047
  (489, 48900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Phione - Rain Dance - TM050
  (489, 48900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Phione - Zen Headbutt - TM059
  (489, 48900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 23),
  -- Phione - U-turn - TM060
  (489, 48900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 24),
  -- Phione - Sleep Talk - TM070
  (489, 48900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Phione - Waterfall - TM077
  (489, 48900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 26),
  -- Phione - Dazzling Gleam - TM079
  (489, 48900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 27),
  -- Phione - Grass Knot - TM081
  (489, 48900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 28),
  -- Phione - Rest - TM085
  (489, 48900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Phione - Substitute - TM103
  (489, 48900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Phione - Liquidation - TM110
  (489, 48900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 31),
  -- Phione - Surf - TM123
  (489, 48900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 32),
  -- Phione - Helping Hand - TM130
  (489, 48900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Phione - Baton Pass - TM132
  (489, 48900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 34),
  -- Phione - Ice Beam - TM135
  (489, 48900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 35),
  -- Phione - Hydro Pump - TM142
  (489, 48900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 36),
  -- Phione - Blizzard - TM143
  (489, 48900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 37),
  -- Phione - Tera Blast - TM171
  (489, 48900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Manaphy - Water Gun - Level 1
  (490, 49000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Heart Swap - Level 1
  (490, 49000, 391, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 23, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 23, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 23, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 23, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Take Heart - Level 76
  (490, 49000, 850, 23, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Charm - TM002
  (490, 49000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Manaphy - Fake Tears - TM003
  (490, 49000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Manaphy - Mud-Slap - TM005
  (490, 49000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Manaphy - Protect - TM007
  (490, 49000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Manaphy - Water Pulse - TM011
  (490, 49000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Manaphy - Psybeam - TM016
  (490, 49000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Manaphy - Disarming Voice - TM019
  (490, 49000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 20),
  -- Manaphy - Chilling Water - TM022
  (490, 49000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Manaphy - Facade - TM025
  (490, 49000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Manaphy - Swift - TM032
  (490, 49000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Manaphy - Icy Wind - TM034
  (490, 49000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Manaphy - Stored Power - TM041
  (490, 49000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Manaphy - Fling - TM043
  (490, 49000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Manaphy - Endure - TM047
  (490, 49000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Manaphy - Rain Dance - TM050
  (490, 49000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Manaphy - Zen Headbutt - TM059
  (490, 49000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Manaphy - U-turn - TM060
  (490, 49000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Manaphy - Sleep Talk - TM070
  (490, 49000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Manaphy - Reflect - TM074
  (490, 49000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Manaphy - Light Screen - TM075
  (490, 49000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Manaphy - Waterfall - TM077
  (490, 49000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Manaphy - Dazzling Gleam - TM079
  (490, 49000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Manaphy - Grass Knot - TM081
  (490, 49000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Manaphy - Rest - TM085
  (490, 49000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Manaphy - Skill Swap - TM098
  (490, 49000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Manaphy - Substitute - TM103
  (490, 49000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Manaphy - Liquidation - TM110
  (490, 49000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Manaphy - Shadow Ball - TM114
  (490, 49000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Manaphy - Energy Ball - TM119
  (490, 49000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Manaphy - Psychic - TM120
  (490, 49000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Manaphy - Surf - TM123
  (490, 49000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 44),
  -- Manaphy - Calm Mind - TM129
  (490, 49000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Manaphy - Helping Hand - TM130
  (490, 49000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Manaphy - Baton Pass - TM132
  (490, 49000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Manaphy - Ice Beam - TM135
  (490, 49000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Manaphy - Hydro Pump - TM142
  (490, 49000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Manaphy - Blizzard - TM143
  (490, 49000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Manaphy - Giga Impact - TM152
  (490, 49000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Manaphy - Hyper Beam - TM163
  (490, 49000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Manaphy - Tera Blast - TM171
  (490, 49000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 23, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 23, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Darkrai - Sucker Punch - Level 29
  (491, 49100, 389, 23, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Darkrai - Night Shade - Level 38
  (491, 49100, 101, 23, NULL, 1, 38, NULL, NULL, NULL, 5),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 23, NULL, 1, 47, NULL, NULL, NULL, 6),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 23, NULL, 1, 57, NULL, NULL, NULL, 7),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 23, NULL, 1, 66, NULL, NULL, NULL, 8),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 23, NULL, 1, 75, NULL, NULL, NULL, 9),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 23, NULL, 1, 84, NULL, NULL, NULL, 10),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 23, NULL, 1, 93, NULL, NULL, NULL, 11),
  -- Darkrai - Scary Face - TM006
  (491, 49100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 12),
  -- Darkrai - Protect - TM007
  (491, 49100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Darkrai - Confuse Ray - TM017
  (491, 49100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 14),
  -- Darkrai - Thief - TM018
  (491, 49100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 15),
  -- Darkrai - Charge Beam - TM023
  (491, 49100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 16),
  -- Darkrai - Facade - TM025
  (491, 49100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Darkrai - Hex - TM029
  (491, 49100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 18),
  -- Darkrai - Snarl - TM030
  (491, 49100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 19),
  -- Darkrai - Swift - TM032
  (491, 49100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Darkrai - Icy Wind - TM034
  (491, 49100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Darkrai - Rock Tomb - TM036
  (491, 49100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Darkrai - Night Shade - TM042
  (491, 49100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 23),
  -- Darkrai - Fling - TM043
  (491, 49100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Darkrai - Endure - TM047
  (491, 49100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Darkrai - Sunny Day - TM049
  (491, 49100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Darkrai - Rain Dance - TM050
  (491, 49100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Darkrai - Psyshock - TM054
  (491, 49100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Darkrai - Brick Break - TM058
  (491, 49100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Darkrai - Shadow Claw - TM061
  (491, 49100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Darkrai - Foul Play - TM062
  (491, 49100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Darkrai - Sleep Talk - TM070
  (491, 49100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Darkrai - Drain Punch - TM073
  (491, 49100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 33),
  -- Darkrai - Thunder Wave - TM082
  (491, 49100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Darkrai - Poison Jab - TM083
  (491, 49100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Darkrai - Rest - TM085
  (491, 49100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Darkrai - Rock Slide - TM086
  (491, 49100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Darkrai - Taunt - TM087
  (491, 49100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Darkrai - Swords Dance - TM088
  (491, 49100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Darkrai - Dark Pulse - TM094
  (491, 49100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Darkrai - Substitute - TM103
  (491, 49100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Darkrai - X-Scissor - TM105
  (491, 49100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 42),
  -- Darkrai - Will-O-Wisp - TM107
  (491, 49100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Darkrai - Trick - TM109
  (491, 49100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Darkrai - Shadow Ball - TM114
  (491, 49100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Darkrai - Psychic - TM120
  (491, 49100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Darkrai - Calm Mind - TM129
  (491, 49100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Darkrai - Ice Beam - TM135
  (491, 49100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Darkrai - Nasty Plot - TM140
  (491, 49100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Darkrai - Blizzard - TM143
  (491, 49100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Darkrai - Sludge Bomb - TM148
  (491, 49100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Darkrai - Giga Impact - TM152
  (491, 49100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Darkrai - Focus Blast - TM158
  (491, 49100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Darkrai - Hyper Beam - TM163
  (491, 49100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Darkrai - Thunder - TM166
  (491, 49100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Darkrai - Tera Blast - TM171
  (491, 49100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 23, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 23, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 23, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 23, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Play Rough - Level 46
  (492, 49200, 583, 23, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 23, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Grassy Terrain - Level 64
  (492, 49200, 580, 23, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 23, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 23, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 23, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 23, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Take Down - TM001
  (492, 49200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Shaymin - Protect - TM007
  (492, 49200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Shaymin - Disarming Voice - TM019
  (492, 49200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Shaymin - Trailblaze - TM020
  (492, 49200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Shaymin - Facade - TM025
  (492, 49200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Shaymin - Swift - TM032
  (492, 49200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Shaymin - Magical Leaf - TM033
  (492, 49200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Shaymin - Air Cutter - TM040
  (492, 49200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 20),
  -- Shaymin - Endure - TM047
  (492, 49200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Shaymin - Sunny Day - TM049
  (492, 49200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Shaymin - Bullet Seed - TM056
  (492, 49200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 23),
  -- Shaymin - Zen Headbutt - TM059
  (492, 49200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 24),
  -- Shaymin - Air Slash - TM065
  (492, 49200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 25),
  -- Shaymin - Sleep Talk - TM070
  (492, 49200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Shaymin - Seed Bomb - TM071
  (492, 49200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Shaymin - Dazzling Gleam - TM079
  (492, 49200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 28),
  -- Shaymin - Grass Knot - TM081
  (492, 49200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Shaymin - Rest - TM085
  (492, 49200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Shaymin - Swords Dance - TM088
  (492, 49200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Shaymin - Substitute - TM103
  (492, 49200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Shaymin - Giga Drain - TM111
  (492, 49200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 33),
  -- Shaymin - Tailwind - TM113
  (492, 49200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Shaymin - Energy Ball - TM119
  (492, 49200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Shaymin - Psychic - TM120
  (492, 49200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Shaymin - Play Rough - TM127
  (492, 49200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Shaymin - Baton Pass - TM132
  (492, 49200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Shaymin - Earth Power - TM133
  (492, 49200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Shaymin - Grassy Terrain - TM137
  (492, 49200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Shaymin - Giga Impact - TM152
  (492, 49200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Shaymin - Leaf Storm - TM159
  (492, 49200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 42),
  -- Shaymin - Hyper Beam - TM163
  (492, 49200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Shaymin - Solar Beam - TM168
  (492, 49200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Shaymin - Tera Blast - TM171
  (492, 49200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 23, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 23, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 23, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 23, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Play Rough - Level 46
  (492, 49201, 583, 23, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 23, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 23, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 23, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 23, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 23, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 23, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Take Down - TM001
  (492, 49201, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Shaymin (Sky) - Protect - TM007
  (492, 49201, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Shaymin (Sky) - Disarming Voice - TM019
  (492, 49201, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Shaymin (Sky) - Trailblaze - TM020
  (492, 49201, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Shaymin (Sky) - Facade - TM025
  (492, 49201, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Shaymin (Sky) - Swift - TM032
  (492, 49201, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Shaymin (Sky) - Magical Leaf - TM033
  (492, 49201, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Shaymin (Sky) - Air Cutter - TM040
  (492, 49201, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 20),
  -- Shaymin (Sky) - Endure - TM047
  (492, 49201, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Shaymin (Sky) - Sunny Day - TM049
  (492, 49201, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Shaymin (Sky) - Bullet Seed - TM056
  (492, 49201, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 23),
  -- Shaymin (Sky) - Zen Headbutt - TM059
  (492, 49201, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 24),
  -- Shaymin (Sky) - Air Slash - TM065
  (492, 49201, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 25),
  -- Shaymin (Sky) - Sleep Talk - TM070
  (492, 49201, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Shaymin (Sky) - Seed Bomb - TM071
  (492, 49201, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Shaymin (Sky) - Dazzling Gleam - TM079
  (492, 49201, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 28),
  -- Shaymin (Sky) - Grass Knot - TM081
  (492, 49201, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Shaymin (Sky) - Rest - TM085
  (492, 49201, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Shaymin (Sky) - Swords Dance - TM088
  (492, 49201, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Shaymin (Sky) - Substitute - TM103
  (492, 49201, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Shaymin (Sky) - Giga Drain - TM111
  (492, 49201, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 33),
  -- Shaymin (Sky) - Tailwind - TM113
  (492, 49201, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Shaymin (Sky) - Energy Ball - TM119
  (492, 49201, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Shaymin (Sky) - Psychic - TM120
  (492, 49201, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Shaymin (Sky) - Play Rough - TM127
  (492, 49201, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Shaymin (Sky) - Baton Pass - TM132
  (492, 49201, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Shaymin (Sky) - Earth Power - TM133
  (492, 49201, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Shaymin (Sky) - Grassy Terrain - TM137
  (492, 49201, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Shaymin (Sky) - Giga Impact - TM152
  (492, 49201, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Shaymin (Sky) - Leaf Storm - TM159
  (492, 49201, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 42),
  -- Shaymin (Sky) - Hyper Beam - TM163
  (492, 49201, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Shaymin (Sky) - Solar Beam - TM168
  (492, 49201, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Shaymin (Sky) - Tera Blast - TM171
  (492, 49201, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 23, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 23, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 23, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 23, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Arceus - Healing Wish - Level 50
  (493, 49300, 361, 23, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 23, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 23, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 23, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 23, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 23, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Arceus - Take Down - TM001
  (493, 49300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Arceus - Agility - TM004
  (493, 49300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Arceus - Scary Face - TM006
  (493, 49300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Arceus - Protect - TM007
  (493, 49300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Arceus - Water Pulse - TM011
  (493, 49300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Arceus - Acid Spray - TM013
  (493, 49300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Arceus - Confuse Ray - TM017
  (493, 49300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Arceus - Trailblaze - TM020
  (493, 49300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Arceus - Chilling Water - TM022
  (493, 49300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Arceus - Charge Beam - TM023
  (493, 49300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Arceus - Facade - TM025
  (493, 49300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Arceus - Bulldoze - TM028
  (493, 49300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Arceus - Hex - TM029
  (493, 49300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Arceus - Snarl - TM030
  (493, 49300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Arceus - Swift - TM032
  (493, 49300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Arceus - Magical Leaf - TM033
  (493, 49300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 28),
  -- Arceus - Icy Wind - TM034
  (493, 49300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Arceus - Rock Tomb - TM036
  (493, 49300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Arceus - Stored Power - TM041
  (493, 49300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 31),
  -- Arceus - Dragon Tail - TM044
  (493, 49300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 32),
  -- Arceus - Avalanche - TM046
  (493, 49300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 33),
  -- Arceus - Endure - TM047
  (493, 49300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Arceus - Sunny Day - TM049
  (493, 49300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Arceus - Rain Dance - TM050
  (493, 49300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Arceus - Sandstorm - TM051
  (493, 49300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 37),
  -- Arceus - Psyshock - TM054
  (493, 49300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 38),
  -- Arceus - Bullet Seed - TM056
  (493, 49300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 39),
  -- Arceus - Brick Break - TM058
  (493, 49300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Arceus - Zen Headbutt - TM059
  (493, 49300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 41),
  -- Arceus - Shadow Claw - TM061
  (493, 49300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 42),
  -- Arceus - Foul Play - TM062
  (493, 49300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 43),
  -- Arceus - Bulk Up - TM064
  (493, 49300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 44),
  -- Arceus - Air Slash - TM065
  (493, 49300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 45),
  -- Arceus - Body Slam - TM066
  (493, 49300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Arceus - Sleep Talk - TM070
  (493, 49300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 47),
  -- Arceus - Reflect - TM074
  (493, 49300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 48),
  -- Arceus - Light Screen - TM075
  (493, 49300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 49),
  -- Arceus - Waterfall - TM077
  (493, 49300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 50),
  -- Arceus - Dragon Claw - TM078
  (493, 49300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 51),
  -- Arceus - Dazzling Gleam - TM079
  (493, 49300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 52),
  -- Arceus - Grass Knot - TM081
  (493, 49300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 53),
  -- Arceus - Thunder Wave - TM082
  (493, 49300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 54),
  -- Arceus - Poison Jab - TM083
  (493, 49300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 55),
  -- Arceus - Stomping Tantrum - TM084
  (493, 49300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 56),
  -- Arceus - Rest - TM085
  (493, 49300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 57),
  -- Arceus - Rock Slide - TM086
  (493, 49300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 58),
  -- Arceus - Taunt - TM087
  (493, 49300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 59),
  -- Arceus - Swords Dance - TM088
  (493, 49300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 60),
  -- Arceus - Body Press - TM089
  (493, 49300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 61),
  -- Arceus - Imprison - TM092
  (493, 49300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 62),
  -- Arceus - Flash Cannon - TM093
  (493, 49300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 63),
  -- Arceus - Dark Pulse - TM094
  (493, 49300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 64),
  -- Arceus - Fly - TM097
  (493, 49300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 65),
  -- Arceus - Iron Head - TM099
  (493, 49300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 66),
  -- Arceus - Dragon Dance - TM100
  (493, 49300, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 67),
  -- Arceus - Power Gem - TM101
  (493, 49300, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 68),
  -- Arceus - Gunk Shot - TM102
  (493, 49300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 69),
  -- Arceus - Substitute - TM103
  (493, 49300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 70),
  -- Arceus - Iron Defense - TM104
  (493, 49300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 71),
  -- Arceus - X-Scissor - TM105
  (493, 49300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 72),
  -- Arceus - Will-O-Wisp - TM107
  (493, 49300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 73),
  -- Arceus - Trick - TM109
  (493, 49300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 74),
  -- Arceus - Liquidation - TM110
  (493, 49300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 75),
  -- Arceus - Giga Drain - TM111
  (493, 49300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 76),
  -- Arceus - Aura Sphere - TM112
  (493, 49300, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 77),
  -- Arceus - Tailwind - TM113
  (493, 49300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 78),
  -- Arceus - Shadow Ball - TM114
  (493, 49300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 79),
  -- Arceus - Dragon Pulse - TM115
  (493, 49300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 80),
  -- Arceus - Stealth Rock - TM116
  (493, 49300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 81),
  -- Arceus - Hyper Voice - TM117
  (493, 49300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 82),
  -- Arceus - Heat Wave - TM118
  (493, 49300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 83),
  -- Arceus - Energy Ball - TM119
  (493, 49300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 84),
  -- Arceus - Psychic - TM120
  (493, 49300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 85),
  -- Arceus - Heavy Slam - TM121
  (493, 49300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 86),
  -- Arceus - Surf - TM123
  (493, 49300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 87),
  -- Arceus - Flamethrower - TM125
  (493, 49300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 88),
  -- Arceus - Thunderbolt - TM126
  (493, 49300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 89),
  -- Arceus - Calm Mind - TM129
  (493, 49300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 90),
  -- Arceus - Earth Power - TM133
  (493, 49300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 91),
  -- Arceus - Ice Beam - TM135
  (493, 49300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 92),
  -- Arceus - Electric Terrain - TM136
  (493, 49300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 93),
  -- Arceus - Grassy Terrain - TM137
  (493, 49300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 94),
  -- Arceus - Psychic Terrain - TM138
  (493, 49300, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 95),
  -- Arceus - Misty Terrain - TM139
  (493, 49300, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 96),
  -- Arceus - Fire Blast - TM141
  (493, 49300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 97),
  -- Arceus - Hydro Pump - TM142
  (493, 49300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 98),
  -- Arceus - Blizzard - TM143
  (493, 49300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 99),
  -- Arceus - Wild Charge - TM147
  (493, 49300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 100),
  -- Arceus - Sludge Bomb - TM148
  (493, 49300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 101),
  -- Arceus - Earthquake - TM149
  (493, 49300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 102),
  -- Arceus - Stone Edge - TM150
  (493, 49300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 103),
  -- Arceus - Phantom Force - TM151
  (493, 49300, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 104),
  -- Arceus - Giga Impact - TM152
  (493, 49300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 105),
  -- Arceus - Outrage - TM156
  (493, 49300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 106),
  -- Arceus - Overheat - TM157
  (493, 49300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 107),
  -- Arceus - Focus Blast - TM158
  (493, 49300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 108),
  -- Arceus - Hurricane - TM160
  (493, 49300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 109),
  -- Arceus - Trick Room - TM161
  (493, 49300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 110),
  -- Arceus - Bug Buzz - TM162
  (493, 49300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 111),
  -- Arceus - Hyper Beam - TM163
  (493, 49300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 112),
  -- Arceus - Flare Blitz - TM165
  (493, 49300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 113),
  -- Arceus - Thunder - TM166
  (493, 49300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 114),
  -- Arceus - Solar Beam - TM168
  (493, 49300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 115),
  -- Arceus - Draco Meteor - TM169
  (493, 49300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 116),
  -- Arceus - Steel Beam - TM170
  (493, 49300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 117),
  -- Arceus - Tera Blast - TM171
  (493, 49300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 118),
  -- Snivy - Tackle - Level 1
  (495, 49500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snivy - Leer - Level 4
  (495, 49500, 43, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snivy - Vine Whip - Level 7
  (495, 49500, 22, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Snivy - Wrap - Level 10
  (495, 49500, 35, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snivy - Growth - Level 13
  (495, 49500, 74, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snivy - Magical Leaf - Level 16
  (495, 49500, 345, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Snivy - Leech Seed - Level 19
  (495, 49500, 73, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Snivy - Mega Drain - Level 22
  (495, 49500, 72, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Snivy - Slam - Level 25
  (495, 49500, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Snivy - Leaf Blade - Level 28
  (495, 49500, 348, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Snivy - Coil - Level 31
  (495, 49500, 489, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Snivy - Giga Drain - Level 34
  (495, 49500, 202, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Snivy - Gastro Acid - Level 37
  (495, 49500, 380, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snivy - Leaf Storm - Level 40
  (495, 49500, 437, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Snivy - Take Down - TM001
  (495, 49500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Snivy - Protect - TM007
  (495, 49500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Snivy - Trailblaze - TM020
  (495, 49500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Snivy - Facade - TM025
  (495, 49500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Snivy - Aerial Ace - TM027
  (495, 49500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Snivy - Swift - TM032
  (495, 49500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Snivy - Magical Leaf - TM033
  (495, 49500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Snivy - Endure - TM047
  (495, 49500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Snivy - Sunny Day - TM049
  (495, 49500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Snivy - Bullet Seed - TM056
  (495, 49500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Snivy - Sleep Talk - TM070
  (495, 49500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Snivy - Seed Bomb - TM071
  (495, 49500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Snivy - Reflect - TM074
  (495, 49500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Snivy - Light Screen - TM075
  (495, 49500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Snivy - Grass Knot - TM081
  (495, 49500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Snivy - Rest - TM085
  (495, 49500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Snivy - Taunt - TM087
  (495, 49500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 31),
  -- Snivy - Swords Dance - TM088
  (495, 49500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Snivy - Substitute - TM103
  (495, 49500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Snivy - Giga Drain - TM111
  (495, 49500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Snivy - Energy Ball - TM119
  (495, 49500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Snivy - Calm Mind - TM129
  (495, 49500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 36),
  -- Snivy - Helping Hand - TM130
  (495, 49500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Snivy - Grassy Terrain - TM137
  (495, 49500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Snivy - Grass Pledge - TM146
  (495, 49500, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 39),
  -- Snivy - Leaf Storm - TM159
  (495, 49500, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 40),
  -- Snivy - Solar Beam - TM168
  (495, 49500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Snivy - Tera Blast - TM171
  (495, 49500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Snivy - Glare - Egg
  (495, 49500, 137, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snivy - Mean Look - Egg
  (495, 49500, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snivy - Sweet Scent - Egg
  (495, 49500, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snivy - Iron Tail - Egg
  (495, 49500, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snivy - Synthesis - Egg
  (495, 49500, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snivy - Twister - Egg
  (495, 49500, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snivy - Mirror Coat - Egg
  (495, 49500, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Servine - Vine Whip - Level 1
  (496, 49600, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Servine - Tackle - Level 1
  (496, 49600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Servine - Wrap - Level 1
  (496, 49600, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Servine - Leer - Level 1
  (496, 49600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Servine - Growth - Level 13
  (496, 49600, 74, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Servine - Magical Leaf - Level 16
  (496, 49600, 345, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Servine - Leech Seed - Level 20
  (496, 49600, 73, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Servine - Mega Drain - Level 24
  (496, 49600, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Servine - Slam - Level 28
  (496, 49600, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Servine - Leaf Blade - Level 32
  (496, 49600, 348, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Servine - Coil - Level 36
  (496, 49600, 489, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Servine - Giga Drain - Level 40
  (496, 49600, 202, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Servine - Gastro Acid - Level 44
  (496, 49600, 380, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Servine - Leaf Storm - Level 48
  (496, 49600, 437, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Servine - Take Down - TM001
  (496, 49600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Servine - Protect - TM007
  (496, 49600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Servine - Trailblaze - TM020
  (496, 49600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Servine - Facade - TM025
  (496, 49600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Servine - Aerial Ace - TM027
  (496, 49600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Servine - Swift - TM032
  (496, 49600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Servine - Magical Leaf - TM033
  (496, 49600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Servine - Endure - TM047
  (496, 49600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Servine - Sunny Day - TM049
  (496, 49600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Servine - Bullet Seed - TM056
  (496, 49600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Servine - Sleep Talk - TM070
  (496, 49600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Servine - Seed Bomb - TM071
  (496, 49600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Servine - Reflect - TM074
  (496, 49600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Servine - Light Screen - TM075
  (496, 49600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Servine - Grass Knot - TM081
  (496, 49600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Servine - Rest - TM085
  (496, 49600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Servine - Taunt - TM087
  (496, 49600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 31),
  -- Servine - Swords Dance - TM088
  (496, 49600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Servine - Substitute - TM103
  (496, 49600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Servine - Giga Drain - TM111
  (496, 49600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Servine - Energy Ball - TM119
  (496, 49600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Servine - Calm Mind - TM129
  (496, 49600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 36),
  -- Servine - Helping Hand - TM130
  (496, 49600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Servine - Grassy Terrain - TM137
  (496, 49600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Servine - Grass Pledge - TM146
  (496, 49600, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 39),
  -- Servine - Leaf Storm - TM159
  (496, 49600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 40),
  -- Servine - Solar Beam - TM168
  (496, 49600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Servine - Tera Blast - TM171
  (496, 49600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Servine - Glare - Egg
  (496, 49600, 137, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Servine - Mean Look - Egg
  (496, 49600, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Servine - Sweet Scent - Egg
  (496, 49600, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Servine - Iron Tail - Egg
  (496, 49600, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Servine - Synthesis - Egg
  (496, 49600, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Servine - Twister - Egg
  (496, 49600, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Servine - Mirror Coat - Egg
  (496, 49600, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Serperior - Vine Whip - Level 1
  (497, 49700, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Serperior - Tackle - Level 1
  (497, 49700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Serperior - Wrap - Level 1
  (497, 49700, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Serperior - Leer - Level 1
  (497, 49700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Serperior - Growth - Level 13
  (497, 49700, 74, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Serperior - Magical Leaf - Level 16
  (497, 49700, 345, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Serperior - Leech Seed - Level 20
  (497, 49700, 73, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Serperior - Mega Drain - Level 24
  (497, 49700, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Serperior - Slam - Level 28
  (497, 49700, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Serperior - Leaf Blade - Level 32
  (497, 49700, 348, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Serperior - Coil - Level 38
  (497, 49700, 489, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Serperior - Giga Drain - Level 44
  (497, 49700, 202, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Serperior - Gastro Acid - Level 50
  (497, 49700, 380, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Serperior - Leaf Storm - Level 56
  (497, 49700, 437, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Serperior - Take Down - TM001
  (497, 49700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Serperior - Scary Face - TM006
  (497, 49700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Serperior - Protect - TM007
  (497, 49700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Serperior - Trailblaze - TM020
  (497, 49700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Serperior - Facade - TM025
  (497, 49700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Serperior - Aerial Ace - TM027
  (497, 49700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Serperior - Swift - TM032
  (497, 49700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Serperior - Magical Leaf - TM033
  (497, 49700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Serperior - Dragon Tail - TM044
  (497, 49700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 23),
  -- Serperior - Endure - TM047
  (497, 49700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Serperior - Sunny Day - TM049
  (497, 49700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Serperior - Bullet Seed - TM056
  (497, 49700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Serperior - Body Slam - TM066
  (497, 49700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Serperior - Sleep Talk - TM070
  (497, 49700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Serperior - Seed Bomb - TM071
  (497, 49700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Serperior - Reflect - TM074
  (497, 49700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Serperior - Light Screen - TM075
  (497, 49700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Serperior - Grass Knot - TM081
  (497, 49700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Serperior - Rest - TM085
  (497, 49700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Serperior - Taunt - TM087
  (497, 49700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Serperior - Swords Dance - TM088
  (497, 49700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Serperior - Substitute - TM103
  (497, 49700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Serperior - Giga Drain - TM111
  (497, 49700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Serperior - Dragon Pulse - TM115
  (497, 49700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 38),
  -- Serperior - Energy Ball - TM119
  (497, 49700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 39),
  -- Serperior - Calm Mind - TM129
  (497, 49700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Serperior - Helping Hand - TM130
  (497, 49700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Serperior - Grassy Terrain - TM137
  (497, 49700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Serperior - Grass Pledge - TM146
  (497, 49700, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 43),
  -- Serperior - Giga Impact - TM152
  (497, 49700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Serperior - Frenzy Plant - TM155
  (497, 49700, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 45),
  -- Serperior - Outrage - TM156
  (497, 49700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Serperior - Leaf Storm - TM159
  (497, 49700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Serperior - Hyper Beam - TM163
  (497, 49700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Serperior - Solar Beam - TM168
  (497, 49700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Serperior - Tera Blast - TM171
  (497, 49700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Serperior - Glare - Egg
  (497, 49700, 137, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Serperior - Mean Look - Egg
  (497, 49700, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Serperior - Sweet Scent - Egg
  (497, 49700, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Serperior - Iron Tail - Egg
  (497, 49700, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Serperior - Synthesis - Egg
  (497, 49700, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Serperior - Twister - Egg
  (497, 49700, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Serperior - Mirror Coat - Egg
  (497, 49700, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tepig - Tackle - Level 1
  (498, 49800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tepig - Tail Whip - Level 3
  (498, 49800, 39, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tepig - Ember - Level 7
  (498, 49800, 52, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tepig - Endure - Level 9
  (498, 49800, 203, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tepig - Defense Curl - Level 13
  (498, 49800, 111, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tepig - Flame Charge - Level 15
  (498, 49800, 488, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tepig - Smog - Level 19
  (498, 49800, 123, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tepig - Rollout - Level 21
  (498, 49800, 205, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tepig - Take Down - Level 25
  (498, 49800, 36, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tepig - Heat Crash - Level 27
  (498, 49800, 535, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tepig - Assurance - Level 31
  (498, 49800, 372, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tepig - Flamethrower - Level 33
  (498, 49800, 53, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tepig - Head Smash - Level 37
  (498, 49800, 457, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tepig - Roar - Level 39
  (498, 49800, 46, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Tepig - Flare Blitz - Level 43
  (498, 49800, 394, 23, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tepig - Take Down - TM001
  (498, 49800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Tepig - Mud-Slap - TM005
  (498, 49800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Tepig - Protect - TM007
  (498, 49800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Tepig - Trailblaze - TM020
  (498, 49800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Tepig - Fire Spin - TM024
  (498, 49800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Tepig - Facade - TM025
  (498, 49800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tepig - Rock Tomb - TM036
  (498, 49800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Tepig - Flame Charge - TM038
  (498, 49800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Tepig - Endure - TM047
  (498, 49800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Tepig - Sunny Day - TM049
  (498, 49800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Tepig - Dig - TM055
  (498, 49800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Tepig - Zen Headbutt - TM059
  (498, 49800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Tepig - Body Slam - TM066
  (498, 49800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Tepig - Fire Punch - TM067
  (498, 49800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 29),
  -- Tepig - Sleep Talk - TM070
  (498, 49800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Tepig - Grass Knot - TM081
  (498, 49800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Tepig - Stomping Tantrum - TM084
  (498, 49800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Tepig - Rest - TM085
  (498, 49800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Tepig - Taunt - TM087
  (498, 49800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Tepig - Substitute - TM103
  (498, 49800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Tepig - Will-O-Wisp - TM107
  (498, 49800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Tepig - Heat Wave - TM118
  (498, 49800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 37),
  -- Tepig - Heavy Slam - TM121
  (498, 49800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Tepig - Flamethrower - TM125
  (498, 49800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Tepig - Helping Hand - TM130
  (498, 49800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Tepig - Fire Blast - TM141
  (498, 49800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Tepig - Fire Pledge - TM144
  (498, 49800, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 42),
  -- Tepig - Wild Charge - TM147
  (498, 49800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 43),
  -- Tepig - Overheat - TM157
  (498, 49800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Tepig - Flare Blitz - TM165
  (498, 49800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 45),
  -- Tepig - Solar Beam - TM168
  (498, 49800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 46),
  -- Tepig - Tera Blast - TM171
  (498, 49800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Tepig - Thrash - Egg
  (498, 49800, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tepig - Superpower - Egg
  (498, 49800, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tepig - Yawn - Egg
  (498, 49800, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tepig - Sucker Punch - Egg
  (498, 49800, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pignite - Tackle - Level 1
  (499, 49900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pignite - Tail Whip - Level 1
  (499, 49900, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pignite - Ember - Level 1
  (499, 49900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pignite - Endure - Level 1
  (499, 49900, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pignite - Defense Curl - Level 13
  (499, 49900, 111, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pignite - Flame Charge - Level 15
  (499, 49900, 488, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pignite - Smog - Level 20
  (499, 49900, 123, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pignite - Rollout - Level 23
  (499, 49900, 205, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pignite - Take Down - Level 28
  (499, 49900, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pignite - Heat Crash - Level 31
  (499, 49900, 535, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pignite - Assurance - Level 36
  (499, 49900, 372, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pignite - Flamethrower - Level 39
  (499, 49900, 53, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pignite - Head Smash - Level 44
  (499, 49900, 457, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pignite - Roar - Level 47
  (499, 49900, 46, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Pignite - Flare Blitz - Level 52
  (499, 49900, 394, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Pignite - Take Down - TM001
  (499, 49900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Pignite - Mud-Slap - TM005
  (499, 49900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Pignite - Scary Face - TM006
  (499, 49900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Pignite - Protect - TM007
  (499, 49900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Pignite - Low Kick - TM012
  (499, 49900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Pignite - Trailblaze - TM020
  (499, 49900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Pignite - Fire Spin - TM024
  (499, 49900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Pignite - Facade - TM025
  (499, 49900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Pignite - Bulldoze - TM028
  (499, 49900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Pignite - Rock Tomb - TM036
  (499, 49900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Pignite - Flame Charge - TM038
  (499, 49900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Pignite - Low Sweep - TM039
  (499, 49900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Pignite - Fling - TM043
  (499, 49900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Pignite - Endure - TM047
  (499, 49900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Pignite - Sunny Day - TM049
  (499, 49900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Pignite - Dig - TM055
  (499, 49900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Pignite - Brick Break - TM058
  (499, 49900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Pignite - Zen Headbutt - TM059
  (499, 49900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Pignite - Bulk Up - TM064
  (499, 49900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Pignite - Body Slam - TM066
  (499, 49900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Pignite - Fire Punch - TM067
  (499, 49900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Pignite - Thunder Punch - TM068
  (499, 49900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Pignite - Sleep Talk - TM070
  (499, 49900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Pignite - Drain Punch - TM073
  (499, 49900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Pignite - Grass Knot - TM081
  (499, 49900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Pignite - Poison Jab - TM083
  (499, 49900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Pignite - Stomping Tantrum - TM084
  (499, 49900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Pignite - Rest - TM085
  (499, 49900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Pignite - Rock Slide - TM086
  (499, 49900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Pignite - Taunt - TM087
  (499, 49900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Pignite - Substitute - TM103
  (499, 49900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Pignite - Will-O-Wisp - TM107
  (499, 49900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 47),
  -- Pignite - Heat Wave - TM118
  (499, 49900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Pignite - Heavy Slam - TM121
  (499, 49900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 49),
  -- Pignite - Flamethrower - TM125
  (499, 49900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 50),
  -- Pignite - Helping Hand - TM130
  (499, 49900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Pignite - Reversal - TM134
  (499, 49900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Pignite - Fire Blast - TM141
  (499, 49900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Pignite - Fire Pledge - TM144
  (499, 49900, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 54),
  -- Pignite - Wild Charge - TM147
  (499, 49900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 55),
  -- Pignite - Stone Edge - TM150
  (499, 49900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Pignite - Overheat - TM157
  (499, 49900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 57),
  -- Pignite - Focus Blast - TM158
  (499, 49900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Pignite - Flare Blitz - TM165
  (499, 49900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 59),
  -- Pignite - Close Combat - TM167
  (499, 49900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 60),
  -- Pignite - Solar Beam - TM168
  (499, 49900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Pignite - Tera Blast - TM171
  (499, 49900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Pignite - Thrash - Egg
  (499, 49900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pignite - Superpower - Egg
  (499, 49900, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pignite - Yawn - Egg
  (499, 49900, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Pignite - Sucker Punch - Egg
  (499, 49900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Pignite - Arm Thrust - Evolution
  (499, 49900, 292, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Emboar - Tackle - Level 1
  (500, 50000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emboar - Tail Whip - Level 1
  (500, 50000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emboar - Ember - Level 1
  (500, 50000, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Emboar - Arm Thrust - Level 1
  (500, 50000, 292, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Emboar - Defense Curl - Level 13
  (500, 50000, 111, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Emboar - Flame Charge - Level 15
  (500, 50000, 488, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Emboar - Smog - Level 20
  (500, 50000, 123, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Emboar - Rollout - Level 23
  (500, 50000, 205, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Emboar - Take Down - Level 28
  (500, 50000, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Emboar - Heat Crash - Level 31
  (500, 50000, 535, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Emboar - Assurance - Level 38
  (500, 50000, 372, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Emboar - Flamethrower - Level 43
  (500, 50000, 53, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Emboar - Head Smash - Level 50
  (500, 50000, 457, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Emboar - Roar - Level 55
  (500, 50000, 46, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Emboar - Flare Blitz - Level 62
  (500, 50000, 394, 23, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Emboar - Take Down - TM001
  (500, 50000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Emboar - Mud-Slap - TM005
  (500, 50000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Emboar - Scary Face - TM006
  (500, 50000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Emboar - Protect - TM007
  (500, 50000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Emboar - Low Kick - TM012
  (500, 50000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Emboar - Trailblaze - TM020
  (500, 50000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Emboar - Fire Spin - TM024
  (500, 50000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Emboar - Facade - TM025
  (500, 50000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Emboar - Bulldoze - TM028
  (500, 50000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Emboar - Rock Tomb - TM036
  (500, 50000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Emboar - Flame Charge - TM038
  (500, 50000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Emboar - Low Sweep - TM039
  (500, 50000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Emboar - Fling - TM043
  (500, 50000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Emboar - Endure - TM047
  (500, 50000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Emboar - Sunny Day - TM049
  (500, 50000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Emboar - Dig - TM055
  (500, 50000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Emboar - Brick Break - TM058
  (500, 50000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Emboar - Zen Headbutt - TM059
  (500, 50000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Emboar - Bulk Up - TM064
  (500, 50000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Emboar - Body Slam - TM066
  (500, 50000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Emboar - Fire Punch - TM067
  (500, 50000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Emboar - Thunder Punch - TM068
  (500, 50000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Emboar - Sleep Talk - TM070
  (500, 50000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Emboar - Drain Punch - TM073
  (500, 50000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Emboar - Grass Knot - TM081
  (500, 50000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Emboar - Poison Jab - TM083
  (500, 50000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Emboar - Stomping Tantrum - TM084
  (500, 50000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Emboar - Rest - TM085
  (500, 50000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Emboar - Rock Slide - TM086
  (500, 50000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Emboar - Taunt - TM087
  (500, 50000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Emboar - Body Press - TM089
  (500, 50000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 46),
  -- Emboar - Iron Head - TM099
  (500, 50000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 47),
  -- Emboar - Substitute - TM103
  (500, 50000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Emboar - Will-O-Wisp - TM107
  (500, 50000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 49),
  -- Emboar - Heat Wave - TM118
  (500, 50000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Emboar - Heavy Slam - TM121
  (500, 50000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 51),
  -- Emboar - Flamethrower - TM125
  (500, 50000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Emboar - Helping Hand - TM130
  (500, 50000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Emboar - Reversal - TM134
  (500, 50000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 54),
  -- Emboar - Fire Blast - TM141
  (500, 50000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Emboar - Fire Pledge - TM144
  (500, 50000, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 56),
  -- Emboar - Wild Charge - TM147
  (500, 50000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 57),
  -- Emboar - Earthquake - TM149
  (500, 50000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Emboar - Stone Edge - TM150
  (500, 50000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Emboar - Giga Impact - TM152
  (500, 50000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Emboar - Blast Burn - TM153
  (500, 50000, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 61),
  -- Emboar - Overheat - TM157
  (500, 50000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 62),
  -- Emboar - Focus Blast - TM158
  (500, 50000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Emboar - Hyper Beam - TM163
  (500, 50000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Emboar - Flare Blitz - TM165
  (500, 50000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 65),
  -- Emboar - Close Combat - TM167
  (500, 50000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 66),
  -- Emboar - Solar Beam - TM168
  (500, 50000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Emboar - Tera Blast - TM171
  (500, 50000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Emboar - Thrash - Egg
  (500, 50000, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Emboar - Superpower - Egg
  (500, 50000, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Emboar - Yawn - Egg
  (500, 50000, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Emboar - Sucker Punch - Egg
  (500, 50000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Emboar - Endure - Reminder
  (500, 50000, 203, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Emboar - Hammer Arm - Reminder
  (500, 50000, 359, 23, NULL, 9, NULL, NULL, NULL, NULL, 74);
