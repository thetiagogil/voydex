-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 101-150.
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
  -- Kangaskhan - Tackle - Level 1
  (115, 11500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Tail Whip - Level 1
  (115, 11500, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Growl - Level 7
  (115, 11500, 45, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kangaskhan - Bite - Level 12
  (115, 11500, 44, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Kangaskhan - Focus Energy - Level 20
  (115, 11500, 116, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Kangaskhan - Headbutt - Level 24
  (115, 11500, 29, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Kangaskhan - Take Down - Level 32
  (115, 11500, 36, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Kangaskhan - Crunch - Level 36
  (115, 11500, 242, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Kangaskhan - Endure - Level 40
  (115, 11500, 203, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kangaskhan - Outrage - Level 48
  (115, 11500, 200, 26, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kangaskhan - Dynamic Punch - Level 54
  (115, 11500, 223, 26, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Kangaskhan - Headbutt - TM001
  (115, 11500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Kangaskhan - Roar - TM005
  (115, 11500, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Kangaskhan - Brick Break - TM010
  (115, 11500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Kangaskhan - Rock Slide - TM012
  (115, 11500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Kangaskhan - Ice Beam - TM013
  (115, 11500, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Kangaskhan - Protect - TM017
  (115, 11500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Kangaskhan - Power-Up Punch - TM018
  (115, 11500, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 18),
  -- Kangaskhan - Aerial Ace - TM022
  (115, 11500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Kangaskhan - Thunder Punch - TM023
  (115, 11500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Kangaskhan - Ice Punch - TM024
  (115, 11500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Kangaskhan - Crunch - TM025
  (115, 11500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Kangaskhan - Dig - TM028
  (115, 11500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Kangaskhan - Fire Punch - TM029
  (115, 11500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Kangaskhan - Body Slam - TM033
  (115, 11500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Kangaskhan - Endure - TM035
  (115, 11500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Kangaskhan - Rock Tomb - TM036
  (115, 11500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Kangaskhan - Fire Blast - TM038
  (115, 11500, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Kangaskhan - Hyper Beam - TM044
  (115, 11500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Kangaskhan - Safeguard - TM051
  (115, 11500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 30),
  -- Kangaskhan - Giga Impact - TM055
  (115, 11500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Kangaskhan - Double-Edge - TM056
  (115, 11500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Kangaskhan - Shadow Claw - TM061
  (115, 11500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 33),
  -- Kangaskhan - Flamethrower - TM062
  (115, 11500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Kangaskhan - Solar Beam - TM064
  (115, 11500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Kangaskhan - Thunderbolt - TM067
  (115, 11500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Kangaskhan - Earthquake - TM069
  (115, 11500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Kangaskhan - Whirlpool - TM070
  (115, 11500, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 38),
  -- Kangaskhan - Surf - TM073
  (115, 11500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 39),
  -- Kangaskhan - Shadow Ball - TM074
  (115, 11500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 40),
  -- Kangaskhan - Bulldoze - TM078
  (115, 11500, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Kangaskhan - Substitute - TM085
  (115, 11500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Kangaskhan - Iron Tail - TM087
  (115, 11500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Kangaskhan - Outrage - TM093
  (115, 11500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 44),
  -- Kangaskhan - Hydro Pump - TM096
  (115, 11500, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 45),
  -- Kangaskhan - Focus Blast - TM102
  (115, 11500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 46),
  -- Kangaskhan - Work Up - TM103
  (115, 11500, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 47),
  -- Kangaskhan - Blizzard - TM105
  (115, 11500, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 48),
  -- Kangaskhan - Thunder - TM106
  (115, 11500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 49),
  -- Kangaskhan - Comet Punch - TM108
  (115, 11500, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 50),
  -- Kangaskhan - Facade - TM109
  (115, 11500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 51),
  -- Kangaskhan - Circle Throw - TM129
  (115, 11500, 509, 26, NULL, 2, NULL, NULL, 26002129, NULL, 52),
  -- Kangaskhan - Drain Punch - TM131
  (115, 11500, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 53),
  -- Kangaskhan - Double Hit - TM132
  (115, 11500, 458, 26, NULL, 2, NULL, NULL, 26002132, NULL, 54),
  -- Kangaskhan - Dual Chop - TM135
  (115, 11500, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 55),
  -- Kangaskhan - Fake Out - TM141
  (115, 11500, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 56),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 4
  (120, 12000, 55, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Staryu - Confuse Ray - Level 8
  (120, 12000, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Staryu - Aqua Jet - Level 12
  (120, 12000, 453, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Staryu - Swift - Level 16
  (120, 12000, 129, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Staryu - Bubble Beam - Level 20
  (120, 12000, 61, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Staryu - Psybeam - Level 24
  (120, 12000, 60, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Staryu - Light Screen - Level 32
  (120, 12000, 113, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Staryu - Power Gem - Level 36
  (120, 12000, 408, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Staryu - Psychic - Level 40
  (120, 12000, 94, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Staryu - Surf - Level 44
  (120, 12000, 57, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Staryu - Recover - Level 48
  (120, 12000, 105, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Staryu - Hydro Pump - Level 56
  (120, 12000, 56, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Staryu - Thunder Wave - TM008
  (120, 12000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Staryu - Flip Turn - TM009
  (120, 12000, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 16),
  -- Staryu - Ice Beam - TM013
  (120, 12000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Staryu - Light Screen - TM016
  (120, 12000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Staryu - Protect - TM017
  (120, 12000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Staryu - Power Gem - TM019
  (120, 12000, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 20),
  -- Staryu - Swift - TM027
  (120, 12000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Staryu - Reflect - TM031
  (120, 12000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Staryu - Endure - TM035
  (120, 12000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Staryu - Water Pulse - TM041
  (120, 12000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Staryu - Self-Destruct - TM048
  (120, 12000, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Staryu - Icy Wind - TM049
  (120, 12000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Staryu - Safeguard - TM051
  (120, 12000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 27),
  -- Staryu - Psychic - TM063
  (120, 12000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Staryu - Thunderbolt - TM067
  (120, 12000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 29),
  -- Staryu - Whirlpool - TM070
  (120, 12000, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 30),
  -- Staryu - Surf - TM073
  (120, 12000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 31),
  -- Staryu - Flash Cannon - TM084
  (120, 12000, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 32),
  -- Staryu - Substitute - TM085
  (120, 12000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Staryu - Dazzling Gleam - TM092
  (120, 12000, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 34),
  -- Staryu - Hydro Pump - TM096
  (120, 12000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Staryu - Waterfall - TM098
  (120, 12000, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Staryu - Blizzard - TM105
  (120, 12000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Staryu - Thunder - TM106
  (120, 12000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Staryu - Facade - TM109
  (120, 12000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Staryu - Tri Attack - TM147
  (120, 12000, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 40),
  -- Staryu - Scald - TM148
  (120, 12000, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 41),
  -- Starmie - Tackle - Level 1
  (121, 12100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Take Down - Level 1
  (121, 12100, 36, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Harden - Level 1
  (121, 12100, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Water Gun - Level 4
  (121, 12100, 55, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Starmie - Confuse Ray - Level 8
  (121, 12100, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Starmie - Aqua Jet - Level 12
  (121, 12100, 453, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Starmie - Swift - Level 16
  (121, 12100, 129, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Starmie - Bubble Beam - Level 20
  (121, 12100, 61, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Starmie - Psybeam - Level 24
  (121, 12100, 60, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Starmie - Light Screen - Level 32
  (121, 12100, 113, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Starmie - Power Gem - Level 36
  (121, 12100, 408, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Starmie - Psychic - Level 40
  (121, 12100, 94, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Starmie - Liquidation - Level 42
  (121, 12100, 710, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Starmie - Surf - Level 44
  (121, 12100, 57, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Starmie - Recover - Level 48
  (121, 12100, 105, 26, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Starmie - Hydro Pump - Level 56
  (121, 12100, 56, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Starmie - Headbutt - TM001
  (121, 12100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Starmie - Psyshock - TM003
  (121, 12100, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 18),
  -- Starmie - Thunder Wave - TM008
  (121, 12100, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Starmie - Flip Turn - TM009
  (121, 12100, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 20),
  -- Starmie - Bulk Up - TM011
  (121, 12100, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 21),
  -- Starmie - Ice Beam - TM013
  (121, 12100, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 22),
  -- Starmie - Light Screen - TM016
  (121, 12100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 23),
  -- Starmie - Protect - TM017
  (121, 12100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 24),
  -- Starmie - Power Gem - TM019
  (121, 12100, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 25),
  -- Starmie - Swift - TM027
  (121, 12100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Starmie - Reflect - TM031
  (121, 12100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 27),
  -- Starmie - Endure - TM035
  (121, 12100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Starmie - Water Pulse - TM041
  (121, 12100, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 29),
  -- Starmie - Hyper Beam - TM044
  (121, 12100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Starmie - Agility - TM047
  (121, 12100, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Starmie - Self-Destruct - TM048
  (121, 12100, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 32),
  -- Starmie - Icy Wind - TM049
  (121, 12100, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 33),
  -- Starmie - Safeguard - TM051
  (121, 12100, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 34),
  -- Starmie - Giga Impact - TM055
  (121, 12100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Starmie - Double-Edge - TM056
  (121, 12100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 36),
  -- Starmie - Zen Headbutt - TM059
  (121, 12100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Starmie - Psychic - TM063
  (121, 12100, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Starmie - Thunderbolt - TM067
  (121, 12100, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 39),
  -- Starmie - Whirlpool - TM070
  (121, 12100, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 40),
  -- Starmie - Surf - TM073
  (121, 12100, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 41),
  -- Starmie - Liquidation - TM076
  (121, 12100, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 42),
  -- Starmie - Flash Cannon - TM084
  (121, 12100, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 43),
  -- Starmie - Substitute - TM085
  (121, 12100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Starmie - Dazzling Gleam - TM092
  (121, 12100, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 45),
  -- Starmie - Hydro Pump - TM096
  (121, 12100, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 46),
  -- Starmie - Heal Block - TM097
  (121, 12100, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 47),
  -- Starmie - Waterfall - TM098
  (121, 12100, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 48),
  -- Starmie - Blizzard - TM105
  (121, 12100, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 49),
  -- Starmie - Thunder - TM106
  (121, 12100, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 50),
  -- Starmie - Facade - TM109
  (121, 12100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 51),
  -- Starmie - Chilling Water - TM110
  (121, 12100, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 52),
  -- Starmie - Ancient Power - TM120
  (121, 12100, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 53),
  -- Starmie - Dream Eater - TM127
  (121, 12100, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 54),
  -- Starmie - Charge Beam - TM130
  (121, 12100, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 55),
  -- Starmie - Triple Axel - TM144
  (121, 12100, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 56),
  -- Starmie - Skull Bash - TM146
  (121, 12100, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 57),
  -- Starmie - Tri Attack - TM147
  (121, 12100, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 58),
  -- Starmie - Scald - TM148
  (121, 12100, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 59),
  -- Starmie - Meteor Beam - TM156
  (121, 12100, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 60),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Wing Attack - Level 12
  (123, 12300, 17, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Scyther - Double Team - Level 16
  (123, 12300, 104, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Scyther - Brutal Swing - Level 20
  (123, 12300, 693, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Scyther - Slash - Level 24
  (123, 12300, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Scyther - Focus Energy - Level 28
  (123, 12300, 116, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Scyther - X-Scissor - Level 32
  (123, 12300, 404, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Scyther - Bug Buzz - Level 34
  (123, 12300, 405, 26, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Scyther - Air Slash - Level 36
  (123, 12300, 403, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Scyther - Swords Dance - Level 42
  (123, 12300, 14, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Scyther - Lunge - Level 46
  (123, 12300, 679, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Scyther - Brick Break - TM010
  (123, 12300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Scyther - Light Screen - TM016
  (123, 12300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Scyther - Protect - TM017
  (123, 12300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Scyther - Aerial Ace - TM022
  (123, 12300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 16),
  -- Scyther - Swift - TM027
  (123, 12300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Scyther - Swords Dance - TM030
  (123, 12300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Scyther - Double Team - TM032
  (123, 12300, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Scyther - Night Slash - TM034
  (123, 12300, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 20),
  -- Scyther - Endure - TM035
  (123, 12300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Scyther - Hyper Beam - TM044
  (123, 12300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Scyther - Knock Off - TM045
  (123, 12300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 23),
  -- Scyther - Agility - TM047
  (123, 12300, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Scyther - Giga Impact - TM055
  (123, 12300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Scyther - Double-Edge - TM056
  (123, 12300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 26),
  -- Scyther - X-Scissor - TM081
  (123, 12300, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 27),
  -- Scyther - U-turn - TM082
  (123, 12300, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 28),
  -- Scyther - Substitute - TM085
  (123, 12300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Scyther - Close Combat - TM107
  (123, 12300, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 30),
  -- Scyther - Facade - TM109
  (123, 12300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 31),
  -- Scyther - Trailblaze - TM115
  (123, 12300, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 32),
  -- Scyther - Silver Wind - TM117
  (123, 12300, 318, 26, NULL, 2, NULL, NULL, 26002117, NULL, 33),
  -- Scyther - False Swipe - TM122
  (123, 12300, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 34),
  -- Scyther - Double Hit - TM132
  (123, 12300, 458, 26, NULL, 2, NULL, NULL, 26002132, NULL, 35),
  -- Scyther - Dual Wingbeat - TM134
  (123, 12300, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 36),
  -- Scyther - Dual Chop - TM135
  (123, 12300, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 37),
  -- Scyther - Razor Wind - TM145
  (123, 12300, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 38),
  -- Scyther - Vacuum Wave - TM150
  (123, 12300, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 39),
  -- Pinsir - Tackle - Level 1
  (127, 12700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Harden - Level 1
  (127, 12700, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Focus Energy - Level 4
  (127, 12700, 116, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Rock Smash - Level 8
  (127, 12700, 249, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Brutal Swing - Level 16
  (127, 12700, 693, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Pinsir - Detect - Level 20
  (127, 12700, 197, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pinsir - Take Down - Level 24
  (127, 12700, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Pinsir - X-Scissor - Level 32
  (127, 12700, 404, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Pinsir - Lunge - Level 36
  (127, 12700, 679, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Pinsir - Swords Dance - Level 40
  (127, 12700, 14, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pinsir - Close Combat - Level 50
  (127, 12700, 370, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Pinsir - Rock Smash - TM004
  (127, 12700, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 12),
  -- Pinsir - Brick Break - TM010
  (127, 12700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Pinsir - Bulk Up - TM011
  (127, 12700, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 14),
  -- Pinsir - Rock Slide - TM012
  (127, 12700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Pinsir - Protect - TM017
  (127, 12700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Pinsir - Aerial Ace - TM022
  (127, 12700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Pinsir - Dig - TM028
  (127, 12700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Pinsir - Swords Dance - TM030
  (127, 12700, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Pinsir - Endure - TM035
  (127, 12700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Pinsir - Rock Tomb - TM036
  (127, 12700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Pinsir - Stealth Rock - TM037
  (127, 12700, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 22),
  -- Pinsir - Hyper Beam - TM044
  (127, 12700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Pinsir - Giga Impact - TM055
  (127, 12700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Pinsir - Stone Edge - TM065
  (127, 12700, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 25),
  -- Pinsir - Earthquake - TM069
  (127, 12700, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 26),
  -- Pinsir - Iron Defense - TM080
  (127, 12700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 27),
  -- Pinsir - X-Scissor - TM081
  (127, 12700, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 28),
  -- Pinsir - Substitute - TM085
  (127, 12700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Pinsir - Outrage - TM093
  (127, 12700, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 30),
  -- Pinsir - Focus Blast - TM102
  (127, 12700, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 31),
  -- Pinsir - Close Combat - TM107
  (127, 12700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 32),
  -- Pinsir - Facade - TM109
  (127, 12700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Pinsir - False Swipe - TM122
  (127, 12700, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 34),
  -- Pinsir - Circle Throw - TM129
  (127, 12700, 509, 26, NULL, 2, NULL, NULL, 26002129, NULL, 35),
  -- Pinsir - Double Hit - TM132
  (127, 12700, 458, 26, NULL, 2, NULL, NULL, 26002132, NULL, 36),
  -- Pinsir - Dual Wingbeat - TM134
  (127, 12700, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 37),
  -- Pinsir - Storm Throw - TM137
  (127, 12700, 480, 26, NULL, 2, NULL, NULL, 26002137, NULL, 38),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 26, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Hydro Pump - TM096
  (129, 12900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 3),
  -- Magikarp - Facade - TM109
  (129, 12900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 4),
  -- Gyarados - Tackle - Level 1
  (130, 13000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Leer - Level 1
  (130, 13000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gyarados - Splash - Level 1
  (130, 13000, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gyarados - Twister - Level 1
  (130, 13000, 239, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gyarados - Waterfall - Level 24
  (130, 13000, 127, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Gyarados - Crunch - Level 30
  (130, 13000, 242, 26, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Gyarados - Iron Head - Level 33
  (130, 13000, 442, 26, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Gyarados - Bounce - Level 40
  (130, 13000, 340, 26, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Gyarados - Hurricane - Level 44
  (130, 13000, 542, 26, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Gyarados - Dragon Rush - Level 45
  (130, 13000, 407, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Gyarados - Hydro Pump - Level 50
  (130, 13000, 56, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Gyarados - Hyper Beam - Level 55
  (130, 13000, 63, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Gyarados - Bite - Evolution
  (130, 13000, 44, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Gyarados - Roar - TM005
  (130, 13000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Gyarados - Thunder Wave - TM008
  (130, 13000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Gyarados - Ice Beam - TM013
  (130, 13000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Gyarados - Ice Fang - TM015
  (130, 13000, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Gyarados - Protect - TM017
  (130, 13000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Gyarados - Crunch - TM025
  (130, 13000, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Gyarados - Body Slam - TM033
  (130, 13000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Gyarados - Endure - TM035
  (130, 13000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Gyarados - Fire Blast - TM038
  (130, 13000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 22),
  -- Gyarados - Water Pulse - TM041
  (130, 13000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 23),
  -- Gyarados - Hyper Beam - TM044
  (130, 13000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Gyarados - Icy Wind - TM049
  (130, 13000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 25),
  -- Gyarados - Giga Impact - TM055
  (130, 13000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Gyarados - Double-Edge - TM056
  (130, 13000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Gyarados - Iron Head - TM058
  (130, 13000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Gyarados - Flamethrower - TM062
  (130, 13000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 29),
  -- Gyarados - Stone Edge - TM065
  (130, 13000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 30),
  -- Gyarados - Thunderbolt - TM067
  (130, 13000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 31),
  -- Gyarados - Earthquake - TM069
  (130, 13000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Gyarados - Whirlpool - TM070
  (130, 13000, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 33),
  -- Gyarados - Surf - TM073
  (130, 13000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 34),
  -- Gyarados - Dragon Pulse - TM075
  (130, 13000, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 35),
  -- Gyarados - Bulldoze - TM078
  (130, 13000, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Gyarados - Hurricane - TM079
  (130, 13000, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 37),
  -- Gyarados - Substitute - TM085
  (130, 13000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Gyarados - Iron Tail - TM087
  (130, 13000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 39),
  -- Gyarados - Dark Pulse - TM090
  (130, 13000, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 40),
  -- Gyarados - Outrage - TM093
  (130, 13000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 41),
  -- Gyarados - Taunt - TM095
  (130, 13000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Gyarados - Hydro Pump - TM096
  (130, 13000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 43),
  -- Gyarados - Waterfall - TM098
  (130, 13000, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 44),
  -- Gyarados - Blizzard - TM105
  (130, 13000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 45),
  -- Gyarados - Thunder - TM106
  (130, 13000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 46),
  -- Gyarados - Facade - TM109
  (130, 13000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 47),
  -- Gyarados - Chilling Water - TM110
  (130, 13000, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 48),
  -- Gyarados - Swagger - TM139
  (130, 13000, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 49),
  -- Gyarados - Muddy Water - TM140
  (130, 13000, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 50),
  -- Gyarados - Scale Shot - TM143
  (130, 13000, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 51),
  -- Gyarados - Skull Bash - TM146
  (130, 13000, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Gyarados - Scald - TM148
  (130, 13000, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 53),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Growl - Level 1
  (133, 13300, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Quick Attack - Level 10
  (133, 13300, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Eevee - Disarming Voice - Level 15
  (133, 13300, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Eevee - Swift - Level 20
  (133, 13300, 129, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Eevee - Bite - Level 25
  (133, 13300, 44, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Eevee - Wish - Level 30
  (133, 13300, 273, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Eevee - Take Down - Level 40
  (133, 13300, 36, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Eevee - Charm - Level 45
  (133, 13300, 204, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Eevee - Double-Edge - Level 50
  (133, 13300, 38, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Eevee - Roar - TM005
  (133, 13300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Eevee - Calm Mind - TM006
  (133, 13300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Eevee - Protect - TM017
  (133, 13300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Eevee - Swift - TM027
  (133, 13300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 15),
  -- Eevee - Dig - TM028
  (133, 13300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 16),
  -- Eevee - Body Slam - TM033
  (133, 13300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 17),
  -- Eevee - Endure - TM035
  (133, 13300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Eevee - Double-Edge - TM056
  (133, 13300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 19),
  -- Eevee - Hyper Voice - TM071
  (133, 13300, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 20),
  -- Eevee - Shadow Ball - TM074
  (133, 13300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 21),
  -- Eevee - Substitute - TM085
  (133, 13300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 22),
  -- Eevee - Iron Tail - TM087
  (133, 13300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 23),
  -- Eevee - Facade - TM109
  (133, 13300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 24),
  -- Eevee - Trailblaze - TM115
  (133, 13300, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 25),
  -- Eevee - Mimic - TM125
  (133, 13300, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 26),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Bite - Level 1
  (134, 13400, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Growl - Level 1
  (134, 13400, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vaporeon - Quick Attack - Level 10
  (134, 13400, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Vaporeon - Disarming Voice - Level 15
  (134, 13400, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Vaporeon - Bubble Beam - Level 20
  (134, 13400, 61, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vaporeon - Haze - Level 25
  (134, 13400, 114, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Vaporeon - Icy Wind - Level 30
  (134, 13400, 196, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Vaporeon - Aqua Ring - Level 35
  (134, 13400, 392, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Vaporeon - Surf - Level 40
  (134, 13400, 57, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Vaporeon - Acid Armor - Level 45
  (134, 13400, 151, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Vaporeon - Hydro Pump - Level 50
  (134, 13400, 56, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Vaporeon - Water Gun - Evolution
  (134, 13400, 55, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Vaporeon - Headbutt - TM001
  (134, 13400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Vaporeon - Roar - TM005
  (134, 13400, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Vaporeon - Calm Mind - TM006
  (134, 13400, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Vaporeon - Flip Turn - TM009
  (134, 13400, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 18),
  -- Vaporeon - Ice Beam - TM013
  (134, 13400, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Vaporeon - Protect - TM017
  (134, 13400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Vaporeon - Swift - TM027
  (134, 13400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Vaporeon - Dig - TM028
  (134, 13400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Vaporeon - Body Slam - TM033
  (134, 13400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Vaporeon - Endure - TM035
  (134, 13400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Vaporeon - Water Pulse - TM041
  (134, 13400, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Vaporeon - Hyper Beam - TM044
  (134, 13400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Vaporeon - Icy Wind - TM049
  (134, 13400, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Vaporeon - Giga Impact - TM055
  (134, 13400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Vaporeon - Double-Edge - TM056
  (134, 13400, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Vaporeon - Whirlpool - TM070
  (134, 13400, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 30),
  -- Vaporeon - Hyper Voice - TM071
  (134, 13400, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Vaporeon - Surf - TM073
  (134, 13400, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Vaporeon - Shadow Ball - TM074
  (134, 13400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Vaporeon - Liquidation - TM076
  (134, 13400, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 34),
  -- Vaporeon - Substitute - TM085
  (134, 13400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Vaporeon - Iron Tail - TM087
  (134, 13400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Vaporeon - Taunt - TM095
  (134, 13400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Vaporeon - Hydro Pump - TM096
  (134, 13400, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 38),
  -- Vaporeon - Waterfall - TM098
  (134, 13400, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 39),
  -- Vaporeon - Blizzard - TM105
  (134, 13400, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 40),
  -- Vaporeon - Facade - TM109
  (134, 13400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Vaporeon - Chilling Water - TM110
  (134, 13400, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 42),
  -- Vaporeon - Trailblaze - TM115
  (134, 13400, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 43),
  -- Vaporeon - Mimic - TM125
  (134, 13400, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 44),
  -- Vaporeon - Muddy Water - TM140
  (134, 13400, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 45),
  -- Vaporeon - Skull Bash - TM146
  (134, 13400, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 46),
  -- Vaporeon - Scald - TM148
  (134, 13400, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 47),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Bite - Level 1
  (135, 13500, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Growl - Level 1
  (135, 13500, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jolteon - Quick Attack - Level 10
  (135, 13500, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Jolteon - Disarming Voice - Level 15
  (135, 13500, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Jolteon - Thunder Wave - Level 20
  (135, 13500, 86, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Jolteon - Headbutt - Level 25
  (135, 13500, 29, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Jolteon - Thunder Fang - Level 30
  (135, 13500, 422, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Jolteon - Pin Missile - Level 35
  (135, 13500, 42, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Jolteon - Thunderbolt - Level 40
  (135, 13500, 85, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Jolteon - Fake Tears - Level 45
  (135, 13500, 313, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Jolteon - Thunder - Level 50
  (135, 13500, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Jolteon - Headbutt - TM001
  (135, 13500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Jolteon - Roar - TM005
  (135, 13500, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Jolteon - Calm Mind - TM006
  (135, 13500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Jolteon - Thunder Wave - TM008
  (135, 13500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Jolteon - Light Screen - TM016
  (135, 13500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Jolteon - Protect - TM017
  (135, 13500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Jolteon - Thunder Fang - TM021
  (135, 13500, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Jolteon - Swift - TM027
  (135, 13500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Jolteon - Dig - TM028
  (135, 13500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Jolteon - Body Slam - TM033
  (135, 13500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Jolteon - Endure - TM035
  (135, 13500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Jolteon - Discharge - TM039
  (135, 13500, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 26),
  -- Jolteon - Hyper Beam - TM044
  (135, 13500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Jolteon - Agility - TM047
  (135, 13500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Jolteon - Giga Impact - TM055
  (135, 13500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Jolteon - Double-Edge - TM056
  (135, 13500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Jolteon - Volt Switch - TM066
  (135, 13500, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 31),
  -- Jolteon - Thunderbolt - TM067
  (135, 13500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Jolteon - Hyper Voice - TM071
  (135, 13500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Jolteon - Shadow Ball - TM074
  (135, 13500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Jolteon - Substitute - TM085
  (135, 13500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Jolteon - Wild Charge - TM086
  (135, 13500, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 36),
  -- Jolteon - Iron Tail - TM087
  (135, 13500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Jolteon - Electroweb - TM101
  (135, 13500, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 38),
  -- Jolteon - Thunder - TM106
  (135, 13500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 39),
  -- Jolteon - Facade - TM109
  (135, 13500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Jolteon - Trailblaze - TM115
  (135, 13500, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 41),
  -- Jolteon - False Swipe - TM122
  (135, 13500, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 42),
  -- Jolteon - Mimic - TM125
  (135, 13500, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 43),
  -- Jolteon - Charge Beam - TM130
  (135, 13500, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 44),
  -- Jolteon - Skull Bash - TM146
  (135, 13500, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 45),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Bite - Level 1
  (136, 13600, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Growl - Level 1
  (136, 13600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flareon - Quick Attack - Level 10
  (136, 13600, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Flareon - Disarming Voice - Level 15
  (136, 13600, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Flareon - Smokescreen - Level 20
  (136, 13600, 108, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Flareon - Flame Wheel - Level 25
  (136, 13600, 172, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Flareon - Fire Spin - Level 30
  (136, 13600, 83, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Flareon - Fire Fang - Level 35
  (136, 13600, 424, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Flareon - Lava Plume - Level 40
  (136, 13600, 436, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Flareon - Flare Blitz - Level 50
  (136, 13600, 394, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Flareon - Headbutt - TM001
  (136, 13600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Flareon - Roar - TM005
  (136, 13600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Flareon - Calm Mind - TM006
  (136, 13600, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Flareon - Fire Fang - TM014
  (136, 13600, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Flareon - Protect - TM017
  (136, 13600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Flareon - Swift - TM027
  (136, 13600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Flareon - Dig - TM028
  (136, 13600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Flareon - Swords Dance - TM030
  (136, 13600, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Flareon - Body Slam - TM033
  (136, 13600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Flareon - Endure - TM035
  (136, 13600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Flareon - Fire Blast - TM038
  (136, 13600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Flareon - Hyper Beam - TM044
  (136, 13600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Flareon - Giga Impact - TM055
  (136, 13600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Flareon - Double-Edge - TM056
  (136, 13600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Flareon - Will-O-Wisp - TM057
  (136, 13600, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Flareon - Flamethrower - TM062
  (136, 13600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 29),
  -- Flareon - Heat Wave - TM068
  (136, 13600, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 30),
  -- Flareon - Hyper Voice - TM071
  (136, 13600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Flareon - Fire Spin - TM072
  (136, 13600, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 32),
  -- Flareon - Shadow Ball - TM074
  (136, 13600, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Flareon - Substitute - TM085
  (136, 13600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Flareon - Iron Tail - TM087
  (136, 13600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Flareon - Taunt - TM095
  (136, 13600, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Flareon - Flare Blitz - TM104
  (136, 13600, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 37),
  -- Flareon - Facade - TM109
  (136, 13600, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Flareon - Flame Charge - TM114
  (136, 13600, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 39),
  -- Flareon - Trailblaze - TM115
  (136, 13600, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 40),
  -- Flareon - Mimic - TM125
  (136, 13600, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 41),
  -- Flareon - Scorching Sands - TM136
  (136, 13600, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 42),
  -- Flareon - Skull Bash - TM146
  (136, 13600, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 43),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Steel Wing - Level 1
  (142, 14200, 211, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 5
  (142, 14200, 48, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Aerodactyl - Wing Attack - Level 10
  (142, 14200, 17, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Aerodactyl - Rock Blast - Level 15
  (142, 14200, 350, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Aerodactyl - Rock Slide - Level 20
  (142, 14200, 157, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Aerodactyl - Roar - Level 25
  (142, 14200, 46, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Aerodactyl - Crunch - Level 30
  (142, 14200, 242, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Aerodactyl - Iron Head - Level 35
  (142, 14200, 442, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Aerodactyl - Take Down - Level 40
  (142, 14200, 36, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Aerodactyl - Stone Edge - Level 45
  (142, 14200, 444, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Aerodactyl - Hyper Beam - Level 55
  (142, 14200, 63, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Aerodactyl - Giga Impact - Level 60
  (142, 14200, 416, 26, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Aerodactyl - Dragon Claw - TM002
  (142, 14200, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Aerodactyl - Roar - TM005
  (142, 14200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Aerodactyl - Rock Slide - TM012
  (142, 14200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Aerodactyl - Fire Fang - TM014
  (142, 14200, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Aerodactyl - Ice Fang - TM015
  (142, 14200, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Aerodactyl - Protect - TM017
  (142, 14200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Aerodactyl - Thunder Fang - TM021
  (142, 14200, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Aerodactyl - Crunch - TM025
  (142, 14200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Aerodactyl - Swift - TM027
  (142, 14200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Aerodactyl - Endure - TM035
  (142, 14200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Aerodactyl - Rock Tomb - TM036
  (142, 14200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Aerodactyl - Stealth Rock - TM037
  (142, 14200, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 25),
  -- Aerodactyl - Fire Blast - TM038
  (142, 14200, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Aerodactyl - Fly - TM043
  (142, 14200, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 27),
  -- Aerodactyl - Hyper Beam - TM044
  (142, 14200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Aerodactyl - Agility - TM047
  (142, 14200, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Aerodactyl - Earth Power - TM052
  (142, 14200, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 30),
  -- Aerodactyl - Giga Impact - TM055
  (142, 14200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Aerodactyl - Iron Head - TM058
  (142, 14200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Aerodactyl - Flamethrower - TM062
  (142, 14200, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 33),
  -- Aerodactyl - Stone Edge - TM065
  (142, 14200, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 34),
  -- Aerodactyl - Heat Wave - TM068
  (142, 14200, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 35),
  -- Aerodactyl - Earthquake - TM069
  (142, 14200, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 36),
  -- Aerodactyl - Dragon Pulse - TM075
  (142, 14200, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Aerodactyl - Hurricane - TM079
  (142, 14200, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 38),
  -- Aerodactyl - Substitute - TM085
  (142, 14200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Aerodactyl - Iron Tail - TM087
  (142, 14200, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Aerodactyl - Whirlwind - TM094
  (142, 14200, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 41),
  -- Aerodactyl - Taunt - TM095
  (142, 14200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Aerodactyl - Facade - TM109
  (142, 14200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Aerodactyl - Ominous Wind - TM119
  (142, 14200, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 44),
  -- Aerodactyl - Ancient Power - TM120
  (142, 14200, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 45),
  -- Aerodactyl - Psychic Fangs - TM124
  (142, 14200, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 46),
  -- Aerodactyl - Dual Wingbeat - TM134
  (142, 14200, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 47),
  -- Aerodactyl - Swagger - TM139
  (142, 14200, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 48),
  -- Aerodactyl - Sky Attack - TM153
  (142, 14200, 143, 26, NULL, 2, NULL, NULL, 26002153, NULL, 49),
  -- Aerodactyl - Meteor Beam - TM156
  (142, 14200, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 50),
  -- Dratini - Tackle - Level 1
  (147, 14700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Twister - Level 5
  (147, 14700, 239, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Thunder Wave - Level 10
  (147, 14700, 86, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dratini - Take Down - Level 15
  (147, 14700, 36, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Breaking Swipe - Level 20
  (147, 14700, 784, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dratini - Brutal Swing - Level 25
  (147, 14700, 693, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Dragon Rush - Level 30
  (147, 14700, 407, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dratini - Safeguard - Level 40
  (147, 14700, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Dratini - Extreme Speed - Level 50
  (147, 14700, 245, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 26, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Dratini - Hyper Beam - Level 60
  (147, 14700, 63, 26, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Dratini - Thunder Wave - TM008
  (147, 14700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Dratini - Ice Beam - TM013
  (147, 14700, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Dratini - Light Screen - TM016
  (147, 14700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Dratini - Protect - TM017
  (147, 14700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Dratini - Swift - TM027
  (147, 14700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Dratini - Endure - TM035
  (147, 14700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Dratini - Fire Blast - TM038
  (147, 14700, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Dratini - Water Pulse - TM041
  (147, 14700, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Dratini - Hyper Beam - TM044
  (147, 14700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Dratini - Agility - TM047
  (147, 14700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Dratini - Safeguard - TM051
  (147, 14700, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 23),
  -- Dratini - Draco Meteor - TM054
  (147, 14700, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 24),
  -- Dratini - Giga Impact - TM055
  (147, 14700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Dratini - Iron Head - TM058
  (147, 14700, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 26),
  -- Dratini - Flamethrower - TM062
  (147, 14700, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 27),
  -- Dratini - Thunderbolt - TM067
  (147, 14700, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Dratini - Whirlpool - TM070
  (147, 14700, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 29),
  -- Dratini - Fire Spin - TM072
  (147, 14700, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 30),
  -- Dratini - Surf - TM073
  (147, 14700, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 31),
  -- Dratini - Dragon Pulse - TM075
  (147, 14700, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 32),
  -- Dratini - Substitute - TM085
  (147, 14700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Dratini - Outrage - TM093
  (147, 14700, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Dratini - Hydro Pump - TM096
  (147, 14700, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Dratini - Waterfall - TM098
  (147, 14700, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Dratini - Blizzard - TM105
  (147, 14700, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Dratini - Thunder - TM106
  (147, 14700, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Dratini - Facade - TM109
  (147, 14700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Dratini - Chilling Water - TM110
  (147, 14700, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 40),
  -- Dratini - Scale Shot - TM143
  (147, 14700, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 41),
  -- Dragonair - Tackle - Level 1
  (148, 14800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Twister - Level 5
  (148, 14800, 239, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dragonair - Thunder Wave - Level 10
  (148, 14800, 86, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dragonair - Take Down - Level 15
  (148, 14800, 36, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragonair - Breaking Swipe - Level 20
  (148, 14800, 784, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragonair - Brutal Swing - Level 25
  (148, 14800, 693, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragonair - Dragon Rush - Level 30
  (148, 14800, 407, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dragonair - Safeguard - Level 40
  (148, 14800, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Dragonair - Extreme Speed - Level 50
  (148, 14800, 245, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Dragonair - Outrage - Level 55
  (148, 14800, 200, 26, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Dragonair - Hyper Beam - Level 60
  (148, 14800, 63, 26, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Dragonair - Thunder Wave - TM008
  (148, 14800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Dragonair - Ice Beam - TM013
  (148, 14800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Dragonair - Light Screen - TM016
  (148, 14800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Dragonair - Protect - TM017
  (148, 14800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Dragonair - Swift - TM027
  (148, 14800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Dragonair - Endure - TM035
  (148, 14800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Dragonair - Fire Blast - TM038
  (148, 14800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Dragonair - Water Pulse - TM041
  (148, 14800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Dragonair - Hyper Beam - TM044
  (148, 14800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Dragonair - Agility - TM047
  (148, 14800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Dragonair - Safeguard - TM051
  (148, 14800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 23),
  -- Dragonair - Draco Meteor - TM054
  (148, 14800, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 24),
  -- Dragonair - Giga Impact - TM055
  (148, 14800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Dragonair - Iron Head - TM058
  (148, 14800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 26),
  -- Dragonair - Flamethrower - TM062
  (148, 14800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 27),
  -- Dragonair - Thunderbolt - TM067
  (148, 14800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Dragonair - Whirlpool - TM070
  (148, 14800, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 29),
  -- Dragonair - Fire Spin - TM072
  (148, 14800, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 30),
  -- Dragonair - Surf - TM073
  (148, 14800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 31),
  -- Dragonair - Dragon Pulse - TM075
  (148, 14800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 32),
  -- Dragonair - Substitute - TM085
  (148, 14800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Dragonair - Outrage - TM093
  (148, 14800, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Dragonair - Hydro Pump - TM096
  (148, 14800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Dragonair - Waterfall - TM098
  (148, 14800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Dragonair - Blizzard - TM105
  (148, 14800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Dragonair - Thunder - TM106
  (148, 14800, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 38),
  -- Dragonair - Facade - TM109
  (148, 14800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Dragonair - Chilling Water - TM110
  (148, 14800, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 40),
  -- Dragonair - Scale Shot - TM143
  (148, 14800, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 41),
  -- Dragonite - Tackle - Level 1
  (149, 14900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Air Slash - Level 1
  (149, 14900, 403, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Twister - Level 5
  (149, 14900, 239, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 10
  (149, 14900, 86, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Dragonite - Take Down - Level 15
  (149, 14900, 36, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragonite - Breaking Swipe - Level 20
  (149, 14900, 784, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dragonite - Brutal Swing - Level 25
  (149, 14900, 693, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dragonite - Dragon Rush - Level 30
  (149, 14900, 407, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Dragonite - Safeguard - Level 40
  (149, 14900, 219, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dragonite - Extreme Speed - Level 50
  (149, 14900, 245, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Dragonite - Outrage - Level 55
  (149, 14900, 200, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Dragonite - Hyper Beam - Level 60
  (149, 14900, 63, 26, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Dragonite - Hurricane - Evolution
  (149, 14900, 542, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Dragonite - Dragon Claw - TM002
  (149, 14900, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Dragonite - Roar - TM005
  (149, 14900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Dragonite - Thunder Wave - TM008
  (149, 14900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Dragonite - Brick Break - TM010
  (149, 14900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Dragonite - Rock Slide - TM012
  (149, 14900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Dragonite - Ice Beam - TM013
  (149, 14900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Dragonite - Light Screen - TM016
  (149, 14900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Dragonite - Protect - TM017
  (149, 14900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Dragonite - Aerial Ace - TM022
  (149, 14900, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Dragonite - Thunder Punch - TM023
  (149, 14900, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Dragonite - Ice Punch - TM024
  (149, 14900, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Dragonite - Swift - TM027
  (149, 14900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Dragonite - Fire Punch - TM029
  (149, 14900, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Dragonite - Endure - TM035
  (149, 14900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Dragonite - Rock Tomb - TM036
  (149, 14900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Dragonite - Fire Blast - TM038
  (149, 14900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Dragonite - Water Pulse - TM041
  (149, 14900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 31),
  -- Dragonite - Fly - TM043
  (149, 14900, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 32),
  -- Dragonite - Hyper Beam - TM044
  (149, 14900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Dragonite - Agility - TM047
  (149, 14900, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 34),
  -- Dragonite - Safeguard - TM051
  (149, 14900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 35),
  -- Dragonite - Draco Meteor - TM054
  (149, 14900, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 36),
  -- Dragonite - Giga Impact - TM055
  (149, 14900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Dragonite - Iron Head - TM058
  (149, 14900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 38),
  -- Dragonite - Flamethrower - TM062
  (149, 14900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 39),
  -- Dragonite - Stone Edge - TM065
  (149, 14900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Dragonite - Thunderbolt - TM067
  (149, 14900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 41),
  -- Dragonite - Heat Wave - TM068
  (149, 14900, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 42),
  -- Dragonite - Earthquake - TM069
  (149, 14900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 43),
  -- Dragonite - Whirlpool - TM070
  (149, 14900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 44),
  -- Dragonite - Fire Spin - TM072
  (149, 14900, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 45),
  -- Dragonite - Surf - TM073
  (149, 14900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 46),
  -- Dragonite - Dragon Pulse - TM075
  (149, 14900, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 47),
  -- Dragonite - Hurricane - TM079
  (149, 14900, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 48),
  -- Dragonite - Substitute - TM085
  (149, 14900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 49),
  -- Dragonite - Outrage - TM093
  (149, 14900, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 50),
  -- Dragonite - Whirlwind - TM094
  (149, 14900, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 51),
  -- Dragonite - Hydro Pump - TM096
  (149, 14900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 52),
  -- Dragonite - Waterfall - TM098
  (149, 14900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 53),
  -- Dragonite - Metronome - TM099
  (149, 14900, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 54),
  -- Dragonite - Focus Blast - TM102
  (149, 14900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 55),
  -- Dragonite - Blizzard - TM105
  (149, 14900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 56),
  -- Dragonite - Thunder - TM106
  (149, 14900, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 57),
  -- Dragonite - Facade - TM109
  (149, 14900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 58),
  -- Dragonite - Chilling Water - TM110
  (149, 14900, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 59),
  -- Dragonite - Dual Wingbeat - TM134
  (149, 14900, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 60),
  -- Dragonite - Scale Shot - TM143
  (149, 14900, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 61),
  -- Dragonite - Razor Wind - TM145
  (149, 14900, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 62),
  -- Dragonite - Skull Bash - TM146
  (149, 14900, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 63),
  -- Dragonite - Vacuum Wave - TM150
  (149, 14900, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 64),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Swift - Level 1
  (150, 15000, 129, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Psybeam - Level 12
  (150, 15000, 60, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Mewtwo - Psycho Cut - Level 16
  (150, 15000, 427, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mewtwo - Safeguard - Level 24
  (150, 15000, 219, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Mewtwo - Amnesia - Level 32
  (150, 15000, 133, 26, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Mewtwo - Aura Sphere - Level 40
  (150, 15000, 396, 26, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Mewtwo - Psychic - Level 48
  (150, 15000, 94, 26, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Mewtwo - Mist - Level 64
  (150, 15000, 54, 26, NULL, 1, 64, NULL, NULL, NULL, 9),
  -- Mewtwo - Psystrike - Level 72
  (150, 15000, 540, 26, NULL, 1, 72, NULL, NULL, NULL, 10),
  -- Mewtwo - Recover - Level 80
  (150, 15000, 105, 26, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Mewtwo - Future Sight - Level 88
  (150, 15000, 248, 26, NULL, 1, 88, NULL, NULL, NULL, 12),
  -- Mewtwo - Psyshock - TM003
  (150, 15000, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Mewtwo - Calm Mind - TM006
  (150, 15000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Mewtwo - Toxic - TM007
  (150, 15000, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Mewtwo - Thunder Wave - TM008
  (150, 15000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Mewtwo - Brick Break - TM010
  (150, 15000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Mewtwo - Bulk Up - TM011
  (150, 15000, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Mewtwo - Rock Slide - TM012
  (150, 15000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Mewtwo - Ice Beam - TM013
  (150, 15000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Mewtwo - Light Screen - TM016
  (150, 15000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Mewtwo - Protect - TM017
  (150, 15000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Mewtwo - Power Gem - TM019
  (150, 15000, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 23),
  -- Mewtwo - Aerial Ace - TM022
  (150, 15000, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Mewtwo - Thunder Punch - TM023
  (150, 15000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Mewtwo - Ice Punch - TM024
  (150, 15000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 26),
  -- Mewtwo - Energy Ball - TM026
  (150, 15000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 27),
  -- Mewtwo - Swift - TM027
  (150, 15000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 28),
  -- Mewtwo - Fire Punch - TM029
  (150, 15000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 29),
  -- Mewtwo - Reflect - TM031
  (150, 15000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 30),
  -- Mewtwo - Endure - TM035
  (150, 15000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Mewtwo - Rock Tomb - TM036
  (150, 15000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 32),
  -- Mewtwo - Fire Blast - TM038
  (150, 15000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 33),
  -- Mewtwo - Discharge - TM039
  (150, 15000, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 34),
  -- Mewtwo - Hyper Beam - TM044
  (150, 15000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Mewtwo - Agility - TM047
  (150, 15000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 36),
  -- Mewtwo - Self-Destruct - TM048
  (150, 15000, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 37),
  -- Mewtwo - Safeguard - TM051
  (150, 15000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 38),
  -- Mewtwo - Earth Power - TM052
  (150, 15000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 39),
  -- Mewtwo - Giga Impact - TM055
  (150, 15000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Mewtwo - Double-Edge - TM056
  (150, 15000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 41),
  -- Mewtwo - Will-O-Wisp - TM057
  (150, 15000, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 42),
  -- Mewtwo - Zen Headbutt - TM059
  (150, 15000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 43),
  -- Mewtwo - Future Sight - TM060
  (150, 15000, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 44),
  -- Mewtwo - Flamethrower - TM062
  (150, 15000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 45),
  -- Mewtwo - Psychic - TM063
  (150, 15000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 46),
  -- Mewtwo - Solar Beam - TM064
  (150, 15000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 47),
  -- Mewtwo - Stone Edge - TM065
  (150, 15000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 48),
  -- Mewtwo - Thunderbolt - TM067
  (150, 15000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 49),
  -- Mewtwo - Earthquake - TM069
  (150, 15000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 50),
  -- Mewtwo - Shadow Ball - TM074
  (150, 15000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 51),
  -- Mewtwo - Poison Jab - TM077
  (150, 15000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 52),
  -- Mewtwo - Hurricane - TM079
  (150, 15000, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 53),
  -- Mewtwo - Nasty Plot - TM083
  (150, 15000, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 54),
  -- Mewtwo - Substitute - TM085
  (150, 15000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 55),
  -- Mewtwo - Iron Tail - TM087
  (150, 15000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 56),
  -- Mewtwo - Dark Pulse - TM090
  (150, 15000, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 57),
  -- Mewtwo - Taunt - TM095
  (150, 15000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 58),
  -- Mewtwo - Heal Block - TM097
  (150, 15000, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 59),
  -- Mewtwo - Metronome - TM099
  (150, 15000, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 60),
  -- Mewtwo - Focus Blast - TM102
  (150, 15000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 61),
  -- Mewtwo - Blizzard - TM105
  (150, 15000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 62),
  -- Mewtwo - Thunder - TM106
  (150, 15000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 63),
  -- Mewtwo - Comet Punch - TM108
  (150, 15000, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 64),
  -- Mewtwo - Facade - TM109
  (150, 15000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 65),
  -- Mewtwo - Chilling Water - TM110
  (150, 15000, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 66),
  -- Mewtwo - Low Sweep - TM113
  (150, 15000, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 67),
  -- Mewtwo - Trailblaze - TM115
  (150, 15000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 68),
  -- Mewtwo - Pay Day - TM116
  (150, 15000, 6, 26, NULL, 2, NULL, NULL, 26002116, NULL, 69),
  -- Mewtwo - Ancient Power - TM120
  (150, 15000, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 70),
  -- Mewtwo - Dream Eater - TM127
  (150, 15000, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 71),
  -- Mewtwo - Drain Punch - TM131
  (150, 15000, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 72),
  -- Mewtwo - Tri Attack - TM147
  (150, 15000, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 73),
  -- Mewtwo - Vacuum Wave - TM150
  (150, 15000, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 74);
