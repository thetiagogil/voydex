-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM107 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 701-750.
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
  (701, 70100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hawlucha - Wing Attack - Level 4
  (701, 70100, 17, 26, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Hawlucha - Detect - Level 8
  (701, 70100, 197, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Hawlucha - Aerial Ace - Level 12
  (701, 70100, 332, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Hawlucha - Feather Dance - Level 20
  (701, 70100, 297, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Hawlucha - Brick Break - Level 24
  (701, 70100, 280, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Hawlucha - Lunge - Level 26
  (701, 70100, 679, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Hawlucha - Bounce - Level 28
  (701, 70100, 340, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Hawlucha - Taunt - Level 32
  (701, 70100, 269, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Hawlucha - Flying Press - Level 36
  (701, 70100, 560, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Hawlucha - Swords Dance - Level 40
  (701, 70100, 14, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Hawlucha - Air Slash - Level 44
  (701, 70100, 403, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Hawlucha - Brave Bird - Level 52
  (701, 70100, 413, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Hawlucha - Brick Break - TM010
  (701, 70100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Hawlucha - Bulk Up - TM011
  (701, 70100, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 15),
  -- Hawlucha - Rock Slide - TM012
  (701, 70100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Hawlucha - Protect - TM017
  (701, 70100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Hawlucha - Aerial Ace - TM022
  (701, 70100, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Hawlucha - Thunder Punch - TM023
  (701, 70100, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Hawlucha - Swift - TM027
  (701, 70100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Hawlucha - Dig - TM028
  (701, 70100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Hawlucha - Fire Punch - TM029
  (701, 70100, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Hawlucha - Swords Dance - TM030
  (701, 70100, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Hawlucha - Body Slam - TM033
  (701, 70100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Hawlucha - Endure - TM035
  (701, 70100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Hawlucha - Rock Tomb - TM036
  (701, 70100, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Hawlucha - Fly - TM043
  (701, 70100, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 27),
  -- Hawlucha - Hyper Beam - TM044
  (701, 70100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Hawlucha - Agility - TM047
  (701, 70100, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Hawlucha - Giga Impact - TM055
  (701, 70100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Hawlucha - Iron Head - TM058
  (701, 70100, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 31),
  -- Hawlucha - Zen Headbutt - TM059
  (701, 70100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Hawlucha - Stone Edge - TM065
  (701, 70100, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Hawlucha - Poison Jab - TM077
  (701, 70100, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Hawlucha - X-Scissor - TM081
  (701, 70100, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 35),
  -- Hawlucha - U-turn - TM082
  (701, 70100, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 36),
  -- Hawlucha - Substitute - TM085
  (701, 70100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Hawlucha - Taunt - TM095
  (701, 70100, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Hawlucha - Focus Blast - TM102
  (701, 70100, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 39),
  -- Hawlucha - Close Combat - TM107
  (701, 70100, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 40),
  -- Dedenne - Tackle - Level 1
  (702, 70200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dedenne - Tail Whip - Level 1
  (702, 70200, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dedenne - Thunder Shock - Level 1
  (702, 70200, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dedenne - Nuzzle - Level 1
  (702, 70200, 609, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dedenne - Charge - Level 5
  (702, 70200, 268, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dedenne - Charm - Level 10
  (702, 70200, 204, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Dedenne - Parabolic Charge - Level 15
  (702, 70200, 570, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dedenne - Eerie Impulse - Level 20
  (702, 70200, 598, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Dedenne - Volt Switch - Level 25
  (702, 70200, 521, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dedenne - Play Rough - Level 30
  (702, 70200, 583, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dedenne - Thunderbolt - Level 35
  (702, 70200, 85, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Dedenne - Super Fang - Level 40
  (702, 70200, 162, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dedenne - Thunder - Level 50
  (702, 70200, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dedenne - Thunder Wave - TM008
  (702, 70200, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Dedenne - Light Screen - TM016
  (702, 70200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Dedenne - Protect - TM017
  (702, 70200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Dedenne - Play Rough - TM020
  (702, 70200, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Dedenne - Thunder Punch - TM023
  (702, 70200, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Dedenne - Swift - TM027
  (702, 70200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Dedenne - Dig - TM028
  (702, 70200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Dedenne - Endure - TM035
  (702, 70200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Dedenne - Discharge - TM039
  (702, 70200, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 22),
  -- Dedenne - Hyper Beam - TM044
  (702, 70200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Dedenne - Agility - TM047
  (702, 70200, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Dedenne - Giga Impact - TM055
  (702, 70200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Dedenne - Volt Switch - TM066
  (702, 70200, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 26),
  -- Dedenne - Thunderbolt - TM067
  (702, 70200, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 27),
  -- Dedenne - U-turn - TM082
  (702, 70200, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 28),
  -- Dedenne - Substitute - TM085
  (702, 70200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Dedenne - Wild Charge - TM086
  (702, 70200, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 30),
  -- Dedenne - Dazzling Gleam - TM092
  (702, 70200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Dedenne - Thunder - TM106
  (702, 70200, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 32),
  -- Carbink - Tackle - Level 1
  (703, 70300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carbink - Harden - Level 1
  (703, 70300, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carbink - Rock Throw - Level 12
  (703, 70300, 88, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Carbink - Take Down - Level 15
  (703, 70300, 36, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Carbink - Dazzling Gleam - Level 23
  (703, 70300, 605, 26, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Carbink - Iron Defense - Level 25
  (703, 70300, 334, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Carbink - Power Gem - Level 28
  (703, 70300, 408, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Carbink - Light Screen - Level 30
  (703, 70300, 113, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Carbink - Flash Cannon - Level 32
  (703, 70300, 430, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Carbink - Rock Slide - Level 35
  (703, 70300, 157, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Carbink - Stealth Rock - Level 38
  (703, 70300, 446, 26, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Carbink - Moonblast - Level 45
  (703, 70300, 585, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Carbink - Stone Edge - Level 52
  (703, 70300, 444, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Carbink - Calm Mind - TM006
  (703, 70300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Carbink - Rock Slide - TM012
  (703, 70300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Carbink - Light Screen - TM016
  (703, 70300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Carbink - Protect - TM017
  (703, 70300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Carbink - Power Gem - TM019
  (703, 70300, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 18),
  -- Carbink - Reflect - TM031
  (703, 70300, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Carbink - Body Slam - TM033
  (703, 70300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Carbink - Endure - TM035
  (703, 70300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Carbink - Rock Tomb - TM036
  (703, 70300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Carbink - Stealth Rock - TM037
  (703, 70300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Carbink - Hyper Beam - TM044
  (703, 70300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Carbink - Self-Destruct - TM048
  (703, 70300, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Carbink - Earth Power - TM052
  (703, 70300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Carbink - Giga Impact - TM055
  (703, 70300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Carbink - Double-Edge - TM056
  (703, 70300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Carbink - Iron Head - TM058
  (703, 70300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Carbink - Psychic - TM063
  (703, 70300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 30),
  -- Carbink - Stone Edge - TM065
  (703, 70300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 31),
  -- Carbink - Iron Defense - TM080
  (703, 70300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Carbink - Flash Cannon - TM084
  (703, 70300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 33),
  -- Carbink - Substitute - TM085
  (703, 70300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Carbink - Spikes - TM088
  (703, 70300, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 35),
  -- Carbink - Dazzling Gleam - TM092
  (703, 70300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 36),
  -- Goomy - Tackle - Level 1
  (704, 70400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goomy - Absorb - Level 1
  (704, 70400, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goomy - Water Gun - Level 5
  (704, 70400, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goomy - Charm - Level 8
  (704, 70400, 204, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Goomy - Dragon Breath - Level 10
  (704, 70400, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Goomy - Protect - Level 15
  (704, 70400, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Goomy - Mud Shot - Level 18
  (704, 70400, 341, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Goomy - Water Pulse - Level 25
  (704, 70400, 352, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Goomy - Dragon Pulse - Level 30
  (704, 70400, 406, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Goomy - Take Down - Level 35
  (704, 70400, 36, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Goomy - Curse - Level 41
  (704, 70400, 174, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Goomy - Body Slam - Level 45
  (704, 70400, 34, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Goomy - Surf - Level 56
  (704, 70400, 57, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Goomy - Toxic - TM007
  (704, 70400, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 14),
  -- Goomy - Rock Slide - TM012
  (704, 70400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Goomy - Protect - TM017
  (704, 70400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Goomy - Body Slam - TM033
  (704, 70400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 17),
  -- Goomy - Endure - TM035
  (704, 70400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Goomy - Water Pulse - TM041
  (704, 70400, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 19),
  -- Goomy - Mud Shot - TM046
  (704, 70400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 20),
  -- Goomy - Sludge Bomb - TM053
  (704, 70400, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 21),
  -- Goomy - Draco Meteor - TM054
  (704, 70400, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 22),
  -- Goomy - Thunderbolt - TM067
  (704, 70400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 23),
  -- Goomy - Surf - TM073
  (704, 70400, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 24),
  -- Goomy - Dragon Pulse - TM075
  (704, 70400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 25),
  -- Goomy - Substitute - TM085
  (704, 70400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Goomy - Curse - TM091
  (704, 70400, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 27),
  -- Goomy - Outrage - TM093
  (704, 70400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 28),
  -- Sliggoo - Tackle - Level 1
  (705, 70500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo - Absorb - Level 1
  (705, 70500, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sliggoo - Acid Armor - Level 1
  (705, 70500, 151, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sliggoo - Water Gun - Level 5
  (705, 70500, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Sliggoo - Charm - Level 8
  (705, 70500, 204, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Sliggoo - Dragon Breath - Level 10
  (705, 70500, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Sliggoo - Protect - Level 15
  (705, 70500, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sliggoo - Mud Shot - Level 18
  (705, 70500, 341, 26, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sliggoo - Water Pulse - Level 25
  (705, 70500, 352, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sliggoo - Dragon Pulse - Level 30
  (705, 70500, 406, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Sliggoo - Take Down - Level 35
  (705, 70500, 36, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Sliggoo - Curse - Level 41
  (705, 70500, 174, 26, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Sliggoo - Body Slam - Level 45
  (705, 70500, 34, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sliggoo - Surf - Level 56
  (705, 70500, 57, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Sliggoo - Toxic - TM007
  (705, 70500, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Sliggoo - Rock Slide - TM012
  (705, 70500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Sliggoo - Ice Beam - TM013
  (705, 70500, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Sliggoo - Protect - TM017
  (705, 70500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Sliggoo - Body Slam - TM033
  (705, 70500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Sliggoo - Endure - TM035
  (705, 70500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Sliggoo - Water Pulse - TM041
  (705, 70500, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 21),
  -- Sliggoo - Mud Shot - TM046
  (705, 70500, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Sliggoo - Sludge Bomb - TM053
  (705, 70500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Sliggoo - Draco Meteor - TM054
  (705, 70500, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 24),
  -- Sliggoo - Thunderbolt - TM067
  (705, 70500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Sliggoo - Surf - TM073
  (705, 70500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Sliggoo - Dragon Pulse - TM075
  (705, 70500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Sliggoo - Substitute - TM085
  (705, 70500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Sliggoo - Curse - TM091
  (705, 70500, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 29),
  -- Sliggoo - Outrage - TM093
  (705, 70500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 30),
  -- Sliggoo - Blizzard - TM105
  (705, 70500, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 31),
  -- Sliggoo - Thunder - TM106
  (705, 70500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 32),
  -- Hisuian Sliggoo - Tackle - Level 1
  (705, 70501, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hisuian Sliggoo - Absorb - Level 1
  (705, 70501, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hisuian Sliggoo - Acid Armor - Level 1
  (705, 70501, 151, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hisuian Sliggoo - Water Gun - Level 5
  (705, 70501, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Hisuian Sliggoo - Charm - Level 8
  (705, 70501, 204, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hisuian Sliggoo - Dragon Breath - Level 10
  (705, 70501, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hisuian Sliggoo - Protect - Level 15
  (705, 70501, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hisuian Sliggoo - Mud Shot - Level 18
  (705, 70501, 341, 26, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Hisuian Sliggoo - Water Pulse - Level 25
  (705, 70501, 352, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hisuian Sliggoo - Dragon Pulse - Level 30
  (705, 70501, 406, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Hisuian Sliggoo - Take Down - Level 35
  (705, 70501, 36, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Hisuian Sliggoo - Curse - Level 41
  (705, 70501, 174, 26, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Hisuian Sliggoo - Body Slam - Level 45
  (705, 70501, 34, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Hisuian Sliggoo - Surf - Level 56
  (705, 70501, 57, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Hisuian Sliggoo - Iron Defense - Evolution
  (705, 70501, 334, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Hisuian Sliggoo - Toxic - TM007
  (705, 70501, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Hisuian Sliggoo - Rock Slide - TM012
  (705, 70501, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Hisuian Sliggoo - Ice Beam - TM013
  (705, 70501, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Hisuian Sliggoo - Protect - TM017
  (705, 70501, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Hisuian Sliggoo - Body Slam - TM033
  (705, 70501, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Hisuian Sliggoo - Endure - TM035
  (705, 70501, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Hisuian Sliggoo - Rock Tomb - TM036
  (705, 70501, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Hisuian Sliggoo - Water Pulse - TM041
  (705, 70501, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 23),
  -- Hisuian Sliggoo - Mud Shot - TM046
  (705, 70501, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Hisuian Sliggoo - Sludge Bomb - TM053
  (705, 70501, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 25),
  -- Hisuian Sliggoo - Draco Meteor - TM054
  (705, 70501, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 26),
  -- Hisuian Sliggoo - Iron Head - TM058
  (705, 70501, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 27),
  -- Hisuian Sliggoo - Thunderbolt - TM067
  (705, 70501, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Hisuian Sliggoo - Surf - TM073
  (705, 70501, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 29),
  -- Hisuian Sliggoo - Dragon Pulse - TM075
  (705, 70501, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 30),
  -- Hisuian Sliggoo - Iron Defense - TM080
  (705, 70501, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Hisuian Sliggoo - Substitute - TM085
  (705, 70501, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Hisuian Sliggoo - Curse - TM091
  (705, 70501, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Hisuian Sliggoo - Outrage - TM093
  (705, 70501, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Hisuian Sliggoo - Blizzard - TM105
  (705, 70501, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 35),
  -- Hisuian Sliggoo - Thunder - TM106
  (705, 70501, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 36),
  -- Goodra - Tackle - Level 1
  (706, 70600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra - Absorb - Level 1
  (706, 70600, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goodra - Acid Armor - Level 1
  (706, 70600, 151, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goodra - Breaking Swipe - Level 1
  (706, 70600, 784, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Goodra - Water Gun - Level 5
  (706, 70600, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Goodra - Charm - Level 8
  (706, 70600, 204, 26, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Goodra - Dragon Breath - Level 10
  (706, 70600, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Goodra - Protect - Level 15
  (706, 70600, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Goodra - Mud Shot - Level 18
  (706, 70600, 341, 26, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Goodra - Water Pulse - Level 25
  (706, 70600, 352, 26, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Goodra - Dragon Pulse - Level 30
  (706, 70600, 406, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Goodra - Take Down - Level 35
  (706, 70600, 36, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Goodra - Curse - Level 41
  (706, 70600, 174, 26, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Goodra - Body Slam - Level 45
  (706, 70600, 34, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Goodra - Surf - Level 56
  (706, 70600, 57, 26, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Goodra - Power Whip - Level 58
  (706, 70600, 438, 26, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Goodra - Dragon Claw - TM002
  (706, 70600, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Goodra - Toxic - TM007
  (706, 70600, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 18),
  -- Goodra - Rock Slide - TM012
  (706, 70600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Goodra - Ice Beam - TM013
  (706, 70600, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Goodra - Protect - TM017
  (706, 70600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Goodra - Thunder Punch - TM023
  (706, 70600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Goodra - Fire Punch - TM029
  (706, 70600, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 23),
  -- Goodra - Body Slam - TM033
  (706, 70600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Goodra - Endure - TM035
  (706, 70600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Goodra - Fire Blast - TM038
  (706, 70600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Goodra - Water Pulse - TM041
  (706, 70600, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 27),
  -- Goodra - Giga Drain - TM042
  (706, 70600, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 28),
  -- Goodra - Hyper Beam - TM044
  (706, 70600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Goodra - Knock Off - TM045
  (706, 70600, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Goodra - Mud Shot - TM046
  (706, 70600, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 31),
  -- Goodra - Sludge Bomb - TM053
  (706, 70600, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 32),
  -- Goodra - Draco Meteor - TM054
  (706, 70600, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 33),
  -- Goodra - Giga Impact - TM055
  (706, 70600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Goodra - Flamethrower - TM062
  (706, 70600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 35),
  -- Goodra - Thunderbolt - TM067
  (706, 70600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Goodra - Earthquake - TM069
  (706, 70600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Goodra - Surf - TM073
  (706, 70600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 38),
  -- Goodra - Dragon Pulse - TM075
  (706, 70600, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 39),
  -- Goodra - Bulldoze - TM078
  (706, 70600, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 40),
  -- Goodra - Substitute - TM085
  (706, 70600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Goodra - Curse - TM091
  (706, 70600, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 42),
  -- Goodra - Outrage - TM093
  (706, 70600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 43),
  -- Goodra - Hydro Pump - TM096
  (706, 70600, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 44),
  -- Goodra - Focus Blast - TM102
  (706, 70600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 45),
  -- Goodra - Blizzard - TM105
  (706, 70600, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 46),
  -- Goodra - Thunder - TM106
  (706, 70600, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 47),
  -- Hisuian Goodra - Tackle - Level 1
  (706, 70601, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hisuian Goodra - Absorb - Level 1
  (706, 70601, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hisuian Goodra - Acid Armor - Level 1
  (706, 70601, 151, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hisuian Goodra - Iron Defense - Level 1
  (706, 70601, 334, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hisuian Goodra - Water Gun - Level 5
  (706, 70601, 55, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Hisuian Goodra - Charm - Level 8
  (706, 70601, 204, 26, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Hisuian Goodra - Dragon Breath - Level 10
  (706, 70601, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Hisuian Goodra - Protect - Level 15
  (706, 70601, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Hisuian Goodra - Mud Shot - Level 18
  (706, 70601, 341, 26, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Hisuian Goodra - Water Pulse - Level 25
  (706, 70601, 352, 26, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hisuian Goodra - Dragon Pulse - Level 30
  (706, 70601, 406, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Hisuian Goodra - Take Down - Level 35
  (706, 70601, 36, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Hisuian Goodra - Curse - Level 41
  (706, 70601, 174, 26, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Hisuian Goodra - Iron Tail - Level 44
  (706, 70601, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Hisuian Goodra - Body Slam - Level 45
  (706, 70601, 34, 26, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Hisuian Goodra - Heavy Slam - Level 55
  (706, 70601, 484, 26, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Hisuian Goodra - Surf - Level 56
  (706, 70601, 57, 26, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Hisuian Goodra - Sludge Wave - Level 58
  (706, 70601, 482, 26, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Hisuian Goodra - Dragon Claw - TM002
  (706, 70601, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 19),
  -- Hisuian Goodra - Toxic - TM007
  (706, 70601, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 20),
  -- Hisuian Goodra - Rock Slide - TM012
  (706, 70601, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Hisuian Goodra - Ice Beam - TM013
  (706, 70601, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 22),
  -- Hisuian Goodra - Protect - TM017
  (706, 70601, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Hisuian Goodra - Thunder Punch - TM023
  (706, 70601, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Hisuian Goodra - Fire Punch - TM029
  (706, 70601, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Hisuian Goodra - Body Slam - TM033
  (706, 70601, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Hisuian Goodra - Endure - TM035
  (706, 70601, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Hisuian Goodra - Rock Tomb - TM036
  (706, 70601, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Hisuian Goodra - Fire Blast - TM038
  (706, 70601, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 29),
  -- Hisuian Goodra - Water Pulse - TM041
  (706, 70601, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 30),
  -- Hisuian Goodra - Hyper Beam - TM044
  (706, 70601, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Hisuian Goodra - Knock Off - TM045
  (706, 70601, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 32),
  -- Hisuian Goodra - Mud Shot - TM046
  (706, 70601, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 33),
  -- Hisuian Goodra - Sludge Bomb - TM053
  (706, 70601, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 34),
  -- Hisuian Goodra - Draco Meteor - TM054
  (706, 70601, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 35),
  -- Hisuian Goodra - Giga Impact - TM055
  (706, 70601, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 36),
  -- Hisuian Goodra - Iron Head - TM058
  (706, 70601, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 37),
  -- Hisuian Goodra - Flamethrower - TM062
  (706, 70601, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 38),
  -- Hisuian Goodra - Thunderbolt - TM067
  (706, 70601, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 39),
  -- Hisuian Goodra - Earthquake - TM069
  (706, 70601, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 40),
  -- Hisuian Goodra - Surf - TM073
  (706, 70601, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 41),
  -- Hisuian Goodra - Dragon Pulse - TM075
  (706, 70601, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 42),
  -- Hisuian Goodra - Bulldoze - TM078
  (706, 70601, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 43),
  -- Hisuian Goodra - Iron Defense - TM080
  (706, 70601, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 44),
  -- Hisuian Goodra - Flash Cannon - TM084
  (706, 70601, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 45),
  -- Hisuian Goodra - Substitute - TM085
  (706, 70601, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Hisuian Goodra - Iron Tail - TM087
  (706, 70601, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 47),
  -- Hisuian Goodra - Curse - TM091
  (706, 70601, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 48),
  -- Hisuian Goodra - Outrage - TM093
  (706, 70601, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 49),
  -- Hisuian Goodra - Hydro Pump - TM096
  (706, 70601, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 50),
  -- Hisuian Goodra - Blizzard - TM105
  (706, 70601, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 51),
  -- Hisuian Goodra - Thunder - TM106
  (706, 70601, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 52),
  -- Klefki - Tackle - Level 1
  (707, 70700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klefki - Fairy Wind - Level 8
  (707, 70700, 584, 26, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Klefki - Metal Claw - Level 13
  (707, 70700, 232, 26, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Klefki - Metal Sound - Level 20
  (707, 70700, 319, 26, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Klefki - Draining Kiss - Level 24
  (707, 70700, 577, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Klefki - Flash Cannon - Level 36
  (707, 70700, 430, 26, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Klefki - Play Rough - Level 40
  (707, 70700, 583, 26, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Klefki - Dazzling Gleam - Level 44
  (707, 70700, 605, 26, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Klefki - Heal Block - Level 52
  (707, 70700, 377, 26, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Klefki - Psyshock - TM003
  (707, 70700, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 10),
  -- Klefki - Calm Mind - TM006
  (707, 70700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 11),
  -- Klefki - Thunder Wave - TM008
  (707, 70700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 12),
  -- Klefki - Light Screen - TM016
  (707, 70700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 13),
  -- Klefki - Protect - TM017
  (707, 70700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Klefki - Play Rough - TM020
  (707, 70700, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 15),
  -- Klefki - Swift - TM027
  (707, 70700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Klefki - Reflect - TM031
  (707, 70700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 17),
  -- Klefki - Double Team - TM032
  (707, 70700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 18),
  -- Klefki - Endure - TM035
  (707, 70700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Klefki - Hyper Beam - TM044
  (707, 70700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Klefki - Giga Impact - TM055
  (707, 70700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 21),
  -- Klefki - Future Sight - TM060
  (707, 70700, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 22),
  -- Klefki - Psychic - TM063
  (707, 70700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 23),
  -- Klefki - Iron Defense - TM080
  (707, 70700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 24),
  -- Klefki - Flash Cannon - TM084
  (707, 70700, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 25),
  -- Klefki - Substitute - TM085
  (707, 70700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Klefki - Spikes - TM088
  (707, 70700, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 27),
  -- Klefki - Dazzling Gleam - TM092
  (707, 70700, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 28),
  -- Klefki - Heal Block - TM097
  (707, 70700, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 29),
  -- Phantump - Tackle - Level 1
  (708, 70800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phantump - Leech Seed - Level 8
  (708, 70800, 73, 26, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Phantump - Confuse Ray - Level 12
  (708, 70800, 109, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Phantump - Will-O-Wisp - Level 16
  (708, 70800, 261, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phantump - Growth - Level 24
  (708, 70800, 74, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phantump - Horn Leech - Level 28
  (708, 70800, 532, 26, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Phantump - Forest's Curse - Level 32
  (708, 70800, 571, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Phantump - Phantom Force - Level 36
  (708, 70800, 566, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Phantump - Wood Hammer - Level 44
  (708, 70800, 452, 26, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Phantump - Curse - Level 50
  (708, 70800, 174, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Phantump - Rock Slide - TM012
  (708, 70800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 11),
  -- Phantump - Protect - TM017
  (708, 70800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 12),
  -- Phantump - Energy Ball - TM026
  (708, 70800, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 13),
  -- Phantump - Dig - TM028
  (708, 70800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 14),
  -- Phantump - Reflect - TM031
  (708, 70800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 15),
  -- Phantump - Endure - TM035
  (708, 70800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 16),
  -- Phantump - Giga Drain - TM042
  (708, 70800, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 17),
  -- Phantump - Safeguard - TM051
  (708, 70800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 18),
  -- Phantump - Will-O-Wisp - TM057
  (708, 70800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 19),
  -- Phantump - Shadow Claw - TM061
  (708, 70800, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 20),
  -- Phantump - Psychic - TM063
  (708, 70800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 21),
  -- Phantump - Solar Beam - TM064
  (708, 70800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 22),
  -- Phantump - Shadow Ball - TM074
  (708, 70800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 23),
  -- Phantump - Poison Jab - TM077
  (708, 70800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 24),
  -- Phantump - Substitute - TM085
  (708, 70800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Phantump - Dark Pulse - TM090
  (708, 70800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 26),
  -- Phantump - Curse - TM091
  (708, 70800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 27),
  -- Phantump - Heal Block - TM097
  (708, 70800, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 28),
  -- Trevenant - Tackle - Level 1
  (709, 70900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trevenant - Leech Seed - Level 8
  (709, 70900, 73, 26, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Trevenant - Confuse Ray - Level 12
  (709, 70900, 109, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Trevenant - Will-O-Wisp - Level 16
  (709, 70900, 261, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Trevenant - Growth - Level 24
  (709, 70900, 74, 26, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Trevenant - Horn Leech - Level 28
  (709, 70900, 532, 26, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Trevenant - Shadow Claw - Level 30
  (709, 70900, 421, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Trevenant - Forest's Curse - Level 32
  (709, 70900, 571, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Trevenant - Phantom Force - Level 36
  (709, 70900, 566, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Trevenant - Wood Hammer - Level 44
  (709, 70900, 452, 26, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Trevenant - Curse - Level 50
  (709, 70900, 174, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Trevenant - Calm Mind - TM006
  (709, 70900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 12),
  -- Trevenant - Rock Slide - TM012
  (709, 70900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Trevenant - Protect - TM017
  (709, 70900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Trevenant - Energy Ball - TM026
  (709, 70900, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 15),
  -- Trevenant - Dig - TM028
  (709, 70900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 16),
  -- Trevenant - Reflect - TM031
  (709, 70900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 17),
  -- Trevenant - Endure - TM035
  (709, 70900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Trevenant - Giga Drain - TM042
  (709, 70900, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 19),
  -- Trevenant - Hyper Beam - TM044
  (709, 70900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Trevenant - Safeguard - TM051
  (709, 70900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 21),
  -- Trevenant - Giga Impact - TM055
  (709, 70900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 22),
  -- Trevenant - Will-O-Wisp - TM057
  (709, 70900, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 23),
  -- Trevenant - Shadow Claw - TM061
  (709, 70900, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 24),
  -- Trevenant - Psychic - TM063
  (709, 70900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 25),
  -- Trevenant - Solar Beam - TM064
  (709, 70900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 26),
  -- Trevenant - Earthquake - TM069
  (709, 70900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 27),
  -- Trevenant - Shadow Ball - TM074
  (709, 70900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Trevenant - Poison Jab - TM077
  (709, 70900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 29),
  -- Trevenant - X-Scissor - TM081
  (709, 70900, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 30),
  -- Trevenant - Substitute - TM085
  (709, 70900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Trevenant - Dark Pulse - TM090
  (709, 70900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Trevenant - Curse - TM091
  (709, 70900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Trevenant - Heal Block - TM097
  (709, 70900, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 34),
  -- Trevenant - Focus Blast - TM102
  (709, 70900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 35),
  -- Pumpkaboo - Tackle - Level 1
  (710, 71000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo - Trick-or-Treat - Level 1
  (710, 71000, 567, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo - Shadow Sneak - Level 4
  (710, 71000, 425, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pumpkaboo - Confuse Ray - Level 8
  (710, 71000, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pumpkaboo - Razor Leaf - Level 12
  (710, 71000, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pumpkaboo - Leech Seed - Level 16
  (710, 71000, 73, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pumpkaboo - Bullet Seed - Level 20
  (710, 71000, 331, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pumpkaboo - Brutal Swing - Level 24
  (710, 71000, 693, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pumpkaboo - Hypnosis - Level 27
  (710, 71000, 95, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pumpkaboo - Shadow Ball - Level 36
  (710, 71000, 247, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Pumpkaboo - Mystical Fire - Level 40
  (710, 71000, 595, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Pumpkaboo - Power Whip - Level 46
  (710, 71000, 438, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Pumpkaboo - Rock Slide - TM012
  (710, 71000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 13),
  -- Pumpkaboo - Light Screen - TM016
  (710, 71000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Pumpkaboo - Protect - TM017
  (710, 71000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Pumpkaboo - Energy Ball - TM026
  (710, 71000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Pumpkaboo - Endure - TM035
  (710, 71000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Pumpkaboo - Fire Blast - TM038
  (710, 71000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 18),
  -- Pumpkaboo - Bullet Seed - TM040
  (710, 71000, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 19),
  -- Pumpkaboo - Giga Drain - TM042
  (710, 71000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 20),
  -- Pumpkaboo - Self-Destruct - TM048
  (710, 71000, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 21),
  -- Pumpkaboo - Safeguard - TM051
  (710, 71000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 22),
  -- Pumpkaboo - Sludge Bomb - TM053
  (710, 71000, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Pumpkaboo - Will-O-Wisp - TM057
  (710, 71000, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 24),
  -- Pumpkaboo - Flamethrower - TM062
  (710, 71000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 25),
  -- Pumpkaboo - Psychic - TM063
  (710, 71000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Pumpkaboo - Solar Beam - TM064
  (710, 71000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 27),
  -- Pumpkaboo - Fire Spin - TM072
  (710, 71000, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 28),
  -- Pumpkaboo - Shadow Ball - TM074
  (710, 71000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Pumpkaboo - Substitute - TM085
  (710, 71000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Pumpkaboo - Dark Pulse - TM090
  (710, 71000, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Pumpkaboo - Curse - TM091
  (710, 71000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 32),
  -- Gourgeist - Tackle - Level 1
  (711, 71100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist - Trick-or-Treat - Level 1
  (711, 71100, 567, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist - Moonblast - Level 1
  (711, 71100, 585, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist - Shadow Sneak - Level 4
  (711, 71100, 425, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Gourgeist - Confuse Ray - Level 8
  (711, 71100, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Gourgeist - Razor Leaf - Level 12
  (711, 71100, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gourgeist - Leech Seed - Level 16
  (711, 71100, 73, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gourgeist - Bullet Seed - Level 20
  (711, 71100, 331, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Gourgeist - Brutal Swing - Level 24
  (711, 71100, 693, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Gourgeist - Hypnosis - Level 27
  (711, 71100, 95, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Gourgeist - Shadow Ball - Level 36
  (711, 71100, 247, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gourgeist - Mystical Fire - Level 40
  (711, 71100, 595, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gourgeist - Phantom Force - Level 44
  (711, 71100, 566, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gourgeist - Power Whip - Level 46
  (711, 71100, 438, 26, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Gourgeist - Explosion - Level 52
  (711, 71100, 153, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Gourgeist - Rock Slide - TM012
  (711, 71100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Gourgeist - Light Screen - TM016
  (711, 71100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Gourgeist - Protect - TM017
  (711, 71100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Gourgeist - Energy Ball - TM026
  (711, 71100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Gourgeist - Endure - TM035
  (711, 71100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Gourgeist - Fire Blast - TM038
  (711, 71100, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 21),
  -- Gourgeist - Bullet Seed - TM040
  (711, 71100, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 22),
  -- Gourgeist - Giga Drain - TM042
  (711, 71100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Gourgeist - Hyper Beam - TM044
  (711, 71100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Gourgeist - Self-Destruct - TM048
  (711, 71100, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Gourgeist - Safeguard - TM051
  (711, 71100, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 26),
  -- Gourgeist - Sludge Bomb - TM053
  (711, 71100, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Gourgeist - Giga Impact - TM055
  (711, 71100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Gourgeist - Will-O-Wisp - TM057
  (711, 71100, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Gourgeist - Shadow Claw - TM061
  (711, 71100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Gourgeist - Flamethrower - TM062
  (711, 71100, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Gourgeist - Psychic - TM063
  (711, 71100, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Gourgeist - Solar Beam - TM064
  (711, 71100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Gourgeist - Fire Spin - TM072
  (711, 71100, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 34),
  -- Gourgeist - Shadow Ball - TM074
  (711, 71100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Gourgeist - Nasty Plot - TM083
  (711, 71100, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Gourgeist - Substitute - TM085
  (711, 71100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Gourgeist - Dark Pulse - TM090
  (711, 71100, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Gourgeist - Curse - TM091
  (711, 71100, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Bergmite - Harden - Level 1
  (712, 71200, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bergmite - Tackle - Level 3
  (712, 71200, 33, 26, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Bergmite - Curse - Level 9
  (712, 71200, 174, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bergmite - Icy Wind - Level 12
  (712, 71200, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bergmite - Protect - Level 15
  (712, 71200, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bergmite - Bite - Level 21
  (712, 71200, 44, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bergmite - Ice Fang - Level 24
  (712, 71200, 423, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Bergmite - Iron Defense - Level 27
  (712, 71200, 334, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bergmite - Recover - Level 30
  (712, 71200, 105, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Bergmite - Crunch - Level 33
  (712, 71200, 242, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Bergmite - Take Down - Level 36
  (712, 71200, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bergmite - Double-Edge - Level 42
  (712, 71200, 38, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Bergmite - Blizzard - Level 54
  (712, 71200, 59, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Bergmite - Rock Slide - TM012
  (712, 71200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Bergmite - Ice Beam - TM013
  (712, 71200, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Bergmite - Ice Fang - TM015
  (712, 71200, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 16),
  -- Bergmite - Protect - TM017
  (712, 71200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Bergmite - Crunch - TM025
  (712, 71200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Bergmite - Body Slam - TM033
  (712, 71200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Bergmite - Endure - TM035
  (712, 71200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Bergmite - Rock Tomb - TM036
  (712, 71200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Bergmite - Icy Wind - TM049
  (712, 71200, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Bergmite - Double-Edge - TM056
  (712, 71200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 23),
  -- Bergmite - Stone Edge - TM065
  (712, 71200, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 24),
  -- Bergmite - Bulldoze - TM078
  (712, 71200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 25),
  -- Bergmite - Iron Defense - TM080
  (712, 71200, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 26),
  -- Bergmite - Substitute - TM085
  (712, 71200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Bergmite - Curse - TM091
  (712, 71200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 28),
  -- Bergmite - Blizzard - TM105
  (712, 71200, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 29),
  -- Avalugg - Harden - Level 1
  (713, 71300, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg - Heavy Slam - Level 1
  (713, 71300, 484, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Avalugg - Tackle - Level 3
  (713, 71300, 33, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Avalugg - Curse - Level 9
  (713, 71300, 174, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Avalugg - Icy Wind - Level 12
  (713, 71300, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Avalugg - Protect - Level 15
  (713, 71300, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Avalugg - Bite - Level 21
  (713, 71300, 44, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Avalugg - Ice Fang - Level 24
  (713, 71300, 423, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Avalugg - Iron Defense - Level 27
  (713, 71300, 334, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Avalugg - Recover - Level 30
  (713, 71300, 105, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Avalugg - Crunch - Level 33
  (713, 71300, 242, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Avalugg - Take Down - Level 36
  (713, 71300, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Avalugg - Icicle Crash - Level 39
  (713, 71300, 556, 26, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Avalugg - Double-Edge - Level 42
  (713, 71300, 38, 26, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Avalugg - Blizzard - Level 54
  (713, 71300, 59, 26, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Avalugg - Rock Slide - TM012
  (713, 71300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Avalugg - Ice Beam - TM013
  (713, 71300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Avalugg - Ice Fang - TM015
  (713, 71300, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Avalugg - Protect - TM017
  (713, 71300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Avalugg - Crunch - TM025
  (713, 71300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Avalugg - Body Slam - TM033
  (713, 71300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Avalugg - Endure - TM035
  (713, 71300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Avalugg - Rock Tomb - TM036
  (713, 71300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Avalugg - Hyper Beam - TM044
  (713, 71300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Avalugg - Icy Wind - TM049
  (713, 71300, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 25),
  -- Avalugg - Giga Impact - TM055
  (713, 71300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Avalugg - Double-Edge - TM056
  (713, 71300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Avalugg - Stone Edge - TM065
  (713, 71300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Avalugg - Earthquake - TM069
  (713, 71300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Avalugg - Surf - TM073
  (713, 71300, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Avalugg - Bulldoze - TM078
  (713, 71300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Avalugg - Iron Defense - TM080
  (713, 71300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Avalugg - Flash Cannon - TM084
  (713, 71300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 33),
  -- Avalugg - Substitute - TM085
  (713, 71300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Avalugg - Curse - TM091
  (713, 71300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Avalugg - Hydro Pump - TM096
  (713, 71300, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 36),
  -- Avalugg - Blizzard - TM105
  (713, 71300, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Hisuian Avalugg - Harden - Level 1
  (713, 71301, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hisuian Avalugg - Heavy Slam - Level 1
  (713, 71301, 484, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hisuian Avalugg - Tackle - Level 3
  (713, 71301, 33, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Hisuian Avalugg - Curse - Level 9
  (713, 71301, 174, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Hisuian Avalugg - Icy Wind - Level 12
  (713, 71301, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hisuian Avalugg - Protect - Level 15
  (713, 71301, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hisuian Avalugg - Bite - Level 21
  (713, 71301, 44, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hisuian Avalugg - Ice Fang - Level 24
  (713, 71301, 423, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hisuian Avalugg - Iron Defense - Level 27
  (713, 71301, 334, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Hisuian Avalugg - Recover - Level 30
  (713, 71301, 105, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Hisuian Avalugg - Crunch - Level 33
  (713, 71301, 242, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Hisuian Avalugg - Take Down - Level 36
  (713, 71301, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hisuian Avalugg - Rock Blast - Level 39
  (713, 71301, 350, 26, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Hisuian Avalugg - Double-Edge - Level 42
  (713, 71301, 38, 26, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Hisuian Avalugg - Stone Edge - Level 46
  (713, 71301, 444, 26, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Hisuian Avalugg - Iron Head - Level 48
  (713, 71301, 442, 26, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Hisuian Avalugg - Blizzard - Level 54
  (713, 71301, 59, 26, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Hisuian Avalugg - Rock Slide - TM012
  (713, 71301, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Hisuian Avalugg - Ice Beam - TM013
  (713, 71301, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Hisuian Avalugg - Ice Fang - TM015
  (713, 71301, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Hisuian Avalugg - Protect - TM017
  (713, 71301, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Hisuian Avalugg - Crunch - TM025
  (713, 71301, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Hisuian Avalugg - Dig - TM028
  (713, 71301, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Hisuian Avalugg - Body Slam - TM033
  (713, 71301, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Hisuian Avalugg - Endure - TM035
  (713, 71301, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Hisuian Avalugg - Rock Tomb - TM036
  (713, 71301, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Hisuian Avalugg - Stealth Rock - TM037
  (713, 71301, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Hisuian Avalugg - Hyper Beam - TM044
  (713, 71301, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Hisuian Avalugg - Icy Wind - TM049
  (713, 71301, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Hisuian Avalugg - Giga Impact - TM055
  (713, 71301, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Hisuian Avalugg - Double-Edge - TM056
  (713, 71301, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Hisuian Avalugg - Iron Head - TM058
  (713, 71301, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Hisuian Avalugg - Stone Edge - TM065
  (713, 71301, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Hisuian Avalugg - Earthquake - TM069
  (713, 71301, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Hisuian Avalugg - Surf - TM073
  (713, 71301, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 35),
  -- Hisuian Avalugg - Bulldoze - TM078
  (713, 71301, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Hisuian Avalugg - Iron Defense - TM080
  (713, 71301, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 37),
  -- Hisuian Avalugg - Flash Cannon - TM084
  (713, 71301, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 38),
  -- Hisuian Avalugg - Substitute - TM085
  (713, 71301, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Hisuian Avalugg - Curse - TM091
  (713, 71301, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Hisuian Avalugg - Hydro Pump - TM096
  (713, 71301, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 41),
  -- Hisuian Avalugg - Blizzard - TM105
  (713, 71301, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Noibat - Tackle - Level 1
  (714, 71400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noibat - Absorb - Level 1
  (714, 71400, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noibat - Gust - Level 4
  (714, 71400, 16, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Noibat - Supersonic - Level 8
  (714, 71400, 48, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Noibat - Double Team - Level 12
  (714, 71400, 104, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Noibat - Wing Attack - Level 16
  (714, 71400, 17, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Noibat - Bite - Level 20
  (714, 71400, 44, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Noibat - Leech Life - Level 24
  (714, 71400, 141, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Noibat - Whirlwind - Level 28
  (714, 71400, 18, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Noibat - Super Fang - Level 32
  (714, 71400, 162, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Noibat - Air Slash - Level 36
  (714, 71400, 403, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Noibat - Screech - Level 40
  (714, 71400, 103, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Noibat - Hurricane - Level 44
  (714, 71400, 542, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Noibat - Dragon Claw - TM002
  (714, 71400, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Noibat - Brick Break - TM010
  (714, 71400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Noibat - Protect - TM017
  (714, 71400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Noibat - Aerial Ace - TM022
  (714, 71400, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Noibat - Swift - TM027
  (714, 71400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Noibat - Double Team - TM032
  (714, 71400, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Noibat - Endure - TM035
  (714, 71400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Noibat - Fly - TM043
  (714, 71400, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 21),
  -- Noibat - Agility - TM047
  (714, 71400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Noibat - Draco Meteor - TM054
  (714, 71400, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 23),
  -- Noibat - Shadow Claw - TM061
  (714, 71400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 24),
  -- Noibat - Psychic - TM063
  (714, 71400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 25),
  -- Noibat - Solar Beam - TM064
  (714, 71400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 26),
  -- Noibat - Heat Wave - TM068
  (714, 71400, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 27),
  -- Noibat - Hyper Voice - TM071
  (714, 71400, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 28),
  -- Noibat - Shadow Ball - TM074
  (714, 71400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Noibat - Dragon Pulse - TM075
  (714, 71400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 30),
  -- Noibat - Hurricane - TM079
  (714, 71400, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 31),
  -- Noibat - U-turn - TM082
  (714, 71400, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 32),
  -- Noibat - Substitute - TM085
  (714, 71400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Noibat - Wild Charge - TM086
  (714, 71400, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 34),
  -- Noibat - Dark Pulse - TM090
  (714, 71400, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Noibat - Outrage - TM093
  (714, 71400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 36),
  -- Noibat - Whirlwind - TM094
  (714, 71400, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 37),
  -- Noibat - Taunt - TM095
  (714, 71400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Noivern - Tackle - Level 1
  (715, 71500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noivern - Absorb - Level 1
  (715, 71500, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noivern - Moonlight - Level 1
  (715, 71500, 236, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noivern - Gust - Level 4
  (715, 71500, 16, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Noivern - Supersonic - Level 8
  (715, 71500, 48, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Noivern - Double Team - Level 12
  (715, 71500, 104, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Noivern - Wing Attack - Level 16
  (715, 71500, 17, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Noivern - Bite - Level 20
  (715, 71500, 44, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Noivern - Leech Life - Level 24
  (715, 71500, 141, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Noivern - Whirlwind - Level 28
  (715, 71500, 18, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Noivern - Super Fang - Level 32
  (715, 71500, 162, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Noivern - Air Slash - Level 36
  (715, 71500, 403, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Noivern - Screech - Level 40
  (715, 71500, 103, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Noivern - Hurricane - Level 44
  (715, 71500, 542, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Noivern - Boomburst - Level 52
  (715, 71500, 586, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Noivern - Dragon Pulse - Evolution
  (715, 71500, 406, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Noivern - Dragon Claw - TM002
  (715, 71500, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Noivern - Brick Break - TM010
  (715, 71500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Noivern - Protect - TM017
  (715, 71500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Noivern - Aerial Ace - TM022
  (715, 71500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 20),
  -- Noivern - Swift - TM027
  (715, 71500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Noivern - Double Team - TM032
  (715, 71500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Noivern - Body Slam - TM033
  (715, 71500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Noivern - Endure - TM035
  (715, 71500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Noivern - Water Pulse - TM041
  (715, 71500, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Noivern - Fly - TM043
  (715, 71500, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 26),
  -- Noivern - Hyper Beam - TM044
  (715, 71500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Noivern - Agility - TM047
  (715, 71500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Noivern - Draco Meteor - TM054
  (715, 71500, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 29),
  -- Noivern - Giga Impact - TM055
  (715, 71500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Noivern - Shadow Claw - TM061
  (715, 71500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Noivern - Flamethrower - TM062
  (715, 71500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Noivern - Psychic - TM063
  (715, 71500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Noivern - Solar Beam - TM064
  (715, 71500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 34),
  -- Noivern - Heat Wave - TM068
  (715, 71500, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 35),
  -- Noivern - Hyper Voice - TM071
  (715, 71500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Noivern - Shadow Ball - TM074
  (715, 71500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 37),
  -- Noivern - Dragon Pulse - TM075
  (715, 71500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 38),
  -- Noivern - Hurricane - TM079
  (715, 71500, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 39),
  -- Noivern - U-turn - TM082
  (715, 71500, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 40),
  -- Noivern - Substitute - TM085
  (715, 71500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Noivern - Wild Charge - TM086
  (715, 71500, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 42),
  -- Noivern - Iron Tail - TM087
  (715, 71500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Noivern - Dark Pulse - TM090
  (715, 71500, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 44),
  -- Noivern - Outrage - TM093
  (715, 71500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 45),
  -- Noivern - Whirlwind - TM094
  (715, 71500, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 46),
  -- Noivern - Taunt - TM095
  (715, 71500, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Noivern - Focus Blast - TM102
  (715, 71500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Xerneas - Tackle - Level 1
  (716, 71600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xerneas - Light Screen - Level 5
  (716, 71600, 113, 26, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Xerneas - Night Slash - Level 20
  (716, 71600, 400, 26, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Xerneas - Horn Leech - Level 35
  (716, 71600, 532, 26, NULL, 1, 35, NULL, NULL, NULL, 4),
  -- Xerneas - Take Down - Level 50
  (716, 71600, 36, 26, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Xerneas - Geomancy - Level 55
  (716, 71600, 601, 26, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Xerneas - Moonblast - Level 60
  (716, 71600, 585, 26, NULL, 1, 60, NULL, NULL, NULL, 7),
  -- Xerneas - Megahorn - Level 70
  (716, 71600, 224, 26, NULL, 1, 70, NULL, NULL, NULL, 8),
  -- Xerneas - Close Combat - Level 75
  (716, 71600, 370, 26, NULL, 1, 75, NULL, NULL, NULL, 9),
  -- Xerneas - Outrage - Level 80
  (716, 71600, 200, 26, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Xerneas - Giga Impact - Level 85
  (716, 71600, 416, 26, NULL, 1, 85, NULL, NULL, NULL, 11),
  -- Xerneas - Psyshock - TM003
  (716, 71600, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Xerneas - Calm Mind - TM006
  (716, 71600, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Xerneas - Thunder Wave - TM008
  (716, 71600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Xerneas - Rock Slide - TM012
  (716, 71600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Xerneas - Light Screen - TM016
  (716, 71600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Xerneas - Protect - TM017
  (716, 71600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Xerneas - Play Rough - TM020
  (716, 71600, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Xerneas - Swift - TM027
  (716, 71600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Xerneas - Reflect - TM031
  (716, 71600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Xerneas - Body Slam - TM033
  (716, 71600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Xerneas - Night Slash - TM034
  (716, 71600, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 22),
  -- Xerneas - Endure - TM035
  (716, 71600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Xerneas - Hyper Beam - TM044
  (716, 71600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Xerneas - Giga Impact - TM055
  (716, 71600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Xerneas - Zen Headbutt - TM059
  (716, 71600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Xerneas - Psychic - TM063
  (716, 71600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 27),
  -- Xerneas - Thunderbolt - TM067
  (716, 71600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Xerneas - Hyper Voice - TM071
  (716, 71600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Xerneas - Flash Cannon - TM084
  (716, 71600, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 30),
  -- Xerneas - Substitute - TM085
  (716, 71600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Xerneas - Dazzling Gleam - TM092
  (716, 71600, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 32),
  -- Xerneas - Outrage - TM093
  (716, 71600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 33),
  -- Xerneas - Focus Blast - TM102
  (716, 71600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 34),
  -- Xerneas - Thunder - TM106
  (716, 71600, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 35),
  -- Xerneas - Close Combat - TM107
  (716, 71600, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 36),
  -- Yveltal - Gust - Level 1
  (717, 71700, 16, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yveltal - Double Team - Level 1
  (717, 71700, 104, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yveltal - Taunt - Level 5
  (717, 71700, 269, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yveltal - Snarl - Level 10
  (717, 71700, 555, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Yveltal - Air Slash - Level 35
  (717, 71700, 403, 26, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Yveltal - Dark Pulse - Level 40
  (717, 71700, 399, 26, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Yveltal - Psychic - Level 45
  (717, 71700, 94, 26, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Yveltal - Oblivion Wing - Level 55
  (717, 71700, 613, 26, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Yveltal - Phantom Force - Level 60
  (717, 71700, 566, 26, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Yveltal - Dragon Rush - Level 65
  (717, 71700, 407, 26, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Yveltal - Hurricane - Level 70
  (717, 71700, 542, 26, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Yveltal - Focus Blast - Level 75
  (717, 71700, 411, 26, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Yveltal - Hyper Beam - Level 85
  (717, 71700, 63, 26, NULL, 1, 85, NULL, NULL, NULL, 13),
  -- Yveltal - Dragon Claw - TM002
  (717, 71700, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Yveltal - Rock Slide - TM012
  (717, 71700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Yveltal - Protect - TM017
  (717, 71700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Yveltal - Swift - TM027
  (717, 71700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Yveltal - Double Team - TM032
  (717, 71700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 18),
  -- Yveltal - Body Slam - TM033
  (717, 71700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Yveltal - Endure - TM035
  (717, 71700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Yveltal - Fly - TM043
  (717, 71700, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 21),
  -- Yveltal - Hyper Beam - TM044
  (717, 71700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Yveltal - Giga Impact - TM055
  (717, 71700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Yveltal - Zen Headbutt - TM059
  (717, 71700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 24),
  -- Yveltal - Shadow Claw - TM061
  (717, 71700, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 25),
  -- Yveltal - Psychic - TM063
  (717, 71700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Yveltal - Heat Wave - TM068
  (717, 71700, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 27),
  -- Yveltal - Hyper Voice - TM071
  (717, 71700, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 28),
  -- Yveltal - Shadow Ball - TM074
  (717, 71700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Yveltal - Hurricane - TM079
  (717, 71700, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 30),
  -- Yveltal - U-turn - TM082
  (717, 71700, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 31),
  -- Yveltal - Substitute - TM085
  (717, 71700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Yveltal - Dark Pulse - TM090
  (717, 71700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 33),
  -- Yveltal - Taunt - TM095
  (717, 71700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Yveltal - Heal Block - TM097
  (717, 71700, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 35),
  -- Yveltal - Focus Blast - TM102
  (717, 71700, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 36),
  -- Zygarde - Bite - Level 1
  (718, 71800, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zygarde - Dragon Breath - Level 1
  (718, 71800, 225, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zygarde - Bulldoze - Level 1
  (718, 71800, 523, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zygarde - Thousand Arrows - Level 1
  (718, 71800, 614, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zygarde - Thousand Waves - Level 1
  (718, 71800, 615, 26, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zygarde - Land's Wrath - Level 1
  (718, 71800, 616, 26, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zygarde - Core Enforcer - Level 1
  (718, 71800, 687, 26, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Zygarde - Haze - Level 8
  (718, 71800, 114, 26, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Zygarde - Dig - Level 16
  (718, 71800, 91, 26, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Zygarde - Safeguard - Level 24
  (718, 71800, 219, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zygarde - Crunch - Level 32
  (718, 71800, 242, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Zygarde - Dragon Pulse - Level 40
  (718, 71800, 406, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zygarde - Breaking Swipe - Level 44
  (718, 71800, 784, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Zygarde - Glare - Level 56
  (718, 71800, 137, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Zygarde - Sludge Wave - Level 60
  (718, 71800, 482, 26, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Zygarde - Extreme Speed - Level 70
  (718, 71800, 245, 26, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zygarde - Earthquake - Level 80
  (718, 71800, 89, 26, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Zygarde - Outrage - Level 88
  (718, 71800, 200, 26, NULL, 1, 88, NULL, NULL, NULL, 18),
  -- Zygarde - Brick Break - TM010
  (718, 71800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Zygarde - Rock Slide - TM012
  (718, 71800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Zygarde - Protect - TM017
  (718, 71800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Zygarde - Crunch - TM025
  (718, 71800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Zygarde - Swift - TM027
  (718, 71800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Zygarde - Dig - TM028
  (718, 71800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Zygarde - Body Slam - TM033
  (718, 71800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Zygarde - Endure - TM035
  (718, 71800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Zygarde - Hyper Beam - TM044
  (718, 71800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Zygarde - Safeguard - TM051
  (718, 71800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Zygarde - Earth Power - TM052
  (718, 71800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Zygarde - Draco Meteor - TM054
  (718, 71800, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 30),
  -- Zygarde - Giga Impact - TM055
  (718, 71800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Zygarde - Iron Head - TM058
  (718, 71800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Zygarde - Zen Headbutt - TM059
  (718, 71800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Zygarde - Stone Edge - TM065
  (718, 71800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 34),
  -- Zygarde - Earthquake - TM069
  (718, 71800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Zygarde - Hyper Voice - TM071
  (718, 71800, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Zygarde - Dragon Pulse - TM075
  (718, 71800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Zygarde - Bulldoze - TM078
  (718, 71800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 38),
  -- Zygarde - Substitute - TM085
  (718, 71800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Zygarde - Outrage - TM093
  (718, 71800, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 40),
  -- Zygarde - Focus Blast - TM102
  (718, 71800, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Diancie - Tackle - Level 1
  (719, 71900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diancie - Rock Throw - Level 1
  (719, 71900, 88, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diancie - Harden - Level 1
  (719, 71900, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Diancie - Diamond Storm - Level 1
  (719, 71900, 591, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Diancie - Amnesia - Level 7
  (719, 71900, 133, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Diancie - Fake Tears - Level 14
  (719, 71900, 313, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Diancie - Draining Kiss - Level 21
  (719, 71900, 577, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Diancie - Rock Slide - Level 33
  (719, 71900, 157, 26, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Diancie - Light Screen - Level 42
  (719, 71900, 113, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Diancie - Power Gem - Level 44
  (719, 71900, 408, 26, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Diancie - Stealth Rock - Level 46
  (719, 71900, 446, 26, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Diancie - Stone Edge - Level 50
  (719, 71900, 444, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Diancie - Moonblast - Level 54
  (719, 71900, 585, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Diancie - Psyshock - TM003
  (719, 71900, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Diancie - Calm Mind - TM006
  (719, 71900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Diancie - Rock Slide - TM012
  (719, 71900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Diancie - Light Screen - TM016
  (719, 71900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Diancie - Protect - TM017
  (719, 71900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Diancie - Power Gem - TM019
  (719, 71900, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 19),
  -- Diancie - Play Rough - TM020
  (719, 71900, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 20),
  -- Diancie - Swift - TM027
  (719, 71900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Diancie - Reflect - TM031
  (719, 71900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Diancie - Body Slam - TM033
  (719, 71900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Diancie - Endure - TM035
  (719, 71900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Diancie - Rock Tomb - TM036
  (719, 71900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Diancie - Stealth Rock - TM037
  (719, 71900, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Diancie - Hyper Beam - TM044
  (719, 71900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Diancie - Safeguard - TM051
  (719, 71900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Diancie - Earth Power - TM052
  (719, 71900, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Diancie - Giga Impact - TM055
  (719, 71900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Diancie - Psychic - TM063
  (719, 71900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Diancie - Stone Edge - TM065
  (719, 71900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Diancie - Iron Defense - TM080
  (719, 71900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 33),
  -- Diancie - Flash Cannon - TM084
  (719, 71900, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 34),
  -- Diancie - Substitute - TM085
  (719, 71900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Diancie - Spikes - TM088
  (719, 71900, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 36),
  -- Diancie - Dazzling Gleam - TM092
  (719, 71900, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 37),
  -- Diancie - Metronome - TM099
  (719, 71900, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 38);
