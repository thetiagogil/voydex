-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope, plus TM108-TM160 rows for base ZA Pokémon/forms.
-- Delta note: Rows exclude Pokémon/forms already seeded in base ZA; base ZA TM machine rows are inherited through the parent content scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension learnset delta rows for species 751-800.
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
  -- Wimpod - Harden - Level 1
  (767, 76700, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wimpod - Rollout - Level 1
  (767, 76700, 205, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wimpod - Protect - TM017
  (767, 76700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 3),
  -- Wimpod - Swift - TM027
  (767, 76700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 4),
  -- Wimpod - Endure - TM035
  (767, 76700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 5),
  -- Wimpod - Mud Shot - TM046
  (767, 76700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 6),
  -- Wimpod - Surf - TM073
  (767, 76700, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 7),
  -- Wimpod - Substitute - TM085
  (767, 76700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 8),
  -- Wimpod - Spikes - TM088
  (767, 76700, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 9),
  -- Wimpod - Taunt - TM095
  (767, 76700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 10),
  -- Wimpod - Waterfall - TM098
  (767, 76700, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 11),
  -- Wimpod - Facade - TM109
  (767, 76700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 12),
  -- Wimpod - Scald - TM148
  (767, 76700, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 13),
  -- Golisopod - Harden - Level 1
  (768, 76800, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golisopod - Rollout - Level 1
  (768, 76800, 205, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golisopod - Rock Smash - Level 4
  (768, 76800, 249, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Golisopod - Mud Shot - Level 12
  (768, 76800, 341, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Golisopod - Aqua Jet - Level 16
  (768, 76800, 453, 27, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Golisopod - Iron Defense - Level 20
  (768, 76800, 334, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Golisopod - Metal Claw - Level 22
  (768, 76800, 232, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Golisopod - Screech - Level 26
  (768, 76800, 103, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Golisopod - Slash - Level 28
  (768, 76800, 163, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Golisopod - Drill Run - Level 30
  (768, 76800, 529, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Golisopod - Leech Life - Level 32
  (768, 76800, 141, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Golisopod - Iron Head - Level 36
  (768, 76800, 442, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Golisopod - Pin Missile - Level 42
  (768, 76800, 42, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Golisopod - Swords Dance - Level 48
  (768, 76800, 14, 27, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Golisopod - Liquidation - Level 53
  (768, 76800, 710, 27, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Golisopod - First Impression - Evolution
  (768, 76800, 660, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Golisopod - Rock Smash - TM004
  (768, 76800, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Golisopod - Brick Break - TM010
  (768, 76800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Golisopod - Bulk Up - TM011
  (768, 76800, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Golisopod - Rock Slide - TM012
  (768, 76800, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Golisopod - Ice Beam - TM013
  (768, 76800, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Golisopod - Protect - TM017
  (768, 76800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Golisopod - Swift - TM027
  (768, 76800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Golisopod - Swords Dance - TM030
  (768, 76800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 24),
  -- Golisopod - Night Slash - TM034
  (768, 76800, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 25),
  -- Golisopod - Endure - TM035
  (768, 76800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Golisopod - Rock Tomb - TM036
  (768, 76800, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Golisopod - Hyper Beam - TM044
  (768, 76800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Golisopod - Mud Shot - TM046
  (768, 76800, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Golisopod - Agility - TM047
  (768, 76800, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 30),
  -- Golisopod - Icy Wind - TM049
  (768, 76800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Golisopod - Sludge Bomb - TM053
  (768, 76800, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 32),
  -- Golisopod - Giga Impact - TM055
  (768, 76800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Golisopod - Iron Head - TM058
  (768, 76800, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 34),
  -- Golisopod - Shadow Claw - TM061
  (768, 76800, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 35),
  -- Golisopod - Surf - TM073
  (768, 76800, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 36),
  -- Golisopod - Liquidation - TM076
  (768, 76800, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 37),
  -- Golisopod - Poison Jab - TM077
  (768, 76800, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Golisopod - Iron Defense - TM080
  (768, 76800, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 39),
  -- Golisopod - X-Scissor - TM081
  (768, 76800, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 40),
  -- Golisopod - U-turn - TM082
  (768, 76800, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 41),
  -- Golisopod - Substitute - TM085
  (768, 76800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Golisopod - Spikes - TM088
  (768, 76800, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 43),
  -- Golisopod - Dark Pulse - TM090
  (768, 76800, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 44),
  -- Golisopod - Taunt - TM095
  (768, 76800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 45),
  -- Golisopod - Waterfall - TM098
  (768, 76800, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 46),
  -- Golisopod - Gunk Shot - TM100
  (768, 76800, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 47),
  -- Golisopod - Focus Blast - TM102
  (768, 76800, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Golisopod - Blizzard - TM105
  (768, 76800, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 49),
  -- Golisopod - Close Combat - TM107
  (768, 76800, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 50),
  -- Golisopod - Facade - TM109
  (768, 76800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 51),
  -- Golisopod - False Swipe - TM122
  (768, 76800, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 52),
  -- Golisopod - Double Hit - TM132
  (768, 76800, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 53),
  -- Golisopod - Dual Chop - TM135
  (768, 76800, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 54),
  -- Golisopod - Muddy Water - TM140
  (768, 76800, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 55),
  -- Golisopod - First Impression - TM142
  (768, 76800, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 56),
  -- Golisopod - Scald - TM148
  (768, 76800, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 57),
  -- Sandygast - Absorb - Level 1
  (769, 76900, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandygast - Harden - Level 1
  (769, 76900, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandygast - Sand Tomb - Level 10
  (769, 76900, 328, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Sandygast - Infestation - Level 13
  (769, 76900, 611, 27, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Sandygast - Bulldoze - Level 18
  (769, 76900, 523, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sandygast - Hypnosis - Level 24
  (769, 76900, 95, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sandygast - Iron Defense - Level 30
  (769, 76900, 334, 27, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sandygast - Giga Drain - Level 35
  (769, 76900, 202, 27, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Sandygast - Shadow Ball - Level 41
  (769, 76900, 247, 27, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Sandygast - Dark Pulse - Level 46
  (769, 76900, 399, 27, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Sandygast - Earth Power - Level 50
  (769, 76900, 414, 27, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Sandygast - Shore Up - Level 52
  (769, 76900, 659, 27, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Sandygast - Rock Slide - TM012
  (769, 76900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Sandygast - Protect - TM017
  (769, 76900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Sandygast - Power Gem - TM019
  (769, 76900, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 15),
  -- Sandygast - Energy Ball - TM026
  (769, 76900, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Sandygast - Endure - TM035
  (769, 76900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Sandygast - Rock Tomb - TM036
  (769, 76900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 18),
  -- Sandygast - Stealth Rock - TM037
  (769, 76900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 19),
  -- Sandygast - Giga Drain - TM042
  (769, 76900, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 20),
  -- Sandygast - Mud Shot - TM046
  (769, 76900, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Sandygast - Earth Power - TM052
  (769, 76900, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 22),
  -- Sandygast - Sludge Bomb - TM053
  (769, 76900, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Sandygast - Psychic - TM063
  (769, 76900, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Sandygast - Stone Edge - TM065
  (769, 76900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 25),
  -- Sandygast - Earthquake - TM069
  (769, 76900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 26),
  -- Sandygast - Shadow Ball - TM074
  (769, 76900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 27),
  -- Sandygast - Bulldoze - TM078
  (769, 76900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 28),
  -- Sandygast - Iron Defense - TM080
  (769, 76900, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 29),
  -- Sandygast - Nasty Plot - TM083
  (769, 76900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 30),
  -- Sandygast - Flash Cannon - TM084
  (769, 76900, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 31),
  -- Sandygast - Substitute - TM085
  (769, 76900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Sandygast - Dark Pulse - TM090
  (769, 76900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Sandygast - Curse - TM091
  (769, 76900, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Sandygast - Facade - TM109
  (769, 76900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 35),
  -- Sandygast - Chilling Water - TM110
  (769, 76900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 36),
  -- Sandygast - Ominous Wind - TM119
  (769, 76900, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 37),
  -- Sandygast - Ancient Power - TM120
  (769, 76900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 38),
  -- Sandygast - Scorching Sands - TM136
  (769, 76900, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 39),
  -- Palossand - Absorb - Level 1
  (770, 77000, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palossand - Harden - Level 1
  (770, 77000, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palossand - Sand Tomb - Level 10
  (770, 77000, 328, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Palossand - Infestation - Level 13
  (770, 77000, 611, 27, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Palossand - Bulldoze - Level 18
  (770, 77000, 523, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Palossand - Hypnosis - Level 24
  (770, 77000, 95, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Palossand - Iron Defense - Level 30
  (770, 77000, 334, 27, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Palossand - Giga Drain - Level 35
  (770, 77000, 202, 27, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Palossand - Shadow Ball - Level 41
  (770, 77000, 247, 27, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Palossand - Dark Pulse - Level 46
  (770, 77000, 399, 27, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Palossand - Earth Power - Level 50
  (770, 77000, 414, 27, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Palossand - Shore Up - Level 52
  (770, 77000, 659, 27, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Palossand - Rock Slide - TM012
  (770, 77000, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Palossand - Protect - TM017
  (770, 77000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Palossand - Power Gem - TM019
  (770, 77000, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 15),
  -- Palossand - Energy Ball - TM026
  (770, 77000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Palossand - Body Slam - TM033
  (770, 77000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 17),
  -- Palossand - Endure - TM035
  (770, 77000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Palossand - Rock Tomb - TM036
  (770, 77000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 19),
  -- Palossand - Stealth Rock - TM037
  (770, 77000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 20),
  -- Palossand - Giga Drain - TM042
  (770, 77000, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 21),
  -- Palossand - Hyper Beam - TM044
  (770, 77000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Palossand - Mud Shot - TM046
  (770, 77000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Palossand - Earth Power - TM052
  (770, 77000, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 24),
  -- Palossand - Sludge Bomb - TM053
  (770, 77000, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 25),
  -- Palossand - Giga Impact - TM055
  (770, 77000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Palossand - Psychic - TM063
  (770, 77000, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 27),
  -- Palossand - Stone Edge - TM065
  (770, 77000, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Palossand - Earthquake - TM069
  (770, 77000, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Palossand - Shadow Ball - TM074
  (770, 77000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Palossand - Bulldoze - TM078
  (770, 77000, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Palossand - Iron Defense - TM080
  (770, 77000, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Palossand - Nasty Plot - TM083
  (770, 77000, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 33),
  -- Palossand - Flash Cannon - TM084
  (770, 77000, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 34),
  -- Palossand - Substitute - TM085
  (770, 77000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Palossand - Dark Pulse - TM090
  (770, 77000, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Palossand - Curse - TM091
  (770, 77000, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Palossand - Facade - TM109
  (770, 77000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 38),
  -- Palossand - Chilling Water - TM110
  (770, 77000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 39),
  -- Palossand - Ominous Wind - TM119
  (770, 77000, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 40),
  -- Palossand - Ancient Power - TM120
  (770, 77000, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 41),
  -- Palossand - Torment - TM121
  (770, 77000, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 42),
  -- Palossand - Scorching Sands - TM136
  (770, 77000, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 43),
  -- Palossand - Fake Out - TM141
  (770, 77000, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 44),
  -- Palossand - Fissure - TM154
  (770, 77000, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 45),
  -- Mimikyu - Tackle - Level 1
  (778, 77800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mimikyu - Splash - Level 1
  (778, 77800, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mimikyu - Shadow Sneak - Level 6
  (778, 77800, 425, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mimikyu - Double Team - Level 12
  (778, 77800, 104, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Mimikyu - Mimic - Level 24
  (778, 77800, 102, 27, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Mimikyu - Slash - Level 28
  (778, 77800, 163, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Mimikyu - Shadow Claw - Level 34
  (778, 77800, 421, 27, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Mimikyu - Wood Hammer - Level 42
  (778, 77800, 452, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Mimikyu - Charm - Level 48
  (778, 77800, 204, 27, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Mimikyu - Play Rough - Level 54
  (778, 77800, 583, 27, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Mimikyu - Phantom Force - Level 60
  (778, 77800, 566, 27, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Mimikyu - Thunder Wave - TM008
  (778, 77800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 12),
  -- Mimikyu - Bulk Up - TM011
  (778, 77800, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 13),
  -- Mimikyu - Light Screen - TM016
  (778, 77800, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Mimikyu - Protect - TM017
  (778, 77800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Mimikyu - Play Rough - TM020
  (778, 77800, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 16),
  -- Mimikyu - Swords Dance - TM030
  (778, 77800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 17),
  -- Mimikyu - Double Team - TM032
  (778, 77800, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 18),
  -- Mimikyu - Night Slash - TM034
  (778, 77800, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 19),
  -- Mimikyu - Endure - TM035
  (778, 77800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Mimikyu - Giga Drain - TM042
  (778, 77800, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 21),
  -- Mimikyu - Hyper Beam - TM044
  (778, 77800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Mimikyu - Giga Impact - TM055
  (778, 77800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Mimikyu - Will-O-Wisp - TM057
  (778, 77800, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 24),
  -- Mimikyu - Shadow Claw - TM061
  (778, 77800, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 25),
  -- Mimikyu - Psychic - TM063
  (778, 77800, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Mimikyu - Thunderbolt - TM067
  (778, 77800, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 27),
  -- Mimikyu - Shadow Ball - TM074
  (778, 77800, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Mimikyu - X-Scissor - TM081
  (778, 77800, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 29),
  -- Mimikyu - Substitute - TM085
  (778, 77800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Mimikyu - Dark Pulse - TM090
  (778, 77800, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Mimikyu - Curse - TM091
  (778, 77800, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 32),
  -- Mimikyu - Dazzling Gleam - TM092
  (778, 77800, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 33),
  -- Mimikyu - Taunt - TM095
  (778, 77800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Mimikyu - Work Up - TM103
  (778, 77800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 35),
  -- Mimikyu - Thunder - TM106
  (778, 77800, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 36),
  -- Mimikyu - Facade - TM109
  (778, 77800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 37),
  -- Mimikyu - Trailblaze - TM115
  (778, 77800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 38),
  -- Mimikyu - Mimic - TM125
  (778, 77800, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 39),
  -- Mimikyu - Drain Punch - TM131
  (778, 77800, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 40),
  -- Drampa - Facade - TM109
  (780, 78000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Drampa - Charge Beam - TM130
  (780, 78000, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 2),
  -- Drampa - Scale Shot - TM143
  (780, 78000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 3),
  -- Drampa - Razor Wind - TM145
  (780, 78000, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 4),
  -- Drampa - Tri Attack - TM147
  (780, 78000, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 5);
