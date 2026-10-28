-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 701-750.
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
  -- Hawlucha - Tackle - Level 1
  (701, 70100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hawlucha - Hone Claws - Level 1
  (701, 70100, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hawlucha - Wing Attack - Level 4
  (701, 70100, 17, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hawlucha - Detect - Level 8
  (701, 70100, 197, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Hawlucha - Aerial Ace - Level 12
  (701, 70100, 332, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hawlucha - Encore - Level 16
  (701, 70100, 227, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hawlucha - Feather Dance - Level 20
  (701, 70100, 297, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hawlucha - Brick Break - Level 24
  (701, 70100, 280, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hawlucha - Bounce - Level 28
  (701, 70100, 340, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hawlucha - Taunt - Level 32
  (701, 70100, 269, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hawlucha - Roost - Level 36
  (701, 70100, 355, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hawlucha - Swords Dance - Level 40
  (701, 70100, 14, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hawlucha - Flying Press - Level 44
  (701, 70100, 560, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hawlucha - High Jump Kick - Level 48
  (701, 70100, 136, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Hawlucha - Endeavor - Level 52
  (701, 70100, 283, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Hawlucha - Sky Attack - Level 56
  (701, 70100, 143, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Hawlucha - Take Down - TM001
  (701, 70100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Hawlucha - Agility - TM004
  (701, 70100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Hawlucha - Protect - TM007
  (701, 70100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Hawlucha - Low Kick - TM012
  (701, 70100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Hawlucha - Acrobatics - TM014
  (701, 70100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Hawlucha - Thief - TM018
  (701, 70100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Hawlucha - Trailblaze - TM020
  (701, 70100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Hawlucha - Facade - TM025
  (701, 70100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Hawlucha - Aerial Ace - TM027
  (701, 70100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Hawlucha - Swift - TM032
  (701, 70100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Hawlucha - Rock Tomb - TM036
  (701, 70100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Hawlucha - Low Sweep - TM039
  (701, 70100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Hawlucha - Fling - TM043
  (701, 70100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Hawlucha - Endure - TM047
  (701, 70100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Hawlucha - Sunny Day - TM049
  (701, 70100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Hawlucha - Rain Dance - TM050
  (701, 70100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Hawlucha - Dig - TM055
  (701, 70100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Hawlucha - False Swipe - TM057
  (701, 70100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Hawlucha - Brick Break - TM058
  (701, 70100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Hawlucha - Zen Headbutt - TM059
  (701, 70100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Hawlucha - U-turn - TM060
  (701, 70100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Hawlucha - Bulk Up - TM064
  (701, 70100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Hawlucha - Body Slam - TM066
  (701, 70100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Hawlucha - Fire Punch - TM067
  (701, 70100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Hawlucha - Thunder Punch - TM068
  (701, 70100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Hawlucha - Sleep Talk - TM070
  (701, 70100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Hawlucha - Drain Punch - TM073
  (701, 70100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Hawlucha - Grass Knot - TM081
  (701, 70100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Hawlucha - Poison Jab - TM083
  (701, 70100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Hawlucha - Rest - TM085
  (701, 70100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Hawlucha - Rock Slide - TM086
  (701, 70100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Hawlucha - Taunt - TM087
  (701, 70100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Hawlucha - Swords Dance - TM088
  (701, 70100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Hawlucha - Body Press - TM089
  (701, 70100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Hawlucha - Fly - TM097
  (701, 70100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 51),
  -- Hawlucha - Iron Head - TM099
  (701, 70100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 52),
  -- Hawlucha - Substitute - TM103
  (701, 70100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Hawlucha - X-Scissor - TM105
  (701, 70100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 54),
  -- Hawlucha - Encore - TM122
  (701, 70100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 55),
  -- Hawlucha - Helping Hand - TM130
  (701, 70100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Hawlucha - Baton Pass - TM132
  (701, 70100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 57),
  -- Hawlucha - Reversal - TM134
  (701, 70100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 58),
  -- Hawlucha - Stone Edge - TM150
  (701, 70100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Hawlucha - Giga Impact - TM152
  (701, 70100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Hawlucha - Focus Blast - TM158
  (701, 70100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Hawlucha - Hyper Beam - TM163
  (701, 70100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Hawlucha - Brave Bird - TM164
  (701, 70100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 63),
  -- Hawlucha - Close Combat - TM167
  (701, 70100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Hawlucha - Tera Blast - TM171
  (701, 70100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Hawlucha - Mean Look - Egg
  (701, 70100, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hawlucha - Cross Chop - Egg
  (701, 70100, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hawlucha - Feint - Egg
  (701, 70100, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hawlucha - Defog - Egg
  (701, 70100, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Hawlucha - Entrainment - Egg
  (701, 70100, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hawlucha - Quick Guard - Egg
  (701, 70100, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dedenne - Tail Whip - Level 1
  (702, 70200, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dedenne - Nuzzle - Level 1
  (702, 70200, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dedenne - Tackle - Level 5
  (702, 70200, 33, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dedenne - Charge - Level 10
  (702, 70200, 268, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dedenne - Thunder Shock - Level 15
  (702, 70200, 84, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dedenne - Charm - Level 20
  (702, 70200, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dedenne - Parabolic Charge - Level 25
  (702, 70200, 570, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dedenne - Volt Switch - Level 30
  (702, 70200, 521, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dedenne - Rest - Level 35
  (702, 70200, 156, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dedenne - Snore - Level 35
  (702, 70200, 173, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Dedenne - Discharge - Level 40
  (702, 70200, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Dedenne - Play Rough - Level 45
  (702, 70200, 583, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dedenne - Super Fang - Level 50
  (702, 70200, 162, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dedenne - Entrainment - Level 55
  (702, 70200, 494, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Dedenne - Thunder - Level 60
  (702, 70200, 87, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Dedenne - Take Down - TM001
  (702, 70200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dedenne - Charm - TM002
  (702, 70200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Dedenne - Agility - TM004
  (702, 70200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Dedenne - Protect - TM007
  (702, 70200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Dedenne - Thief - TM018
  (702, 70200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Dedenne - Trailblaze - TM020
  (702, 70200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Dedenne - Charge Beam - TM023
  (702, 70200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Dedenne - Facade - TM025
  (702, 70200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Dedenne - Swift - TM032
  (702, 70200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Dedenne - Draining Kiss - TM037
  (702, 70200, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Dedenne - Fling - TM043
  (702, 70200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Dedenne - Endure - TM047
  (702, 70200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Dedenne - Volt Switch - TM048
  (702, 70200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Dedenne - Sunny Day - TM049
  (702, 70200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Dedenne - Rain Dance - TM050
  (702, 70200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Dedenne - Dig - TM055
  (702, 70200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Dedenne - U-turn - TM060
  (702, 70200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Dedenne - Thunder Punch - TM068
  (702, 70200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Dedenne - Sleep Talk - TM070
  (702, 70200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Dedenne - Seed Bomb - TM071
  (702, 70200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Dedenne - Electro Ball - TM072
  (702, 70200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 36),
  -- Dedenne - Light Screen - TM075
  (702, 70200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Dedenne - Dazzling Gleam - TM079
  (702, 70200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Dedenne - Grass Knot - TM081
  (702, 70200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Dedenne - Thunder Wave - TM082
  (702, 70200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Dedenne - Rest - TM085
  (702, 70200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Dedenne - Eerie Impulse - TM096
  (702, 70200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 42),
  -- Dedenne - Substitute - TM103
  (702, 70200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Dedenne - Thunderbolt - TM126
  (702, 70200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Dedenne - Play Rough - TM127
  (702, 70200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Dedenne - Helping Hand - TM130
  (702, 70200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Dedenne - Electric Terrain - TM136
  (702, 70200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 47),
  -- Dedenne - Misty Terrain - TM139
  (702, 70200, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 48),
  -- Dedenne - Wild Charge - TM147
  (702, 70200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Dedenne - Giga Impact - TM152
  (702, 70200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Dedenne - Hyper Beam - TM163
  (702, 70200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Dedenne - Thunder - TM166
  (702, 70200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Dedenne - Tera Blast - TM171
  (702, 70200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Dedenne - Covet - Egg
  (702, 70200, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dedenne - Magnet Rise - Egg
  (702, 70200, 393, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dedenne - Tearful Look - Egg
  (702, 70200, 715, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Carbink - Tackle - Level 1
  (703, 70300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carbink - Harden - Level 1
  (703, 70300, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carbink - Guard Split - Level 5
  (703, 70300, 470, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Carbink - Smack Down - Level 10
  (703, 70300, 479, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Carbink - Flail - Level 15
  (703, 70300, 175, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Carbink - Ancient Power - Level 20
  (703, 70300, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Carbink - Rock Polish - Level 25
  (703, 70300, 397, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Carbink - Light Screen - Level 30
  (703, 70300, 113, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Carbink - Rock Slide - Level 35
  (703, 70300, 157, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Carbink - Skill Swap - Level 40
  (703, 70300, 285, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Carbink - Power Gem - Level 45
  (703, 70300, 408, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Carbink - Stealth Rock - Level 50
  (703, 70300, 446, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Carbink - Moonblast - Level 55
  (703, 70300, 585, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Carbink - Stone Edge - Level 60
  (703, 70300, 444, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Carbink - Take Down - TM001
  (703, 70300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Carbink - Charm - TM002
  (703, 70300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Carbink - Protect - TM007
  (703, 70300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Carbink - Facade - TM025
  (703, 70300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Carbink - Rock Tomb - TM036
  (703, 70300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Carbink - Endure - TM047
  (703, 70300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Carbink - Sunny Day - TM049
  (703, 70300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Carbink - Rain Dance - TM050
  (703, 70300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Carbink - Sandstorm - TM051
  (703, 70300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Carbink - Body Slam - TM066
  (703, 70300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Carbink - Sleep Talk - TM070
  (703, 70300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Carbink - Reflect - TM074
  (703, 70300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 26),
  -- Carbink - Light Screen - TM075
  (703, 70300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 27),
  -- Carbink - Rock Blast - TM076
  (703, 70300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 28),
  -- Carbink - Dazzling Gleam - TM079
  (703, 70300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 29),
  -- Carbink - Stomping Tantrum - TM084
  (703, 70300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Carbink - Rest - TM085
  (703, 70300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Carbink - Rock Slide - TM086
  (703, 70300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Carbink - Body Press - TM089
  (703, 70300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 33),
  -- Carbink - Spikes - TM090
  (703, 70300, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 34),
  -- Carbink - Flash Cannon - TM093
  (703, 70300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Carbink - Skill Swap - TM098
  (703, 70300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 36),
  -- Carbink - Iron Head - TM099
  (703, 70300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Carbink - Power Gem - TM101
  (703, 70300, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 38),
  -- Carbink - Substitute - TM103
  (703, 70300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Carbink - Iron Defense - TM104
  (703, 70300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Carbink - Stealth Rock - TM116
  (703, 70300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Carbink - Psychic - TM120
  (703, 70300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Carbink - Heavy Slam - TM121
  (703, 70300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Carbink - Calm Mind - TM129
  (703, 70300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Carbink - Earth Power - TM133
  (703, 70300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Carbink - Misty Terrain - TM139
  (703, 70300, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 46),
  -- Carbink - Stone Edge - TM150
  (703, 70300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Carbink - Giga Impact - TM152
  (703, 70300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Carbink - Trick Room - TM161
  (703, 70300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Carbink - Hyper Beam - TM163
  (703, 70300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Carbink - Tera Blast - TM171
  (703, 70300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Goomy - Tackle - Level 1
  (704, 70400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goomy - Absorb - Level 1
  (704, 70400, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goomy - Water Gun - Level 5
  (704, 70400, 55, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goomy - Dragon Breath - Level 10
  (704, 70400, 225, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goomy - Protect - Level 15
  (704, 70400, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Goomy - Flail - Level 20
  (704, 70400, 175, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Goomy - Water Pulse - Level 25
  (704, 70400, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Goomy - Rain Dance - Level 30
  (704, 70400, 240, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Goomy - Dragon Pulse - Level 35
  (704, 70400, 406, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Goomy - Curse - Level 41
  (704, 70400, 174, 23, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Goomy - Body Slam - Level 45
  (704, 70400, 34, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Goomy - Muddy Water - Level 50
  (704, 70400, 330, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Goomy - Take Down - TM001
  (704, 70400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Goomy - Charm - TM002
  (704, 70400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Goomy - Protect - TM007
  (704, 70400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Goomy - Water Pulse - TM011
  (704, 70400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Goomy - Chilling Water - TM022
  (704, 70400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Goomy - Facade - TM025
  (704, 70400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Goomy - Mud Shot - TM035
  (704, 70400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 19),
  -- Goomy - Endure - TM047
  (704, 70400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Goomy - Sunny Day - TM049
  (704, 70400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Goomy - Rain Dance - TM050
  (704, 70400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Goomy - Body Slam - TM066
  (704, 70400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 23),
  -- Goomy - Sleep Talk - TM070
  (704, 70400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Goomy - Rest - TM085
  (704, 70400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Goomy - Rock Slide - TM086
  (704, 70400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 26),
  -- Goomy - Substitute - TM103
  (704, 70400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Goomy - Dragon Pulse - TM115
  (704, 70400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 28),
  -- Goomy - Thunderbolt - TM126
  (704, 70400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 29),
  -- Goomy - Sludge Bomb - TM148
  (704, 70400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 30),
  -- Goomy - Outrage - TM156
  (704, 70400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 31),
  -- Goomy - Draco Meteor - TM169
  (704, 70400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 32),
  -- Goomy - Tera Blast - TM171
  (704, 70400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Goomy - Counter - Egg
  (704, 70400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Goomy - Life Dew - Egg
  (704, 70400, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sliggoo - Tackle - Level 1
  (705, 70500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo - Water Gun - Level 1
  (705, 70500, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sliggoo - Absorb - Level 1
  (705, 70500, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sliggoo - Acid Armor - Level 1
  (705, 70500, 151, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sliggoo - Dragon Breath - Level 1
  (705, 70500, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sliggoo - Protect - Level 15
  (705, 70500, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sliggoo - Flail - Level 20
  (705, 70500, 175, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sliggoo - Water Pulse - Level 25
  (705, 70500, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sliggoo - Rain Dance - Level 30
  (705, 70500, 240, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Sliggoo - Dragon Pulse - Level 35
  (705, 70500, 406, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sliggoo - Curse - Level 43
  (705, 70500, 174, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Sliggoo - Body Slam - Level 49
  (705, 70500, 34, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Sliggoo - Muddy Water - Level 56
  (705, 70500, 330, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Sliggoo - Take Down - TM001
  (705, 70500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sliggoo - Charm - TM002
  (705, 70500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Sliggoo - Protect - TM007
  (705, 70500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Sliggoo - Water Pulse - TM011
  (705, 70500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Sliggoo - Acid Spray - TM013
  (705, 70500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Sliggoo - Chilling Water - TM022
  (705, 70500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Sliggoo - Facade - TM025
  (705, 70500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Sliggoo - Mud Shot - TM035
  (705, 70500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Sliggoo - Endure - TM047
  (705, 70500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Sliggoo - Sunny Day - TM049
  (705, 70500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Sliggoo - Rain Dance - TM050
  (705, 70500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Sliggoo - Body Slam - TM066
  (705, 70500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Sliggoo - Sleep Talk - TM070
  (705, 70500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Sliggoo - Rest - TM085
  (705, 70500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Sliggoo - Rock Slide - TM086
  (705, 70500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 28),
  -- Sliggoo - Substitute - TM103
  (705, 70500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Sliggoo - Dragon Pulse - TM115
  (705, 70500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 30),
  -- Sliggoo - Thunderbolt - TM126
  (705, 70500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 31),
  -- Sliggoo - Ice Beam - TM135
  (705, 70500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 32),
  -- Sliggoo - Blizzard - TM143
  (705, 70500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 33),
  -- Sliggoo - Sludge Bomb - TM148
  (705, 70500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 34),
  -- Sliggoo - Outrage - TM156
  (705, 70500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 35),
  -- Sliggoo - Thunder - TM166
  (705, 70500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 36),
  -- Sliggoo - Draco Meteor - TM169
  (705, 70500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 37),
  -- Sliggoo - Tera Blast - TM171
  (705, 70500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Sliggoo - Counter - Egg
  (705, 70500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sliggoo - Life Dew - Egg
  (705, 70500, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sliggoo - Acid Spray - Evolution
  (705, 70500, 491, 23, NULL, 7, NULL, NULL, NULL, NULL, 41),
  -- Sliggoo (Hisuian Sliggoo) - Tackle - Level 1
  (705, 70501, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo (Hisuian Sliggoo) - Water Gun - Level 1
  (705, 70501, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sliggoo (Hisuian Sliggoo) - Absorb - Level 1
  (705, 70501, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sliggoo (Hisuian Sliggoo) - Acid Armor - Level 1
  (705, 70501, 151, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sliggoo (Hisuian Sliggoo) - Dragon Breath - Level 1
  (705, 70501, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sliggoo (Hisuian Sliggoo) - Protect - Level 15
  (705, 70501, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sliggoo (Hisuian Sliggoo) - Flail - Level 20
  (705, 70501, 175, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sliggoo (Hisuian Sliggoo) - Water Pulse - Level 25
  (705, 70501, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sliggoo (Hisuian Sliggoo) - Rain Dance - Level 30
  (705, 70501, 240, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Sliggoo (Hisuian Sliggoo) - Dragon Pulse - Level 35
  (705, 70501, 406, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sliggoo (Hisuian Sliggoo) - Curse - Level 43
  (705, 70501, 174, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Sliggoo (Hisuian Sliggoo) - Iron Head - Level 49
  (705, 70501, 442, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Sliggoo (Hisuian Sliggoo) - Muddy Water - Level 56
  (705, 70501, 330, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Sliggoo (Hisuian Sliggoo) - Take Down - TM001
  (705, 70501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sliggoo (Hisuian Sliggoo) - Charm - TM002
  (705, 70501, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Sliggoo (Hisuian Sliggoo) - Protect - TM007
  (705, 70501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Sliggoo (Hisuian Sliggoo) - Water Pulse - TM011
  (705, 70501, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Sliggoo (Hisuian Sliggoo) - Acid Spray - TM013
  (705, 70501, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Sliggoo (Hisuian Sliggoo) - Chilling Water - TM022
  (705, 70501, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Sliggoo (Hisuian Sliggoo) - Facade - TM025
  (705, 70501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Sliggoo (Hisuian Sliggoo) - Mud Shot - TM035
  (705, 70501, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Sliggoo (Hisuian Sliggoo) - Rock Tomb - TM036
  (705, 70501, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Sliggoo (Hisuian Sliggoo) - Endure - TM047
  (705, 70501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Sliggoo (Hisuian Sliggoo) - Sunny Day - TM049
  (705, 70501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Sliggoo (Hisuian Sliggoo) - Rain Dance - TM050
  (705, 70501, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Sliggoo (Hisuian Sliggoo) - Sandstorm - TM051
  (705, 70501, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Sliggoo (Hisuian Sliggoo) - Body Slam - TM066
  (705, 70501, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Sliggoo (Hisuian Sliggoo) - Sleep Talk - TM070
  (705, 70501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Sliggoo (Hisuian Sliggoo) - Rest - TM085
  (705, 70501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Sliggoo (Hisuian Sliggoo) - Rock Slide - TM086
  (705, 70501, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Sliggoo (Hisuian Sliggoo) - Flash Cannon - TM093
  (705, 70501, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 31),
  -- Sliggoo (Hisuian Sliggoo) - Iron Head - TM099
  (705, 70501, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 32),
  -- Sliggoo (Hisuian Sliggoo) - Substitute - TM103
  (705, 70501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Sliggoo (Hisuian Sliggoo) - Dragon Pulse - TM115
  (705, 70501, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 34),
  -- Sliggoo (Hisuian Sliggoo) - Heavy Slam - TM121
  (705, 70501, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 35),
  -- Sliggoo (Hisuian Sliggoo) - Ice Spinner - TM124
  (705, 70501, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Sliggoo (Hisuian Sliggoo) - Thunderbolt - TM126
  (705, 70501, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Sliggoo (Hisuian Sliggoo) - Ice Beam - TM135
  (705, 70501, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Sliggoo (Hisuian Sliggoo) - Blizzard - TM143
  (705, 70501, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 39),
  -- Sliggoo (Hisuian Sliggoo) - Sludge Bomb - TM148
  (705, 70501, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Sliggoo (Hisuian Sliggoo) - Outrage - TM156
  (705, 70501, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 41),
  -- Sliggoo (Hisuian Sliggoo) - Thunder - TM166
  (705, 70501, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 42),
  -- Sliggoo (Hisuian Sliggoo) - Draco Meteor - TM169
  (705, 70501, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 43),
  -- Sliggoo (Hisuian Sliggoo) - Steel Beam - TM170
  (705, 70501, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 44),
  -- Sliggoo (Hisuian Sliggoo) - Tera Blast - TM171
  (705, 70501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Sliggoo (Hisuian Sliggoo) - Shelter - Evolution
  (705, 70501, 842, 23, NULL, 7, NULL, NULL, NULL, NULL, 46),
  -- Goodra - Tackle - Level 1
  (706, 70600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra - Water Gun - Level 1
  (706, 70600, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goodra - Absorb - Level 1
  (706, 70600, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goodra - Dragon Breath - Level 1
  (706, 70600, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Goodra - Poison Tail - Level 1
  (706, 70600, 342, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Goodra - Feint - Level 1
  (706, 70600, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Goodra - Acid Spray - Level 1
  (706, 70600, 491, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Goodra - Tearful Look - Level 1
  (706, 70600, 715, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Goodra - Protect - Level 15
  (706, 70600, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Goodra - Flail - Level 20
  (706, 70600, 175, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Goodra - Water Pulse - Level 25
  (706, 70600, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Goodra - Rain Dance - Level 30
  (706, 70600, 240, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Goodra - Curse - Level 43
  (706, 70600, 174, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Goodra - Body Slam - Level 49
  (706, 70600, 34, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Goodra - Muddy Water - Level 58
  (706, 70600, 330, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Goodra - Power Whip - Level 67
  (706, 70600, 438, 23, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Goodra - Take Down - TM001
  (706, 70600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Goodra - Charm - TM002
  (706, 70600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Goodra - Protect - TM007
  (706, 70600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Goodra - Water Pulse - TM011
  (706, 70600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Goodra - Acid Spray - TM013
  (706, 70600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Goodra - Chilling Water - TM022
  (706, 70600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Goodra - Facade - TM025
  (706, 70600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Goodra - Poison Tail - TM026
  (706, 70600, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Goodra - Bulldoze - TM028
  (706, 70600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Goodra - Mud Shot - TM035
  (706, 70600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Goodra - Dragon Tail - TM044
  (706, 70600, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Goodra - Endure - TM047
  (706, 70600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Goodra - Sunny Day - TM049
  (706, 70600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Goodra - Rain Dance - TM050
  (706, 70600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Goodra - Body Slam - TM066
  (706, 70600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Goodra - Fire Punch - TM067
  (706, 70600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Goodra - Thunder Punch - TM068
  (706, 70600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Goodra - Sleep Talk - TM070
  (706, 70600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Goodra - Dragon Claw - TM078
  (706, 70600, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Goodra - Stomping Tantrum - TM084
  (706, 70600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Goodra - Rest - TM085
  (706, 70600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Goodra - Rock Slide - TM086
  (706, 70600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Goodra - Body Press - TM089
  (706, 70600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Goodra - Substitute - TM103
  (706, 70600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Goodra - Dragon Pulse - TM115
  (706, 70600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Goodra - Surf - TM123
  (706, 70600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 42),
  -- Goodra - Flamethrower - TM125
  (706, 70600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Goodra - Thunderbolt - TM126
  (706, 70600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Goodra - Ice Beam - TM135
  (706, 70600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Goodra - Fire Blast - TM141
  (706, 70600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Goodra - Hydro Pump - TM142
  (706, 70600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Goodra - Blizzard - TM143
  (706, 70600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Goodra - Sludge Bomb - TM148
  (706, 70600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 49),
  -- Goodra - Earthquake - TM149
  (706, 70600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Goodra - Giga Impact - TM152
  (706, 70600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Goodra - Outrage - TM156
  (706, 70600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Goodra - Focus Blast - TM158
  (706, 70600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Goodra - Hyper Beam - TM163
  (706, 70600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Goodra - Thunder - TM166
  (706, 70600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Goodra - Draco Meteor - TM169
  (706, 70600, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 56),
  -- Goodra - Tera Blast - TM171
  (706, 70600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Goodra - Counter - Egg
  (706, 70600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Goodra - Life Dew - Egg
  (706, 70600, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Goodra - Aqua Tail - Evolution
  (706, 70600, 401, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Goodra (Hisuian Goodra) - Tackle - Level 1
  (706, 70601, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra (Hisuian Goodra) - Water Gun - Level 1
  (706, 70601, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goodra (Hisuian Goodra) - Absorb - Level 1
  (706, 70601, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goodra (Hisuian Goodra) - Dragon Breath - Level 1
  (706, 70601, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Goodra (Hisuian Goodra) - Feint - Level 1
  (706, 70601, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Goodra (Hisuian Goodra) - Acid Spray - Level 1
  (706, 70601, 491, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Goodra (Hisuian Goodra) - Tearful Look - Level 1
  (706, 70601, 715, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Goodra (Hisuian Goodra) - Shelter - Level 1
  (706, 70601, 842, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Goodra (Hisuian Goodra) - Protect - Level 15
  (706, 70601, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Goodra (Hisuian Goodra) - Flail - Level 20
  (706, 70601, 175, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Goodra (Hisuian Goodra) - Water Pulse - Level 25
  (706, 70601, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Goodra (Hisuian Goodra) - Rain Dance - Level 30
  (706, 70601, 240, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Goodra (Hisuian Goodra) - Dragon Pulse - Level 35
  (706, 70601, 406, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Goodra (Hisuian Goodra) - Curse - Level 43
  (706, 70601, 174, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Goodra (Hisuian Goodra) - Body Slam - Level 49
  (706, 70601, 34, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Goodra (Hisuian Goodra) - Iron Head - Level 49
  (706, 70601, 442, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Goodra (Hisuian Goodra) - Muddy Water - Level 58
  (706, 70601, 330, 23, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Goodra (Hisuian Goodra) - Heavy Slam - Level 67
  (706, 70601, 484, 23, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Goodra (Hisuian Goodra) - Take Down - TM001
  (706, 70601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Goodra (Hisuian Goodra) - Charm - TM002
  (706, 70601, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Goodra (Hisuian Goodra) - Scary Face - TM006
  (706, 70601, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Goodra (Hisuian Goodra) - Protect - TM007
  (706, 70601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Goodra (Hisuian Goodra) - Water Pulse - TM011
  (706, 70601, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Goodra (Hisuian Goodra) - Acid Spray - TM013
  (706, 70601, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 24),
  -- Goodra (Hisuian Goodra) - Chilling Water - TM022
  (706, 70601, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Goodra (Hisuian Goodra) - Facade - TM025
  (706, 70601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Goodra (Hisuian Goodra) - Bulldoze - TM028
  (706, 70601, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Goodra (Hisuian Goodra) - Mud Shot - TM035
  (706, 70601, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Goodra (Hisuian Goodra) - Rock Tomb - TM036
  (706, 70601, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Goodra (Hisuian Goodra) - Dragon Tail - TM044
  (706, 70601, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 30),
  -- Goodra (Hisuian Goodra) - Endure - TM047
  (706, 70601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Goodra (Hisuian Goodra) - Sunny Day - TM049
  (706, 70601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Goodra (Hisuian Goodra) - Rain Dance - TM050
  (706, 70601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Goodra (Hisuian Goodra) - Sandstorm - TM051
  (706, 70601, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Goodra (Hisuian Goodra) - Body Slam - TM066
  (706, 70601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Goodra (Hisuian Goodra) - Fire Punch - TM067
  (706, 70601, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Goodra (Hisuian Goodra) - Thunder Punch - TM068
  (706, 70601, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Goodra (Hisuian Goodra) - Sleep Talk - TM070
  (706, 70601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Goodra (Hisuian Goodra) - Dragon Claw - TM078
  (706, 70601, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 39),
  -- Goodra (Hisuian Goodra) - Stomping Tantrum - TM084
  (706, 70601, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Goodra (Hisuian Goodra) - Rest - TM085
  (706, 70601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Goodra (Hisuian Goodra) - Rock Slide - TM086
  (706, 70601, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Goodra (Hisuian Goodra) - Body Press - TM089
  (706, 70601, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Goodra (Hisuian Goodra) - Flash Cannon - TM093
  (706, 70601, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Goodra (Hisuian Goodra) - Iron Head - TM099
  (706, 70601, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Goodra (Hisuian Goodra) - Substitute - TM103
  (706, 70601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Goodra (Hisuian Goodra) - Dragon Pulse - TM115
  (706, 70601, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 47),
  -- Goodra (Hisuian Goodra) - Heavy Slam - TM121
  (706, 70601, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Goodra (Hisuian Goodra) - Surf - TM123
  (706, 70601, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 49),
  -- Goodra (Hisuian Goodra) - Ice Spinner - TM124
  (706, 70601, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Goodra (Hisuian Goodra) - Flamethrower - TM125
  (706, 70601, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Goodra (Hisuian Goodra) - Thunderbolt - TM126
  (706, 70601, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Goodra (Hisuian Goodra) - Ice Beam - TM135
  (706, 70601, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Goodra (Hisuian Goodra) - Fire Blast - TM141
  (706, 70601, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Goodra (Hisuian Goodra) - Hydro Pump - TM142
  (706, 70601, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 55),
  -- Goodra (Hisuian Goodra) - Blizzard - TM143
  (706, 70601, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 56),
  -- Goodra (Hisuian Goodra) - Sludge Bomb - TM148
  (706, 70601, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Goodra (Hisuian Goodra) - Earthquake - TM149
  (706, 70601, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Goodra (Hisuian Goodra) - Giga Impact - TM152
  (706, 70601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Goodra (Hisuian Goodra) - Outrage - TM156
  (706, 70601, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Goodra (Hisuian Goodra) - Hyper Beam - TM163
  (706, 70601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Goodra (Hisuian Goodra) - Thunder - TM166
  (706, 70601, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Goodra (Hisuian Goodra) - Draco Meteor - TM169
  (706, 70601, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 63),
  -- Goodra (Hisuian Goodra) - Steel Beam - TM170
  (706, 70601, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 64),
  -- Goodra (Hisuian Goodra) - Tera Blast - TM171
  (706, 70601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Goodra (Hisuian Goodra) - Iron Tail - Evolution
  (706, 70601, 231, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Klefki - Astonish - Level 1
  (707, 70700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klefki - Tackle - Level 4
  (707, 70700, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Klefki - Fairy Wind - Level 8
  (707, 70700, 584, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Klefki - Torment - Level 12
  (707, 70700, 259, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Klefki - Fairy Lock - Level 16
  (707, 70700, 587, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Klefki - Metal Sound - Level 20
  (707, 70700, 319, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Klefki - Draining Kiss - Level 24
  (707, 70700, 577, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Klefki - Recycle - Level 28
  (707, 70700, 278, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Klefki - Imprison - Level 32
  (707, 70700, 286, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Klefki - Flash Cannon - Level 36
  (707, 70700, 430, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Klefki - Play Rough - Level 40
  (707, 70700, 583, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Klefki - Magic Room - Level 44
  (707, 70700, 478, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Klefki - Foul Play - Level 48
  (707, 70700, 492, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Klefki - Last Resort - Level 52
  (707, 70700, 387, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Klefki - Protect - TM007
  (707, 70700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Klefki - Thief - TM018
  (707, 70700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Klefki - Facade - TM025
  (707, 70700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Klefki - Swift - TM032
  (707, 70700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Klefki - Draining Kiss - TM037
  (707, 70700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Klefki - Stored Power - TM041
  (707, 70700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 20),
  -- Klefki - Endure - TM047
  (707, 70700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Klefki - Sunny Day - TM049
  (707, 70700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Klefki - Rain Dance - TM050
  (707, 70700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Klefki - Sandstorm - TM051
  (707, 70700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Klefki - Psyshock - TM054
  (707, 70700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 25),
  -- Klefki - Foul Play - TM062
  (707, 70700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 26),
  -- Klefki - Sleep Talk - TM070
  (707, 70700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Klefki - Reflect - TM074
  (707, 70700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Klefki - Light Screen - TM075
  (707, 70700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Klefki - Dazzling Gleam - TM079
  (707, 70700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Klefki - Thunder Wave - TM082
  (707, 70700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Klefki - Rest - TM085
  (707, 70700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Klefki - Spikes - TM090
  (707, 70700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 33),
  -- Klefki - Imprison - TM092
  (707, 70700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 34),
  -- Klefki - Flash Cannon - TM093
  (707, 70700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Klefki - Substitute - TM103
  (707, 70700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Klefki - Iron Defense - TM104
  (707, 70700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Klefki - Psychic - TM120
  (707, 70700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Klefki - Play Rough - TM127
  (707, 70700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 39),
  -- Klefki - Calm Mind - TM129
  (707, 70700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Klefki - Misty Terrain - TM139
  (707, 70700, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 41),
  -- Klefki - Giga Impact - TM152
  (707, 70700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Klefki - Trick Room - TM161
  (707, 70700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Klefki - Hyper Beam - TM163
  (707, 70700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Klefki - Steel Beam - TM170
  (707, 70700, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 45),
  -- Klefki - Tera Blast - TM171
  (707, 70700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Klefki - Magnet Rise - Egg
  (707, 70700, 393, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Klefki - Switcheroo - Egg
  (707, 70700, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Phantump - Tackle - Level 1
  (708, 70800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phantump - Astonish - Level 1
  (708, 70800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phantump - Branch Poke - Level 4
  (708, 70800, 785, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Phantump - Leech Seed - Level 8
  (708, 70800, 73, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Phantump - Confuse Ray - Level 12
  (708, 70800, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Phantump - Will-O-Wisp - Level 16
  (708, 70800, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Phantump - Hex - Level 20
  (708, 70800, 506, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Phantump - Growth - Level 24
  (708, 70800, 74, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Phantump - Horn Leech - Level 28
  (708, 70800, 532, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Phantump - Curse - Level 32
  (708, 70800, 174, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Phantump - Phantom Force - Level 36
  (708, 70800, 566, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Phantump - Ingrain - Level 40
  (708, 70800, 275, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Phantump - Wood Hammer - Level 44
  (708, 70800, 452, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Phantump - Destiny Bond - Level 48
  (708, 70800, 194, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Phantump - Forest's Curse - Level 52
  (708, 70800, 571, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Phantump - Protect - TM007
  (708, 70800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Phantump - Confuse Ray - TM017
  (708, 70800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Phantump - Thief - TM018
  (708, 70800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Phantump - Trailblaze - TM020
  (708, 70800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Phantump - Facade - TM025
  (708, 70800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Phantump - Bulldoze - TM028
  (708, 70800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Phantump - Hex - TM029
  (708, 70800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Phantump - Magical Leaf - TM033
  (708, 70800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Phantump - Night Shade - TM042
  (708, 70800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Phantump - Endure - TM047
  (708, 70800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Phantump - Sunny Day - TM049
  (708, 70800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Phantump - Rain Dance - TM050
  (708, 70800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Phantump - Dig - TM055
  (708, 70800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Phantump - Shadow Claw - TM061
  (708, 70800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Phantump - Foul Play - TM062
  (708, 70800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Phantump - Sleep Talk - TM070
  (708, 70800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Phantump - Seed Bomb - TM071
  (708, 70800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Phantump - Reflect - TM074
  (708, 70800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Phantump - Grass Knot - TM081
  (708, 70800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Phantump - Poison Jab - TM083
  (708, 70800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Phantump - Rest - TM085
  (708, 70800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Phantump - Rock Slide - TM086
  (708, 70800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Phantump - Imprison - TM092
  (708, 70800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Phantump - Dark Pulse - TM094
  (708, 70800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Phantump - Skill Swap - TM098
  (708, 70800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Phantump - Substitute - TM103
  (708, 70800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Phantump - Will-O-Wisp - TM107
  (708, 70800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Phantump - Trick - TM109
  (708, 70800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Phantump - Giga Drain - TM111
  (708, 70800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 44),
  -- Phantump - Shadow Ball - TM114
  (708, 70800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Phantump - Energy Ball - TM119
  (708, 70800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Phantump - Psychic - TM120
  (708, 70800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 47),
  -- Phantump - Grassy Terrain - TM137
  (708, 70800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 48),
  -- Phantump - Phantom Force - TM151
  (708, 70800, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 49),
  -- Phantump - Trick Room - TM161
  (708, 70800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 50),
  -- Phantump - Solar Beam - TM168
  (708, 70800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Phantump - Tera Blast - TM171
  (708, 70800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Phantump - Disable - Egg
  (708, 70800, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Phantump - Sucker Punch - Egg
  (708, 70800, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Phantump - Ally Switch - Egg
  (708, 70800, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Trevenant - Tackle - Level 1
  (709, 70900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trevenant - Leech Seed - Level 1
  (709, 70900, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trevenant - Astonish - Level 1
  (709, 70900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trevenant - Branch Poke - Level 1
  (709, 70900, 785, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trevenant - Confuse Ray - Level 12
  (709, 70900, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trevenant - Will-O-Wisp - Level 16
  (709, 70900, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Trevenant - Hex - Level 20
  (709, 70900, 506, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Trevenant - Growth - Level 24
  (709, 70900, 74, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Trevenant - Horn Leech - Level 28
  (709, 70900, 532, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Trevenant - Curse - Level 32
  (709, 70900, 174, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Trevenant - Phantom Force - Level 36
  (709, 70900, 566, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Trevenant - Ingrain - Level 40
  (709, 70900, 275, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Trevenant - Wood Hammer - Level 44
  (709, 70900, 452, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Trevenant - Destiny Bond - Level 48
  (709, 70900, 194, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Trevenant - Forest's Curse - Level 52
  (709, 70900, 571, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Trevenant - Take Down - TM001
  (709, 70900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Trevenant - Scary Face - TM006
  (709, 70900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Trevenant - Protect - TM007
  (709, 70900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Trevenant - Confuse Ray - TM017
  (709, 70900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Trevenant - Thief - TM018
  (709, 70900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Trevenant - Trailblaze - TM020
  (709, 70900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Trevenant - Facade - TM025
  (709, 70900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Trevenant - Bulldoze - TM028
  (709, 70900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Trevenant - Hex - TM029
  (709, 70900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Trevenant - Magical Leaf - TM033
  (709, 70900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Trevenant - Night Shade - TM042
  (709, 70900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Trevenant - Endure - TM047
  (709, 70900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Trevenant - Sunny Day - TM049
  (709, 70900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Trevenant - Rain Dance - TM050
  (709, 70900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Trevenant - Dig - TM055
  (709, 70900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Trevenant - Shadow Claw - TM061
  (709, 70900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Trevenant - Foul Play - TM062
  (709, 70900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Trevenant - Sleep Talk - TM070
  (709, 70900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Trevenant - Seed Bomb - TM071
  (709, 70900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Trevenant - Drain Punch - TM073
  (709, 70900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 35),
  -- Trevenant - Reflect - TM074
  (709, 70900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Trevenant - Grass Knot - TM081
  (709, 70900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Trevenant - Poison Jab - TM083
  (709, 70900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Trevenant - Rest - TM085
  (709, 70900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Trevenant - Rock Slide - TM086
  (709, 70900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Trevenant - Imprison - TM092
  (709, 70900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Trevenant - Dark Pulse - TM094
  (709, 70900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Trevenant - Skill Swap - TM098
  (709, 70900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Trevenant - Substitute - TM103
  (709, 70900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Trevenant - X-Scissor - TM105
  (709, 70900, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Trevenant - Will-O-Wisp - TM107
  (709, 70900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Trevenant - Trick - TM109
  (709, 70900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 47),
  -- Trevenant - Giga Drain - TM111
  (709, 70900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Trevenant - Shadow Ball - TM114
  (709, 70900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Trevenant - Energy Ball - TM119
  (709, 70900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 50),
  -- Trevenant - Psychic - TM120
  (709, 70900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Trevenant - Calm Mind - TM129
  (709, 70900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 52),
  -- Trevenant - Grassy Terrain - TM137
  (709, 70900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 53),
  -- Trevenant - Earthquake - TM149
  (709, 70900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Trevenant - Phantom Force - TM151
  (709, 70900, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 55),
  -- Trevenant - Giga Impact - TM152
  (709, 70900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Trevenant - Focus Blast - TM158
  (709, 70900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Trevenant - Leaf Storm - TM159
  (709, 70900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 58),
  -- Trevenant - Trick Room - TM161
  (709, 70900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 59),
  -- Trevenant - Hyper Beam - TM163
  (709, 70900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Trevenant - Solar Beam - TM168
  (709, 70900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Trevenant - Tera Blast - TM171
  (709, 70900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Trevenant - Disable - Egg
  (709, 70900, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Trevenant - Sucker Punch - Egg
  (709, 70900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Trevenant - Ally Switch - Egg
  (709, 70900, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Trevenant - Shadow Claw - Evolution
  (709, 70900, 421, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Bergmite - Harden - Level 1
  (712, 71200, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bergmite - Rapid Spin - Level 1
  (712, 71200, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bergmite - Tackle - Level 3
  (712, 71200, 33, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bergmite - Powder Snow - Level 6
  (712, 71200, 181, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bergmite - Curse - Level 9
  (712, 71200, 174, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bergmite - Icy Wind - Level 12
  (712, 71200, 196, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bergmite - Protect - Level 15
  (712, 71200, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bergmite - Avalanche - Level 18
  (712, 71200, 419, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bergmite - Bite - Level 21
  (712, 71200, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Bergmite - Ice Fang - Level 24
  (712, 71200, 423, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bergmite - Iron Defense - Level 27
  (712, 71200, 334, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Bergmite - Recover - Level 30
  (712, 71200, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Bergmite - Crunch - Level 33
  (712, 71200, 242, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bergmite - Take Down - Level 36
  (712, 71200, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Bergmite - Blizzard - Level 39
  (712, 71200, 59, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Bergmite - Double-Edge - Level 42
  (712, 71200, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Bergmite - Take Down - TM001
  (712, 71200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Bergmite - Protect - TM007
  (712, 71200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Bergmite - Ice Fang - TM010
  (712, 71200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Bergmite - Chilling Water - TM022
  (712, 71200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Bergmite - Facade - TM025
  (712, 71200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Bergmite - Bulldoze - TM028
  (712, 71200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Bergmite - Icy Wind - TM034
  (712, 71200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Bergmite - Rock Tomb - TM036
  (712, 71200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Bergmite - Avalanche - TM046
  (712, 71200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 25),
  -- Bergmite - Endure - TM047
  (712, 71200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Bergmite - Rain Dance - TM050
  (712, 71200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Bergmite - Snowscape - TM052
  (712, 71200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Bergmite - Body Slam - TM066
  (712, 71200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Bergmite - Sleep Talk - TM070
  (712, 71200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Bergmite - Rest - TM085
  (712, 71200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Bergmite - Rock Slide - TM086
  (712, 71200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Bergmite - Substitute - TM103
  (712, 71200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Bergmite - Iron Defense - TM104
  (712, 71200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 34),
  -- Bergmite - Crunch - TM108
  (712, 71200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 35),
  -- Bergmite - Ice Spinner - TM124
  (712, 71200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Bergmite - Ice Beam - TM135
  (712, 71200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Bergmite - Blizzard - TM143
  (712, 71200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 38),
  -- Bergmite - Stone Edge - TM150
  (712, 71200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 39),
  -- Bergmite - Tera Blast - TM171
  (712, 71200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Bergmite - Mist - Egg
  (712, 71200, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bergmite - Mirror Coat - Egg
  (712, 71200, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bergmite - Aurora Veil - Egg
  (712, 71200, 694, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Avalugg - Tackle - Level 1
  (713, 71300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg - Harden - Level 1
  (713, 71300, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Avalugg - Powder Snow - Level 1
  (713, 71300, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Avalugg - Rapid Spin - Level 1
  (713, 71300, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Avalugg - Wide Guard - Level 1
  (713, 71300, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Avalugg - Curse - Level 9
  (713, 71300, 174, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Avalugg - Icy Wind - Level 12
  (713, 71300, 196, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Avalugg - Protect - Level 15
  (713, 71300, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Avalugg - Avalanche - Level 18
  (713, 71300, 419, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Avalugg - Bite - Level 21
  (713, 71300, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Avalugg - Ice Fang - Level 24
  (713, 71300, 423, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Avalugg - Iron Defense - Level 27
  (713, 71300, 334, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Avalugg - Recover - Level 30
  (713, 71300, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Avalugg - Crunch - Level 33
  (713, 71300, 242, 23, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Avalugg - Take Down - Level 36
  (713, 71300, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Avalugg - Blizzard - Level 41
  (713, 71300, 59, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Avalugg - Double-Edge - Level 46
  (713, 71300, 38, 23, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Avalugg - Icicle Crash - Level 51
  (713, 71300, 556, 23, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Avalugg - Take Down - TM001
  (713, 71300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Avalugg - Scary Face - TM006
  (713, 71300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Avalugg - Protect - TM007
  (713, 71300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Avalugg - Ice Fang - TM010
  (713, 71300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Avalugg - Chilling Water - TM022
  (713, 71300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Avalugg - Facade - TM025
  (713, 71300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Avalugg - Bulldoze - TM028
  (713, 71300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Avalugg - Icy Wind - TM034
  (713, 71300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Avalugg - Rock Tomb - TM036
  (713, 71300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Avalugg - Avalanche - TM046
  (713, 71300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 28),
  -- Avalugg - Endure - TM047
  (713, 71300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Avalugg - Rain Dance - TM050
  (713, 71300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Avalugg - Snowscape - TM052
  (713, 71300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Avalugg - Body Slam - TM066
  (713, 71300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Avalugg - Sleep Talk - TM070
  (713, 71300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Avalugg - Stomping Tantrum - TM084
  (713, 71300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Avalugg - Rest - TM085
  (713, 71300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Avalugg - Rock Slide - TM086
  (713, 71300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Avalugg - Body Press - TM089
  (713, 71300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Avalugg - Flash Cannon - TM093
  (713, 71300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Avalugg - Iron Head - TM099
  (713, 71300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Avalugg - Substitute - TM103
  (713, 71300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Avalugg - Iron Defense - TM104
  (713, 71300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Avalugg - Crunch - TM108
  (713, 71300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Avalugg - Heavy Slam - TM121
  (713, 71300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Avalugg - Surf - TM123
  (713, 71300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 44),
  -- Avalugg - Ice Spinner - TM124
  (713, 71300, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 45),
  -- Avalugg - Ice Beam - TM135
  (713, 71300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Avalugg - Hydro Pump - TM142
  (713, 71300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Avalugg - Blizzard - TM143
  (713, 71300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Avalugg - Earthquake - TM149
  (713, 71300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Avalugg - Stone Edge - TM150
  (713, 71300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Avalugg - Giga Impact - TM152
  (713, 71300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Avalugg - Hyper Beam - TM163
  (713, 71300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Avalugg - Tera Blast - TM171
  (713, 71300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Avalugg - Mist - Egg
  (713, 71300, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Avalugg - Mirror Coat - Egg
  (713, 71300, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Avalugg - Aurora Veil - Egg
  (713, 71300, 694, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Avalugg - Body Slam - Evolution
  (713, 71300, 34, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Avalugg (Hisuian Avalugg) - Tackle - Level 1
  (713, 71301, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg (Hisuian Avalugg) - Harden - Level 1
  (713, 71301, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Avalugg (Hisuian Avalugg) - Powder Snow - Level 1
  (713, 71301, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Avalugg (Hisuian Avalugg) - Rapid Spin - Level 1
  (713, 71301, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Avalugg (Hisuian Avalugg) - Wide Guard - Level 1
  (713, 71301, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Avalugg (Hisuian Avalugg) - Curse - Level 9
  (713, 71301, 174, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Avalugg (Hisuian Avalugg) - Icy Wind - Level 12
  (713, 71301, 196, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Avalugg (Hisuian Avalugg) - Protect - Level 15
  (713, 71301, 182, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Avalugg (Hisuian Avalugg) - Avalanche - Level 18
  (713, 71301, 419, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Avalugg (Hisuian Avalugg) - Bite - Level 21
  (713, 71301, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Avalugg (Hisuian Avalugg) - Ice Fang - Level 24
  (713, 71301, 423, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Avalugg (Hisuian Avalugg) - Iron Defense - Level 27
  (713, 71301, 334, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Avalugg (Hisuian Avalugg) - Recover - Level 30
  (713, 71301, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Avalugg (Hisuian Avalugg) - Crunch - Level 33
  (713, 71301, 242, 23, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Avalugg (Hisuian Avalugg) - Take Down - Level 36
  (713, 71301, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Avalugg (Hisuian Avalugg) - Blizzard - Level 41
  (713, 71301, 59, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Avalugg (Hisuian Avalugg) - Double-Edge - Level 46
  (713, 71301, 38, 23, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Avalugg (Hisuian Avalugg) - Stone Edge - Level 51
  (713, 71301, 444, 23, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Avalugg (Hisuian Avalugg) - Mountain Gale - Level 61
  (713, 71301, 836, 23, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Avalugg (Hisuian Avalugg) - Take Down - TM001
  (713, 71301, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Avalugg (Hisuian Avalugg) - Scary Face - TM006
  (713, 71301, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Avalugg (Hisuian Avalugg) - Protect - TM007
  (713, 71301, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Avalugg (Hisuian Avalugg) - Ice Fang - TM010
  (713, 71301, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Avalugg (Hisuian Avalugg) - Chilling Water - TM022
  (713, 71301, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Avalugg (Hisuian Avalugg) - Facade - TM025
  (713, 71301, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Avalugg (Hisuian Avalugg) - Bulldoze - TM028
  (713, 71301, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Avalugg (Hisuian Avalugg) - Icy Wind - TM034
  (713, 71301, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Avalugg (Hisuian Avalugg) - Rock Tomb - TM036
  (713, 71301, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Avalugg (Hisuian Avalugg) - Avalanche - TM046
  (713, 71301, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Avalugg (Hisuian Avalugg) - Endure - TM047
  (713, 71301, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Avalugg (Hisuian Avalugg) - Rain Dance - TM050
  (713, 71301, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Avalugg (Hisuian Avalugg) - Sandstorm - TM051
  (713, 71301, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Avalugg (Hisuian Avalugg) - Snowscape - TM052
  (713, 71301, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Avalugg (Hisuian Avalugg) - Dig - TM055
  (713, 71301, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Avalugg (Hisuian Avalugg) - Body Slam - TM066
  (713, 71301, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Avalugg (Hisuian Avalugg) - Sleep Talk - TM070
  (713, 71301, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Avalugg (Hisuian Avalugg) - Rock Blast - TM076
  (713, 71301, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Avalugg (Hisuian Avalugg) - Stomping Tantrum - TM084
  (713, 71301, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Avalugg (Hisuian Avalugg) - Rest - TM085
  (713, 71301, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Avalugg (Hisuian Avalugg) - Rock Slide - TM086
  (713, 71301, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Avalugg (Hisuian Avalugg) - Body Press - TM089
  (713, 71301, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Avalugg (Hisuian Avalugg) - Iron Head - TM099
  (713, 71301, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Avalugg (Hisuian Avalugg) - Substitute - TM103
  (713, 71301, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Avalugg (Hisuian Avalugg) - Iron Defense - TM104
  (713, 71301, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Avalugg (Hisuian Avalugg) - Crunch - TM108
  (713, 71301, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Avalugg (Hisuian Avalugg) - Stealth Rock - TM116
  (713, 71301, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Avalugg (Hisuian Avalugg) - Heavy Slam - TM121
  (713, 71301, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 47),
  -- Avalugg (Hisuian Avalugg) - Ice Spinner - TM124
  (713, 71301, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 48),
  -- Avalugg (Hisuian Avalugg) - Ice Beam - TM135
  (713, 71301, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Avalugg (Hisuian Avalugg) - Blizzard - TM143
  (713, 71301, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Avalugg (Hisuian Avalugg) - Earthquake - TM149
  (713, 71301, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Avalugg (Hisuian Avalugg) - Stone Edge - TM150
  (713, 71301, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Avalugg (Hisuian Avalugg) - Giga Impact - TM152
  (713, 71301, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Avalugg (Hisuian Avalugg) - Hyper Beam - TM163
  (713, 71301, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Avalugg (Hisuian Avalugg) - Tera Blast - TM171
  (713, 71301, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Avalugg (Hisuian Avalugg) - Rock Slide - Evolution
  (713, 71301, 157, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Noibat - Tackle - Level 1
  (714, 71400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noibat - Absorb - Level 1
  (714, 71400, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noibat - Gust - Level 4
  (714, 71400, 16, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Noibat - Supersonic - Level 8
  (714, 71400, 48, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Noibat - Double Team - Level 12
  (714, 71400, 104, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Noibat - Wing Attack - Level 16
  (714, 71400, 17, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Noibat - Bite - Level 20
  (714, 71400, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Noibat - Air Cutter - Level 24
  (714, 71400, 314, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Noibat - Whirlwind - Level 28
  (714, 71400, 18, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Noibat - Super Fang - Level 32
  (714, 71400, 162, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Noibat - Air Slash - Level 36
  (714, 71400, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Noibat - Screech - Level 40
  (714, 71400, 103, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Noibat - Roost - Level 44
  (714, 71400, 355, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Noibat - Tailwind - Level 49
  (714, 71400, 366, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Noibat - Hurricane - Level 52
  (714, 71400, 542, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Noibat - Take Down - TM001
  (714, 71400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Noibat - Agility - TM004
  (714, 71400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Noibat - Protect - TM007
  (714, 71400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Noibat - Acrobatics - TM014
  (714, 71400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Noibat - Thief - TM018
  (714, 71400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Noibat - Facade - TM025
  (714, 71400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Noibat - Aerial Ace - TM027
  (714, 71400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Noibat - Swift - TM032
  (714, 71400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Noibat - Air Cutter - TM040
  (714, 71400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Noibat - Endure - TM047
  (714, 71400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Noibat - Sunny Day - TM049
  (714, 71400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Noibat - Brick Break - TM058
  (714, 71400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Noibat - U-turn - TM060
  (714, 71400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Noibat - Shadow Claw - TM061
  (714, 71400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Noibat - Air Slash - TM065
  (714, 71400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Noibat - Sleep Talk - TM070
  (714, 71400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Noibat - Dragon Claw - TM078
  (714, 71400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 32),
  -- Noibat - Rest - TM085
  (714, 71400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Noibat - Taunt - TM087
  (714, 71400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Noibat - Dark Pulse - TM094
  (714, 71400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 35),
  -- Noibat - Leech Life - TM095
  (714, 71400, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 36),
  -- Noibat - Fly - TM097
  (714, 71400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Noibat - Substitute - TM103
  (714, 71400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Noibat - X-Scissor - TM105
  (714, 71400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 39),
  -- Noibat - Tailwind - TM113
  (714, 71400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Noibat - Shadow Ball - TM114
  (714, 71400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Noibat - Dragon Pulse - TM115
  (714, 71400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Noibat - Hyper Voice - TM117
  (714, 71400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Noibat - Heat Wave - TM118
  (714, 71400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Noibat - Psychic - TM120
  (714, 71400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Noibat - Wild Charge - TM147
  (714, 71400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Noibat - Outrage - TM156
  (714, 71400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Noibat - Hurricane - TM160
  (714, 71400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Noibat - Solar Beam - TM168
  (714, 71400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Noibat - Draco Meteor - TM169
  (714, 71400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Noibat - Tera Blast - TM171
  (714, 71400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Noibat - Dragon Rush - Egg
  (714, 71400, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noibat - Switcheroo - Egg
  (714, 71400, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noibat - Defog - Egg
  (714, 71400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Noivern - Gust - Level 1
  (715, 71500, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noivern - Tackle - Level 1
  (715, 71500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noivern - Supersonic - Level 1
  (715, 71500, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noivern - Absorb - Level 1
  (715, 71500, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noivern - Moonlight - Level 1
  (715, 71500, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noivern - Double Team - Level 12
  (715, 71500, 104, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Noivern - Wing Attack - Level 16
  (715, 71500, 17, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Noivern - Bite - Level 20
  (715, 71500, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Noivern - Air Cutter - Level 24
  (715, 71500, 314, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Noivern - Whirlwind - Level 28
  (715, 71500, 18, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Noivern - Super Fang - Level 32
  (715, 71500, 162, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Noivern - Air Slash - Level 36
  (715, 71500, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Noivern - Screech - Level 40
  (715, 71500, 103, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Noivern - Roost - Level 44
  (715, 71500, 355, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Noivern - Tailwind - Level 51
  (715, 71500, 366, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Noivern - Hurricane - Level 56
  (715, 71500, 542, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Noivern - Boomburst - Level 62
  (715, 71500, 586, 23, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Noivern - Take Down - TM001
  (715, 71500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Noivern - Agility - TM004
  (715, 71500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Noivern - Scary Face - TM006
  (715, 71500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Noivern - Protect - TM007
  (715, 71500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Noivern - Water Pulse - TM011
  (715, 71500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Noivern - Acrobatics - TM014
  (715, 71500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Noivern - Thief - TM018
  (715, 71500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Noivern - Facade - TM025
  (715, 71500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Noivern - Aerial Ace - TM027
  (715, 71500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Noivern - Swift - TM032
  (715, 71500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Noivern - Air Cutter - TM040
  (715, 71500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Noivern - Dragon Tail - TM044
  (715, 71500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Noivern - Endure - TM047
  (715, 71500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Noivern - Sunny Day - TM049
  (715, 71500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Noivern - Brick Break - TM058
  (715, 71500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Noivern - U-turn - TM060
  (715, 71500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Noivern - Shadow Claw - TM061
  (715, 71500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Noivern - Air Slash - TM065
  (715, 71500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Noivern - Body Slam - TM066
  (715, 71500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Noivern - Sleep Talk - TM070
  (715, 71500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Noivern - Dragon Claw - TM078
  (715, 71500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Noivern - Rest - TM085
  (715, 71500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Noivern - Taunt - TM087
  (715, 71500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Noivern - Dark Pulse - TM094
  (715, 71500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Noivern - Leech Life - TM095
  (715, 71500, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 42),
  -- Noivern - Fly - TM097
  (715, 71500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Noivern - Dragon Dance - TM100
  (715, 71500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 44),
  -- Noivern - Substitute - TM103
  (715, 71500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Noivern - X-Scissor - TM105
  (715, 71500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Noivern - Tailwind - TM113
  (715, 71500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 47),
  -- Noivern - Shadow Ball - TM114
  (715, 71500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Noivern - Dragon Pulse - TM115
  (715, 71500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Noivern - Hyper Voice - TM117
  (715, 71500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Noivern - Heat Wave - TM118
  (715, 71500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 51),
  -- Noivern - Psychic - TM120
  (715, 71500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Noivern - Flamethrower - TM125
  (715, 71500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Noivern - Wild Charge - TM147
  (715, 71500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 54),
  -- Noivern - Giga Impact - TM152
  (715, 71500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Noivern - Outrage - TM156
  (715, 71500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 56),
  -- Noivern - Focus Blast - TM158
  (715, 71500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Noivern - Hurricane - TM160
  (715, 71500, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 58),
  -- Noivern - Hyper Beam - TM163
  (715, 71500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Noivern - Solar Beam - TM168
  (715, 71500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 60),
  -- Noivern - Draco Meteor - TM169
  (715, 71500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Noivern - Tera Blast - TM171
  (715, 71500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Noivern - Dragon Rush - Egg
  (715, 71500, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Noivern - Switcheroo - Egg
  (715, 71500, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Noivern - Defog - Egg
  (715, 71500, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Noivern - Dragon Pulse - Evolution
  (715, 71500, 406, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Diancie - Tackle - Level 1
  (719, 71900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diancie - Harden - Level 1
  (719, 71900, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diancie - Diamond Storm - Level 1
  (719, 71900, 591, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Diancie - Guard Split - Level 7
  (719, 71900, 470, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Diancie - Smack Down - Level 14
  (719, 71900, 479, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Diancie - Flail - Level 21
  (719, 71900, 175, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Diancie - Ancient Power - Level 28
  (719, 71900, 246, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Diancie - Rock Polish - Level 35
  (719, 71900, 397, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Diancie - Light Screen - Level 42
  (719, 71900, 113, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Diancie - Rock Slide - Level 49
  (719, 71900, 157, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Diancie - Skill Swap - Level 56
  (719, 71900, 285, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Diancie - Power Gem - Level 63
  (719, 71900, 408, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Diancie - Stealth Rock - Level 70
  (719, 71900, 446, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Diancie - Moonblast - Level 77
  (719, 71900, 585, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Diancie - Stone Edge - Level 84
  (719, 71900, 444, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Diancie - Take Down - TM001
  (719, 71900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Diancie - Charm - TM002
  (719, 71900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Diancie - Fake Tears - TM003
  (719, 71900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Diancie - Protect - TM007
  (719, 71900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Diancie - Facade - TM025
  (719, 71900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Diancie - Bulldoze - TM028
  (719, 71900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Diancie - Swift - TM032
  (719, 71900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Diancie - Rock Tomb - TM036
  (719, 71900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Diancie - Draining Kiss - TM037
  (719, 71900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Diancie - Stored Power - TM041
  (719, 71900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Diancie - Endure - TM047
  (719, 71900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Diancie - Sunny Day - TM049
  (719, 71900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Diancie - Rain Dance - TM050
  (719, 71900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Diancie - Sandstorm - TM051
  (719, 71900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Diancie - Snowscape - TM052
  (719, 71900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Diancie - Psyshock - TM054
  (719, 71900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Diancie - Body Slam - TM066
  (719, 71900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Diancie - Sleep Talk - TM070
  (719, 71900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Diancie - Reflect - TM074
  (719, 71900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Diancie - Light Screen - TM075
  (719, 71900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Diancie - Dazzling Gleam - TM079
  (719, 71900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Diancie - Metronome - TM080
  (719, 71900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 37),
  -- Diancie - Rest - TM085
  (719, 71900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Diancie - Rock Slide - TM086
  (719, 71900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Diancie - Body Press - TM089
  (719, 71900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Diancie - Spikes - TM090
  (719, 71900, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Diancie - Flash Cannon - TM093
  (719, 71900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 42),
  -- Diancie - Skill Swap - TM098
  (719, 71900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Diancie - Power Gem - TM101
  (719, 71900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Diancie - Substitute - TM103
  (719, 71900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Diancie - Iron Defense - TM104
  (719, 71900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 46),
  -- Diancie - Stealth Rock - TM116
  (719, 71900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Diancie - Psychic - TM120
  (719, 71900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Diancie - Encore - TM122
  (719, 71900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Diancie - Play Rough - TM127
  (719, 71900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Diancie - Amnesia - TM128
  (719, 71900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Diancie - Calm Mind - TM129
  (719, 71900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 52),
  -- Diancie - Helping Hand - TM130
  (719, 71900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Diancie - Baton Pass - TM132
  (719, 71900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Diancie - Earth Power - TM133
  (719, 71900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 55),
  -- Diancie - Stone Edge - TM150
  (719, 71900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Diancie - Giga Impact - TM152
  (719, 71900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Diancie - Trick Room - TM161
  (719, 71900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 58),
  -- Diancie - Hyper Beam - TM163
  (719, 71900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Diancie - Tera Blast - TM171
  (719, 71900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Hoopa - Confusion - Level 1
  (720, 72000, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa - Destiny Bond - Level 1
  (720, 72000, 194, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoopa - Ally Switch - Level 1
  (720, 72000, 502, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoopa - Astonish - Level 6
  (720, 72000, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoopa - Trick - Level 10
  (720, 72000, 271, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Hoopa - Light Screen - Level 15
  (720, 72000, 113, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hoopa - Psybeam - Level 19
  (720, 72000, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Hoopa - Skill Swap - Level 25
  (720, 72000, 285, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hoopa - Guard Split - Level 29
  (720, 72000, 470, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Hoopa - Power Split - Level 29
  (720, 72000, 471, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hoopa - Phantom Force - Level 35
  (720, 72000, 566, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Hoopa - Zen Headbutt - Level 46
  (720, 72000, 428, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Hoopa - Trick Room - Level 50
  (720, 72000, 433, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Hoopa - Wonder Room - Level 50
  (720, 72000, 472, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hoopa - Shadow Ball - Level 55
  (720, 72000, 247, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Hoopa - Nasty Plot - Level 68
  (720, 72000, 417, 23, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Hoopa - Psychic - Level 75
  (720, 72000, 94, 23, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Hoopa - Hyperspace Hole - Level 85
  (720, 72000, 593, 23, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Hoopa - Take Down - TM001
  (720, 72000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Hoopa - Scary Face - TM006
  (720, 72000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Hoopa - Protect - TM007
  (720, 72000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Hoopa - Psybeam - TM016
  (720, 72000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Hoopa - Thief - TM018
  (720, 72000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Hoopa - Facade - TM025
  (720, 72000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Hoopa - Swift - TM032
  (720, 72000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Hoopa - Rock Tomb - TM036
  (720, 72000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Hoopa - Fling - TM043
  (720, 72000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Hoopa - Endure - TM047
  (720, 72000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Hoopa - Sunny Day - TM049
  (720, 72000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Hoopa - Rain Dance - TM050
  (720, 72000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Hoopa - Sandstorm - TM051
  (720, 72000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Hoopa - Psyshock - TM054
  (720, 72000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 32),
  -- Hoopa - Brick Break - TM058
  (720, 72000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Hoopa - Zen Headbutt - TM059
  (720, 72000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Hoopa - Foul Play - TM062
  (720, 72000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Hoopa - Fire Punch - TM067
  (720, 72000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Hoopa - Thunder Punch - TM068
  (720, 72000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Hoopa - Ice Punch - TM069
  (720, 72000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Hoopa - Sleep Talk - TM070
  (720, 72000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Hoopa - Drain Punch - TM073
  (720, 72000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 40),
  -- Hoopa - Reflect - TM074
  (720, 72000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 41),
  -- Hoopa - Light Screen - TM075
  (720, 72000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Hoopa - Grass Knot - TM081
  (720, 72000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Hoopa - Thunder Wave - TM082
  (720, 72000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Hoopa - Rest - TM085
  (720, 72000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Hoopa - Taunt - TM087
  (720, 72000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 46),
  -- Hoopa - Dark Pulse - TM094
  (720, 72000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Hoopa - Skill Swap - TM098
  (720, 72000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Hoopa - Gunk Shot - TM102
  (720, 72000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Hoopa - Substitute - TM103
  (720, 72000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Hoopa - Trick - TM109
  (720, 72000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 51),
  -- Hoopa - Shadow Ball - TM114
  (720, 72000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Hoopa - Energy Ball - TM119
  (720, 72000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Hoopa - Psychic - TM120
  (720, 72000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Hoopa - Thunderbolt - TM126
  (720, 72000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Hoopa - Calm Mind - TM129
  (720, 72000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Hoopa - Psychic Terrain - TM138
  (720, 72000, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 57),
  -- Hoopa - Nasty Plot - TM140
  (720, 72000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 58),
  -- Hoopa - Phantom Force - TM151
  (720, 72000, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 59),
  -- Hoopa - Giga Impact - TM152
  (720, 72000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Hoopa - Focus Blast - TM158
  (720, 72000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Hoopa - Trick Room - TM161
  (720, 72000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 62),
  -- Hoopa - Hyper Beam - TM163
  (720, 72000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Hoopa - Tera Blast - TM171
  (720, 72000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Hoopa (Unbound) - Confusion - Level 1
  (720, 72001, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa (Unbound) - Destiny Bond - Level 1
  (720, 72001, 194, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoopa (Unbound) - Ally Switch - Level 1
  (720, 72001, 502, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoopa (Unbound) - Astonish - Level 6
  (720, 72001, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoopa (Unbound) - Trick - Level 10
  (720, 72001, 271, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Hoopa (Unbound) - Light Screen - Level 15
  (720, 72001, 113, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hoopa (Unbound) - Psybeam - Level 19
  (720, 72001, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Hoopa (Unbound) - Skill Swap - Level 25
  (720, 72001, 285, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hoopa (Unbound) - Guard Split - Level 29
  (720, 72001, 470, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Hoopa (Unbound) - Power Split - Level 29
  (720, 72001, 471, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hoopa (Unbound) - Knock Off - Level 46
  (720, 72001, 282, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Hoopa (Unbound) - Trick Room - Level 50
  (720, 72001, 433, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Hoopa (Unbound) - Wonder Room - Level 50
  (720, 72001, 472, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Hoopa (Unbound) - Dark Pulse - Level 55
  (720, 72001, 399, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Hoopa (Unbound) - Psychic - Level 75
  (720, 72001, 94, 23, NULL, 1, 75, NULL, NULL, NULL, 15),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 85
  (720, 72001, 621, 23, NULL, 1, 85, NULL, NULL, NULL, 16),
  -- Hoopa (Unbound) - Take Down - TM001
  (720, 72001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Hoopa (Unbound) - Scary Face - TM006
  (720, 72001, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Hoopa (Unbound) - Protect - TM007
  (720, 72001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Hoopa (Unbound) - Psybeam - TM016
  (720, 72001, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Hoopa (Unbound) - Thief - TM018
  (720, 72001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Hoopa (Unbound) - Facade - TM025
  (720, 72001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Hoopa (Unbound) - Swift - TM032
  (720, 72001, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Hoopa (Unbound) - Rock Tomb - TM036
  (720, 72001, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Hoopa (Unbound) - Fling - TM043
  (720, 72001, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Hoopa (Unbound) - Endure - TM047
  (720, 72001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Hoopa (Unbound) - Sunny Day - TM049
  (720, 72001, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Hoopa (Unbound) - Rain Dance - TM050
  (720, 72001, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Hoopa (Unbound) - Sandstorm - TM051
  (720, 72001, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Hoopa (Unbound) - Psyshock - TM054
  (720, 72001, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Hoopa (Unbound) - Brick Break - TM058
  (720, 72001, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Hoopa (Unbound) - Zen Headbutt - TM059
  (720, 72001, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Hoopa (Unbound) - Foul Play - TM062
  (720, 72001, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Hoopa (Unbound) - Fire Punch - TM067
  (720, 72001, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Hoopa (Unbound) - Thunder Punch - TM068
  (720, 72001, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Hoopa (Unbound) - Ice Punch - TM069
  (720, 72001, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Hoopa (Unbound) - Sleep Talk - TM070
  (720, 72001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Hoopa (Unbound) - Drain Punch - TM073
  (720, 72001, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Hoopa (Unbound) - Reflect - TM074
  (720, 72001, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Hoopa (Unbound) - Light Screen - TM075
  (720, 72001, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Hoopa (Unbound) - Grass Knot - TM081
  (720, 72001, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Hoopa (Unbound) - Thunder Wave - TM082
  (720, 72001, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 42),
  -- Hoopa (Unbound) - Rest - TM085
  (720, 72001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Hoopa (Unbound) - Taunt - TM087
  (720, 72001, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Hoopa (Unbound) - Dark Pulse - TM094
  (720, 72001, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 45),
  -- Hoopa (Unbound) - Skill Swap - TM098
  (720, 72001, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 46),
  -- Hoopa (Unbound) - Gunk Shot - TM102
  (720, 72001, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 47),
  -- Hoopa (Unbound) - Substitute - TM103
  (720, 72001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Hoopa (Unbound) - Trick - TM109
  (720, 72001, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 49),
  -- Hoopa (Unbound) - Shadow Ball - TM114
  (720, 72001, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Hoopa (Unbound) - Energy Ball - TM119
  (720, 72001, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Hoopa (Unbound) - Psychic - TM120
  (720, 72001, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Hoopa (Unbound) - Thunderbolt - TM126
  (720, 72001, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Hoopa (Unbound) - Calm Mind - TM129
  (720, 72001, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 54),
  -- Hoopa (Unbound) - Psychic Terrain - TM138
  (720, 72001, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 55),
  -- Hoopa (Unbound) - Nasty Plot - TM140
  (720, 72001, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Hoopa (Unbound) - Phantom Force - TM151
  (720, 72001, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 57),
  -- Hoopa (Unbound) - Giga Impact - TM152
  (720, 72001, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Hoopa (Unbound) - Focus Blast - TM158
  (720, 72001, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Hoopa (Unbound) - Trick Room - TM161
  (720, 72001, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 60),
  -- Hoopa (Unbound) - Hyper Beam - TM163
  (720, 72001, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Hoopa (Unbound) - Tera Blast - TM171
  (720, 72001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Volcanion - Water Gun - Level 1
  (721, 72100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcanion - Fire Spin - Level 1
  (721, 72100, 83, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcanion - Steam Eruption - Level 1
  (721, 72100, 592, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcanion - Leer - Level 6
  (721, 72100, 43, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Volcanion - Weather Ball - Level 12
  (721, 72100, 311, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Volcanion - Flame Charge - Level 18
  (721, 72100, 488, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Volcanion - Water Pulse - Level 24
  (721, 72100, 352, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Volcanion - Scary Face - Level 30
  (721, 72100, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Volcanion - Incinerate - Level 36
  (721, 72100, 510, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Volcanion - Stomp - Level 42
  (721, 72100, 23, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Volcanion - Scald - Level 48
  (721, 72100, 503, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Volcanion - Take Down - Level 54
  (721, 72100, 36, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Volcanion - Mist - Level 60
  (721, 72100, 54, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Volcanion - Haze - Level 60
  (721, 72100, 114, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Volcanion - Hydro Pump - Level 66
  (721, 72100, 56, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Volcanion - Flare Blitz - Level 78
  (721, 72100, 394, 23, NULL, 1, 78, NULL, NULL, NULL, 16),
  -- Volcanion - Overheat - Level 84
  (721, 72100, 315, 23, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Volcanion - Explosion - Level 90
  (721, 72100, 153, 23, NULL, 1, 90, NULL, NULL, NULL, 18),
  -- Volcanion - Take Down - TM001
  (721, 72100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Volcanion - Scary Face - TM006
  (721, 72100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Volcanion - Protect - TM007
  (721, 72100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Volcanion - Fire Fang - TM008
  (721, 72100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Volcanion - Thunder Fang - TM009
  (721, 72100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Volcanion - Water Pulse - TM011
  (721, 72100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Volcanion - Fire Spin - TM024
  (721, 72100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Volcanion - Facade - TM025
  (721, 72100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Volcanion - Bulldoze - TM028
  (721, 72100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Volcanion - Mud Shot - TM035
  (721, 72100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Volcanion - Rock Tomb - TM036
  (721, 72100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Volcanion - Flame Charge - TM038
  (721, 72100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 30),
  -- Volcanion - Fling - TM043
  (721, 72100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Volcanion - Endure - TM047
  (721, 72100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Volcanion - Sunny Day - TM049
  (721, 72100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Volcanion - Rain Dance - TM050
  (721, 72100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Volcanion - Sandstorm - TM051
  (721, 72100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Volcanion - Dig - TM055
  (721, 72100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Volcanion - Brick Break - TM058
  (721, 72100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Volcanion - Body Slam - TM066
  (721, 72100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Volcanion - Sleep Talk - TM070
  (721, 72100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Volcanion - Stomping Tantrum - TM084
  (721, 72100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Volcanion - Rest - TM085
  (721, 72100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Volcanion - Rock Slide - TM086
  (721, 72100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Volcanion - Taunt - TM087
  (721, 72100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Volcanion - Body Press - TM089
  (721, 72100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Volcanion - Flash Cannon - TM093
  (721, 72100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 45),
  -- Volcanion - Substitute - TM103
  (721, 72100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Volcanion - Will-O-Wisp - TM107
  (721, 72100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 47),
  -- Volcanion - Liquidation - TM110
  (721, 72100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Volcanion - Heat Wave - TM118
  (721, 72100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 49),
  -- Volcanion - Heavy Slam - TM121
  (721, 72100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 50),
  -- Volcanion - Flamethrower - TM125
  (721, 72100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Volcanion - Earth Power - TM133
  (721, 72100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Volcanion - Misty Terrain - TM139
  (721, 72100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 53),
  -- Volcanion - Fire Blast - TM141
  (721, 72100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Volcanion - Hydro Pump - TM142
  (721, 72100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 55),
  -- Volcanion - Wild Charge - TM147
  (721, 72100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 56),
  -- Volcanion - Sludge Bomb - TM148
  (721, 72100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Volcanion - Earthquake - TM149
  (721, 72100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Volcanion - Stone Edge - TM150
  (721, 72100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Volcanion - Giga Impact - TM152
  (721, 72100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Volcanion - Overheat - TM157
  (721, 72100, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 61),
  -- Volcanion - Focus Blast - TM158
  (721, 72100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Volcanion - Hyper Beam - TM163
  (721, 72100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Volcanion - Flare Blitz - TM165
  (721, 72100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 64),
  -- Volcanion - Solar Beam - TM168
  (721, 72100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Volcanion - Tera Blast - TM171
  (721, 72100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Rowlet - Tackle - Level 1
  (722, 72200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rowlet - Growl - Level 1
  (722, 72200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rowlet - Leafage - Level 3
  (722, 72200, 670, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Rowlet - Astonish - Level 6
  (722, 72200, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Rowlet - Peck - Level 9
  (722, 72200, 64, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Rowlet - Shadow Sneak - Level 12
  (722, 72200, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Rowlet - Razor Leaf - Level 15
  (722, 72200, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rowlet - Synthesis - Level 18
  (722, 72200, 235, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Rowlet - Pluck - Level 21
  (722, 72200, 365, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Rowlet - Nasty Plot - Level 24
  (722, 72200, 417, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rowlet - Sucker Punch - Level 27
  (722, 72200, 389, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Rowlet - Leaf Blade - Level 30
  (722, 72200, 348, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Rowlet - Feather Dance - Level 33
  (722, 72200, 297, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Rowlet - Brave Bird - Level 36
  (722, 72200, 413, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Rowlet - Take Down - TM001
  (722, 72200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Rowlet - Protect - TM007
  (722, 72200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Rowlet - Confuse Ray - TM017
  (722, 72200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Rowlet - Trailblaze - TM020
  (722, 72200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Rowlet - Facade - TM025
  (722, 72200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Rowlet - Aerial Ace - TM027
  (722, 72200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Rowlet - Swift - TM032
  (722, 72200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Rowlet - Magical Leaf - TM033
  (722, 72200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Rowlet - Air Cutter - TM040
  (722, 72200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Rowlet - Night Shade - TM042
  (722, 72200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Rowlet - Endure - TM047
  (722, 72200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Rowlet - Sunny Day - TM049
  (722, 72200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Rowlet - Rain Dance - TM050
  (722, 72200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Rowlet - Bullet Seed - TM056
  (722, 72200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Rowlet - False Swipe - TM057
  (722, 72200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Rowlet - Shadow Claw - TM061
  (722, 72200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Rowlet - Air Slash - TM065
  (722, 72200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Rowlet - Sleep Talk - TM070
  (722, 72200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Rowlet - Seed Bomb - TM071
  (722, 72200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Rowlet - Light Screen - TM075
  (722, 72200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Rowlet - Grass Knot - TM081
  (722, 72200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Rowlet - Rest - TM085
  (722, 72200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Rowlet - Swords Dance - TM088
  (722, 72200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Rowlet - Substitute - TM103
  (722, 72200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Rowlet - Giga Drain - TM111
  (722, 72200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 39),
  -- Rowlet - Energy Ball - TM119
  (722, 72200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 40),
  -- Rowlet - Helping Hand - TM130
  (722, 72200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Rowlet - Grassy Terrain - TM137
  (722, 72200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Rowlet - Nasty Plot - TM140
  (722, 72200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 43),
  -- Rowlet - Grass Pledge - TM146
  (722, 72200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 44),
  -- Rowlet - Leaf Storm - TM159
  (722, 72200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 45),
  -- Rowlet - Brave Bird - TM164
  (722, 72200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 46),
  -- Rowlet - Solar Beam - TM168
  (722, 72200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Rowlet - Tera Blast - TM171
  (722, 72200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Rowlet - Double Team - Egg
  (722, 72200, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rowlet - Confuse Ray - Egg
  (722, 72200, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rowlet - Knock Off - Egg
  (722, 72200, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rowlet - Roost - Egg
  (722, 72200, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rowlet - Defog - Egg
  (722, 72200, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dartrix - Tackle - Level 1
  (723, 72300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dartrix - Growl - Level 1
  (723, 72300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dartrix - Astonish - Level 1
  (723, 72300, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dartrix - Leafage - Level 1
  (723, 72300, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dartrix - Peck - Level 9
  (723, 72300, 64, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dartrix - Shadow Sneak - Level 12
  (723, 72300, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Dartrix - Razor Leaf - Level 15
  (723, 72300, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dartrix - Synthesis - Level 20
  (723, 72300, 235, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Dartrix - Pluck - Level 25
  (723, 72300, 365, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dartrix - Nasty Plot - Level 30
  (723, 72300, 417, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dartrix - Sucker Punch - Level 35
  (723, 72300, 389, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Dartrix - Leaf Blade - Level 40
  (723, 72300, 348, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dartrix - Feather Dance - Level 45
  (723, 72300, 297, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Dartrix - Brave Bird - Level 50
  (723, 72300, 413, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Dartrix - Take Down - TM001
  (723, 72300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Dartrix - Protect - TM007
  (723, 72300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Dartrix - Confuse Ray - TM017
  (723, 72300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Dartrix - Trailblaze - TM020
  (723, 72300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Dartrix - Facade - TM025
  (723, 72300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Dartrix - Aerial Ace - TM027
  (723, 72300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Dartrix - Swift - TM032
  (723, 72300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Dartrix - Magical Leaf - TM033
  (723, 72300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Dartrix - Air Cutter - TM040
  (723, 72300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Dartrix - Night Shade - TM042
  (723, 72300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Dartrix - Endure - TM047
  (723, 72300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Dartrix - Sunny Day - TM049
  (723, 72300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Dartrix - Rain Dance - TM050
  (723, 72300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Dartrix - Bullet Seed - TM056
  (723, 72300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Dartrix - False Swipe - TM057
  (723, 72300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Dartrix - Shadow Claw - TM061
  (723, 72300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Dartrix - Air Slash - TM065
  (723, 72300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Dartrix - Sleep Talk - TM070
  (723, 72300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Dartrix - Seed Bomb - TM071
  (723, 72300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Dartrix - Light Screen - TM075
  (723, 72300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Dartrix - Grass Knot - TM081
  (723, 72300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Dartrix - Rest - TM085
  (723, 72300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Dartrix - Swords Dance - TM088
  (723, 72300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Dartrix - Substitute - TM103
  (723, 72300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Dartrix - Giga Drain - TM111
  (723, 72300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 39),
  -- Dartrix - Tailwind - TM113
  (723, 72300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Dartrix - Energy Ball - TM119
  (723, 72300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Dartrix - Helping Hand - TM130
  (723, 72300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Dartrix - Baton Pass - TM132
  (723, 72300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 43),
  -- Dartrix - Grassy Terrain - TM137
  (723, 72300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Dartrix - Nasty Plot - TM140
  (723, 72300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 45),
  -- Dartrix - Grass Pledge - TM146
  (723, 72300, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 46),
  -- Dartrix - Leaf Storm - TM159
  (723, 72300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Dartrix - Brave Bird - TM164
  (723, 72300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 48),
  -- Dartrix - Solar Beam - TM168
  (723, 72300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Dartrix - Tera Blast - TM171
  (723, 72300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Dartrix - Double Team - Egg
  (723, 72300, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dartrix - Confuse Ray - Egg
  (723, 72300, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dartrix - Knock Off - Egg
  (723, 72300, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dartrix - Roost - Egg
  (723, 72300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dartrix - Defog - Egg
  (723, 72300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Decidueye - Tackle - Level 1
  (724, 72400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Decidueye - Growl - Level 1
  (724, 72400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Decidueye - Spite - Level 1
  (724, 72400, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Decidueye - Astonish - Level 1
  (724, 72400, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Decidueye - U-turn - Level 1
  (724, 72400, 369, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Decidueye - Leaf Storm - Level 1
  (724, 72400, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Decidueye - Phantom Force - Level 1
  (724, 72400, 566, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Decidueye - Leafage - Level 1
  (724, 72400, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Decidueye - Peck - Level 9
  (724, 72400, 64, 23, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Decidueye - Shadow Sneak - Level 12
  (724, 72400, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Decidueye - Razor Leaf - Level 15
  (724, 72400, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Decidueye - Synthesis - Level 20
  (724, 72400, 235, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Decidueye - Pluck - Level 25
  (724, 72400, 365, 23, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Decidueye - Nasty Plot - Level 30
  (724, 72400, 417, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Decidueye - Sucker Punch - Level 37
  (724, 72400, 389, 23, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Decidueye - Leaf Blade - Level 44
  (724, 72400, 348, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Decidueye - Feather Dance - Level 51
  (724, 72400, 297, 23, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Decidueye - Brave Bird - Level 58
  (724, 72400, 413, 23, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Decidueye - Take Down - TM001
  (724, 72400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Decidueye - Protect - TM007
  (724, 72400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Decidueye - Low Kick - TM012
  (724, 72400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Decidueye - Acrobatics - TM014
  (724, 72400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Decidueye - Confuse Ray - TM017
  (724, 72400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Decidueye - Trailblaze - TM020
  (724, 72400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Decidueye - Facade - TM025
  (724, 72400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Decidueye - Aerial Ace - TM027
  (724, 72400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Decidueye - Hex - TM029
  (724, 72400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Decidueye - Swift - TM032
  (724, 72400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Decidueye - Magical Leaf - TM033
  (724, 72400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 29),
  -- Decidueye - Low Sweep - TM039
  (724, 72400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Decidueye - Air Cutter - TM040
  (724, 72400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Decidueye - Night Shade - TM042
  (724, 72400, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 32),
  -- Decidueye - Endure - TM047
  (724, 72400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Decidueye - Sunny Day - TM049
  (724, 72400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Decidueye - Rain Dance - TM050
  (724, 72400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Decidueye - Bullet Seed - TM056
  (724, 72400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 36),
  -- Decidueye - False Swipe - TM057
  (724, 72400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 37),
  -- Decidueye - U-turn - TM060
  (724, 72400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Decidueye - Shadow Claw - TM061
  (724, 72400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Decidueye - Air Slash - TM065
  (724, 72400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 40),
  -- Decidueye - Sleep Talk - TM070
  (724, 72400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Decidueye - Seed Bomb - TM071
  (724, 72400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 42),
  -- Decidueye - Light Screen - TM075
  (724, 72400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 43),
  -- Decidueye - Grass Knot - TM081
  (724, 72400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Decidueye - Rest - TM085
  (724, 72400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Decidueye - Swords Dance - TM088
  (724, 72400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Decidueye - Imprison - TM092
  (724, 72400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Decidueye - Substitute - TM103
  (724, 72400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Decidueye - Giga Drain - TM111
  (724, 72400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Decidueye - Tailwind - TM113
  (724, 72400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Decidueye - Shadow Ball - TM114
  (724, 72400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Decidueye - Energy Ball - TM119
  (724, 72400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Decidueye - Helping Hand - TM130
  (724, 72400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Decidueye - Baton Pass - TM132
  (724, 72400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Decidueye - Grassy Terrain - TM137
  (724, 72400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Decidueye - Nasty Plot - TM140
  (724, 72400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Decidueye - Grass Pledge - TM146
  (724, 72400, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 57),
  -- Decidueye - Phantom Force - TM151
  (724, 72400, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 58),
  -- Decidueye - Giga Impact - TM152
  (724, 72400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Decidueye - Frenzy Plant - TM155
  (724, 72400, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 60),
  -- Decidueye - Leaf Storm - TM159
  (724, 72400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 61),
  -- Decidueye - Hurricane - TM160
  (724, 72400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 62),
  -- Decidueye - Hyper Beam - TM163
  (724, 72400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Decidueye - Brave Bird - TM164
  (724, 72400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 64),
  -- Decidueye - Solar Beam - TM168
  (724, 72400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Decidueye - Tera Blast - TM171
  (724, 72400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Decidueye - Double Team - Egg
  (724, 72400, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Decidueye - Confuse Ray - Egg
  (724, 72400, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Decidueye - Knock Off - Egg
  (724, 72400, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Decidueye - Roost - Egg
  (724, 72400, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Decidueye - Defog - Egg
  (724, 72400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Decidueye - Spirit Shackle - Evolution
  (724, 72400, 662, 23, NULL, 7, NULL, NULL, NULL, NULL, 72),
  -- Decidueye (Hisuian Decidueye) - Tackle - Level 1
  (724, 72401, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Decidueye (Hisuian Decidueye) - Growl - Level 1
  (724, 72401, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Decidueye (Hisuian Decidueye) - U-turn - Level 1
  (724, 72401, 369, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Decidueye (Hisuian Decidueye) - Leaf Storm - Level 1
  (724, 72401, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Decidueye (Hisuian Decidueye) - Leafage - Level 1
  (724, 72401, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Decidueye (Hisuian Decidueye) - Peck - Level 9
  (724, 72401, 64, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Decidueye (Hisuian Decidueye) - Shadow Sneak - Level 12
  (724, 72401, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Decidueye (Hisuian Decidueye) - Razor Leaf - Level 15
  (724, 72401, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Decidueye (Hisuian Decidueye) - Synthesis - Level 20
  (724, 72401, 235, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Decidueye (Hisuian Decidueye) - Pluck - Level 25
  (724, 72401, 365, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Decidueye (Hisuian Decidueye) - Bulk Up - Level 30
  (724, 72401, 339, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Decidueye (Hisuian Decidueye) - Sucker Punch - Level 37
  (724, 72401, 389, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Decidueye (Hisuian Decidueye) - Leaf Blade - Level 44
  (724, 72401, 348, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Decidueye (Hisuian Decidueye) - Feather Dance - Level 51
  (724, 72401, 297, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Decidueye (Hisuian Decidueye) - Brave Bird - Level 58
  (724, 72401, 413, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Decidueye (Hisuian Decidueye) - Take Down - TM001
  (724, 72401, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Decidueye (Hisuian Decidueye) - Scary Face - TM006
  (724, 72401, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Decidueye (Hisuian Decidueye) - Protect - TM007
  (724, 72401, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Decidueye (Hisuian Decidueye) - Low Kick - TM012
  (724, 72401, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Decidueye (Hisuian Decidueye) - Confuse Ray - TM017
  (724, 72401, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Decidueye (Hisuian Decidueye) - Trailblaze - TM020
  (724, 72401, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Decidueye (Hisuian Decidueye) - Facade - TM025
  (724, 72401, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Decidueye (Hisuian Decidueye) - Aerial Ace - TM027
  (724, 72401, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Decidueye (Hisuian Decidueye) - Swift - TM032
  (724, 72401, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Decidueye (Hisuian Decidueye) - Magical Leaf - TM033
  (724, 72401, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Decidueye (Hisuian Decidueye) - Rock Tomb - TM036
  (724, 72401, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Decidueye (Hisuian Decidueye) - Low Sweep - TM039
  (724, 72401, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Decidueye (Hisuian Decidueye) - Air Cutter - TM040
  (724, 72401, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Decidueye (Hisuian Decidueye) - Night Shade - TM042
  (724, 72401, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 29),
  -- Decidueye (Hisuian Decidueye) - Endure - TM047
  (724, 72401, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Decidueye (Hisuian Decidueye) - Sunny Day - TM049
  (724, 72401, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Decidueye (Hisuian Decidueye) - Rain Dance - TM050
  (724, 72401, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Decidueye (Hisuian Decidueye) - Bullet Seed - TM056
  (724, 72401, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Decidueye (Hisuian Decidueye) - False Swipe - TM057
  (724, 72401, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Decidueye (Hisuian Decidueye) - Brick Break - TM058
  (724, 72401, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Decidueye (Hisuian Decidueye) - U-turn - TM060
  (724, 72401, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Decidueye (Hisuian Decidueye) - Shadow Claw - TM061
  (724, 72401, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Decidueye (Hisuian Decidueye) - Bulk Up - TM064
  (724, 72401, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Decidueye (Hisuian Decidueye) - Air Slash - TM065
  (724, 72401, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 39),
  -- Decidueye (Hisuian Decidueye) - Sleep Talk - TM070
  (724, 72401, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Decidueye (Hisuian Decidueye) - Seed Bomb - TM071
  (724, 72401, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 41),
  -- Decidueye (Hisuian Decidueye) - Light Screen - TM075
  (724, 72401, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Decidueye (Hisuian Decidueye) - Grass Knot - TM081
  (724, 72401, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Decidueye (Hisuian Decidueye) - Rest - TM085
  (724, 72401, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Decidueye (Hisuian Decidueye) - Taunt - TM087
  (724, 72401, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Decidueye (Hisuian Decidueye) - Swords Dance - TM088
  (724, 72401, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Decidueye (Hisuian Decidueye) - Substitute - TM103
  (724, 72401, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Decidueye (Hisuian Decidueye) - Giga Drain - TM111
  (724, 72401, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Decidueye (Hisuian Decidueye) - Aura Sphere - TM112
  (724, 72401, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 49),
  -- Decidueye (Hisuian Decidueye) - Tailwind - TM113
  (724, 72401, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Decidueye (Hisuian Decidueye) - Energy Ball - TM119
  (724, 72401, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Decidueye (Hisuian Decidueye) - Helping Hand - TM130
  (724, 72401, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Decidueye (Hisuian Decidueye) - Baton Pass - TM132
  (724, 72401, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 53),
  -- Decidueye (Hisuian Decidueye) - Reversal - TM134
  (724, 72401, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 54),
  -- Decidueye (Hisuian Decidueye) - Grassy Terrain - TM137
  (724, 72401, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Decidueye (Hisuian Decidueye) - Nasty Plot - TM140
  (724, 72401, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Decidueye (Hisuian Decidueye) - Grass Pledge - TM146
  (724, 72401, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 57),
  -- Decidueye (Hisuian Decidueye) - Giga Impact - TM152
  (724, 72401, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Decidueye (Hisuian Decidueye) - Frenzy Plant - TM155
  (724, 72401, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 59),
  -- Decidueye (Hisuian Decidueye) - Focus Blast - TM158
  (724, 72401, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Decidueye (Hisuian Decidueye) - Leaf Storm - TM159
  (724, 72401, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 61),
  -- Decidueye (Hisuian Decidueye) - Hyper Beam - TM163
  (724, 72401, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Decidueye (Hisuian Decidueye) - Brave Bird - TM164
  (724, 72401, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 63),
  -- Decidueye (Hisuian Decidueye) - Close Combat - TM167
  (724, 72401, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Decidueye (Hisuian Decidueye) - Solar Beam - TM168
  (724, 72401, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Decidueye (Hisuian Decidueye) - Tera Blast - TM171
  (724, 72401, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Decidueye (Hisuian Decidueye) - Triple Arrows - Evolution
  (724, 72401, 843, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Litten - Scratch - Level 1
  (725, 72500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litten - Growl - Level 1
  (725, 72500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litten - Ember - Level 3
  (725, 72500, 52, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Litten - Lick - Level 6
  (725, 72500, 122, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Litten - Roar - Level 9
  (725, 72500, 46, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Litten - Fury Swipes - Level 12
  (725, 72500, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Litten - Bite - Level 15
  (725, 72500, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Litten - Double Kick - Level 18
  (725, 72500, 24, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Litten - Fire Fang - Level 21
  (725, 72500, 424, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Litten - Scary Face - Level 24
  (725, 72500, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Litten - Swagger - Level 27
  (725, 72500, 207, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Litten - Flamethrower - Level 30
  (725, 72500, 53, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Litten - Thrash - Level 33
  (725, 72500, 37, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Litten - Flare Blitz - Level 36
  (725, 72500, 394, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Litten - Take Down - TM001
  (725, 72500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Litten - Scary Face - TM006
  (725, 72500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Litten - Protect - TM007
  (725, 72500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Litten - Fire Fang - TM008
  (725, 72500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Litten - Acrobatics - TM014
  (725, 72500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Litten - Trailblaze - TM020
  (725, 72500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Litten - Fire Spin - TM024
  (725, 72500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Litten - Facade - TM025
  (725, 72500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Litten - Flame Charge - TM038
  (725, 72500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Litten - Endure - TM047
  (725, 72500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Litten - Sunny Day - TM049
  (725, 72500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Litten - U-turn - TM060
  (725, 72500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Litten - Shadow Claw - TM061
  (725, 72500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 27),
  -- Litten - Bulk Up - TM064
  (725, 72500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 28),
  -- Litten - Body Slam - TM066
  (725, 72500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Litten - Sleep Talk - TM070
  (725, 72500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Litten - Rest - TM085
  (725, 72500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Litten - Taunt - TM087
  (725, 72500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 32),
  -- Litten - Swords Dance - TM088
  (725, 72500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Litten - Leech Life - TM095
  (725, 72500, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 34),
  -- Litten - Substitute - TM103
  (725, 72500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Litten - Will-O-Wisp - TM107
  (725, 72500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Litten - Crunch - TM108
  (725, 72500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 37),
  -- Litten - Heat Wave - TM118
  (725, 72500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Litten - Flamethrower - TM125
  (725, 72500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Litten - Helping Hand - TM130
  (725, 72500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Litten - Nasty Plot - TM140
  (725, 72500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Litten - Fire Blast - TM141
  (725, 72500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Litten - Fire Pledge - TM144
  (725, 72500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 43),
  -- Litten - Outrage - TM156
  (725, 72500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 44),
  -- Litten - Overheat - TM157
  (725, 72500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 45),
  -- Litten - Flare Blitz - TM165
  (725, 72500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 46),
  -- Litten - Tera Blast - TM171
  (725, 72500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Litten - Fake Out - Egg
  (725, 72500, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Litten - Parting Shot - Egg
  (725, 72500, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Litten - Power Trip - Egg
  (725, 72500, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torracat - Scratch - Level 1
  (726, 72600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torracat - Growl - Level 1
  (726, 72600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torracat - Ember - Level 1
  (726, 72600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torracat - Lick - Level 1
  (726, 72600, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torracat - Roar - Level 9
  (726, 72600, 46, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torracat - Fury Swipes - Level 12
  (726, 72600, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torracat - Bite - Level 15
  (726, 72600, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Torracat - Double Kick - Level 20
  (726, 72600, 24, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Torracat - Fire Fang - Level 25
  (726, 72600, 424, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Torracat - Scary Face - Level 30
  (726, 72600, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Torracat - Swagger - Level 35
  (726, 72600, 207, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Torracat - Flamethrower - Level 40
  (726, 72600, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Torracat - Thrash - Level 45
  (726, 72600, 37, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Torracat - Flare Blitz - Level 50
  (726, 72600, 394, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Torracat - Take Down - TM001
  (726, 72600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Torracat - Scary Face - TM006
  (726, 72600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Torracat - Protect - TM007
  (726, 72600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Torracat - Fire Fang - TM008
  (726, 72600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Torracat - Acrobatics - TM014
  (726, 72600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Torracat - Trailblaze - TM020
  (726, 72600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Torracat - Fire Spin - TM024
  (726, 72600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Torracat - Facade - TM025
  (726, 72600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Torracat - Flame Charge - TM038
  (726, 72600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Torracat - Endure - TM047
  (726, 72600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Torracat - Sunny Day - TM049
  (726, 72600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Torracat - U-turn - TM060
  (726, 72600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Torracat - Shadow Claw - TM061
  (726, 72600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 27),
  -- Torracat - Bulk Up - TM064
  (726, 72600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 28),
  -- Torracat - Body Slam - TM066
  (726, 72600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Torracat - Sleep Talk - TM070
  (726, 72600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Torracat - Rest - TM085
  (726, 72600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Torracat - Taunt - TM087
  (726, 72600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 32),
  -- Torracat - Swords Dance - TM088
  (726, 72600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Torracat - Leech Life - TM095
  (726, 72600, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 34),
  -- Torracat - Substitute - TM103
  (726, 72600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Torracat - Will-O-Wisp - TM107
  (726, 72600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Torracat - Crunch - TM108
  (726, 72600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 37),
  -- Torracat - Heat Wave - TM118
  (726, 72600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Torracat - Flamethrower - TM125
  (726, 72600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Torracat - Helping Hand - TM130
  (726, 72600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Torracat - Nasty Plot - TM140
  (726, 72600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Torracat - Fire Blast - TM141
  (726, 72600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Torracat - Fire Pledge - TM144
  (726, 72600, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 43),
  -- Torracat - Outrage - TM156
  (726, 72600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 44),
  -- Torracat - Overheat - TM157
  (726, 72600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 45),
  -- Torracat - Flare Blitz - TM165
  (726, 72600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 46),
  -- Torracat - Tera Blast - TM171
  (726, 72600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Torracat - Fake Out - Egg
  (726, 72600, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torracat - Parting Shot - Egg
  (726, 72600, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torracat - Power Trip - Egg
  (726, 72600, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Incineroar - Ember - Level 1
  (727, 72700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Incineroar - Lick - Level 1
  (727, 72700, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Incineroar - Cross Chop - Level 1
  (727, 72700, 238, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Incineroar - Bulk Up - Level 1
  (727, 72700, 339, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Incineroar - Roar - Level 9
  (727, 72700, 46, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Incineroar - Fury Swipes - Level 12
  (727, 72700, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Incineroar - Bite - Level 15
  (727, 72700, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Incineroar - Double Kick - Level 20
  (727, 72700, 24, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Incineroar - Fire Fang - Level 25
  (727, 72700, 424, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Incineroar - Scary Face - Level 30
  (727, 72700, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Incineroar - Swagger - Level 32
  (727, 72700, 207, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Incineroar - Flamethrower - Level 44
  (727, 72700, 53, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Incineroar - Thrash - Level 51
  (727, 72700, 37, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Incineroar - Flare Blitz - Level 58
  (727, 72700, 394, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Incineroar - Take Down - TM001
  (727, 72700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Incineroar - Scary Face - TM006
  (727, 72700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Incineroar - Protect - TM007
  (727, 72700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Incineroar - Fire Fang - TM008
  (727, 72700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Incineroar - Low Kick - TM012
  (727, 72700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Incineroar - Acrobatics - TM014
  (727, 72700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Incineroar - Thief - TM018
  (727, 72700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Incineroar - Trailblaze - TM020
  (727, 72700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Incineroar - Fire Spin - TM024
  (727, 72700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Incineroar - Facade - TM025
  (727, 72700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Incineroar - Aerial Ace - TM027
  (727, 72700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Incineroar - Bulldoze - TM028
  (727, 72700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Incineroar - Snarl - TM030
  (727, 72700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Incineroar - Flame Charge - TM038
  (727, 72700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 28),
  -- Incineroar - Low Sweep - TM039
  (727, 72700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Incineroar - Fling - TM043
  (727, 72700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Incineroar - Endure - TM047
  (727, 72700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Incineroar - Sunny Day - TM049
  (727, 72700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Incineroar - Brick Break - TM058
  (727, 72700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Incineroar - U-turn - TM060
  (727, 72700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Incineroar - Shadow Claw - TM061
  (727, 72700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Incineroar - Bulk Up - TM064
  (727, 72700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Incineroar - Body Slam - TM066
  (727, 72700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Incineroar - Fire Punch - TM067
  (727, 72700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Incineroar - Thunder Punch - TM068
  (727, 72700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Incineroar - Sleep Talk - TM070
  (727, 72700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Incineroar - Drain Punch - TM073
  (727, 72700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Incineroar - Stomping Tantrum - TM084
  (727, 72700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Incineroar - Rest - TM085
  (727, 72700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Incineroar - Taunt - TM087
  (727, 72700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Incineroar - Swords Dance - TM088
  (727, 72700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Incineroar - Dark Pulse - TM094
  (727, 72700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Incineroar - Leech Life - TM095
  (727, 72700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 47),
  -- Incineroar - Iron Head - TM099
  (727, 72700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Incineroar - Substitute - TM103
  (727, 72700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Incineroar - Will-O-Wisp - TM107
  (727, 72700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 50),
  -- Incineroar - Crunch - TM108
  (727, 72700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Incineroar - Heat Wave - TM118
  (727, 72700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 52),
  -- Incineroar - Flamethrower - TM125
  (727, 72700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Incineroar - Helping Hand - TM130
  (727, 72700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Incineroar - Baton Pass - TM132
  (727, 72700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 55),
  -- Incineroar - Reversal - TM134
  (727, 72700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 56),
  -- Incineroar - Nasty Plot - TM140
  (727, 72700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Incineroar - Fire Blast - TM141
  (727, 72700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 58),
  -- Incineroar - Fire Pledge - TM144
  (727, 72700, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 59),
  -- Incineroar - Earthquake - TM149
  (727, 72700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Incineroar - Giga Impact - TM152
  (727, 72700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Incineroar - Blast Burn - TM153
  (727, 72700, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 62),
  -- Incineroar - Outrage - TM156
  (727, 72700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 63),
  -- Incineroar - Overheat - TM157
  (727, 72700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 64),
  -- Incineroar - Focus Blast - TM158
  (727, 72700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 65),
  -- Incineroar - Hyper Beam - TM163
  (727, 72700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Incineroar - Flare Blitz - TM165
  (727, 72700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 67),
  -- Incineroar - Close Combat - TM167
  (727, 72700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 68),
  -- Incineroar - Tera Blast - TM171
  (727, 72700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Incineroar - Fake Out - Egg
  (727, 72700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Incineroar - Parting Shot - Egg
  (727, 72700, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Incineroar - Power Trip - Egg
  (727, 72700, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Incineroar - Darkest Lariat - Evolution
  (727, 72700, 663, 23, NULL, 7, NULL, NULL, NULL, NULL, 73),
  -- Incineroar - Scratch - Reminder
  (727, 72700, 10, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Incineroar - Growl - Reminder
  (727, 72700, 45, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Incineroar - Throat Chop - Reminder
  (727, 72700, 675, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Popplio - Pound - Level 1
  (728, 72800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Popplio - Growl - Level 1
  (728, 72800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Popplio - Water Gun - Level 3
  (728, 72800, 55, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Popplio - Disarming Voice - Level 6
  (728, 72800, 574, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Popplio - Aqua Jet - Level 9
  (728, 72800, 453, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Popplio - Baby-Doll Eyes - Level 12
  (728, 72800, 608, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Popplio - Icy Wind - Level 15
  (728, 72800, 196, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Popplio - Sing - Level 18
  (728, 72800, 47, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Popplio - Bubble Beam - Level 21
  (728, 72800, 61, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Popplio - Encore - Level 24
  (728, 72800, 227, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Popplio - Misty Terrain - Level 27
  (728, 72800, 581, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Popplio - Hyper Voice - Level 30
  (728, 72800, 304, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Popplio - Moonblast - Level 33
  (728, 72800, 585, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Popplio - Hydro Pump - Level 36
  (728, 72800, 56, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Popplio - Charm - TM002
  (728, 72800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Popplio - Protect - TM007
  (728, 72800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Popplio - Water Pulse - TM011
  (728, 72800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Popplio - Acrobatics - TM014
  (728, 72800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Popplio - Disarming Voice - TM019
  (728, 72800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 19),
  -- Popplio - Chilling Water - TM022
  (728, 72800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Popplio - Facade - TM025
  (728, 72800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Popplio - Swift - TM032
  (728, 72800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Popplio - Icy Wind - TM034
  (728, 72800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Popplio - Draining Kiss - TM037
  (728, 72800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Popplio - Endure - TM047
  (728, 72800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Popplio - Rain Dance - TM050
  (728, 72800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Popplio - Sleep Talk - TM070
  (728, 72800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Popplio - Waterfall - TM077
  (728, 72800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 28),
  -- Popplio - Rest - TM085
  (728, 72800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Popplio - Substitute - TM103
  (728, 72800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Popplio - Hyper Voice - TM117
  (728, 72800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 31),
  -- Popplio - Encore - TM122
  (728, 72800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 32),
  -- Popplio - Surf - TM123
  (728, 72800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 33),
  -- Popplio - Ice Spinner - TM124
  (728, 72800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 34),
  -- Popplio - Play Rough - TM127
  (728, 72800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 35),
  -- Popplio - Amnesia - TM128
  (728, 72800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 36),
  -- Popplio - Helping Hand - TM130
  (728, 72800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Popplio - Ice Beam - TM135
  (728, 72800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Popplio - Misty Terrain - TM139
  (728, 72800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 39),
  -- Popplio - Hydro Pump - TM142
  (728, 72800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Popplio - Blizzard - TM143
  (728, 72800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Popplio - Water Pledge - TM145
  (728, 72800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 42),
  -- Popplio - Tera Blast - TM171
  (728, 72800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Popplio - Perish Song - Egg
  (728, 72800, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Popplio - Aqua Ring - Egg
  (728, 72800, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Popplio - Life Dew - Egg
  (728, 72800, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Brionne - Pound - Level 1
  (729, 72900, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Brionne - Growl - Level 1
  (729, 72900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Brionne - Water Gun - Level 1
  (729, 72900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Brionne - Disarming Voice - Level 1
  (729, 72900, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Brionne - Aqua Jet - Level 9
  (729, 72900, 453, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Brionne - Baby-Doll Eyes - Level 12
  (729, 72900, 608, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Brionne - Icy Wind - Level 15
  (729, 72900, 196, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Brionne - Sing - Level 20
  (729, 72900, 47, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Brionne - Bubble Beam - Level 25
  (729, 72900, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Brionne - Encore - Level 30
  (729, 72900, 227, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Brionne - Misty Terrain - Level 35
  (729, 72900, 581, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Brionne - Hyper Voice - Level 40
  (729, 72900, 304, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Brionne - Moonblast - Level 45
  (729, 72900, 585, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Brionne - Hydro Pump - Level 50
  (729, 72900, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Brionne - Charm - TM002
  (729, 72900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Brionne - Protect - TM007
  (729, 72900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Brionne - Water Pulse - TM011
  (729, 72900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Brionne - Acrobatics - TM014
  (729, 72900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Brionne - Disarming Voice - TM019
  (729, 72900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 19),
  -- Brionne - Chilling Water - TM022
  (729, 72900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Brionne - Facade - TM025
  (729, 72900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Brionne - Swift - TM032
  (729, 72900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Brionne - Icy Wind - TM034
  (729, 72900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Brionne - Draining Kiss - TM037
  (729, 72900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Brionne - Endure - TM047
  (729, 72900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Brionne - Rain Dance - TM050
  (729, 72900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Brionne - Body Slam - TM066
  (729, 72900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Brionne - Sleep Talk - TM070
  (729, 72900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Brionne - Waterfall - TM077
  (729, 72900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Brionne - Rest - TM085
  (729, 72900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Brionne - Substitute - TM103
  (729, 72900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Brionne - Hyper Voice - TM117
  (729, 72900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 32),
  -- Brionne - Encore - TM122
  (729, 72900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 33),
  -- Brionne - Surf - TM123
  (729, 72900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Brionne - Ice Spinner - TM124
  (729, 72900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 35),
  -- Brionne - Play Rough - TM127
  (729, 72900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 36),
  -- Brionne - Amnesia - TM128
  (729, 72900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 37),
  -- Brionne - Helping Hand - TM130
  (729, 72900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Brionne - Ice Beam - TM135
  (729, 72900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Brionne - Misty Terrain - TM139
  (729, 72900, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 40),
  -- Brionne - Hydro Pump - TM142
  (729, 72900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 41),
  -- Brionne - Blizzard - TM143
  (729, 72900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Brionne - Water Pledge - TM145
  (729, 72900, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 43),
  -- Brionne - Tera Blast - TM171
  (729, 72900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Brionne - Perish Song - Egg
  (729, 72900, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Brionne - Aqua Ring - Egg
  (729, 72900, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Brionne - Life Dew - Egg
  (729, 72900, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Primarina - Pound - Level 1
  (730, 73000, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primarina - Growl - Level 1
  (730, 73000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primarina - Water Gun - Level 1
  (730, 73000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primarina - Disarming Voice - Level 1
  (730, 73000, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primarina - Aqua Jet - Level 9
  (730, 73000, 453, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Primarina - Baby-Doll Eyes - Level 12
  (730, 73000, 608, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Primarina - Icy Wind - Level 15
  (730, 73000, 196, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Primarina - Sing - Level 20
  (730, 73000, 47, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Primarina - Bubble Beam - Level 25
  (730, 73000, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Primarina - Encore - Level 30
  (730, 73000, 227, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Primarina - Misty Terrain - Level 37
  (730, 73000, 581, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Primarina - Hyper Voice - Level 44
  (730, 73000, 304, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Primarina - Moonblast - Level 51
  (730, 73000, 585, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Primarina - Hydro Pump - Level 58
  (730, 73000, 56, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Primarina - Charm - TM002
  (730, 73000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Primarina - Protect - TM007
  (730, 73000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Primarina - Water Pulse - TM011
  (730, 73000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Primarina - Acrobatics - TM014
  (730, 73000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Primarina - Disarming Voice - TM019
  (730, 73000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 19),
  -- Primarina - Chilling Water - TM022
  (730, 73000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Primarina - Facade - TM025
  (730, 73000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Primarina - Swift - TM032
  (730, 73000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Primarina - Icy Wind - TM034
  (730, 73000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Primarina - Draining Kiss - TM037
  (730, 73000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Primarina - Stored Power - TM041
  (730, 73000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Primarina - Endure - TM047
  (730, 73000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Primarina - Rain Dance - TM050
  (730, 73000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Primarina - Snowscape - TM052
  (730, 73000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Primarina - Body Slam - TM066
  (730, 73000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Primarina - Sleep Talk - TM070
  (730, 73000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Primarina - Reflect - TM074
  (730, 73000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Primarina - Light Screen - TM075
  (730, 73000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Primarina - Waterfall - TM077
  (730, 73000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Primarina - Dazzling Gleam - TM079
  (730, 73000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 34),
  -- Primarina - Rest - TM085
  (730, 73000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Primarina - Substitute - TM103
  (730, 73000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Primarina - Liquidation - TM110
  (730, 73000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Primarina - Shadow Ball - TM114
  (730, 73000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Primarina - Hyper Voice - TM117
  (730, 73000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 39),
  -- Primarina - Energy Ball - TM119
  (730, 73000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 40),
  -- Primarina - Psychic - TM120
  (730, 73000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Primarina - Encore - TM122
  (730, 73000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 42),
  -- Primarina - Surf - TM123
  (730, 73000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Primarina - Ice Spinner - TM124
  (730, 73000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 44),
  -- Primarina - Play Rough - TM127
  (730, 73000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Primarina - Amnesia - TM128
  (730, 73000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Primarina - Calm Mind - TM129
  (730, 73000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Primarina - Helping Hand - TM130
  (730, 73000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Primarina - Ice Beam - TM135
  (730, 73000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Primarina - Misty Terrain - TM139
  (730, 73000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 50),
  -- Primarina - Hydro Pump - TM142
  (730, 73000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 51),
  -- Primarina - Blizzard - TM143
  (730, 73000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Primarina - Water Pledge - TM145
  (730, 73000, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 53),
  -- Primarina - Giga Impact - TM152
  (730, 73000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Primarina - Hydro Cannon - TM154
  (730, 73000, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 55),
  -- Primarina - Hyper Beam - TM163
  (730, 73000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Primarina - Tera Blast - TM171
  (730, 73000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Primarina - Perish Song - Egg
  (730, 73000, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Primarina - Aqua Ring - Egg
  (730, 73000, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Primarina - Life Dew - Egg
  (730, 73000, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Primarina - Sparkling Aria - Evolution
  (730, 73000, 664, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Pikipek - Peck - Level 1
  (731, 73100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikipek - Growl - Level 3
  (731, 73100, 45, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Pikipek - Echoed Voice - Level 7
  (731, 73100, 497, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Pikipek - Rock Smash - Level 9
  (731, 73100, 249, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pikipek - Supersonic - Level 13
  (731, 73100, 48, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pikipek - Pluck - Level 15
  (731, 73100, 365, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pikipek - Roost - Level 19
  (731, 73100, 355, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pikipek - Fury Attack - Level 21
  (731, 73100, 31, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pikipek - Screech - Level 25
  (731, 73100, 103, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pikipek - Drill Peck - Level 27
  (731, 73100, 65, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pikipek - Bullet Seed - Level 31
  (731, 73100, 331, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Pikipek - Feather Dance - Level 33
  (731, 73100, 297, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Pikipek - Hyper Voice - Level 37
  (731, 73100, 304, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Pikipek - Take Down - TM001
  (731, 73100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Pikipek - Protect - TM007
  (731, 73100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Pikipek - Acrobatics - TM014
  (731, 73100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Pikipek - Thief - TM018
  (731, 73100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Pikipek - Facade - TM025
  (731, 73100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Pikipek - Aerial Ace - TM027
  (731, 73100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Pikipek - Flame Charge - TM038
  (731, 73100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 20),
  -- Pikipek - Air Cutter - TM040
  (731, 73100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Pikipek - Endure - TM047
  (731, 73100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Pikipek - Sunny Day - TM049
  (731, 73100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Pikipek - Bullet Seed - TM056
  (731, 73100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Pikipek - Brick Break - TM058
  (731, 73100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 25),
  -- Pikipek - U-turn - TM060
  (731, 73100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Pikipek - Air Slash - TM065
  (731, 73100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Pikipek - Sleep Talk - TM070
  (731, 73100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Pikipek - Rest - TM085
  (731, 73100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Pikipek - Swords Dance - TM088
  (731, 73100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 30),
  -- Pikipek - Fly - TM097
  (731, 73100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 31),
  -- Pikipek - Gunk Shot - TM102
  (731, 73100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 32),
  -- Pikipek - Substitute - TM103
  (731, 73100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Pikipek - Tailwind - TM113
  (731, 73100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Pikipek - Hyper Voice - TM117
  (731, 73100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Pikipek - Heat Wave - TM118
  (731, 73100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Pikipek - Helping Hand - TM130
  (731, 73100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Pikipek - Brave Bird - TM164
  (731, 73100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 38),
  -- Pikipek - Tera Blast - TM171
  (731, 73100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Pikipek - Sky Attack - Egg
  (731, 73100, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pikipek - Gunk Shot - Egg
  (731, 73100, 441, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pikipek - Boomburst - Egg
  (731, 73100, 586, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trumbeak - Growl - Level 1
  (732, 73200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trumbeak - Peck - Level 1
  (732, 73200, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trumbeak - Rock Smash - Level 1
  (732, 73200, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trumbeak - Rock Blast - Level 1
  (732, 73200, 350, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trumbeak - Supersonic - Level 13
  (732, 73200, 48, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Trumbeak - Pluck - Level 16
  (732, 73200, 365, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Trumbeak - Roost - Level 21
  (732, 73200, 355, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Trumbeak - Fury Attack - Level 24
  (732, 73200, 31, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Trumbeak - Screech - Level 29
  (732, 73200, 103, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Trumbeak - Drill Peck - Level 32
  (732, 73200, 65, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Trumbeak - Bullet Seed - Level 37
  (732, 73200, 331, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Trumbeak - Feather Dance - Level 40
  (732, 73200, 297, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Trumbeak - Hyper Voice - Level 45
  (732, 73200, 304, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Trumbeak - Take Down - TM001
  (732, 73200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Trumbeak - Protect - TM007
  (732, 73200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Trumbeak - Acrobatics - TM014
  (732, 73200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Trumbeak - Thief - TM018
  (732, 73200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Trumbeak - Facade - TM025
  (732, 73200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Trumbeak - Aerial Ace - TM027
  (732, 73200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Trumbeak - Swift - TM032
  (732, 73200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Trumbeak - Flame Charge - TM038
  (732, 73200, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 21),
  -- Trumbeak - Air Cutter - TM040
  (732, 73200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 22),
  -- Trumbeak - Endure - TM047
  (732, 73200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Trumbeak - Sunny Day - TM049
  (732, 73200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Trumbeak - Bullet Seed - TM056
  (732, 73200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Trumbeak - Brick Break - TM058
  (732, 73200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Trumbeak - U-turn - TM060
  (732, 73200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Trumbeak - Air Slash - TM065
  (732, 73200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 28),
  -- Trumbeak - Sleep Talk - TM070
  (732, 73200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Trumbeak - Rock Blast - TM076
  (732, 73200, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 30),
  -- Trumbeak - Rest - TM085
  (732, 73200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Trumbeak - Swords Dance - TM088
  (732, 73200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Trumbeak - Fly - TM097
  (732, 73200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 33),
  -- Trumbeak - Gunk Shot - TM102
  (732, 73200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 34),
  -- Trumbeak - Substitute - TM103
  (732, 73200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Trumbeak - Tailwind - TM113
  (732, 73200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 36),
  -- Trumbeak - Hyper Voice - TM117
  (732, 73200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 37),
  -- Trumbeak - Heat Wave - TM118
  (732, 73200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Trumbeak - Helping Hand - TM130
  (732, 73200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Trumbeak - Brave Bird - TM164
  (732, 73200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 40),
  -- Trumbeak - Tera Blast - TM171
  (732, 73200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Trumbeak - Sky Attack - Egg
  (732, 73200, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trumbeak - Gunk Shot - Egg
  (732, 73200, 441, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trumbeak - Boomburst - Egg
  (732, 73200, 586, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trumbeak - Echoed Voice - Reminder
  (732, 73200, 497, 23, NULL, 9, NULL, NULL, NULL, NULL, 45),
  -- Toucannon - Growl - Level 1
  (733, 73300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toucannon - Peck - Level 1
  (733, 73300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toucannon - Rock Smash - Level 1
  (733, 73300, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toucannon - Rock Blast - Level 1
  (733, 73300, 350, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toucannon - Echoed Voice - Level 1
  (733, 73300, 497, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toucannon - Supersonic - Level 13
  (733, 73300, 48, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Toucannon - Pluck - Level 16
  (733, 73300, 365, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Toucannon - Roost - Level 21
  (733, 73300, 355, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Toucannon - Fury Attack - Level 24
  (733, 73300, 31, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Toucannon - Screech - Level 30
  (733, 73300, 103, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Toucannon - Drill Peck - Level 34
  (733, 73300, 65, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Toucannon - Bullet Seed - Level 40
  (733, 73300, 331, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Toucannon - Feather Dance - Level 44
  (733, 73300, 297, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Toucannon - Hyper Voice - Level 50
  (733, 73300, 304, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Toucannon - Take Down - TM001
  (733, 73300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Toucannon - Scary Face - TM006
  (733, 73300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Toucannon - Protect - TM007
  (733, 73300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Toucannon - Acrobatics - TM014
  (733, 73300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Toucannon - Thief - TM018
  (733, 73300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Toucannon - Facade - TM025
  (733, 73300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Toucannon - Aerial Ace - TM027
  (733, 73300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Toucannon - Swift - TM032
  (733, 73300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Toucannon - Flame Charge - TM038
  (733, 73300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Toucannon - Air Cutter - TM040
  (733, 73300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Toucannon - Endure - TM047
  (733, 73300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Toucannon - Sunny Day - TM049
  (733, 73300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Toucannon - Bullet Seed - TM056
  (733, 73300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Toucannon - Brick Break - TM058
  (733, 73300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Toucannon - U-turn - TM060
  (733, 73300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Toucannon - Air Slash - TM065
  (733, 73300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Toucannon - Sleep Talk - TM070
  (733, 73300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Toucannon - Seed Bomb - TM071
  (733, 73300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Toucannon - Rock Blast - TM076
  (733, 73300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Toucannon - Rest - TM085
  (733, 73300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Toucannon - Swords Dance - TM088
  (733, 73300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Toucannon - Flash Cannon - TM093
  (733, 73300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Toucannon - Fly - TM097
  (733, 73300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Toucannon - Gunk Shot - TM102
  (733, 73300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 38),
  -- Toucannon - Substitute - TM103
  (733, 73300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Toucannon - Tailwind - TM113
  (733, 73300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Toucannon - Hyper Voice - TM117
  (733, 73300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Toucannon - Heat Wave - TM118
  (733, 73300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Toucannon - Encore - TM122
  (733, 73300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Toucannon - Helping Hand - TM130
  (733, 73300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Toucannon - Giga Impact - TM152
  (733, 73300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Toucannon - Overheat - TM157
  (733, 73300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 46),
  -- Toucannon - Hurricane - TM160
  (733, 73300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 47),
  -- Toucannon - Hyper Beam - TM163
  (733, 73300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Toucannon - Brave Bird - TM164
  (733, 73300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 49),
  -- Toucannon - Tera Blast - TM171
  (733, 73300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Toucannon - Sky Attack - Egg
  (733, 73300, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Toucannon - Gunk Shot - Egg
  (733, 73300, 441, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Toucannon - Boomburst - Egg
  (733, 73300, 586, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Toucannon - Beak Blast - Evolution
  (733, 73300, 690, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Yungoos - Tackle - Level 1
  (734, 73400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yungoos - Leer - Level 3
  (734, 73400, 43, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Yungoos - Payback - Level 7
  (734, 73400, 371, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Yungoos - Sand Attack - Level 10
  (734, 73400, 28, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Yungoos - Work Up - Level 13
  (734, 73400, 526, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Yungoos - Bite - Level 19
  (734, 73400, 44, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Yungoos - Mud-Slap - Level 22
  (734, 73400, 189, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yungoos - Super Fang - Level 25
  (734, 73400, 162, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Yungoos - Take Down - Level 28
  (734, 73400, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Yungoos - Scary Face - Level 31
  (734, 73400, 184, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Yungoos - Crunch - Level 34
  (734, 73400, 242, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Yungoos - Yawn - Level 37
  (734, 73400, 281, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Yungoos - Thrash - Level 40
  (734, 73400, 37, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Yungoos - Rest - Level 43
  (734, 73400, 156, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Yungoos - Take Down - TM001
  (734, 73400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Yungoos - Mud-Slap - TM005
  (734, 73400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Yungoos - Scary Face - TM006
  (734, 73400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Yungoos - Protect - TM007
  (734, 73400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Yungoos - Fire Fang - TM008
  (734, 73400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Yungoos - Thunder Fang - TM009
  (734, 73400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Yungoos - Ice Fang - TM010
  (734, 73400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Yungoos - Thief - TM018
  (734, 73400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Yungoos - Trailblaze - TM020
  (734, 73400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Yungoos - Chilling Water - TM022
  (734, 73400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Yungoos - Facade - TM025
  (734, 73400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Yungoos - Bulldoze - TM028
  (734, 73400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Yungoos - Mud Shot - TM035
  (734, 73400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Yungoos - Rock Tomb - TM036
  (734, 73400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Yungoos - Endure - TM047
  (734, 73400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Yungoos - Sunny Day - TM049
  (734, 73400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Yungoos - Rain Dance - TM050
  (734, 73400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Yungoos - Sandstorm - TM051
  (734, 73400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Yungoos - Dig - TM055
  (734, 73400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Yungoos - Zen Headbutt - TM059
  (734, 73400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Yungoos - U-turn - TM060
  (734, 73400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Yungoos - Psychic Fangs - TM063
  (734, 73400, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Yungoos - Sleep Talk - TM070
  (734, 73400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Yungoos - Seed Bomb - TM071
  (734, 73400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Yungoos - Stomping Tantrum - TM084
  (734, 73400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Yungoos - Rest - TM085
  (734, 73400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Yungoos - Taunt - TM087
  (734, 73400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Yungoos - Substitute - TM103
  (734, 73400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Yungoos - Crunch - TM108
  (734, 73400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Yungoos - Helping Hand - TM130
  (734, 73400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Yungoos - Reversal - TM134
  (734, 73400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 45),
  -- Yungoos - Wild Charge - TM147
  (734, 73400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Yungoos - Tera Blast - TM171
  (734, 73400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Yungoos - Endeavor - Egg
  (734, 73400, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yungoos - Last Resort - Egg
  (734, 73400, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yungoos - Thunder Fang - Egg
  (734, 73400, 422, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Yungoos - Ice Fang - Egg
  (734, 73400, 423, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Yungoos - Fire Fang - Egg
  (734, 73400, 424, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gumshoos - Sand Attack - Level 1
  (735, 73500, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gumshoos - Tackle - Level 1
  (735, 73500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gumshoos - Leer - Level 1
  (735, 73500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gumshoos - Payback - Level 1
  (735, 73500, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gumshoos - Work Up - Level 13
  (735, 73500, 526, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gumshoos - Bite - Level 19
  (735, 73500, 44, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gumshoos - Mud-Slap - Level 23
  (735, 73500, 189, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Gumshoos - Super Fang - Level 27
  (735, 73500, 162, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gumshoos - Take Down - Level 31
  (735, 73500, 36, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gumshoos - Scary Face - Level 35
  (735, 73500, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gumshoos - Crunch - Level 39
  (735, 73500, 242, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gumshoos - Yawn - Level 43
  (735, 73500, 281, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Gumshoos - Thrash - Level 47
  (735, 73500, 37, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Gumshoos - Rest - Level 52
  (735, 73500, 156, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Gumshoos - Take Down - TM001
  (735, 73500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Gumshoos - Mud-Slap - TM005
  (735, 73500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Gumshoos - Scary Face - TM006
  (735, 73500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Gumshoos - Protect - TM007
  (735, 73500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Gumshoos - Fire Fang - TM008
  (735, 73500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Gumshoos - Thunder Fang - TM009
  (735, 73500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Gumshoos - Ice Fang - TM010
  (735, 73500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Gumshoos - Thief - TM018
  (735, 73500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Gumshoos - Trailblaze - TM020
  (735, 73500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Gumshoos - Chilling Water - TM022
  (735, 73500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Gumshoos - Facade - TM025
  (735, 73500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Gumshoos - Bulldoze - TM028
  (735, 73500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Gumshoos - Mud Shot - TM035
  (735, 73500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Gumshoos - Rock Tomb - TM036
  (735, 73500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Gumshoos - Low Sweep - TM039
  (735, 73500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Gumshoos - Fling - TM043
  (735, 73500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Gumshoos - Endure - TM047
  (735, 73500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Gumshoos - Sunny Day - TM049
  (735, 73500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Gumshoos - Rain Dance - TM050
  (735, 73500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Gumshoos - Sandstorm - TM051
  (735, 73500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Gumshoos - Dig - TM055
  (735, 73500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Gumshoos - Zen Headbutt - TM059
  (735, 73500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Gumshoos - U-turn - TM060
  (735, 73500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Gumshoos - Psychic Fangs - TM063
  (735, 73500, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 38),
  -- Gumshoos - Body Slam - TM066
  (735, 73500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Gumshoos - Fire Punch - TM067
  (735, 73500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Gumshoos - Thunder Punch - TM068
  (735, 73500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Gumshoos - Ice Punch - TM069
  (735, 73500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Gumshoos - Sleep Talk - TM070
  (735, 73500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Gumshoos - Seed Bomb - TM071
  (735, 73500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 44),
  -- Gumshoos - Stomping Tantrum - TM084
  (735, 73500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Gumshoos - Rest - TM085
  (735, 73500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Gumshoos - Taunt - TM087
  (735, 73500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Gumshoos - Iron Head - TM099
  (735, 73500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Gumshoos - Substitute - TM103
  (735, 73500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Gumshoos - Crunch - TM108
  (735, 73500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 50),
  -- Gumshoos - Helping Hand - TM130
  (735, 73500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Gumshoos - Reversal - TM134
  (735, 73500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Gumshoos - Wild Charge - TM147
  (735, 73500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 53),
  -- Gumshoos - Earthquake - TM149
  (735, 73500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Gumshoos - Giga Impact - TM152
  (735, 73500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Gumshoos - Hyper Beam - TM163
  (735, 73500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Gumshoos - Tera Blast - TM171
  (735, 73500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Gumshoos - Endeavor - Egg
  (735, 73500, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gumshoos - Last Resort - Egg
  (735, 73500, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gumshoos - Thunder Fang - Egg
  (735, 73500, 422, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gumshoos - Ice Fang - Egg
  (735, 73500, 423, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gumshoos - Fire Fang - Egg
  (735, 73500, 424, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grubbin - Vise Grip - Level 1
  (736, 73600, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grubbin - Mud-Slap - Level 1
  (736, 73600, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grubbin - String Shot - Level 5
  (736, 73600, 81, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grubbin - Bug Bite - Level 10
  (736, 73600, 450, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Grubbin - Bite - Level 15
  (736, 73600, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Grubbin - Spark - Level 21
  (736, 73600, 209, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Grubbin - Sticky Web - Level 25
  (736, 73600, 564, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Grubbin - X-Scissor - Level 30
  (736, 73600, 404, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Grubbin - Crunch - Level 35
  (736, 73600, 242, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Grubbin - Dig - Level 40
  (736, 73600, 91, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Grubbin - Take Down - TM001
  (736, 73600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Grubbin - Mud-Slap - TM005
  (736, 73600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 12),
  -- Grubbin - Protect - TM007
  (736, 73600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Grubbin - Struggle Bug - TM015
  (736, 73600, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 14),
  -- Grubbin - Pounce - TM021
  (736, 73600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 15),
  -- Grubbin - Charge Beam - TM023
  (736, 73600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 16),
  -- Grubbin - Facade - TM025
  (736, 73600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Grubbin - Mud Shot - TM035
  (736, 73600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 18),
  -- Grubbin - Endure - TM047
  (736, 73600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Grubbin - Volt Switch - TM048
  (736, 73600, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 20),
  -- Grubbin - Rain Dance - TM050
  (736, 73600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Grubbin - Dig - TM055
  (736, 73600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 22),
  -- Grubbin - Sleep Talk - TM070
  (736, 73600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Grubbin - Light Screen - TM075
  (736, 73600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 24),
  -- Grubbin - Thunder Wave - TM082
  (736, 73600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 25),
  -- Grubbin - Poison Jab - TM083
  (736, 73600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 26),
  -- Grubbin - Rest - TM085
  (736, 73600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Grubbin - Substitute - TM103
  (736, 73600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Grubbin - X-Scissor - TM105
  (736, 73600, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 29),
  -- Grubbin - Crunch - TM108
  (736, 73600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 30),
  -- Grubbin - Thunderbolt - TM126
  (736, 73600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 31),
  -- Grubbin - Baton Pass - TM132
  (736, 73600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 32),
  -- Grubbin - Electric Terrain - TM136
  (736, 73600, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 33),
  -- Grubbin - Wild Charge - TM147
  (736, 73600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 34),
  -- Grubbin - Tera Blast - TM171
  (736, 73600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 35),
  -- Grubbin - Harden - Egg
  (736, 73600, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Grubbin - Discharge - Egg
  (736, 73600, 435, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Charjabug - Vise Grip - Level 1
  (737, 73700, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charjabug - String Shot - Level 1
  (737, 73700, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charjabug - Mud-Slap - Level 1
  (737, 73700, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charjabug - Bug Bite - Level 1
  (737, 73700, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charjabug - Bite - Level 15
  (737, 73700, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Charjabug - Spark - Level 23
  (737, 73700, 209, 23, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Charjabug - Sticky Web - Level 29
  (737, 73700, 564, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Charjabug - X-Scissor - Level 36
  (737, 73700, 404, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Charjabug - Crunch - Level 43
  (737, 73700, 242, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Charjabug - Dig - Level 50
  (737, 73700, 91, 23, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Charjabug - Iron Defense - Level 57
  (737, 73700, 334, 23, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Charjabug - Discharge - Level 64
  (737, 73700, 435, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Charjabug - Take Down - TM001
  (737, 73700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Charjabug - Mud-Slap - TM005
  (737, 73700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Charjabug - Protect - TM007
  (737, 73700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Charjabug - Struggle Bug - TM015
  (737, 73700, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 16),
  -- Charjabug - Pounce - TM021
  (737, 73700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 17),
  -- Charjabug - Charge Beam - TM023
  (737, 73700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Charjabug - Facade - TM025
  (737, 73700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Charjabug - Mud Shot - TM035
  (737, 73700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Charjabug - Endure - TM047
  (737, 73700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Charjabug - Volt Switch - TM048
  (737, 73700, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 22),
  -- Charjabug - Rain Dance - TM050
  (737, 73700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Charjabug - Dig - TM055
  (737, 73700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Charjabug - Sleep Talk - TM070
  (737, 73700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Charjabug - Electro Ball - TM072
  (737, 73700, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 26),
  -- Charjabug - Light Screen - TM075
  (737, 73700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 27),
  -- Charjabug - Thunder Wave - TM082
  (737, 73700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Charjabug - Poison Jab - TM083
  (737, 73700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 29),
  -- Charjabug - Rest - TM085
  (737, 73700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Charjabug - Eerie Impulse - TM096
  (737, 73700, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 31),
  -- Charjabug - Substitute - TM103
  (737, 73700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Charjabug - Iron Defense - TM104
  (737, 73700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Charjabug - X-Scissor - TM105
  (737, 73700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 34),
  -- Charjabug - Crunch - TM108
  (737, 73700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 35),
  -- Charjabug - Thunderbolt - TM126
  (737, 73700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 36),
  -- Charjabug - Baton Pass - TM132
  (737, 73700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 37),
  -- Charjabug - Electric Terrain - TM136
  (737, 73700, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 38),
  -- Charjabug - Wild Charge - TM147
  (737, 73700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 39),
  -- Charjabug - Thunder - TM166
  (737, 73700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 40),
  -- Charjabug - Tera Blast - TM171
  (737, 73700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Charjabug - Harden - Egg
  (737, 73700, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Charjabug - Discharge - Egg
  (737, 73700, 435, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Charjabug - Charge - Evolution
  (737, 73700, 268, 23, NULL, 7, NULL, NULL, NULL, NULL, 44),
  -- Vikavolt - String Shot - Level 1
  (738, 73800, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vikavolt - Crunch - Level 1
  (738, 73800, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vikavolt - Charge - Level 1
  (738, 73800, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vikavolt - Discharge - Level 1
  (738, 73800, 435, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vikavolt - Bite - Level 15
  (738, 73800, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Vikavolt - Spark - Level 23
  (738, 73800, 209, 23, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Vikavolt - Sticky Web - Level 29
  (738, 73800, 564, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Vikavolt - Bug Buzz - Level 36
  (738, 73800, 405, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Vikavolt - Guillotine - Level 43
  (738, 73800, 12, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Vikavolt - Fly - Level 50
  (738, 73800, 19, 23, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Vikavolt - Agility - Level 57
  (738, 73800, 97, 23, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Vikavolt - Zap Cannon - Level 64
  (738, 73800, 192, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Vikavolt - Take Down - TM001
  (738, 73800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Vikavolt - Agility - TM004
  (738, 73800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Vikavolt - Mud-Slap - TM005
  (738, 73800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Vikavolt - Protect - TM007
  (738, 73800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Vikavolt - Acrobatics - TM014
  (738, 73800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Vikavolt - Struggle Bug - TM015
  (738, 73800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Vikavolt - Pounce - TM021
  (738, 73800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Vikavolt - Charge Beam - TM023
  (738, 73800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Vikavolt - Facade - TM025
  (738, 73800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Vikavolt - Bulldoze - TM028
  (738, 73800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Vikavolt - Swift - TM032
  (738, 73800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Vikavolt - Mud Shot - TM035
  (738, 73800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Vikavolt - Endure - TM047
  (738, 73800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Vikavolt - Volt Switch - TM048
  (738, 73800, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Vikavolt - Rain Dance - TM050
  (738, 73800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Vikavolt - Dig - TM055
  (738, 73800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Vikavolt - Air Slash - TM065
  (738, 73800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 29),
  -- Vikavolt - Sleep Talk - TM070
  (738, 73800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Vikavolt - Electro Ball - TM072
  (738, 73800, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 31),
  -- Vikavolt - Light Screen - TM075
  (738, 73800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Vikavolt - Thunder Wave - TM082
  (738, 73800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Vikavolt - Poison Jab - TM083
  (738, 73800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Vikavolt - Rest - TM085
  (738, 73800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Vikavolt - Flash Cannon - TM093
  (738, 73800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Vikavolt - Eerie Impulse - TM096
  (738, 73800, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 37),
  -- Vikavolt - Fly - TM097
  (738, 73800, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Vikavolt - Substitute - TM103
  (738, 73800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Vikavolt - Iron Defense - TM104
  (738, 73800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Vikavolt - X-Scissor - TM105
  (738, 73800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 41),
  -- Vikavolt - Crunch - TM108
  (738, 73800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Vikavolt - Energy Ball - TM119
  (738, 73800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Vikavolt - Thunderbolt - TM126
  (738, 73800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Vikavolt - Baton Pass - TM132
  (738, 73800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Vikavolt - Electric Terrain - TM136
  (738, 73800, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 46),
  -- Vikavolt - Wild Charge - TM147
  (738, 73800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Vikavolt - Giga Impact - TM152
  (738, 73800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Vikavolt - Bug Buzz - TM162
  (738, 73800, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 49),
  -- Vikavolt - Hyper Beam - TM163
  (738, 73800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Vikavolt - Thunder - TM166
  (738, 73800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Vikavolt - Solar Beam - TM168
  (738, 73800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Vikavolt - Tera Blast - TM171
  (738, 73800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Vikavolt - Harden - Egg
  (738, 73800, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vikavolt - Discharge - Egg
  (738, 73800, 435, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vikavolt - Thunderbolt - Evolution
  (738, 73800, 85, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Vikavolt - Vise Grip - Reminder
  (738, 73800, 11, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Vikavolt - Dig - Reminder
  (738, 73800, 91, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Vikavolt - Mud-Slap - Reminder
  (738, 73800, 189, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Vikavolt - Iron Defense - Reminder
  (738, 73800, 334, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Vikavolt - X-Scissor - Reminder
  (738, 73800, 404, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Vikavolt - Bug Bite - Reminder
  (738, 73800, 450, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Crabrawler - Vise Grip - Level 1
  (739, 73900, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabrawler - Rock Smash - Level 5
  (739, 73900, 249, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Crabrawler - Leer - Level 9
  (739, 73900, 43, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Crabrawler - Bubble Beam - Level 13
  (739, 73900, 61, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Crabrawler - Protect - Level 17
  (739, 73900, 182, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Crabrawler - Brick Break - Level 22
  (739, 73900, 280, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Crabrawler - Slam - Level 25
  (739, 73900, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Crabrawler - Payback - Level 29
  (739, 73900, 371, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Crabrawler - Reversal - Level 33
  (739, 73900, 179, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Crabrawler - Crabhammer - Level 37
  (739, 73900, 152, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Crabrawler - Iron Defense - Level 42
  (739, 73900, 334, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Crabrawler - Dynamic Punch - Level 45
  (739, 73900, 223, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Crabrawler - Close Combat - Level 49
  (739, 73900, 370, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Crabrawler - Take Down - TM001
  (739, 73900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Crabrawler - Mud-Slap - TM005
  (739, 73900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Crabrawler - Protect - TM007
  (739, 73900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Crabrawler - Thief - TM018
  (739, 73900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Crabrawler - Chilling Water - TM022
  (739, 73900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Crabrawler - Facade - TM025
  (739, 73900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Crabrawler - Bulldoze - TM028
  (739, 73900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Crabrawler - Swift - TM032
  (739, 73900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Crabrawler - Mud Shot - TM035
  (739, 73900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Crabrawler - Rock Tomb - TM036
  (739, 73900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Crabrawler - Fling - TM043
  (739, 73900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Crabrawler - Endure - TM047
  (739, 73900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Crabrawler - Sunny Day - TM049
  (739, 73900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Crabrawler - Rain Dance - TM050
  (739, 73900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Crabrawler - Dig - TM055
  (739, 73900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Crabrawler - Brick Break - TM058
  (739, 73900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Crabrawler - Zen Headbutt - TM059
  (739, 73900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Crabrawler - Bulk Up - TM064
  (739, 73900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Crabrawler - Body Slam - TM066
  (739, 73900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Crabrawler - Thunder Punch - TM068
  (739, 73900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Crabrawler - Ice Punch - TM069
  (739, 73900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Crabrawler - Sleep Talk - TM070
  (739, 73900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Crabrawler - Drain Punch - TM073
  (739, 73900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 36),
  -- Crabrawler - Stomping Tantrum - TM084
  (739, 73900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Crabrawler - Rest - TM085
  (739, 73900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Crabrawler - Rock Slide - TM086
  (739, 73900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Crabrawler - Iron Head - TM099
  (739, 73900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Crabrawler - Gunk Shot - TM102
  (739, 73900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 41),
  -- Crabrawler - Substitute - TM103
  (739, 73900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Crabrawler - Iron Defense - TM104
  (739, 73900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Crabrawler - Liquidation - TM110
  (739, 73900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 44),
  -- Crabrawler - Amnesia - TM128
  (739, 73900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 45),
  -- Crabrawler - Helping Hand - TM130
  (739, 73900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Crabrawler - Reversal - TM134
  (739, 73900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Crabrawler - Earthquake - TM149
  (739, 73900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Crabrawler - Focus Blast - TM158
  (739, 73900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 49),
  -- Crabrawler - Close Combat - TM167
  (739, 73900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 50),
  -- Crabrawler - Tera Blast - TM171
  (739, 73900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Crabrawler - Focus Punch - Egg
  (739, 73900, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Crabrawler - Superpower - Egg
  (739, 73900, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Crabrawler - Endeavor - Egg
  (739, 73900, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Crabrawler - Wide Guard - Egg
  (739, 73900, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Crabominable - Leer - Level 1
  (740, 74000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabominable - Protect - Level 1
  (740, 74000, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crabominable - Rock Smash - Level 1
  (740, 74000, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crabominable - Bubble Beam - Level 17
  (740, 74000, 61, 23, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Crabominable - Brick Break - Level 22
  (740, 74000, 280, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Crabominable - Slam - Level 25
  (740, 74000, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Crabominable - Avalanche - Level 29
  (740, 74000, 419, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Crabominable - Reversal - Level 33
  (740, 74000, 179, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Crabominable - Ice Hammer - Level 37
  (740, 74000, 665, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Crabominable - Iron Defense - Level 42
  (740, 74000, 334, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Crabominable - Dynamic Punch - Level 45
  (740, 74000, 223, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Crabominable - Close Combat - Level 49
  (740, 74000, 370, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Crabominable - Take Down - TM001
  (740, 74000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Crabominable - Mud-Slap - TM005
  (740, 74000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Crabominable - Scary Face - TM006
  (740, 74000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Crabominable - Protect - TM007
  (740, 74000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Crabominable - Thief - TM018
  (740, 74000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Crabominable - Chilling Water - TM022
  (740, 74000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Crabominable - Facade - TM025
  (740, 74000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Crabominable - Bulldoze - TM028
  (740, 74000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Crabominable - Swift - TM032
  (740, 74000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Crabominable - Icy Wind - TM034
  (740, 74000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Crabominable - Mud Shot - TM035
  (740, 74000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Crabominable - Rock Tomb - TM036
  (740, 74000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Crabominable - Fling - TM043
  (740, 74000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Crabominable - Avalanche - TM046
  (740, 74000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Crabominable - Endure - TM047
  (740, 74000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Crabominable - Sunny Day - TM049
  (740, 74000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Crabominable - Rain Dance - TM050
  (740, 74000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Crabominable - Snowscape - TM052
  (740, 74000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Crabominable - Dig - TM055
  (740, 74000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Crabominable - Brick Break - TM058
  (740, 74000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Crabominable - Zen Headbutt - TM059
  (740, 74000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Crabominable - Bulk Up - TM064
  (740, 74000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Crabominable - Body Slam - TM066
  (740, 74000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Crabominable - Thunder Punch - TM068
  (740, 74000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Crabominable - Ice Punch - TM069
  (740, 74000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Crabominable - Sleep Talk - TM070
  (740, 74000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Crabominable - Drain Punch - TM073
  (740, 74000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Crabominable - Stomping Tantrum - TM084
  (740, 74000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Crabominable - Rest - TM085
  (740, 74000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Crabominable - Rock Slide - TM086
  (740, 74000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Crabominable - Body Press - TM089
  (740, 74000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Crabominable - Iron Head - TM099
  (740, 74000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Crabominable - Gunk Shot - TM102
  (740, 74000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 45),
  -- Crabominable - Substitute - TM103
  (740, 74000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Crabominable - Iron Defense - TM104
  (740, 74000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Crabominable - Liquidation - TM110
  (740, 74000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Crabominable - Ice Spinner - TM124
  (740, 74000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 49),
  -- Crabominable - Amnesia - TM128
  (740, 74000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 50),
  -- Crabominable - Helping Hand - TM130
  (740, 74000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Crabominable - Reversal - TM134
  (740, 74000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Crabominable - Ice Beam - TM135
  (740, 74000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Crabominable - Blizzard - TM143
  (740, 74000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Crabominable - Earthquake - TM149
  (740, 74000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Crabominable - Giga Impact - TM152
  (740, 74000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Crabominable - Focus Blast - TM158
  (740, 74000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Crabominable - Hyper Beam - TM163
  (740, 74000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Crabominable - Close Combat - TM167
  (740, 74000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 59),
  -- Crabominable - Tera Blast - TM171
  (740, 74000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Crabominable - Focus Punch - Egg
  (740, 74000, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Crabominable - Superpower - Egg
  (740, 74000, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Crabominable - Endeavor - Egg
  (740, 74000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Crabominable - Wide Guard - Egg
  (740, 74000, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Crabominable - Ice Punch - Evolution
  (740, 74000, 8, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Oricorio - Pound - Level 1
  (741, 74100, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio - Growl - Level 4
  (741, 74100, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio - Peck - Level 6
  (741, 74100, 64, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio - Helping Hand - Level 10
  (741, 74100, 270, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio - Air Cutter - Level 13
  (741, 74100, 314, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio - Baton Pass - Level 16
  (741, 74100, 226, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio - Feather Dance - Level 20
  (741, 74100, 297, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio - Acrobatics - Level 23
  (741, 74100, 512, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio - Teeter Dance - Level 26
  (741, 74100, 298, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio - Roost - Level 30
  (741, 74100, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio - Flatter - Level 33
  (741, 74100, 260, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio - Air Slash - Level 36
  (741, 74100, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio - Revelation Dance - Level 40
  (741, 74100, 686, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio - Agility - Level 43
  (741, 74100, 97, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio - Hurricane - Level 47
  (741, 74100, 542, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Oricorio - Take Down - TM001
  (741, 74100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Oricorio - Charm - TM002
  (741, 74100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Oricorio - Agility - TM004
  (741, 74100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Oricorio - Protect - TM007
  (741, 74100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Oricorio - Acrobatics - TM014
  (741, 74100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Oricorio - Trailblaze - TM020
  (741, 74100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Oricorio - Facade - TM025
  (741, 74100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Oricorio - Aerial Ace - TM027
  (741, 74100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Oricorio - Swift - TM032
  (741, 74100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Oricorio - Icy Wind - TM034
  (741, 74100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Oricorio - Air Cutter - TM040
  (741, 74100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Oricorio - Endure - TM047
  (741, 74100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oricorio - Sunny Day - TM049
  (741, 74100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Oricorio - Rain Dance - TM050
  (741, 74100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Oricorio - Sandstorm - TM051
  (741, 74100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Oricorio - U-turn - TM060
  (741, 74100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Oricorio - Air Slash - TM065
  (741, 74100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Oricorio - Sleep Talk - TM070
  (741, 74100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Oricorio - Rest - TM085
  (741, 74100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Oricorio - Taunt - TM087
  (741, 74100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Oricorio - Swords Dance - TM088
  (741, 74100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Oricorio - Fly - TM097
  (741, 74100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Oricorio - Substitute - TM103
  (741, 74100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Oricorio - Tailwind - TM113
  (741, 74100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Oricorio - Calm Mind - TM129
  (741, 74100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Oricorio - Helping Hand - TM130
  (741, 74100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Oricorio - Baton Pass - TM132
  (741, 74100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Oricorio - Reversal - TM134
  (741, 74100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Oricorio - Hurricane - TM160
  (741, 74100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Oricorio - Tera Blast - TM171
  (741, 74100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Oricorio - Attract - Egg
  (741, 74100, 213, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio - Safeguard - Egg
  (741, 74100, 219, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio - Pluck - Egg
  (741, 74100, 365, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oricorio - Defog - Egg
  (741, 74100, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oricorio - Quiver Dance - Egg
  (741, 74100, 483, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oricorio (Pom-Pom) - Pound - Level 1
  (741, 74101, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Pom-Pom) - Growl - Level 4
  (741, 74101, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Pom-Pom) - Peck - Level 6
  (741, 74101, 64, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Pom-Pom) - Helping Hand - Level 10
  (741, 74101, 270, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Pom-Pom) - Air Cutter - Level 13
  (741, 74101, 314, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Pom-Pom) - Baton Pass - Level 16
  (741, 74101, 226, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Pom-Pom) - Feather Dance - Level 20
  (741, 74101, 297, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Pom-Pom) - Acrobatics - Level 23
  (741, 74101, 512, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Pom-Pom) - Teeter Dance - Level 26
  (741, 74101, 298, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Pom-Pom) - Roost - Level 30
  (741, 74101, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Pom-Pom) - Flatter - Level 33
  (741, 74101, 260, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Pom-Pom) - Air Slash - Level 36
  (741, 74101, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Pom-Pom) - Revelation Dance - Level 40
  (741, 74101, 686, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Pom-Pom) - Agility - Level 43
  (741, 74101, 97, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Pom-Pom) - Hurricane - Level 47
  (741, 74101, 542, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Oricorio (Pom-Pom) - Take Down - TM001
  (741, 74101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Oricorio (Pom-Pom) - Charm - TM002
  (741, 74101, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Oricorio (Pom-Pom) - Agility - TM004
  (741, 74101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Oricorio (Pom-Pom) - Protect - TM007
  (741, 74101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Oricorio (Pom-Pom) - Acrobatics - TM014
  (741, 74101, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Oricorio (Pom-Pom) - Trailblaze - TM020
  (741, 74101, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Oricorio (Pom-Pom) - Facade - TM025
  (741, 74101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Oricorio (Pom-Pom) - Aerial Ace - TM027
  (741, 74101, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Oricorio (Pom-Pom) - Swift - TM032
  (741, 74101, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Oricorio (Pom-Pom) - Icy Wind - TM034
  (741, 74101, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Oricorio (Pom-Pom) - Air Cutter - TM040
  (741, 74101, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Oricorio (Pom-Pom) - Endure - TM047
  (741, 74101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oricorio (Pom-Pom) - Sunny Day - TM049
  (741, 74101, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Oricorio (Pom-Pom) - Rain Dance - TM050
  (741, 74101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Oricorio (Pom-Pom) - Sandstorm - TM051
  (741, 74101, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Oricorio (Pom-Pom) - U-turn - TM060
  (741, 74101, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Oricorio (Pom-Pom) - Air Slash - TM065
  (741, 74101, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Oricorio (Pom-Pom) - Sleep Talk - TM070
  (741, 74101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Oricorio (Pom-Pom) - Rest - TM085
  (741, 74101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Oricorio (Pom-Pom) - Taunt - TM087
  (741, 74101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Oricorio (Pom-Pom) - Swords Dance - TM088
  (741, 74101, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Oricorio (Pom-Pom) - Fly - TM097
  (741, 74101, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Oricorio (Pom-Pom) - Substitute - TM103
  (741, 74101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Oricorio (Pom-Pom) - Tailwind - TM113
  (741, 74101, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Oricorio (Pom-Pom) - Calm Mind - TM129
  (741, 74101, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Oricorio (Pom-Pom) - Helping Hand - TM130
  (741, 74101, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Oricorio (Pom-Pom) - Baton Pass - TM132
  (741, 74101, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Oricorio (Pom-Pom) - Reversal - TM134
  (741, 74101, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Oricorio (Pom-Pom) - Hurricane - TM160
  (741, 74101, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Oricorio (Pom-Pom) - Tera Blast - TM171
  (741, 74101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Oricorio (Pom-Pom) - Attract - Egg
  (741, 74101, 213, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Pom-Pom) - Safeguard - Egg
  (741, 74101, 219, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Pom-Pom) - Pluck - Egg
  (741, 74101, 365, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oricorio (Pom-Pom) - Defog - Egg
  (741, 74101, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oricorio (Pom-Pom) - Quiver Dance - Egg
  (741, 74101, 483, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oricorio (Pa'u) - Pound - Level 1
  (741, 74102, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Pa'u) - Growl - Level 4
  (741, 74102, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Pa'u) - Peck - Level 6
  (741, 74102, 64, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Pa'u) - Helping Hand - Level 10
  (741, 74102, 270, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Pa'u) - Air Cutter - Level 13
  (741, 74102, 314, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Pa'u) - Baton Pass - Level 16
  (741, 74102, 226, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Pa'u) - Feather Dance - Level 20
  (741, 74102, 297, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Pa'u) - Acrobatics - Level 23
  (741, 74102, 512, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Pa'u) - Teeter Dance - Level 26
  (741, 74102, 298, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Pa'u) - Roost - Level 30
  (741, 74102, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Pa'u) - Flatter - Level 33
  (741, 74102, 260, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Pa'u) - Air Slash - Level 36
  (741, 74102, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Pa'u) - Revelation Dance - Level 40
  (741, 74102, 686, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Pa'u) - Agility - Level 43
  (741, 74102, 97, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Pa'u) - Hurricane - Level 47
  (741, 74102, 542, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Oricorio (Pa'u) - Take Down - TM001
  (741, 74102, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Oricorio (Pa'u) - Charm - TM002
  (741, 74102, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Oricorio (Pa'u) - Agility - TM004
  (741, 74102, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Oricorio (Pa'u) - Protect - TM007
  (741, 74102, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Oricorio (Pa'u) - Acrobatics - TM014
  (741, 74102, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Oricorio (Pa'u) - Trailblaze - TM020
  (741, 74102, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Oricorio (Pa'u) - Facade - TM025
  (741, 74102, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Oricorio (Pa'u) - Aerial Ace - TM027
  (741, 74102, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Oricorio (Pa'u) - Swift - TM032
  (741, 74102, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Oricorio (Pa'u) - Icy Wind - TM034
  (741, 74102, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Oricorio (Pa'u) - Air Cutter - TM040
  (741, 74102, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Oricorio (Pa'u) - Endure - TM047
  (741, 74102, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oricorio (Pa'u) - Sunny Day - TM049
  (741, 74102, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Oricorio (Pa'u) - Rain Dance - TM050
  (741, 74102, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Oricorio (Pa'u) - Sandstorm - TM051
  (741, 74102, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Oricorio (Pa'u) - U-turn - TM060
  (741, 74102, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Oricorio (Pa'u) - Air Slash - TM065
  (741, 74102, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Oricorio (Pa'u) - Sleep Talk - TM070
  (741, 74102, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Oricorio (Pa'u) - Rest - TM085
  (741, 74102, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Oricorio (Pa'u) - Taunt - TM087
  (741, 74102, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Oricorio (Pa'u) - Swords Dance - TM088
  (741, 74102, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Oricorio (Pa'u) - Fly - TM097
  (741, 74102, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Oricorio (Pa'u) - Substitute - TM103
  (741, 74102, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Oricorio (Pa'u) - Tailwind - TM113
  (741, 74102, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Oricorio (Pa'u) - Calm Mind - TM129
  (741, 74102, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Oricorio (Pa'u) - Helping Hand - TM130
  (741, 74102, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Oricorio (Pa'u) - Baton Pass - TM132
  (741, 74102, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Oricorio (Pa'u) - Reversal - TM134
  (741, 74102, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Oricorio (Pa'u) - Hurricane - TM160
  (741, 74102, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Oricorio (Pa'u) - Tera Blast - TM171
  (741, 74102, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Oricorio (Pa'u) - Attract - Egg
  (741, 74102, 213, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Pa'u) - Safeguard - Egg
  (741, 74102, 219, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Pa'u) - Pluck - Egg
  (741, 74102, 365, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oricorio (Pa'u) - Defog - Egg
  (741, 74102, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oricorio (Pa'u) - Quiver Dance - Egg
  (741, 74102, 483, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oricorio (Sensu) - Pound - Level 1
  (741, 74103, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Sensu) - Growl - Level 4
  (741, 74103, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Sensu) - Peck - Level 6
  (741, 74103, 64, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Sensu) - Helping Hand - Level 10
  (741, 74103, 270, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Sensu) - Air Cutter - Level 13
  (741, 74103, 314, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Sensu) - Baton Pass - Level 16
  (741, 74103, 226, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Sensu) - Feather Dance - Level 20
  (741, 74103, 297, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Sensu) - Acrobatics - Level 23
  (741, 74103, 512, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Sensu) - Teeter Dance - Level 26
  (741, 74103, 298, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Sensu) - Roost - Level 30
  (741, 74103, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Sensu) - Flatter - Level 33
  (741, 74103, 260, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Sensu) - Air Slash - Level 36
  (741, 74103, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Sensu) - Revelation Dance - Level 40
  (741, 74103, 686, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Sensu) - Agility - Level 43
  (741, 74103, 97, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Sensu) - Hurricane - Level 47
  (741, 74103, 542, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Oricorio (Sensu) - Take Down - TM001
  (741, 74103, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Oricorio (Sensu) - Charm - TM002
  (741, 74103, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Oricorio (Sensu) - Agility - TM004
  (741, 74103, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Oricorio (Sensu) - Protect - TM007
  (741, 74103, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Oricorio (Sensu) - Acrobatics - TM014
  (741, 74103, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Oricorio (Sensu) - Trailblaze - TM020
  (741, 74103, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Oricorio (Sensu) - Facade - TM025
  (741, 74103, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Oricorio (Sensu) - Aerial Ace - TM027
  (741, 74103, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Oricorio (Sensu) - Swift - TM032
  (741, 74103, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Oricorio (Sensu) - Icy Wind - TM034
  (741, 74103, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Oricorio (Sensu) - Air Cutter - TM040
  (741, 74103, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Oricorio (Sensu) - Endure - TM047
  (741, 74103, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oricorio (Sensu) - Sunny Day - TM049
  (741, 74103, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Oricorio (Sensu) - Rain Dance - TM050
  (741, 74103, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Oricorio (Sensu) - Sandstorm - TM051
  (741, 74103, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Oricorio (Sensu) - U-turn - TM060
  (741, 74103, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Oricorio (Sensu) - Air Slash - TM065
  (741, 74103, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Oricorio (Sensu) - Sleep Talk - TM070
  (741, 74103, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Oricorio (Sensu) - Rest - TM085
  (741, 74103, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Oricorio (Sensu) - Taunt - TM087
  (741, 74103, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Oricorio (Sensu) - Swords Dance - TM088
  (741, 74103, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Oricorio (Sensu) - Fly - TM097
  (741, 74103, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Oricorio (Sensu) - Substitute - TM103
  (741, 74103, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Oricorio (Sensu) - Tailwind - TM113
  (741, 74103, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Oricorio (Sensu) - Calm Mind - TM129
  (741, 74103, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Oricorio (Sensu) - Helping Hand - TM130
  (741, 74103, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Oricorio (Sensu) - Baton Pass - TM132
  (741, 74103, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Oricorio (Sensu) - Reversal - TM134
  (741, 74103, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Oricorio (Sensu) - Hurricane - TM160
  (741, 74103, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Oricorio (Sensu) - Tera Blast - TM171
  (741, 74103, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Oricorio (Sensu) - Attract - Egg
  (741, 74103, 213, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Sensu) - Safeguard - Egg
  (741, 74103, 219, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Sensu) - Pluck - Egg
  (741, 74103, 365, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oricorio (Sensu) - Defog - Egg
  (741, 74103, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oricorio (Sensu) - Quiver Dance - Egg
  (741, 74103, 483, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cutiefly - Absorb - Level 1
  (742, 74200, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cutiefly - Fairy Wind - Level 1
  (742, 74200, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cutiefly - Stun Spore - Level 6
  (742, 74200, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cutiefly - Sweet Scent - Level 12
  (742, 74200, 230, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cutiefly - Draining Kiss - Level 18
  (742, 74200, 577, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cutiefly - Struggle Bug - Level 24
  (742, 74200, 522, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Cutiefly - Covet - Level 30
  (742, 74200, 343, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Cutiefly - Switcheroo - Level 36
  (742, 74200, 415, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cutiefly - Dazzling Gleam - Level 42
  (742, 74200, 605, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cutiefly - Bug Buzz - Level 48
  (742, 74200, 405, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cutiefly - Quiver Dance - Level 54
  (742, 74200, 483, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Cutiefly - Charm - TM002
  (742, 74200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 12),
  -- Cutiefly - Fake Tears - TM003
  (742, 74200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 13),
  -- Cutiefly - Protect - TM007
  (742, 74200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Cutiefly - Acrobatics - TM014
  (742, 74200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 15),
  -- Cutiefly - Struggle Bug - TM015
  (742, 74200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 16),
  -- Cutiefly - Thief - TM018
  (742, 74200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Cutiefly - Trailblaze - TM020
  (742, 74200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Cutiefly - Pounce - TM021
  (742, 74200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Cutiefly - Facade - TM025
  (742, 74200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Cutiefly - Swift - TM032
  (742, 74200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Cutiefly - Magical Leaf - TM033
  (742, 74200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Cutiefly - Draining Kiss - TM037
  (742, 74200, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Cutiefly - Endure - TM047
  (742, 74200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Cutiefly - Sunny Day - TM049
  (742, 74200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Cutiefly - U-turn - TM060
  (742, 74200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Cutiefly - Sleep Talk - TM070
  (742, 74200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Cutiefly - Reflect - TM074
  (742, 74200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Cutiefly - Light Screen - TM075
  (742, 74200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Cutiefly - Dazzling Gleam - TM079
  (742, 74200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Cutiefly - Grass Knot - TM081
  (742, 74200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Cutiefly - Rest - TM085
  (742, 74200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Cutiefly - Imprison - TM092
  (742, 74200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 33),
  -- Cutiefly - Leech Life - TM095
  (742, 74200, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 34),
  -- Cutiefly - Skill Swap - TM098
  (742, 74200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 35),
  -- Cutiefly - Substitute - TM103
  (742, 74200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Cutiefly - Trick - TM109
  (742, 74200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 37),
  -- Cutiefly - Tailwind - TM113
  (742, 74200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 38),
  -- Cutiefly - Energy Ball - TM119
  (742, 74200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 39),
  -- Cutiefly - Psychic - TM120
  (742, 74200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Cutiefly - Play Rough - TM127
  (742, 74200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Cutiefly - Calm Mind - TM129
  (742, 74200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 42),
  -- Cutiefly - Helping Hand - TM130
  (742, 74200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Cutiefly - Pollen Puff - TM131
  (742, 74200, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 44),
  -- Cutiefly - Baton Pass - TM132
  (742, 74200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Cutiefly - Bug Buzz - TM162
  (742, 74200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 46),
  -- Cutiefly - Tera Blast - TM171
  (742, 74200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Cutiefly - Sticky Web - Egg
  (742, 74200, 564, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cutiefly - Moonblast - Egg
  (742, 74200, 585, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cutiefly - Aromatic Mist - Egg
  (742, 74200, 597, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ribombee - Absorb - Level 1
  (743, 74300, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ribombee - Stun Spore - Level 1
  (743, 74300, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ribombee - Sweet Scent - Level 1
  (743, 74300, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ribombee - Fairy Wind - Level 1
  (743, 74300, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ribombee - Draining Kiss - Level 18
  (743, 74300, 577, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Ribombee - Struggle Bug - Level 24
  (743, 74300, 522, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Ribombee - Covet - Level 32
  (743, 74300, 343, 23, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Ribombee - Switcheroo - Level 40
  (743, 74300, 415, 23, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Ribombee - Dazzling Gleam - Level 48
  (743, 74300, 605, 23, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Ribombee - Bug Buzz - Level 56
  (743, 74300, 405, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Ribombee - Quiver Dance - Level 64
  (743, 74300, 483, 23, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Ribombee - Take Down - TM001
  (743, 74300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Ribombee - Charm - TM002
  (743, 74300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Ribombee - Fake Tears - TM003
  (743, 74300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 14),
  -- Ribombee - Agility - TM004
  (743, 74300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Ribombee - Protect - TM007
  (743, 74300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Ribombee - Acrobatics - TM014
  (743, 74300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Ribombee - Struggle Bug - TM015
  (743, 74300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Ribombee - Thief - TM018
  (743, 74300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Ribombee - Trailblaze - TM020
  (743, 74300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Ribombee - Pounce - TM021
  (743, 74300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Ribombee - Facade - TM025
  (743, 74300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Ribombee - Swift - TM032
  (743, 74300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Ribombee - Magical Leaf - TM033
  (743, 74300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Ribombee - Draining Kiss - TM037
  (743, 74300, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Ribombee - Stored Power - TM041
  (743, 74300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Ribombee - Endure - TM047
  (743, 74300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Ribombee - Sunny Day - TM049
  (743, 74300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Ribombee - U-turn - TM060
  (743, 74300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Ribombee - Sleep Talk - TM070
  (743, 74300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Ribombee - Reflect - TM074
  (743, 74300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Ribombee - Light Screen - TM075
  (743, 74300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Ribombee - Dazzling Gleam - TM079
  (743, 74300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Ribombee - Grass Knot - TM081
  (743, 74300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Ribombee - Rest - TM085
  (743, 74300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Ribombee - Imprison - TM092
  (743, 74300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Ribombee - Leech Life - TM095
  (743, 74300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 37),
  -- Ribombee - Skill Swap - TM098
  (743, 74300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Ribombee - Substitute - TM103
  (743, 74300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Ribombee - Trick - TM109
  (743, 74300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 40),
  -- Ribombee - Tailwind - TM113
  (743, 74300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Ribombee - Energy Ball - TM119
  (743, 74300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Ribombee - Psychic - TM120
  (743, 74300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Ribombee - Play Rough - TM127
  (743, 74300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Ribombee - Calm Mind - TM129
  (743, 74300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Ribombee - Helping Hand - TM130
  (743, 74300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Ribombee - Pollen Puff - TM131
  (743, 74300, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 47),
  -- Ribombee - Baton Pass - TM132
  (743, 74300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 48),
  -- Ribombee - Giga Impact - TM152
  (743, 74300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Ribombee - Bug Buzz - TM162
  (743, 74300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 50),
  -- Ribombee - Hyper Beam - TM163
  (743, 74300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Ribombee - Solar Beam - TM168
  (743, 74300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Ribombee - Tera Blast - TM171
  (743, 74300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Ribombee - Sticky Web - Egg
  (743, 74300, 564, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ribombee - Moonblast - Egg
  (743, 74300, 585, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ribombee - Aromatic Mist - Egg
  (743, 74300, 597, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ribombee - Pollen Puff - Evolution
  (743, 74300, 676, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Rockruff - Tackle - Level 1
  (744, 74400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rockruff - Leer - Level 1
  (744, 74400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rockruff - Sand Attack - Level 4
  (744, 74400, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rockruff - Double Team - Level 8
  (744, 74400, 104, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rockruff - Rock Throw - Level 12
  (744, 74400, 88, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rockruff - Howl - Level 16
  (744, 74400, 336, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Rockruff - Bite - Level 20
  (744, 74400, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rockruff - Rock Tomb - Level 24
  (744, 74400, 317, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Rockruff - Roar - Level 28
  (744, 74400, 46, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Rockruff - Rock Slide - Level 32
  (744, 74400, 157, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Rockruff - Crunch - Level 36
  (744, 74400, 242, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Rockruff - Scary Face - Level 40
  (744, 74400, 184, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rockruff - Stealth Rock - Level 44
  (744, 74400, 446, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Rockruff - Stone Edge - Level 48
  (744, 74400, 444, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Rockruff - Take Down - TM001
  (744, 74400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Rockruff - Charm - TM002
  (744, 74400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Rockruff - Mud-Slap - TM005
  (744, 74400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Rockruff - Scary Face - TM006
  (744, 74400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Rockruff - Protect - TM007
  (744, 74400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Rockruff - Fire Fang - TM008
  (744, 74400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Rockruff - Thunder Fang - TM009
  (744, 74400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Rockruff - Trailblaze - TM020
  (744, 74400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Rockruff - Facade - TM025
  (744, 74400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Rockruff - Bulldoze - TM028
  (744, 74400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Rockruff - Snarl - TM030
  (744, 74400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Rockruff - Rock Tomb - TM036
  (744, 74400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Rockruff - Endure - TM047
  (744, 74400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Rockruff - Sandstorm - TM051
  (744, 74400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Rockruff - Dig - TM055
  (744, 74400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Rockruff - Zen Headbutt - TM059
  (744, 74400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Rockruff - Psychic Fangs - TM063
  (744, 74400, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 31),
  -- Rockruff - Body Slam - TM066
  (744, 74400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Rockruff - Sleep Talk - TM070
  (744, 74400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Rockruff - Stomping Tantrum - TM084
  (744, 74400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Rockruff - Rest - TM085
  (744, 74400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Rockruff - Rock Slide - TM086
  (744, 74400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Rockruff - Taunt - TM087
  (744, 74400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Rockruff - Swords Dance - TM088
  (744, 74400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Rockruff - Iron Head - TM099
  (744, 74400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Rockruff - Substitute - TM103
  (744, 74400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Rockruff - Iron Defense - TM104
  (744, 74400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Rockruff - Crunch - TM108
  (744, 74400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Rockruff - Stealth Rock - TM116
  (744, 74400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 43),
  -- Rockruff - Hyper Voice - TM117
  (744, 74400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Rockruff - Play Rough - TM127
  (744, 74400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Rockruff - Helping Hand - TM130
  (744, 74400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Rockruff - Earth Power - TM133
  (744, 74400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Rockruff - Stone Edge - TM150
  (744, 74400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Rockruff - Tera Blast - TM171
  (744, 74400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Rockruff - Thrash - Egg
  (744, 74400, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rockruff - Endeavor - Egg
  (744, 74400, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rockruff - Last Resort - Egg
  (744, 74400, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rockruff - Sucker Punch - Egg
  (744, 74400, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lycanroc - Sand Attack - Level 1
  (745, 74500, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc - Tackle - Level 1
  (745, 74500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc - Leer - Level 1
  (745, 74500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc - Counter - Level 1
  (745, 74500, 68, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc - Quick Attack - Level 1
  (745, 74500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc - Double Team - Level 1
  (745, 74500, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc - Reversal - Level 1
  (745, 74500, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc - Endure - Level 1
  (745, 74500, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc - Taunt - Level 1
  (745, 74500, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lycanroc - Sucker Punch - Level 1
  (745, 74500, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lycanroc - Quick Guard - Level 1
  (745, 74500, 501, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lycanroc - Accelerock - Level 1
  (745, 74500, 709, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lycanroc - Rock Throw - Level 12
  (745, 74500, 88, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Lycanroc - Howl - Level 16
  (745, 74500, 336, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Lycanroc - Bite - Level 20
  (745, 74500, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Lycanroc - Rock Tomb - Level 24
  (745, 74500, 317, 23, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Lycanroc - Roar - Level 30
  (745, 74500, 46, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Lycanroc - Rock Slide - Level 36
  (745, 74500, 157, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Lycanroc - Crunch - Level 42
  (745, 74500, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Lycanroc - Scary Face - Level 48
  (745, 74500, 184, 23, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Lycanroc - Stealth Rock - Level 54
  (745, 74500, 446, 23, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Lycanroc - Stone Edge - Level 60
  (745, 74500, 444, 23, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Lycanroc - Take Down - TM001
  (745, 74500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Lycanroc - Charm - TM002
  (745, 74500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Lycanroc - Agility - TM004
  (745, 74500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 25),
  -- Lycanroc - Mud-Slap - TM005
  (745, 74500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Lycanroc - Scary Face - TM006
  (745, 74500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 27),
  -- Lycanroc - Protect - TM007
  (745, 74500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Lycanroc - Fire Fang - TM008
  (745, 74500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 29),
  -- Lycanroc - Thunder Fang - TM009
  (745, 74500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 30),
  -- Lycanroc - Trailblaze - TM020
  (745, 74500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Lycanroc - Facade - TM025
  (745, 74500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Lycanroc - Bulldoze - TM028
  (745, 74500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Lycanroc - Snarl - TM030
  (745, 74500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Lycanroc - Swift - TM032
  (745, 74500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 35),
  -- Lycanroc - Rock Tomb - TM036
  (745, 74500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 36),
  -- Lycanroc - Low Sweep - TM039
  (745, 74500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 37),
  -- Lycanroc - Fling - TM043
  (745, 74500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Lycanroc - Endure - TM047
  (745, 74500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Lycanroc - Sunny Day - TM049
  (745, 74500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Lycanroc - Sandstorm - TM051
  (745, 74500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 41),
  -- Lycanroc - Dig - TM055
  (745, 74500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Lycanroc - Brick Break - TM058
  (745, 74500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Lycanroc - Zen Headbutt - TM059
  (745, 74500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Lycanroc - Shadow Claw - TM061
  (745, 74500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 45),
  -- Lycanroc - Foul Play - TM062
  (745, 74500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 46),
  -- Lycanroc - Psychic Fangs - TM063
  (745, 74500, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 47),
  -- Lycanroc - Bulk Up - TM064
  (745, 74500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 48),
  -- Lycanroc - Body Slam - TM066
  (745, 74500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Lycanroc - Fire Punch - TM067
  (745, 74500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 50),
  -- Lycanroc - Thunder Punch - TM068
  (745, 74500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 51),
  -- Lycanroc - Sleep Talk - TM070
  (745, 74500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 52),
  -- Lycanroc - Rock Blast - TM076
  (745, 74500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 53),
  -- Lycanroc - Stomping Tantrum - TM084
  (745, 74500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Lycanroc - Rest - TM085
  (745, 74500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Lycanroc - Rock Slide - TM086
  (745, 74500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Lycanroc - Taunt - TM087
  (745, 74500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 57),
  -- Lycanroc - Swords Dance - TM088
  (745, 74500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 58),
  -- Lycanroc - Iron Head - TM099
  (745, 74500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 59),
  -- Lycanroc - Substitute - TM103
  (745, 74500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Lycanroc - Iron Defense - TM104
  (745, 74500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Lycanroc - Drill Run - TM106
  (745, 74500, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 62),
  -- Lycanroc - Crunch - TM108
  (745, 74500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 63),
  -- Lycanroc - Stealth Rock - TM116
  (745, 74500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 64),
  -- Lycanroc - Hyper Voice - TM117
  (745, 74500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 65),
  -- Lycanroc - Play Rough - TM127
  (745, 74500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 66),
  -- Lycanroc - Helping Hand - TM130
  (745, 74500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Lycanroc - Earth Power - TM133
  (745, 74500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 68),
  -- Lycanroc - Reversal - TM134
  (745, 74500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 69),
  -- Lycanroc - Stone Edge - TM150
  (745, 74500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 70),
  -- Lycanroc - Giga Impact - TM152
  (745, 74500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Lycanroc - Outrage - TM156
  (745, 74500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 72),
  -- Lycanroc - Close Combat - TM167
  (745, 74500, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 73),
  -- Lycanroc - Tera Blast - TM171
  (745, 74500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Lycanroc - Thrash - Egg
  (745, 74500, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Lycanroc - Endeavor - Egg
  (745, 74500, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Lycanroc - Last Resort - Egg
  (745, 74500, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Lycanroc - Sucker Punch - Egg
  (745, 74500, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Lycanroc - Counter - Evolution
  (745, 74500, 68, 23, NULL, 7, NULL, NULL, NULL, NULL, 79),
  -- Lycanroc - Crush Claw - Evolution
  (745, 74500, 306, 23, NULL, 7, NULL, NULL, NULL, NULL, 80),
  -- Lycanroc - Sucker Punch - Evolution
  (745, 74500, 389, 23, NULL, 7, NULL, NULL, NULL, NULL, 81),
  -- Lycanroc (Midnight) - Sand Attack - Level 1
  (745, 74501, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc (Midnight) - Tackle - Level 1
  (745, 74501, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc (Midnight) - Leer - Level 1
  (745, 74501, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc (Midnight) - Counter - Level 1
  (745, 74501, 68, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc (Midnight) - Quick Attack - Level 1
  (745, 74501, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc (Midnight) - Double Team - Level 1
  (745, 74501, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc (Midnight) - Reversal - Level 1
  (745, 74501, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc (Midnight) - Endure - Level 1
  (745, 74501, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc (Midnight) - Taunt - Level 1
  (745, 74501, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lycanroc (Midnight) - Sucker Punch - Level 1
  (745, 74501, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lycanroc (Midnight) - Quick Guard - Level 1
  (745, 74501, 501, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lycanroc (Midnight) - Accelerock - Level 1
  (745, 74501, 709, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lycanroc (Midnight) - Rock Throw - Level 12
  (745, 74501, 88, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Lycanroc (Midnight) - Howl - Level 16
  (745, 74501, 336, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Lycanroc (Midnight) - Bite - Level 20
  (745, 74501, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Lycanroc (Midnight) - Rock Tomb - Level 24
  (745, 74501, 317, 23, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Lycanroc (Midnight) - Roar - Level 30
  (745, 74501, 46, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Lycanroc (Midnight) - Rock Slide - Level 36
  (745, 74501, 157, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Lycanroc (Midnight) - Crunch - Level 42
  (745, 74501, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Lycanroc (Midnight) - Scary Face - Level 48
  (745, 74501, 184, 23, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Lycanroc (Midnight) - Stealth Rock - Level 54
  (745, 74501, 446, 23, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Lycanroc (Midnight) - Stone Edge - Level 60
  (745, 74501, 444, 23, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Lycanroc (Midnight) - Take Down - TM001
  (745, 74501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Lycanroc (Midnight) - Charm - TM002
  (745, 74501, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Lycanroc (Midnight) - Agility - TM004
  (745, 74501, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 25),
  -- Lycanroc (Midnight) - Mud-Slap - TM005
  (745, 74501, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Lycanroc (Midnight) - Scary Face - TM006
  (745, 74501, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 27),
  -- Lycanroc (Midnight) - Protect - TM007
  (745, 74501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Lycanroc (Midnight) - Fire Fang - TM008
  (745, 74501, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 29),
  -- Lycanroc (Midnight) - Thunder Fang - TM009
  (745, 74501, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 30),
  -- Lycanroc (Midnight) - Trailblaze - TM020
  (745, 74501, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Lycanroc (Midnight) - Facade - TM025
  (745, 74501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Lycanroc (Midnight) - Bulldoze - TM028
  (745, 74501, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Lycanroc (Midnight) - Snarl - TM030
  (745, 74501, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Lycanroc (Midnight) - Swift - TM032
  (745, 74501, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 35),
  -- Lycanroc (Midnight) - Rock Tomb - TM036
  (745, 74501, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 36),
  -- Lycanroc (Midnight) - Low Sweep - TM039
  (745, 74501, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 37),
  -- Lycanroc (Midnight) - Fling - TM043
  (745, 74501, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Lycanroc (Midnight) - Endure - TM047
  (745, 74501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Lycanroc (Midnight) - Sunny Day - TM049
  (745, 74501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Lycanroc (Midnight) - Sandstorm - TM051
  (745, 74501, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 41),
  -- Lycanroc (Midnight) - Dig - TM055
  (745, 74501, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Lycanroc (Midnight) - Brick Break - TM058
  (745, 74501, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Lycanroc (Midnight) - Zen Headbutt - TM059
  (745, 74501, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Lycanroc (Midnight) - Shadow Claw - TM061
  (745, 74501, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 45),
  -- Lycanroc (Midnight) - Foul Play - TM062
  (745, 74501, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 46),
  -- Lycanroc (Midnight) - Psychic Fangs - TM063
  (745, 74501, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 47),
  -- Lycanroc (Midnight) - Bulk Up - TM064
  (745, 74501, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 48),
  -- Lycanroc (Midnight) - Body Slam - TM066
  (745, 74501, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Lycanroc (Midnight) - Fire Punch - TM067
  (745, 74501, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 50),
  -- Lycanroc (Midnight) - Thunder Punch - TM068
  (745, 74501, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 51),
  -- Lycanroc (Midnight) - Sleep Talk - TM070
  (745, 74501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 52),
  -- Lycanroc (Midnight) - Rock Blast - TM076
  (745, 74501, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 53),
  -- Lycanroc (Midnight) - Stomping Tantrum - TM084
  (745, 74501, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Lycanroc (Midnight) - Rest - TM085
  (745, 74501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Lycanroc (Midnight) - Rock Slide - TM086
  (745, 74501, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Lycanroc (Midnight) - Taunt - TM087
  (745, 74501, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 57),
  -- Lycanroc (Midnight) - Swords Dance - TM088
  (745, 74501, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 58),
  -- Lycanroc (Midnight) - Iron Head - TM099
  (745, 74501, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 59),
  -- Lycanroc (Midnight) - Substitute - TM103
  (745, 74501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Lycanroc (Midnight) - Iron Defense - TM104
  (745, 74501, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Lycanroc (Midnight) - Drill Run - TM106
  (745, 74501, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 62),
  -- Lycanroc (Midnight) - Crunch - TM108
  (745, 74501, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 63),
  -- Lycanroc (Midnight) - Stealth Rock - TM116
  (745, 74501, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 64),
  -- Lycanroc (Midnight) - Hyper Voice - TM117
  (745, 74501, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 65),
  -- Lycanroc (Midnight) - Play Rough - TM127
  (745, 74501, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 66),
  -- Lycanroc (Midnight) - Helping Hand - TM130
  (745, 74501, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Lycanroc (Midnight) - Earth Power - TM133
  (745, 74501, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 68),
  -- Lycanroc (Midnight) - Reversal - TM134
  (745, 74501, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 69),
  -- Lycanroc (Midnight) - Stone Edge - TM150
  (745, 74501, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 70),
  -- Lycanroc (Midnight) - Giga Impact - TM152
  (745, 74501, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Lycanroc (Midnight) - Outrage - TM156
  (745, 74501, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 72),
  -- Lycanroc (Midnight) - Close Combat - TM167
  (745, 74501, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 73),
  -- Lycanroc (Midnight) - Tera Blast - TM171
  (745, 74501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Lycanroc (Midnight) - Thrash - Egg
  (745, 74501, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Lycanroc (Midnight) - Endeavor - Egg
  (745, 74501, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Lycanroc (Midnight) - Last Resort - Egg
  (745, 74501, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Lycanroc (Midnight) - Sucker Punch - Egg
  (745, 74501, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Lycanroc (Midnight) - Counter - Evolution
  (745, 74501, 68, 23, NULL, 7, NULL, NULL, NULL, NULL, 79),
  -- Lycanroc (Midnight) - Crush Claw - Evolution
  (745, 74501, 306, 23, NULL, 7, NULL, NULL, NULL, NULL, 80),
  -- Lycanroc (Midnight) - Sucker Punch - Evolution
  (745, 74501, 389, 23, NULL, 7, NULL, NULL, NULL, NULL, 81),
  -- Lycanroc (Dusk) - Sand Attack - Level 1
  (745, 74502, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc (Dusk) - Tackle - Level 1
  (745, 74502, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc (Dusk) - Leer - Level 1
  (745, 74502, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc (Dusk) - Counter - Level 1
  (745, 74502, 68, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc (Dusk) - Quick Attack - Level 1
  (745, 74502, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc (Dusk) - Double Team - Level 1
  (745, 74502, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc (Dusk) - Reversal - Level 1
  (745, 74502, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc (Dusk) - Endure - Level 1
  (745, 74502, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc (Dusk) - Taunt - Level 1
  (745, 74502, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lycanroc (Dusk) - Sucker Punch - Level 1
  (745, 74502, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lycanroc (Dusk) - Quick Guard - Level 1
  (745, 74502, 501, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lycanroc (Dusk) - Accelerock - Level 1
  (745, 74502, 709, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lycanroc (Dusk) - Rock Throw - Level 12
  (745, 74502, 88, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Lycanroc (Dusk) - Howl - Level 16
  (745, 74502, 336, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Lycanroc (Dusk) - Bite - Level 20
  (745, 74502, 44, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Lycanroc (Dusk) - Rock Tomb - Level 24
  (745, 74502, 317, 23, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Lycanroc (Dusk) - Roar - Level 30
  (745, 74502, 46, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Lycanroc (Dusk) - Rock Slide - Level 36
  (745, 74502, 157, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Lycanroc (Dusk) - Crunch - Level 42
  (745, 74502, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Lycanroc (Dusk) - Scary Face - Level 48
  (745, 74502, 184, 23, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Lycanroc (Dusk) - Stealth Rock - Level 54
  (745, 74502, 446, 23, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Lycanroc (Dusk) - Stone Edge - Level 60
  (745, 74502, 444, 23, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Lycanroc (Dusk) - Take Down - TM001
  (745, 74502, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Lycanroc (Dusk) - Charm - TM002
  (745, 74502, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Lycanroc (Dusk) - Agility - TM004
  (745, 74502, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 25),
  -- Lycanroc (Dusk) - Mud-Slap - TM005
  (745, 74502, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Lycanroc (Dusk) - Scary Face - TM006
  (745, 74502, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 27),
  -- Lycanroc (Dusk) - Protect - TM007
  (745, 74502, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Lycanroc (Dusk) - Fire Fang - TM008
  (745, 74502, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 29),
  -- Lycanroc (Dusk) - Thunder Fang - TM009
  (745, 74502, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 30),
  -- Lycanroc (Dusk) - Trailblaze - TM020
  (745, 74502, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Lycanroc (Dusk) - Facade - TM025
  (745, 74502, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Lycanroc (Dusk) - Bulldoze - TM028
  (745, 74502, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Lycanroc (Dusk) - Snarl - TM030
  (745, 74502, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Lycanroc (Dusk) - Swift - TM032
  (745, 74502, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 35),
  -- Lycanroc (Dusk) - Rock Tomb - TM036
  (745, 74502, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 36),
  -- Lycanroc (Dusk) - Low Sweep - TM039
  (745, 74502, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 37),
  -- Lycanroc (Dusk) - Fling - TM043
  (745, 74502, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Lycanroc (Dusk) - Endure - TM047
  (745, 74502, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Lycanroc (Dusk) - Sunny Day - TM049
  (745, 74502, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Lycanroc (Dusk) - Sandstorm - TM051
  (745, 74502, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 41),
  -- Lycanroc (Dusk) - Dig - TM055
  (745, 74502, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Lycanroc (Dusk) - Brick Break - TM058
  (745, 74502, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Lycanroc (Dusk) - Zen Headbutt - TM059
  (745, 74502, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Lycanroc (Dusk) - Shadow Claw - TM061
  (745, 74502, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 45),
  -- Lycanroc (Dusk) - Foul Play - TM062
  (745, 74502, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 46),
  -- Lycanroc (Dusk) - Psychic Fangs - TM063
  (745, 74502, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 47),
  -- Lycanroc (Dusk) - Bulk Up - TM064
  (745, 74502, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 48),
  -- Lycanroc (Dusk) - Body Slam - TM066
  (745, 74502, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Lycanroc (Dusk) - Fire Punch - TM067
  (745, 74502, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 50),
  -- Lycanroc (Dusk) - Thunder Punch - TM068
  (745, 74502, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 51),
  -- Lycanroc (Dusk) - Sleep Talk - TM070
  (745, 74502, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 52),
  -- Lycanroc (Dusk) - Rock Blast - TM076
  (745, 74502, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 53),
  -- Lycanroc (Dusk) - Stomping Tantrum - TM084
  (745, 74502, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Lycanroc (Dusk) - Rest - TM085
  (745, 74502, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Lycanroc (Dusk) - Rock Slide - TM086
  (745, 74502, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Lycanroc (Dusk) - Taunt - TM087
  (745, 74502, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 57),
  -- Lycanroc (Dusk) - Swords Dance - TM088
  (745, 74502, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 58),
  -- Lycanroc (Dusk) - Iron Head - TM099
  (745, 74502, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 59),
  -- Lycanroc (Dusk) - Substitute - TM103
  (745, 74502, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Lycanroc (Dusk) - Iron Defense - TM104
  (745, 74502, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Lycanroc (Dusk) - Drill Run - TM106
  (745, 74502, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 62),
  -- Lycanroc (Dusk) - Crunch - TM108
  (745, 74502, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 63),
  -- Lycanroc (Dusk) - Stealth Rock - TM116
  (745, 74502, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 64),
  -- Lycanroc (Dusk) - Hyper Voice - TM117
  (745, 74502, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 65),
  -- Lycanroc (Dusk) - Play Rough - TM127
  (745, 74502, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 66),
  -- Lycanroc (Dusk) - Helping Hand - TM130
  (745, 74502, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Lycanroc (Dusk) - Earth Power - TM133
  (745, 74502, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 68),
  -- Lycanroc (Dusk) - Reversal - TM134
  (745, 74502, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 69),
  -- Lycanroc (Dusk) - Stone Edge - TM150
  (745, 74502, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 70),
  -- Lycanroc (Dusk) - Giga Impact - TM152
  (745, 74502, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Lycanroc (Dusk) - Outrage - TM156
  (745, 74502, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 72),
  -- Lycanroc (Dusk) - Close Combat - TM167
  (745, 74502, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 73),
  -- Lycanroc (Dusk) - Tera Blast - TM171
  (745, 74502, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Lycanroc (Dusk) - Thrash - Egg
  (745, 74502, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Lycanroc (Dusk) - Endeavor - Egg
  (745, 74502, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Lycanroc (Dusk) - Last Resort - Egg
  (745, 74502, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Lycanroc (Dusk) - Sucker Punch - Egg
  (745, 74502, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Lycanroc (Dusk) - Counter - Evolution
  (745, 74502, 68, 23, NULL, 7, NULL, NULL, NULL, NULL, 79),
  -- Lycanroc (Dusk) - Crush Claw - Evolution
  (745, 74502, 306, 23, NULL, 7, NULL, NULL, NULL, NULL, 80),
  -- Lycanroc (Dusk) - Sucker Punch - Evolution
  (745, 74502, 389, 23, NULL, 7, NULL, NULL, NULL, NULL, 81),
  -- Mareanie - Poison Sting - Level 1
  (747, 74700, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareanie - Peck - Level 1
  (747, 74700, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareanie - Wide Guard - Level 5
  (747, 74700, 469, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mareanie - Bite - Level 10
  (747, 74700, 44, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mareanie - Venoshock - Level 15
  (747, 74700, 474, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mareanie - Recover - Level 20
  (747, 74700, 105, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Mareanie - Pin Missile - Level 25
  (747, 74700, 42, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mareanie - Toxic Spikes - Level 30
  (747, 74700, 390, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Mareanie - Liquidation - Level 35
  (747, 74700, 710, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mareanie - Acid Spray - Level 40
  (747, 74700, 491, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mareanie - Poison Jab - Level 45
  (747, 74700, 398, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Mareanie - Toxic - Level 50
  (747, 74700, 92, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Mareanie - Protect - TM007
  (747, 74700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Mareanie - Water Pulse - TM011
  (747, 74700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 14),
  -- Mareanie - Acid Spray - TM013
  (747, 74700, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 15),
  -- Mareanie - Pounce - TM021
  (747, 74700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 16),
  -- Mareanie - Chilling Water - TM022
  (747, 74700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Mareanie - Facade - TM025
  (747, 74700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Mareanie - Icy Wind - TM034
  (747, 74700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Mareanie - Mud Shot - TM035
  (747, 74700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Mareanie - Venoshock - TM045
  (747, 74700, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 21),
  -- Mareanie - Endure - TM047
  (747, 74700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Mareanie - Rain Dance - TM050
  (747, 74700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Mareanie - Sleep Talk - TM070
  (747, 74700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Mareanie - Poison Jab - TM083
  (747, 74700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 25),
  -- Mareanie - Rest - TM085
  (747, 74700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Mareanie - Toxic Spikes - TM091
  (747, 74700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 27),
  -- Mareanie - Gunk Shot - TM102
  (747, 74700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 28),
  -- Mareanie - Substitute - TM103
  (747, 74700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Mareanie - Iron Defense - TM104
  (747, 74700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 30),
  -- Mareanie - Liquidation - TM110
  (747, 74700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 31),
  -- Mareanie - Surf - TM123
  (747, 74700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 32),
  -- Mareanie - Ice Spinner - TM124
  (747, 74700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 33),
  -- Mareanie - Ice Beam - TM135
  (747, 74700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 34),
  -- Mareanie - Hydro Pump - TM142
  (747, 74700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 35),
  -- Mareanie - Blizzard - TM143
  (747, 74700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 36),
  -- Mareanie - Sludge Bomb - TM148
  (747, 74700, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 37),
  -- Mareanie - Tera Blast - TM171
  (747, 74700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Mareanie - Haze - Egg
  (747, 74700, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mareanie - Stockpile - Egg
  (747, 74700, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mareanie - Spit Up - Egg
  (747, 74700, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mareanie - Swallow - Egg
  (747, 74700, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareanie - Infestation - Egg
  (747, 74700, 611, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Toxapex - Poison Sting - Level 1
  (748, 74800, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxapex - Bite - Level 1
  (748, 74800, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxapex - Peck - Level 1
  (748, 74800, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxapex - Wide Guard - Level 1
  (748, 74800, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxapex - Venoshock - Level 15
  (748, 74800, 474, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Toxapex - Recover - Level 20
  (748, 74800, 105, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Toxapex - Pin Missile - Level 25
  (748, 74800, 42, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Toxapex - Toxic Spikes - Level 30
  (748, 74800, 390, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Toxapex - Liquidation - Level 35
  (748, 74800, 710, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Toxapex - Acid Spray - Level 42
  (748, 74800, 491, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Toxapex - Poison Jab - Level 49
  (748, 74800, 398, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Toxapex - Toxic - Level 56
  (748, 74800, 92, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Toxapex - Scary Face - TM006
  (748, 74800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 13),
  -- Toxapex - Protect - TM007
  (748, 74800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Toxapex - Water Pulse - TM011
  (748, 74800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Toxapex - Acid Spray - TM013
  (748, 74800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Toxapex - Pounce - TM021
  (748, 74800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 17),
  -- Toxapex - Chilling Water - TM022
  (748, 74800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Toxapex - Facade - TM025
  (748, 74800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Toxapex - Hex - TM029
  (748, 74800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 20),
  -- Toxapex - Icy Wind - TM034
  (748, 74800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Toxapex - Mud Shot - TM035
  (748, 74800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Toxapex - Venoshock - TM045
  (748, 74800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Toxapex - Endure - TM047
  (748, 74800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Toxapex - Rain Dance - TM050
  (748, 74800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Toxapex - Body Slam - TM066
  (748, 74800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Toxapex - Sleep Talk - TM070
  (748, 74800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Toxapex - Poison Jab - TM083
  (748, 74800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 28),
  -- Toxapex - Rest - TM085
  (748, 74800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Toxapex - Toxic Spikes - TM091
  (748, 74800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 30),
  -- Toxapex - Gunk Shot - TM102
  (748, 74800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 31),
  -- Toxapex - Substitute - TM103
  (748, 74800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Toxapex - Iron Defense - TM104
  (748, 74800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Toxapex - Liquidation - TM110
  (748, 74800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Toxapex - Surf - TM123
  (748, 74800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Toxapex - Ice Spinner - TM124
  (748, 74800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Toxapex - Ice Beam - TM135
  (748, 74800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Toxapex - Hydro Pump - TM142
  (748, 74800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 38),
  -- Toxapex - Blizzard - TM143
  (748, 74800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 39),
  -- Toxapex - Sludge Bomb - TM148
  (748, 74800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Toxapex - Giga Impact - TM152
  (748, 74800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Toxapex - Hyper Beam - TM163
  (748, 74800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Toxapex - Tera Blast - TM171
  (748, 74800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Toxapex - Haze - Egg
  (748, 74800, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Toxapex - Stockpile - Egg
  (748, 74800, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Toxapex - Spit Up - Egg
  (748, 74800, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Toxapex - Swallow - Egg
  (748, 74800, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Toxapex - Infestation - Egg
  (748, 74800, 611, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Toxapex - Baneful Bunker - Evolution
  (748, 74800, 661, 23, NULL, 7, NULL, NULL, NULL, NULL, 49),
  -- Mudbray - Mud-Slap - Level 1
  (749, 74900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudbray - Rock Smash - Level 1
  (749, 74900, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudbray - Iron Defense - Level 4
  (749, 74900, 334, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mudbray - Double Kick - Level 8
  (749, 74900, 24, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mudbray - Bulldoze - Level 12
  (749, 74900, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mudbray - Stomp - Level 16
  (749, 74900, 23, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mudbray - Strength - Level 20
  (749, 74900, 70, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mudbray - Counter - Level 24
  (749, 74900, 68, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mudbray - High Horsepower - Level 28
  (749, 74900, 667, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mudbray - Heavy Slam - Level 32
  (749, 74900, 484, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mudbray - Earthquake - Level 36
  (749, 74900, 89, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mudbray - Mega Kick - Level 40
  (749, 74900, 25, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mudbray - Superpower - Level 44
  (749, 74900, 276, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mudbray - Take Down - TM001
  (749, 74900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Mudbray - Mud-Slap - TM005
  (749, 74900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Mudbray - Protect - TM007
  (749, 74900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Mudbray - Low Kick - TM012
  (749, 74900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Mudbray - Facade - TM025
  (749, 74900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Mudbray - Bulldoze - TM028
  (749, 74900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Mudbray - Rock Tomb - TM036
  (749, 74900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Mudbray - Low Sweep - TM039
  (749, 74900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 21),
  -- Mudbray - Endure - TM047
  (749, 74900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Mudbray - Sunny Day - TM049
  (749, 74900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Mudbray - Sandstorm - TM051
  (749, 74900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Mudbray - Body Slam - TM066
  (749, 74900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Mudbray - Sleep Talk - TM070
  (749, 74900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Mudbray - Stomping Tantrum - TM084
  (749, 74900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 27),
  -- Mudbray - Rest - TM085
  (749, 74900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Mudbray - Rock Slide - TM086
  (749, 74900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 29),
  -- Mudbray - Iron Head - TM099
  (749, 74900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 30),
  -- Mudbray - Substitute - TM103
  (749, 74900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Mudbray - Iron Defense - TM104
  (749, 74900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 32),
  -- Mudbray - Stealth Rock - TM116
  (749, 74900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 33),
  -- Mudbray - Heavy Slam - TM121
  (749, 74900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 34),
  -- Mudbray - Earth Power - TM133
  (749, 74900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 35),
  -- Mudbray - Earthquake - TM149
  (749, 74900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 36),
  -- Mudbray - Stone Edge - TM150
  (749, 74900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 37),
  -- Mudbray - Close Combat - TM167
  (749, 74900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 38),
  -- Mudbray - Tera Blast - TM171
  (749, 74900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Mudbray - Double-Edge - Egg
  (749, 74900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mudbray - Roar - Egg
  (749, 74900, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mudbray - Fissure - Egg
  (749, 74900, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mudbray - Endeavor - Egg
  (749, 74900, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudbray - Smack Down - Egg
  (749, 74900, 479, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudsdale - Double Kick - Level 1
  (750, 75000, 24, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudsdale - Mud-Slap - Level 1
  (750, 75000, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudsdale - Rock Smash - Level 1
  (750, 75000, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mudsdale - Iron Defense - Level 1
  (750, 75000, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mudsdale - Bulldoze - Level 12
  (750, 75000, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mudsdale - Stomp - Level 16
  (750, 75000, 23, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mudsdale - Strength - Level 20
  (750, 75000, 70, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mudsdale - Counter - Level 24
  (750, 75000, 68, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mudsdale - High Horsepower - Level 28
  (750, 75000, 667, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mudsdale - Heavy Slam - Level 34
  (750, 75000, 484, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Mudsdale - Earthquake - Level 40
  (750, 75000, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Mudsdale - Mega Kick - Level 46
  (750, 75000, 25, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudsdale - Superpower - Level 52
  (750, 75000, 276, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Mudsdale - Take Down - TM001
  (750, 75000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Mudsdale - Mud-Slap - TM005
  (750, 75000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Mudsdale - Scary Face - TM006
  (750, 75000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Mudsdale - Protect - TM007
  (750, 75000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Mudsdale - Low Kick - TM012
  (750, 75000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Mudsdale - Facade - TM025
  (750, 75000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Mudsdale - Bulldoze - TM028
  (750, 75000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Mudsdale - Mud Shot - TM035
  (750, 75000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Mudsdale - Rock Tomb - TM036
  (750, 75000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Mudsdale - Low Sweep - TM039
  (750, 75000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 23),
  -- Mudsdale - Endure - TM047
  (750, 75000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Mudsdale - Sunny Day - TM049
  (750, 75000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Mudsdale - Sandstorm - TM051
  (750, 75000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Mudsdale - Body Slam - TM066
  (750, 75000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Mudsdale - Sleep Talk - TM070
  (750, 75000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Mudsdale - Stomping Tantrum - TM084
  (750, 75000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 29),
  -- Mudsdale - Rest - TM085
  (750, 75000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Mudsdale - Rock Slide - TM086
  (750, 75000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 31),
  -- Mudsdale - Body Press - TM089
  (750, 75000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 32),
  -- Mudsdale - Iron Head - TM099
  (750, 75000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 33),
  -- Mudsdale - Substitute - TM103
  (750, 75000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Mudsdale - Iron Defense - TM104
  (750, 75000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 35),
  -- Mudsdale - Stealth Rock - TM116
  (750, 75000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 36),
  -- Mudsdale - Heavy Slam - TM121
  (750, 75000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 37),
  -- Mudsdale - Earth Power - TM133
  (750, 75000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 38),
  -- Mudsdale - Earthquake - TM149
  (750, 75000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 39),
  -- Mudsdale - Stone Edge - TM150
  (750, 75000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 40),
  -- Mudsdale - Giga Impact - TM152
  (750, 75000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Mudsdale - Focus Blast - TM158
  (750, 75000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 42),
  -- Mudsdale - Hyper Beam - TM163
  (750, 75000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Mudsdale - Close Combat - TM167
  (750, 75000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 44),
  -- Mudsdale - Tera Blast - TM171
  (750, 75000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Mudsdale - Double-Edge - Egg
  (750, 75000, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudsdale - Roar - Egg
  (750, 75000, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudsdale - Fissure - Egg
  (750, 75000, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudsdale - Endeavor - Egg
  (750, 75000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudsdale - Smack Down - Egg
  (750, 75000, 479, 23, NULL, 5, NULL, NULL, NULL, NULL, 50);
