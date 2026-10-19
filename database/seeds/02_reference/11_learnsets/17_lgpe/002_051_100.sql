-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages, LGPE sections.
-- Cross-check: PokemonDB Let's Go learnset pages and Serebii LGPE Pokedex pages.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! learnsets for default forms, species 051-100.
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
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Screech - Level 1
  (51, 5100, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Agility - Level 1
  (51, 5100, 97, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio - Tri Attack - Evolution
  (51, 5100, 161, 17, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Dugtrio - Sand Attack - Level 4
  (51, 5100, 28, 17, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Dugtrio - Growl - Level 8
  (51, 5100, 45, 17, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Dugtrio - Agility - Level 12
  (51, 5100, 97, 17, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Dugtrio - Fury Swipes - Level 15
  (51, 5100, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Dugtrio - Dig - Level 18
  (51, 5100, 91, 17, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Dugtrio - Slash - Level 21
  (51, 5100, 163, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Dugtrio - Sucker Punch - Level 25
  (51, 5100, 389, 17, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dugtrio - Earthquake - Level 35
  (51, 5100, 89, 17, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Dugtrio - Fissure - Level 45
  (51, 5100, 90, 17, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Dugtrio - Headbutt - TM01
  (51, 5100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Dugtrio - Rest - TM05
  (51, 5100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Dugtrio - Protect - TM07
  (51, 5100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Dugtrio - Substitute - TM08
  (51, 5100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Dugtrio - Dig - TM10
  (51, 5100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Dugtrio - Facade - TM12
  (51, 5100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Dugtrio - Rock Slide - TM22
  (51, 5100, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Dugtrio - Toxic - TM27
  (51, 5100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Dugtrio - Tri Attack - TM28
  (51, 5100, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 25),
  -- Dugtrio - Earthquake - TM41
  (51, 5100, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 26),
  -- Dugtrio - Hyper Beam - TM48
  (51, 5100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Dugtrio - Sludge Bomb - TM52
  (51, 5100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 28),
  -- Dugtrio - Stealth Rock - TM56
  (51, 5100, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 29),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 1
  (52, 5200, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowth - Fake Out - Level 1
  (52, 5200, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowth - Bite - Level 3
  (52, 5200, 44, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Meowth - Fake Out - Level 6
  (52, 5200, 252, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Meowth - Taunt - Level 9
  (52, 5200, 269, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowth - Pay Day - Level 12
  (52, 5200, 6, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Meowth - Feint - Level 15
  (52, 5200, 364, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Meowth - Fury Swipes - Level 19
  (52, 5200, 154, 17, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Meowth - Screech - Level 23
  (52, 5200, 103, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Meowth - Slash - Level 27
  (52, 5200, 163, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Meowth - Nasty Plot - Level 31
  (52, 5200, 417, 17, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Meowth - Play Rough - Level 35
  (52, 5200, 583, 17, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Meowth - Headbutt - TM01
  (52, 5200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Meowth - Taunt - TM02
  (52, 5200, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Meowth - Rest - TM05
  (52, 5200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Meowth - Protect - TM07
  (52, 5200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Meowth - Substitute - TM08
  (52, 5200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Meowth - Dig - TM10
  (52, 5200, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Meowth - Facade - TM12
  (52, 5200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Meowth - U-turn - TM18
  (52, 5200, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 22),
  -- Meowth - Iron Tail - TM19
  (52, 5200, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Meowth - Dark Pulse - TM20
  (52, 5200, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 24),
  -- Meowth - Foul Play - TM21
  (52, 5200, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 25),
  -- Meowth - Toxic - TM27
  (52, 5200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Meowth - Thunderbolt - TM36
  (52, 5200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 27),
  -- Meowth - Thunder - TM38
  (52, 5200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 28),
  -- Meowth - Shadow Ball - TM43
  (52, 5200, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Meowth - Play Rough - TM44
  (52, 5200, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 30),
  -- Meowth - Pay Day - TM57
  (52, 5200, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 31),
  -- Meowth - Dream Eater - TM59
  (52, 5200, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 32),
  -- Persian - Swift - Level 1
  (53, 5300, 129, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Amnesia - Level 1
  (53, 5300, 133, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Hypnosis - Level 1
  (53, 5300, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Persian - Swift - Evolution
  (53, 5300, 129, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Persian - Bite - Level 3
  (53, 5300, 44, 17, NULL, 1, 3, NULL, NULL, NULL, 9),
  -- Persian - Fake Out - Level 6
  (53, 5300, 252, 17, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Persian - Taunt - Level 9
  (53, 5300, 269, 17, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Persian - Pay Day - Level 12
  (53, 5300, 6, 17, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Persian - Feint - Level 15
  (53, 5300, 364, 17, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Persian - Fury Swipes - Level 19
  (53, 5300, 154, 17, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Persian - Screech - Level 23
  (53, 5300, 103, 17, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Persian - Slash - Level 27
  (53, 5300, 163, 17, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Persian - Nasty Plot - Level 37
  (53, 5300, 417, 17, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Persian - Play Rough - Level 47
  (53, 5300, 583, 17, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Persian - Headbutt - TM01
  (53, 5300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 19),
  -- Persian - Taunt - TM02
  (53, 5300, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 20),
  -- Persian - Rest - TM05
  (53, 5300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 21),
  -- Persian - Protect - TM07
  (53, 5300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 22),
  -- Persian - Substitute - TM08
  (53, 5300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 23),
  -- Persian - Dig - TM10
  (53, 5300, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 24),
  -- Persian - Facade - TM12
  (53, 5300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Persian - U-turn - TM18
  (53, 5300, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 26),
  -- Persian - Iron Tail - TM19
  (53, 5300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 27),
  -- Persian - Dark Pulse - TM20
  (53, 5300, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 28),
  -- Persian - Foul Play - TM21
  (53, 5300, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 29),
  -- Persian - Toxic - TM27
  (53, 5300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 30),
  -- Persian - Thunderbolt - TM36
  (53, 5300, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 31),
  -- Persian - Thunder - TM38
  (53, 5300, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 32),
  -- Persian - Shadow Ball - TM43
  (53, 5300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 33),
  -- Persian - Play Rough - TM44
  (53, 5300, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 34),
  -- Persian - Hyper Beam - TM48
  (53, 5300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 35),
  -- Persian - Pay Day - TM57
  (53, 5300, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 36),
  -- Persian - Dream Eater - TM59
  (53, 5300, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 37),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Level 5
  (54, 5400, 39, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Psyduck - Water Gun - Level 9
  (54, 5400, 55, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 14
  (54, 5400, 93, 17, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Psyduck - Fury Swipes - Level 18
  (54, 5400, 154, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Psyduck - Disable - Level 23
  (54, 5400, 50, 17, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Psyduck - Psybeam - Level 27
  (54, 5400, 60, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Psyduck - Screech - Level 32
  (54, 5400, 103, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Psyduck - Surf - Level 36
  (54, 5400, 57, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Psyduck - Amnesia - Level 41
  (54, 5400, 133, 17, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Psyduck - Hydro Pump - Level 45
  (54, 5400, 56, 17, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Psyduck - Headbutt - TM01
  (54, 5400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Psyduck - Rest - TM05
  (54, 5400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Psyduck - Light Screen - TM06
  (54, 5400, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Psyduck - Protect - TM07
  (54, 5400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Psyduck - Substitute - TM08
  (54, 5400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Psyduck - Dig - TM10
  (54, 5400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Psyduck - Facade - TM12
  (54, 5400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Psyduck - Brick Break - TM13
  (54, 5400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Psyduck - Seismic Toss - TM15
  (54, 5400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Psyduck - Iron Tail - TM19
  (54, 5400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Psyduck - Waterfall - TM25
  (54, 5400, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 22),
  -- Psyduck - Toxic - TM27
  (54, 5400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Psyduck - Scald - TM29
  (54, 5400, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 24),
  -- Psyduck - Calm Mind - TM33
  (54, 5400, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 25),
  -- Psyduck - Ice Punch - TM35
  (54, 5400, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Psyduck - Psychic - TM40
  (54, 5400, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 27),
  -- Psyduck - Surf - TM47
  (54, 5400, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Psyduck - Blizzard - TM51
  (54, 5400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 29),
  -- Psyduck - Ice Beam - TM55
  (54, 5400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 30),
  -- Psyduck - Pay Day - TM57
  (54, 5400, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 31),
  -- Golduck - Yawn - Level 1
  (55, 5500, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Encore - Level 1
  (55, 5500, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Confusion - Level 1
  (55, 5500, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Golduck - Tail Whip - Level 5
  (55, 5500, 39, 17, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Golduck - Water Gun - Level 9
  (55, 5500, 55, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Golduck - Confusion - Level 14
  (55, 5500, 93, 17, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Golduck - Fury Swipes - Level 18
  (55, 5500, 154, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Golduck - Disable - Level 23
  (55, 5500, 50, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Golduck - Psybeam - Level 27
  (55, 5500, 60, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Golduck - Screech - Level 32
  (55, 5500, 103, 17, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Golduck - Surf - Level 42
  (55, 5500, 57, 17, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Golduck - Amnesia - Level 53
  (55, 5500, 133, 17, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Golduck - Hydro Pump - Level 63
  (55, 5500, 56, 17, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Golduck - Headbutt - TM01
  (55, 5500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Golduck - Rest - TM05
  (55, 5500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Golduck - Light Screen - TM06
  (55, 5500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Golduck - Protect - TM07
  (55, 5500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Golduck - Substitute - TM08
  (55, 5500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Golduck - Dig - TM10
  (55, 5500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 22),
  -- Golduck - Facade - TM12
  (55, 5500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Golduck - Brick Break - TM13
  (55, 5500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 24),
  -- Golduck - Seismic Toss - TM15
  (55, 5500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 25),
  -- Golduck - Iron Tail - TM19
  (55, 5500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Golduck - Waterfall - TM25
  (55, 5500, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 27),
  -- Golduck - Toxic - TM27
  (55, 5500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Golduck - Scald - TM29
  (55, 5500, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 29),
  -- Golduck - Calm Mind - TM33
  (55, 5500, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 30),
  -- Golduck - Ice Punch - TM35
  (55, 5500, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 31),
  -- Golduck - Psychic - TM40
  (55, 5500, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 32),
  -- Golduck - Surf - TM47
  (55, 5500, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 33),
  -- Golduck - Hyper Beam - TM48
  (55, 5500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 34),
  -- Golduck - Blizzard - TM51
  (55, 5500, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 35),
  -- Golduck - Ice Beam - TM55
  (55, 5500, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 36),
  -- Golduck - Pay Day - TM57
  (55, 5500, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 37),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Focus Energy - Level 5
  (56, 5600, 116, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mankey - Taunt - Level 8
  (56, 5600, 269, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mankey - Karate Chop - Level 13
  (56, 5600, 2, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 16
  (56, 5600, 154, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mankey - Low Kick - Level 21
  (56, 5600, 67, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Mankey - Seismic Toss - Level 24
  (56, 5600, 69, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mankey - U-turn - Level 29
  (56, 5600, 369, 17, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Mankey - Screech - Level 32
  (56, 5600, 103, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mankey - Thrash - Level 37
  (56, 5600, 37, 17, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Mankey - Outrage - Level 40
  (56, 5600, 200, 17, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mankey - Headbutt - TM01
  (56, 5600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Mankey - Taunt - TM02
  (56, 5600, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 14),
  -- Mankey - Helping Hand - TM03
  (56, 5600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 15),
  -- Mankey - Rest - TM05
  (56, 5600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Mankey - Protect - TM07
  (56, 5600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Mankey - Substitute - TM08
  (56, 5600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Mankey - Dig - TM10
  (56, 5600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Mankey - Facade - TM12
  (56, 5600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Mankey - Brick Break - TM13
  (56, 5600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Mankey - Seismic Toss - TM15
  (56, 5600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Mankey - U-turn - TM18
  (56, 5600, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 23),
  -- Mankey - Iron Tail - TM19
  (56, 5600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 24),
  -- Mankey - Rock Slide - TM22
  (56, 5600, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 25),
  -- Mankey - Thunder Punch - TM23
  (56, 5600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Mankey - Poison Jab - TM26
  (56, 5600, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 27),
  -- Mankey - Toxic - TM27
  (56, 5600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Mankey - Bulk Up - TM30
  (56, 5600, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 29),
  -- Mankey - Fire Punch - TM31
  (56, 5600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 30),
  -- Mankey - Ice Punch - TM35
  (56, 5600, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 31),
  -- Mankey - Thunderbolt - TM36
  (56, 5600, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 32),
  -- Mankey - Thunder - TM38
  (56, 5600, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 33),
  -- Mankey - Outrage - TM39
  (56, 5600, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 34),
  -- Mankey - Earthquake - TM41
  (56, 5600, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 35),
  -- Mankey - Pay Day - TM57
  (56, 5600, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 36),
  -- Primeape - Rage - Level 1
  (57, 5700, 99, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Encore - Level 1
  (57, 5700, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Counter - Level 1
  (57, 5700, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Primeape - Taunt - Level 1
  (57, 5700, 269, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Primeape - Rage - Evolution
  (57, 5700, 99, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Primeape - Focus Energy - Level 5
  (57, 5700, 116, 17, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Primeape - Taunt - Level 8
  (57, 5700, 269, 17, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Primeape - Karate Chop - Level 13
  (57, 5700, 2, 17, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Primeape - Fury Swipes - Level 16
  (57, 5700, 154, 17, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Primeape - Low Kick - Level 21
  (57, 5700, 67, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Primeape - Seismic Toss - Level 24
  (57, 5700, 69, 17, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Primeape - U-turn - Level 33
  (57, 5700, 369, 17, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Primeape - Screech - Level 40
  (57, 5700, 103, 17, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Primeape - Thrash - Level 49
  (57, 5700, 37, 17, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Primeape - Outrage - Level 56
  (57, 5700, 200, 17, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Primeape - Headbutt - TM01
  (57, 5700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 19),
  -- Primeape - Taunt - TM02
  (57, 5700, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 20),
  -- Primeape - Helping Hand - TM03
  (57, 5700, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 21),
  -- Primeape - Rest - TM05
  (57, 5700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 22),
  -- Primeape - Protect - TM07
  (57, 5700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 23),
  -- Primeape - Substitute - TM08
  (57, 5700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 24),
  -- Primeape - Dig - TM10
  (57, 5700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 25),
  -- Primeape - Facade - TM12
  (57, 5700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 26),
  -- Primeape - Brick Break - TM13
  (57, 5700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 27),
  -- Primeape - Seismic Toss - TM15
  (57, 5700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 28),
  -- Primeape - U-turn - TM18
  (57, 5700, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 29),
  -- Primeape - Iron Tail - TM19
  (57, 5700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 30),
  -- Primeape - Rock Slide - TM22
  (57, 5700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 31),
  -- Primeape - Thunder Punch - TM23
  (57, 5700, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 32),
  -- Primeape - Poison Jab - TM26
  (57, 5700, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 33),
  -- Primeape - Toxic - TM27
  (57, 5700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 34),
  -- Primeape - Bulk Up - TM30
  (57, 5700, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 35),
  -- Primeape - Fire Punch - TM31
  (57, 5700, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 36),
  -- Primeape - Ice Punch - TM35
  (57, 5700, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 37),
  -- Primeape - Thunderbolt - TM36
  (57, 5700, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 38),
  -- Primeape - Thunder - TM38
  (57, 5700, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 39),
  -- Primeape - Outrage - TM39
  (57, 5700, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 40),
  -- Primeape - Earthquake - TM41
  (57, 5700, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 41),
  -- Primeape - Hyper Beam - TM48
  (57, 5700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 42),
  -- Primeape - Pay Day - TM57
  (57, 5700, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 43),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 3
  (58, 5800, 52, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 7
  (58, 5800, 43, 17, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Growlithe - Helping Hand - Level 10
  (58, 5800, 270, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Growlithe - Take Down - Level 14
  (58, 5800, 36, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Growlithe - Flamethrower - Level 17
  (58, 5800, 53, 17, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Growlithe - Agility - Level 21
  (58, 5800, 97, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Growlithe - Heat Wave - Level 24
  (58, 5800, 257, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Growlithe - Crunch - Level 28
  (58, 5800, 242, 17, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Growlithe - Outrage - Level 31
  (58, 5800, 200, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Growlithe - Play Rough - Level 35
  (58, 5800, 583, 17, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Growlithe - Flare Blitz - Level 38
  (58, 5800, 394, 17, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Growlithe - Headbutt - TM01
  (58, 5800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Growlithe - Helping Hand - TM03
  (58, 5800, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 15),
  -- Growlithe - Rest - TM05
  (58, 5800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Growlithe - Protect - TM07
  (58, 5800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Growlithe - Substitute - TM08
  (58, 5800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Growlithe - Reflect - TM09
  (58, 5800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Growlithe - Dig - TM10
  (58, 5800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Growlithe - Will-O-Wisp - TM11
  (58, 5800, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 21),
  -- Growlithe - Facade - TM12
  (58, 5800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Growlithe - Iron Tail - TM19
  (58, 5800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Growlithe - Toxic - TM27
  (58, 5800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Growlithe - Flamethrower - TM37
  (58, 5800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Growlithe - Outrage - TM39
  (58, 5800, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 26),
  -- Growlithe - Play Rough - TM44
  (58, 5800, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 27),
  -- Growlithe - Fire Blast - TM46
  (58, 5800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 28),
  -- Arcanine - Double-Edge - Level 1
  (59, 5900, 38, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Leer - Level 1
  (59, 5900, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Headbutt - TM01
  (59, 5900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 6),
  -- Arcanine - Helping Hand - TM03
  (59, 5900, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 7),
  -- Arcanine - Teleport - TM04
  (59, 5900, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 8),
  -- Arcanine - Rest - TM05
  (59, 5900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 9),
  -- Arcanine - Protect - TM07
  (59, 5900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 10),
  -- Arcanine - Substitute - TM08
  (59, 5900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 11),
  -- Arcanine - Reflect - TM09
  (59, 5900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 12),
  -- Arcanine - Dig - TM10
  (59, 5900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 13),
  -- Arcanine - Will-O-Wisp - TM11
  (59, 5900, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 14),
  -- Arcanine - Facade - TM12
  (59, 5900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 15),
  -- Arcanine - Iron Tail - TM19
  (59, 5900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 16),
  -- Arcanine - Toxic - TM27
  (59, 5900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Arcanine - Dragon Pulse - TM34
  (59, 5900, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 18),
  -- Arcanine - Flamethrower - TM37
  (59, 5900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 19),
  -- Arcanine - Outrage - TM39
  (59, 5900, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 20),
  -- Arcanine - Play Rough - TM44
  (59, 5900, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 21),
  -- Arcanine - Solar Beam - TM45
  (59, 5900, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 22),
  -- Arcanine - Fire Blast - TM46
  (59, 5900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 23),
  -- Arcanine - Hyper Beam - TM48
  (59, 5900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 24),
  -- Arcanine - Superpower - TM49
  (59, 5900, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 25),
  -- Poliwag - Bubble - Level 1
  (60, 6000, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Pound - Level 4
  (60, 6000, 1, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Poliwag - Hypnosis - Level 8
  (60, 6000, 95, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Poliwag - Water Gun - Level 12
  (60, 6000, 55, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Poliwag - Double Slap - Level 16
  (60, 6000, 3, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Poliwag - Bubble Beam - Level 21
  (60, 6000, 61, 17, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Poliwag - Low Kick - Level 26
  (60, 6000, 67, 17, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Poliwag - Body Slam - Level 31
  (60, 6000, 34, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Poliwag - Hydro Pump - Level 36
  (60, 6000, 56, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Poliwag - Headbutt - TM01
  (60, 6000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Poliwag - Helping Hand - TM03
  (60, 6000, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 11),
  -- Poliwag - Rest - TM05
  (60, 6000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Poliwag - Protect - TM07
  (60, 6000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Poliwag - Substitute - TM08
  (60, 6000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Poliwag - Dig - TM10
  (60, 6000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Poliwag - Facade - TM12
  (60, 6000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Poliwag - Waterfall - TM25
  (60, 6000, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 17),
  -- Poliwag - Toxic - TM27
  (60, 6000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Poliwag - Scald - TM29
  (60, 6000, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 19),
  -- Poliwag - Psychic - TM40
  (60, 6000, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 20),
  -- Poliwag - Surf - TM47
  (60, 6000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 21),
  -- Poliwag - Blizzard - TM51
  (60, 6000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Poliwag - Ice Beam - TM55
  (60, 6000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 23),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Pound - Level 1
  (61, 6100, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwhirl - Pound - Level 4
  (61, 6100, 1, 17, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Poliwhirl - Hypnosis - Level 8
  (61, 6100, 95, 17, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Poliwhirl - Water Gun - Level 12
  (61, 6100, 55, 17, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Poliwhirl - Double Slap - Level 16
  (61, 6100, 3, 17, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Poliwhirl - Bubble Beam - Level 21
  (61, 6100, 61, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Poliwhirl - Low Kick - Level 30
  (61, 6100, 67, 17, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Poliwhirl - Body Slam - Level 39
  (61, 6100, 34, 17, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 17, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Poliwhirl - Headbutt - TM01
  (61, 6100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Poliwhirl - Helping Hand - TM03
  (61, 6100, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Poliwhirl - Rest - TM05
  (61, 6100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Poliwhirl - Protect - TM07
  (61, 6100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Poliwhirl - Substitute - TM08
  (61, 6100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Poliwhirl - Dig - TM10
  (61, 6100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Poliwhirl - Facade - TM12
  (61, 6100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Poliwhirl - Brick Break - TM13
  (61, 6100, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 20),
  -- Poliwhirl - Seismic Toss - TM15
  (61, 6100, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 21),
  -- Poliwhirl - Waterfall - TM25
  (61, 6100, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 22),
  -- Poliwhirl - Toxic - TM27
  (61, 6100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Poliwhirl - Scald - TM29
  (61, 6100, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 24),
  -- Poliwhirl - Ice Punch - TM35
  (61, 6100, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 25),
  -- Poliwhirl - Psychic - TM40
  (61, 6100, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 26),
  -- Poliwhirl - Earthquake - TM41
  (61, 6100, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 27),
  -- Poliwhirl - Surf - TM47
  (61, 6100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Poliwhirl - Blizzard - TM51
  (61, 6100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 29),
  -- Poliwhirl - Ice Beam - TM55
  (61, 6100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 30),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Mist - Level 1
  (62, 6200, 54, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Haze - Level 1
  (62, 6200, 114, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Bulk Up - Level 1
  (62, 6200, 339, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Bubble - Level 1
  (62, 6200, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poliwrath - Pound - Level 1
  (62, 6200, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Poliwrath - Submission - Evolution
  (62, 6200, 66, 17, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Poliwrath - Superpower - Level 57
  (62, 6200, 276, 17, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Poliwrath - Headbutt - TM01
  (62, 6200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Poliwrath - Helping Hand - TM03
  (62, 6200, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Poliwrath - Rest - TM05
  (62, 6200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Poliwrath - Protect - TM07
  (62, 6200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Poliwrath - Substitute - TM08
  (62, 6200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Poliwrath - Dig - TM10
  (62, 6200, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Poliwrath - Facade - TM12
  (62, 6200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Poliwrath - Brick Break - TM13
  (62, 6200, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Poliwrath - Seismic Toss - TM15
  (62, 6200, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Poliwrath - Rock Slide - TM22
  (62, 6200, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 20),
  -- Poliwrath - Waterfall - TM25
  (62, 6200, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 21),
  -- Poliwrath - Poison Jab - TM26
  (62, 6200, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 22),
  -- Poliwrath - Toxic - TM27
  (62, 6200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Poliwrath - Scald - TM29
  (62, 6200, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 24),
  -- Poliwrath - Bulk Up - TM30
  (62, 6200, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 25),
  -- Poliwrath - Ice Punch - TM35
  (62, 6200, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Poliwrath - Psychic - TM40
  (62, 6200, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 27),
  -- Poliwrath - Earthquake - TM41
  (62, 6200, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 28),
  -- Poliwrath - Surf - TM47
  (62, 6200, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 29),
  -- Poliwrath - Hyper Beam - TM48
  (62, 6200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Poliwrath - Superpower - TM49
  (62, 6200, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 31),
  -- Poliwrath - Blizzard - TM51
  (62, 6200, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 32),
  -- Poliwrath - Ice Beam - TM55
  (62, 6200, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Headbutt - TM01
  (63, 6300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 2),
  -- Abra - Taunt - TM02
  (63, 6300, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 3),
  -- Abra - Teleport - TM04
  (63, 6300, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 4),
  -- Abra - Rest - TM05
  (63, 6300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 5),
  -- Abra - Light Screen - TM06
  (63, 6300, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 6),
  -- Abra - Protect - TM07
  (63, 6300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 7),
  -- Abra - Substitute - TM08
  (63, 6300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 8),
  -- Abra - Reflect - TM09
  (63, 6300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 9),
  -- Abra - Facade - TM12
  (63, 6300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 10),
  -- Abra - Seismic Toss - TM15
  (63, 6300, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 11),
  -- Abra - Thunder Wave - TM16
  (63, 6300, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 12),
  -- Abra - Iron Tail - TM19
  (63, 6300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 13),
  -- Abra - Foul Play - TM21
  (63, 6300, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 14),
  -- Abra - Thunder Punch - TM23
  (63, 6300, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 15),
  -- Abra - Toxic - TM27
  (63, 6300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 16),
  -- Abra - Tri Attack - TM28
  (63, 6300, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 17),
  -- Abra - Fire Punch - TM31
  (63, 6300, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 18),
  -- Abra - Dazzling Gleam - TM32
  (63, 6300, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 19),
  -- Abra - Calm Mind - TM33
  (63, 6300, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 20),
  -- Abra - Ice Punch - TM35
  (63, 6300, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 21),
  -- Abra - Psychic - TM40
  (63, 6300, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 22),
  -- Abra - Shadow Ball - TM43
  (63, 6300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 23),
  -- Abra - Dream Eater - TM59
  (63, 6300, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 24),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Psybeam - Level 1
  (64, 6400, 60, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 1
  (64, 6400, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kadabra - Flash - Level 1
  (64, 6400, 148, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kadabra - Kinesis - Evolution
  (64, 6400, 134, 17, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Kadabra - Psybeam - Evolution
  (64, 6400, 60, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Kadabra - Disable - Level 6
  (64, 6400, 50, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Kadabra - Flash - Level 13
  (64, 6400, 148, 17, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Kadabra - Night Shade - Level 19
  (64, 6400, 101, 17, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Kadabra - Substitute - Level 26
  (64, 6400, 164, 17, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Kadabra - Reflect - Level 32
  (64, 6400, 115, 17, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kadabra - Recover - Level 39
  (64, 6400, 105, 17, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Kadabra - Psychic - Level 45
  (64, 6400, 94, 17, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Kadabra - Headbutt - TM01
  (64, 6400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Kadabra - Taunt - TM02
  (64, 6400, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 17),
  -- Kadabra - Teleport - TM04
  (64, 6400, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 18),
  -- Kadabra - Rest - TM05
  (64, 6400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Kadabra - Light Screen - TM06
  (64, 6400, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 20),
  -- Kadabra - Protect - TM07
  (64, 6400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 21),
  -- Kadabra - Substitute - TM08
  (64, 6400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 22),
  -- Kadabra - Reflect - TM09
  (64, 6400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 23),
  -- Kadabra - Dig - TM10
  (64, 6400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 24),
  -- Kadabra - Facade - TM12
  (64, 6400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Kadabra - Seismic Toss - TM15
  (64, 6400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 26),
  -- Kadabra - Thunder Wave - TM16
  (64, 6400, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 27),
  -- Kadabra - Iron Tail - TM19
  (64, 6400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 28),
  -- Kadabra - Foul Play - TM21
  (64, 6400, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 29),
  -- Kadabra - Thunder Punch - TM23
  (64, 6400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 30),
  -- Kadabra - Toxic - TM27
  (64, 6400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 31),
  -- Kadabra - Tri Attack - TM28
  (64, 6400, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 32),
  -- Kadabra - Fire Punch - TM31
  (64, 6400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 33),
  -- Kadabra - Dazzling Gleam - TM32
  (64, 6400, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 34),
  -- Kadabra - Calm Mind - TM33
  (64, 6400, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 35),
  -- Kadabra - Ice Punch - TM35
  (64, 6400, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 36),
  -- Kadabra - Psychic - TM40
  (64, 6400, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 37),
  -- Kadabra - Shadow Ball - TM43
  (64, 6400, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 38),
  -- Kadabra - Dream Eater - TM59
  (64, 6400, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 39),
  -- Alakazam - Calm Mind - Level 1
  (65, 6500, 347, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Psybeam - Level 1
  (65, 6500, 60, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Barrier - Level 1
  (65, 6500, 112, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alakazam - Encore - Level 1
  (65, 6500, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alakazam - Disable - Level 1
  (65, 6500, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Alakazam - Flash - Level 1
  (65, 6500, 148, 17, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Alakazam - Calm Mind - Evolution
  (65, 6500, 347, 17, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Alakazam - Disable - Level 6
  (65, 6500, 50, 17, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Alakazam - Flash - Level 13
  (65, 6500, 148, 17, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Alakazam - Night Shade - Level 19
  (65, 6500, 101, 17, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Alakazam - Substitute - Level 26
  (65, 6500, 164, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Alakazam - Reflect - Level 32
  (65, 6500, 115, 17, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Alakazam - Recover - Level 39
  (65, 6500, 105, 17, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Alakazam - Psychic - Level 45
  (65, 6500, 94, 17, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Alakazam - Headbutt - TM01
  (65, 6500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 18),
  -- Alakazam - Taunt - TM02
  (65, 6500, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 19),
  -- Alakazam - Teleport - TM04
  (65, 6500, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 20),
  -- Alakazam - Rest - TM05
  (65, 6500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 21),
  -- Alakazam - Light Screen - TM06
  (65, 6500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 22),
  -- Alakazam - Protect - TM07
  (65, 6500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 23),
  -- Alakazam - Substitute - TM08
  (65, 6500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 24),
  -- Alakazam - Reflect - TM09
  (65, 6500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 25),
  -- Alakazam - Dig - TM10
  (65, 6500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 26),
  -- Alakazam - Facade - TM12
  (65, 6500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 27),
  -- Alakazam - Seismic Toss - TM15
  (65, 6500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 28),
  -- Alakazam - Thunder Wave - TM16
  (65, 6500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 29),
  -- Alakazam - Iron Tail - TM19
  (65, 6500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 30),
  -- Alakazam - Foul Play - TM21
  (65, 6500, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 31),
  -- Alakazam - Thunder Punch - TM23
  (65, 6500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 32),
  -- Alakazam - Toxic - TM27
  (65, 6500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 33),
  -- Alakazam - Tri Attack - TM28
  (65, 6500, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 34),
  -- Alakazam - Fire Punch - TM31
  (65, 6500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 35),
  -- Alakazam - Dazzling Gleam - TM32
  (65, 6500, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 36),
  -- Alakazam - Calm Mind - TM33
  (65, 6500, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 37),
  -- Alakazam - Ice Punch - TM35
  (65, 6500, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 38),
  -- Alakazam - Psychic - TM40
  (65, 6500, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 39),
  -- Alakazam - Shadow Ball - TM43
  (65, 6500, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 40),
  -- Alakazam - Hyper Beam - TM48
  (65, 6500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 41),
  -- Alakazam - Dream Eater - TM59
  (65, 6500, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 42),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 4
  (66, 6600, 116, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Machop - Bide - Level 8
  (66, 6600, 117, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Machop - Seismic Toss - Level 12
  (66, 6600, 69, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Machop - Karate Chop - Level 16
  (66, 6600, 2, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machop - Brick Break - Level 21
  (66, 6600, 280, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Machop - Submission - Level 26
  (66, 6600, 66, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Machop - Bulk Up - Level 31
  (66, 6600, 339, 17, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machop - Superpower - Level 36
  (66, 6600, 276, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Machop - Headbutt - TM01
  (66, 6600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Machop - Helping Hand - TM03
  (66, 6600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Machop - Rest - TM05
  (66, 6600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Machop - Light Screen - TM06
  (66, 6600, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Machop - Protect - TM07
  (66, 6600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Machop - Substitute - TM08
  (66, 6600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Machop - Dig - TM10
  (66, 6600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Machop - Facade - TM12
  (66, 6600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Machop - Brick Break - TM13
  (66, 6600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Machop - Seismic Toss - TM15
  (66, 6600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Machop - Rock Slide - TM22
  (66, 6600, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Machop - Thunder Punch - TM23
  (66, 6600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Machop - Poison Jab - TM26
  (66, 6600, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 23),
  -- Machop - Toxic - TM27
  (66, 6600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Machop - Bulk Up - TM30
  (66, 6600, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 25),
  -- Machop - Fire Punch - TM31
  (66, 6600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 26),
  -- Machop - Ice Punch - TM35
  (66, 6600, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 27),
  -- Machop - Flamethrower - TM37
  (66, 6600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 28),
  -- Machop - Earthquake - TM41
  (66, 6600, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 29),
  -- Machop - Fire Blast - TM46
  (66, 6600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 30),
  -- Machop - Superpower - TM49
  (66, 6600, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 31),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Bide - Level 1
  (67, 6700, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machoke - Focus Energy - Level 4
  (67, 6700, 116, 17, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Machoke - Bide - Level 8
  (67, 6700, 117, 17, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Machoke - Seismic Toss - Level 12
  (67, 6700, 69, 17, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Machoke - Karate Chop - Level 16
  (67, 6700, 2, 17, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Machoke - Brick Break - Level 21
  (67, 6700, 280, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Machoke - Submission - Level 26
  (67, 6700, 66, 17, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Machoke - Bulk Up - Level 37
  (67, 6700, 339, 17, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Machoke - Superpower - Level 48
  (67, 6700, 276, 17, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Machoke - Headbutt - TM01
  (67, 6700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Machoke - Helping Hand - TM03
  (67, 6700, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Machoke - Rest - TM05
  (67, 6700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Machoke - Light Screen - TM06
  (67, 6700, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Machoke - Protect - TM07
  (67, 6700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Machoke - Substitute - TM08
  (67, 6700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Machoke - Dig - TM10
  (67, 6700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Machoke - Facade - TM12
  (67, 6700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Machoke - Brick Break - TM13
  (67, 6700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Machoke - Seismic Toss - TM15
  (67, 6700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Machoke - Rock Slide - TM22
  (67, 6700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Machoke - Thunder Punch - TM23
  (67, 6700, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Machoke - Poison Jab - TM26
  (67, 6700, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 25),
  -- Machoke - Toxic - TM27
  (67, 6700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Machoke - Bulk Up - TM30
  (67, 6700, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 27),
  -- Machoke - Fire Punch - TM31
  (67, 6700, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 28),
  -- Machoke - Ice Punch - TM35
  (67, 6700, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 29),
  -- Machoke - Flamethrower - TM37
  (67, 6700, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 30),
  -- Machoke - Earthquake - TM41
  (67, 6700, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 31),
  -- Machoke - Fire Blast - TM46
  (67, 6700, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 32),
  -- Machoke - Superpower - TM49
  (67, 6700, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 33),
  -- Machamp - Strength - Level 1
  (68, 6800, 70, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Encore - Level 1
  (68, 6800, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Counter - Level 1
  (68, 6800, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Machamp - Bide - Level 1
  (68, 6800, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Machamp - Strength - Evolution
  (68, 6800, 70, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Machamp - Focus Energy - Level 4
  (68, 6800, 116, 17, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Machamp - Bide - Level 8
  (68, 6800, 117, 17, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Machamp - Seismic Toss - Level 12
  (68, 6800, 69, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Machamp - Karate Chop - Level 16
  (68, 6800, 2, 17, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Machamp - Brick Break - Level 21
  (68, 6800, 280, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Machamp - Submission - Level 26
  (68, 6800, 66, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Machamp - Bulk Up - Level 37
  (68, 6800, 339, 17, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Machamp - Superpower - Level 48
  (68, 6800, 276, 17, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Machamp - Headbutt - TM01
  (68, 6800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Machamp - Helping Hand - TM03
  (68, 6800, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Machamp - Rest - TM05
  (68, 6800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Machamp - Light Screen - TM06
  (68, 6800, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 20),
  -- Machamp - Protect - TM07
  (68, 6800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 21),
  -- Machamp - Substitute - TM08
  (68, 6800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 22),
  -- Machamp - Dig - TM10
  (68, 6800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Machamp - Facade - TM12
  (68, 6800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Machamp - Brick Break - TM13
  (68, 6800, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Machamp - Seismic Toss - TM15
  (68, 6800, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 26),
  -- Machamp - Rock Slide - TM22
  (68, 6800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 27),
  -- Machamp - Thunder Punch - TM23
  (68, 6800, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 28),
  -- Machamp - Poison Jab - TM26
  (68, 6800, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 29),
  -- Machamp - Toxic - TM27
  (68, 6800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 30),
  -- Machamp - Bulk Up - TM30
  (68, 6800, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 31),
  -- Machamp - Fire Punch - TM31
  (68, 6800, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 32),
  -- Machamp - Ice Punch - TM35
  (68, 6800, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 33),
  -- Machamp - Flamethrower - TM37
  (68, 6800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 34),
  -- Machamp - Earthquake - TM41
  (68, 6800, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 35),
  -- Machamp - Fire Blast - TM46
  (68, 6800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 36),
  -- Machamp - Hyper Beam - TM48
  (68, 6800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 37),
  -- Machamp - Superpower - TM49
  (68, 6800, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 38),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 4
  (69, 6900, 74, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 8
  (69, 6900, 35, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Bellsprout - Acid - Level 12
  (69, 6900, 51, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bellsprout - Sleep Powder - Level 16
  (69, 6900, 79, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Bellsprout - Poison Powder - Level 17
  (69, 6900, 77, 17, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Stun Spore - Level 18
  (69, 6900, 78, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Bellsprout - Razor Leaf - Level 22
  (69, 6900, 75, 17, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Bellsprout - Poison Jab - Level 26
  (69, 6900, 398, 17, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Bellsprout - Slam - Level 30
  (69, 6900, 21, 17, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Bellsprout - Headbutt - TM01
  (69, 6900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Bellsprout - Rest - TM05
  (69, 6900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Bellsprout - Protect - TM07
  (69, 6900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Bellsprout - Substitute - TM08
  (69, 6900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Bellsprout - Reflect - TM09
  (69, 6900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Bellsprout - Facade - TM12
  (69, 6900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Bellsprout - Poison Jab - TM26
  (69, 6900, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 17),
  -- Bellsprout - Toxic - TM27
  (69, 6900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Bellsprout - Solar Beam - TM45
  (69, 6900, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 19),
  -- Bellsprout - Sludge Bomb - TM52
  (69, 6900, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 20),
  -- Bellsprout - Mega Drain - TM53
  (69, 6900, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 21),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Acid - Level 1
  (70, 7000, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weepinbell - Growth - Level 4
  (70, 7000, 74, 17, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Weepinbell - Wrap - Level 8
  (70, 7000, 35, 17, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Weepinbell - Acid - Level 12
  (70, 7000, 51, 17, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Weepinbell - Sleep Powder - Level 16
  (70, 7000, 79, 17, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Weepinbell - Poison Powder - Level 17
  (70, 7000, 77, 17, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Weepinbell - Stun Spore - Level 18
  (70, 7000, 78, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Weepinbell - Razor Leaf - Level 27
  (70, 7000, 75, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Weepinbell - Poison Jab - Level 36
  (70, 7000, 398, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Weepinbell - Slam - Level 45
  (70, 7000, 21, 17, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Weepinbell - Headbutt - TM01
  (70, 7000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Weepinbell - Rest - TM05
  (70, 7000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Weepinbell - Protect - TM07
  (70, 7000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Weepinbell - Substitute - TM08
  (70, 7000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Weepinbell - Reflect - TM09
  (70, 7000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Weepinbell - Facade - TM12
  (70, 7000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Weepinbell - Poison Jab - TM26
  (70, 7000, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 20),
  -- Weepinbell - Toxic - TM27
  (70, 7000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Weepinbell - Solar Beam - TM45
  (70, 7000, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 22),
  -- Weepinbell - Sludge Bomb - TM52
  (70, 7000, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 23),
  -- Weepinbell - Mega Drain - TM53
  (70, 7000, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 24),
  -- Victreebel - Power Whip - Level 1
  (71, 7100, 438, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Clear Smog - Level 1
  (71, 7100, 499, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Leech Life - Level 1
  (71, 7100, 141, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Swords Dance - Level 1
  (71, 7100, 14, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Sucker Punch - Level 1
  (71, 7100, 389, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Growth - Level 1
  (71, 7100, 74, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Wrap - Level 1
  (71, 7100, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Victreebel - Acid - Level 1
  (71, 7100, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Victreebel - Power Whip - Level 54
  (71, 7100, 438, 17, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Victreebel - Headbutt - TM01
  (71, 7100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Victreebel - Rest - TM05
  (71, 7100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Victreebel - Protect - TM07
  (71, 7100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Victreebel - Substitute - TM08
  (71, 7100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Victreebel - Reflect - TM09
  (71, 7100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Victreebel - Facade - TM12
  (71, 7100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Victreebel - Poison Jab - TM26
  (71, 7100, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 17),
  -- Victreebel - Toxic - TM27
  (71, 7100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Victreebel - Solar Beam - TM45
  (71, 7100, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 19),
  -- Victreebel - Hyper Beam - TM48
  (71, 7100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 20),
  -- Victreebel - Sludge Bomb - TM52
  (71, 7100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 21),
  -- Victreebel - Mega Drain - TM53
  (71, 7100, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 22),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Constrict - Level 4
  (72, 7200, 132, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Tentacool - Supersonic - Level 9
  (72, 7200, 48, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 13
  (72, 7200, 51, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Tentacool - Bubble Beam - Level 18
  (72, 7200, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Tentacool - Wrap - Level 22
  (72, 7200, 35, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Tentacool - Surf - Level 27
  (72, 7200, 57, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Tentacool - Barrier - Level 31
  (72, 7200, 112, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Tentacool - Screech - Level 40
  (72, 7200, 103, 17, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tentacool - Hydro Pump - Level 45
  (72, 7200, 56, 17, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tentacool - Headbutt - TM01
  (72, 7200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Tentacool - Rest - TM05
  (72, 7200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Tentacool - Protect - TM07
  (72, 7200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Tentacool - Substitute - TM08
  (72, 7200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Tentacool - Reflect - TM09
  (72, 7200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Tentacool - Facade - TM12
  (72, 7200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Tentacool - Waterfall - TM25
  (72, 7200, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 18),
  -- Tentacool - Poison Jab - TM26
  (72, 7200, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 19),
  -- Tentacool - Toxic - TM27
  (72, 7200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Tentacool - Scald - TM29
  (72, 7200, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 21),
  -- Tentacool - Dazzling Gleam - TM32
  (72, 7200, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 22),
  -- Tentacool - Surf - TM47
  (72, 7200, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 23),
  -- Tentacool - Blizzard - TM51
  (72, 7200, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 24),
  -- Tentacool - Sludge Bomb - TM52
  (72, 7200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 25),
  -- Tentacool - Mega Drain - TM53
  (72, 7200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 26),
  -- Tentacool - Ice Beam - TM55
  (72, 7200, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 27),
  -- Tentacruel - Haze - Level 1
  (73, 7300, 114, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Mirror Coat - Level 1
  (73, 7300, 243, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 1
  (73, 7300, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tentacruel - Constrict - Level 4
  (73, 7300, 132, 17, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Tentacruel - Supersonic - Level 9
  (73, 7300, 48, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Tentacruel - Acid - Level 13
  (73, 7300, 51, 17, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Tentacruel - Bubble Beam - Level 18
  (73, 7300, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Tentacruel - Wrap - Level 22
  (73, 7300, 35, 17, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Tentacruel - Surf - Level 27
  (73, 7300, 57, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Tentacruel - Barrier - Level 36
  (73, 7300, 112, 17, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tentacruel - Poison Jab - Level 46
  (73, 7300, 398, 17, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Tentacruel - Screech - Level 55
  (73, 7300, 103, 17, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Tentacruel - Hydro Pump - Level 65
  (73, 7300, 56, 17, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Tentacruel - Headbutt - TM01
  (73, 7300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Tentacruel - Rest - TM05
  (73, 7300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Tentacruel - Protect - TM07
  (73, 7300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Tentacruel - Substitute - TM08
  (73, 7300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Tentacruel - Reflect - TM09
  (73, 7300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 21),
  -- Tentacruel - Facade - TM12
  (73, 7300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Tentacruel - Waterfall - TM25
  (73, 7300, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 23),
  -- Tentacruel - Poison Jab - TM26
  (73, 7300, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 24),
  -- Tentacruel - Toxic - TM27
  (73, 7300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Tentacruel - Scald - TM29
  (73, 7300, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 26),
  -- Tentacruel - Dazzling Gleam - TM32
  (73, 7300, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 27),
  -- Tentacruel - Surf - TM47
  (73, 7300, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Tentacruel - Hyper Beam - TM48
  (73, 7300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Tentacruel - Blizzard - TM51
  (73, 7300, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Tentacruel - Sludge Bomb - TM52
  (73, 7300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 31),
  -- Tentacruel - Mega Drain - TM53
  (73, 7300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 32),
  -- Tentacruel - Ice Beam - TM55
  (73, 7300, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Sand Attack - Level 3
  (74, 7400, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Geodude - Bide - Level 6
  (74, 7400, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Geodude - Rock Throw - Level 9
  (74, 7400, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Geodude - Stealth Rock - Level 12
  (74, 7400, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Geodude - Take Down - Level 15
  (74, 7400, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Geodude - Self-Destruct - Level 19
  (74, 7400, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Geodude - Rock Slide - Level 23
  (74, 7400, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Geodude - Earthquake - Level 27
  (74, 7400, 89, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Geodude - Double-Edge - Level 31
  (74, 7400, 38, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Geodude - Explosion - Level 35
  (74, 7400, 153, 17, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Geodude - Headbutt - TM01
  (74, 7400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Geodude - Rest - TM05
  (74, 7400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Geodude - Protect - TM07
  (74, 7400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Geodude - Substitute - TM08
  (74, 7400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Geodude - Dig - TM10
  (74, 7400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Geodude - Facade - TM12
  (74, 7400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Geodude - Brick Break - TM13
  (74, 7400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Geodude - Seismic Toss - TM15
  (74, 7400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Geodude - Rock Slide - TM22
  (74, 7400, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Geodude - Thunder Punch - TM23
  (74, 7400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Geodude - Toxic - TM27
  (74, 7400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Geodude - Fire Punch - TM31
  (74, 7400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 24),
  -- Geodude - Flamethrower - TM37
  (74, 7400, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Geodude - Earthquake - TM41
  (74, 7400, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 26),
  -- Geodude - Self-Destruct - TM42
  (74, 7400, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 27),
  -- Geodude - Fire Blast - TM46
  (74, 7400, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 28),
  -- Geodude - Superpower - TM49
  (74, 7400, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 29),
  -- Geodude - Stealth Rock - TM56
  (74, 7400, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 30),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Sand Attack - Level 1
  (75, 7500, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Bide - Level 1
  (75, 7500, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Sand Attack - Level 3
  (75, 7500, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Graveler - Bide - Level 6
  (75, 7500, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Graveler - Rock Throw - Level 9
  (75, 7500, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Graveler - Stealth Rock - Level 12
  (75, 7500, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Graveler - Take Down - Level 15
  (75, 7500, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Graveler - Self-Destruct - Level 19
  (75, 7500, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Graveler - Rock Slide - Level 23
  (75, 7500, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Graveler - Earthquake - Level 31
  (75, 7500, 89, 17, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Graveler - Double-Edge - Level 39
  (75, 7500, 38, 17, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Graveler - Explosion - Level 47
  (75, 7500, 153, 17, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Graveler - Headbutt - TM01
  (75, 7500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Graveler - Rest - TM05
  (75, 7500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Graveler - Protect - TM07
  (75, 7500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Graveler - Substitute - TM08
  (75, 7500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Graveler - Dig - TM10
  (75, 7500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Graveler - Facade - TM12
  (75, 7500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Graveler - Brick Break - TM13
  (75, 7500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Graveler - Seismic Toss - TM15
  (75, 7500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Graveler - Rock Slide - TM22
  (75, 7500, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Graveler - Thunder Punch - TM23
  (75, 7500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Graveler - Toxic - TM27
  (75, 7500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Graveler - Fire Punch - TM31
  (75, 7500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 26),
  -- Graveler - Flamethrower - TM37
  (75, 7500, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 27),
  -- Graveler - Earthquake - TM41
  (75, 7500, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 28),
  -- Graveler - Self-Destruct - TM42
  (75, 7500, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 29),
  -- Graveler - Fire Blast - TM46
  (75, 7500, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 30),
  -- Graveler - Superpower - TM49
  (75, 7500, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 31),
  -- Graveler - Stealth Rock - TM56
  (75, 7500, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 32),
  -- Golem - Mega Punch - Level 1
  (76, 7600, 5, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Sand Attack - Level 1
  (76, 7600, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Bide - Level 1
  (76, 7600, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golem - Sand Attack - Level 3
  (76, 7600, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Golem - Bide - Level 6
  (76, 7600, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Golem - Rock Throw - Level 9
  (76, 7600, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Golem - Stealth Rock - Level 12
  (76, 7600, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Golem - Take Down - Level 15
  (76, 7600, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Golem - Self-Destruct - Level 19
  (76, 7600, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Golem - Rock Slide - Level 23
  (76, 7600, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Golem - Earthquake - Level 31
  (76, 7600, 89, 17, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Golem - Double-Edge - Level 39
  (76, 7600, 38, 17, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Golem - Explosion - Level 47
  (76, 7600, 153, 17, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Golem - Headbutt - TM01
  (76, 7600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Golem - Rest - TM05
  (76, 7600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Golem - Protect - TM07
  (76, 7600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Golem - Substitute - TM08
  (76, 7600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Golem - Dig - TM10
  (76, 7600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Golem - Facade - TM12
  (76, 7600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Golem - Brick Break - TM13
  (76, 7600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Golem - Seismic Toss - TM15
  (76, 7600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Golem - Rock Slide - TM22
  (76, 7600, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 24),
  -- Golem - Thunder Punch - TM23
  (76, 7600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 25),
  -- Golem - Toxic - TM27
  (76, 7600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Golem - Fire Punch - TM31
  (76, 7600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Golem - Flamethrower - TM37
  (76, 7600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 28),
  -- Golem - Earthquake - TM41
  (76, 7600, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 29),
  -- Golem - Self-Destruct - TM42
  (76, 7600, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 30),
  -- Golem - Fire Blast - TM46
  (76, 7600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 31),
  -- Golem - Hyper Beam - TM48
  (76, 7600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 32),
  -- Golem - Superpower - TM49
  (76, 7600, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 33),
  -- Golem - Stealth Rock - TM56
  (76, 7600, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 34),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 1
  (77, 7700, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 5
  (77, 7700, 52, 17, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Ponyta - Quick Attack - Level 10
  (77, 7700, 98, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Ponyta - Double Kick - Level 15
  (77, 7700, 24, 17, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ponyta - Stomp - Level 20
  (77, 7700, 23, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ponyta - Fire Spin - Level 26
  (77, 7700, 83, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Ponyta - Agility - Level 32
  (77, 7700, 97, 17, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Ponyta - Fire Blast - Level 38
  (77, 7700, 126, 17, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Ponyta - Take Down - Level 44
  (77, 7700, 36, 17, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Ponyta - Flare Blitz - Level 51
  (77, 7700, 394, 17, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Ponyta - Headbutt - TM01
  (77, 7700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Ponyta - Rest - TM05
  (77, 7700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Ponyta - Protect - TM07
  (77, 7700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Ponyta - Substitute - TM08
  (77, 7700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Ponyta - Reflect - TM09
  (77, 7700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Ponyta - Will-O-Wisp - TM11
  (77, 7700, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 18),
  -- Ponyta - Facade - TM12
  (77, 7700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Ponyta - Iron Tail - TM19
  (77, 7700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Ponyta - Toxic - TM27
  (77, 7700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Ponyta - Flamethrower - TM37
  (77, 7700, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 22),
  -- Ponyta - Solar Beam - TM45
  (77, 7700, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 23),
  -- Ponyta - Fire Blast - TM46
  (77, 7700, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 24),
  -- Rapidash - Fury Attack - Level 1
  (78, 7800, 31, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Horn Drill - Level 1
  (78, 7800, 32, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Hypnosis - Level 1
  (78, 7800, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Tackle - Level 1
  (78, 7800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Rapidash - Fury Attack - Evolution
  (78, 7800, 31, 17, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Rapidash - Ember - Level 5
  (78, 7800, 52, 17, NULL, 1, 5, NULL, NULL, NULL, 11),
  -- Rapidash - Quick Attack - Level 10
  (78, 7800, 98, 17, NULL, 1, 10, NULL, NULL, NULL, 12),
  -- Rapidash - Double Kick - Level 15
  (78, 7800, 24, 17, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Rapidash - Stomp - Level 20
  (78, 7800, 23, 17, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Rapidash - Fire Spin - Level 26
  (78, 7800, 83, 17, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Rapidash - Agility - Level 32
  (78, 7800, 97, 17, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Rapidash - Fire Blast - Level 38
  (78, 7800, 126, 17, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Rapidash - Take Down - Level 51
  (78, 7800, 36, 17, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Rapidash - Flare Blitz - Level 65
  (78, 7800, 394, 17, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Rapidash - Headbutt - TM01
  (78, 7800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 20),
  -- Rapidash - Rest - TM05
  (78, 7800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 21),
  -- Rapidash - Protect - TM07
  (78, 7800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 22),
  -- Rapidash - Substitute - TM08
  (78, 7800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 23),
  -- Rapidash - Reflect - TM09
  (78, 7800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 24),
  -- Rapidash - Will-O-Wisp - TM11
  (78, 7800, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 25),
  -- Rapidash - Facade - TM12
  (78, 7800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 26),
  -- Rapidash - Iron Tail - TM19
  (78, 7800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 27),
  -- Rapidash - Poison Jab - TM26
  (78, 7800, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 28),
  -- Rapidash - Toxic - TM27
  (78, 7800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Rapidash - Flamethrower - TM37
  (78, 7800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 30),
  -- Rapidash - Solar Beam - TM45
  (78, 7800, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 31),
  -- Rapidash - Fire Blast - TM46
  (78, 7800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 32),
  -- Rapidash - Hyper Beam - TM48
  (78, 7800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 33),
  -- Rapidash - Drill Run - TM58
  (78, 7800, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 34),
  -- Rapidash - Megahorn - TM60
  (78, 7800, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 35),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Growl - Level 6
  (79, 7900, 45, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slowpoke - Water Gun - Level 12
  (79, 7900, 55, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Slowpoke - Confusion - Level 18
  (79, 7900, 93, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Slowpoke - Disable - Level 24
  (79, 7900, 50, 17, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Slowpoke - Rest - Level 30
  (79, 7900, 156, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Slowpoke - Surf - Level 36
  (79, 7900, 57, 17, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Slowpoke - Psychic - Level 42
  (79, 7900, 94, 17, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Slowpoke - Amnesia - Level 48
  (79, 7900, 133, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Slowpoke - Headbutt - TM01
  (79, 7900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Slowpoke - Teleport - TM04
  (79, 7900, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 12),
  -- Slowpoke - Rest - TM05
  (79, 7900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Slowpoke - Light Screen - TM06
  (79, 7900, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Slowpoke - Protect - TM07
  (79, 7900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Slowpoke - Substitute - TM08
  (79, 7900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Slowpoke - Reflect - TM09
  (79, 7900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Slowpoke - Dig - TM10
  (79, 7900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Slowpoke - Facade - TM12
  (79, 7900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Slowpoke - Thunder Wave - TM16
  (79, 7900, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 20),
  -- Slowpoke - Iron Tail - TM19
  (79, 7900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Slowpoke - Toxic - TM27
  (79, 7900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Slowpoke - Tri Attack - TM28
  (79, 7900, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 23),
  -- Slowpoke - Scald - TM29
  (79, 7900, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 24),
  -- Slowpoke - Calm Mind - TM33
  (79, 7900, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 25),
  -- Slowpoke - Flamethrower - TM37
  (79, 7900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 26),
  -- Slowpoke - Psychic - TM40
  (79, 7900, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 27),
  -- Slowpoke - Earthquake - TM41
  (79, 7900, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 28),
  -- Slowpoke - Shadow Ball - TM43
  (79, 7900, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Slowpoke - Fire Blast - TM46
  (79, 7900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 30),
  -- Slowpoke - Surf - TM47
  (79, 7900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 31),
  -- Slowpoke - Blizzard - TM51
  (79, 7900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 32),
  -- Slowpoke - Ice Beam - TM55
  (79, 7900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Slowpoke - Pay Day - TM57
  (79, 7900, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 34),
  -- Slowpoke - Dream Eater - TM59
  (79, 7900, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 35),
  -- Slowbro - Withdraw - Level 1
  (80, 8000, 110, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Stomp - Level 1
  (80, 8000, 23, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 1
  (80, 8000, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowbro - Withdraw - Evolution
  (80, 8000, 110, 17, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Slowbro - Growl - Level 6
  (80, 8000, 45, 17, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Slowbro - Water Gun - Level 12
  (80, 8000, 55, 17, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Slowbro - Confusion - Level 18
  (80, 8000, 93, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Slowbro - Disable - Level 24
  (80, 8000, 50, 17, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Slowbro - Rest - Level 30
  (80, 8000, 156, 17, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowbro - Surf - Level 36
  (80, 8000, 57, 17, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Slowbro - Psychic - Level 49
  (80, 8000, 94, 17, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Slowbro - Amnesia - Level 62
  (80, 8000, 133, 17, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Slowbro - Headbutt - TM01
  (80, 8000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Slowbro - Teleport - TM04
  (80, 8000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 17),
  -- Slowbro - Rest - TM05
  (80, 8000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Slowbro - Light Screen - TM06
  (80, 8000, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Slowbro - Protect - TM07
  (80, 8000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Slowbro - Substitute - TM08
  (80, 8000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Slowbro - Reflect - TM09
  (80, 8000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Slowbro - Dig - TM10
  (80, 8000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Slowbro - Facade - TM12
  (80, 8000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Slowbro - Brick Break - TM13
  (80, 8000, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Slowbro - Seismic Toss - TM15
  (80, 8000, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 26),
  -- Slowbro - Thunder Wave - TM16
  (80, 8000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 27),
  -- Slowbro - Iron Tail - TM19
  (80, 8000, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 28),
  -- Slowbro - Foul Play - TM21
  (80, 8000, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 29),
  -- Slowbro - Toxic - TM27
  (80, 8000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 30),
  -- Slowbro - Tri Attack - TM28
  (80, 8000, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 31),
  -- Slowbro - Scald - TM29
  (80, 8000, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 32),
  -- Slowbro - Calm Mind - TM33
  (80, 8000, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 33),
  -- Slowbro - Ice Punch - TM35
  (80, 8000, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 34),
  -- Slowbro - Flamethrower - TM37
  (80, 8000, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 35),
  -- Slowbro - Psychic - TM40
  (80, 8000, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 36),
  -- Slowbro - Earthquake - TM41
  (80, 8000, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 37),
  -- Slowbro - Shadow Ball - TM43
  (80, 8000, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 38),
  -- Slowbro - Fire Blast - TM46
  (80, 8000, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 39),
  -- Slowbro - Surf - TM47
  (80, 8000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 40),
  -- Slowbro - Hyper Beam - TM48
  (80, 8000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 41),
  -- Slowbro - Blizzard - TM51
  (80, 8000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 42),
  -- Slowbro - Ice Beam - TM55
  (80, 8000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 43),
  -- Slowbro - Pay Day - TM57
  (80, 8000, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 44),
  -- Slowbro - Dream Eater - TM59
  (80, 8000, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 45),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Supersonic - Level 1
  (81, 8100, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 5
  (81, 8100, 84, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Magnemite - Thunder Wave - Level 10
  (81, 8100, 86, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Magnemite - Sonic Boom - Level 15
  (81, 8100, 49, 17, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Magnemite - Light Screen - Level 20
  (81, 8100, 113, 17, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Magnemite - Thunderbolt - Level 26
  (81, 8100, 85, 17, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Magnemite - Screech - Level 32
  (81, 8100, 103, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Magnemite - Flash Cannon - Level 38
  (81, 8100, 430, 17, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Magnemite - Thunder - Level 44
  (81, 8100, 87, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Magnemite - Headbutt - TM01
  (81, 8100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Magnemite - Teleport - TM04
  (81, 8100, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 12),
  -- Magnemite - Rest - TM05
  (81, 8100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Magnemite - Light Screen - TM06
  (81, 8100, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Magnemite - Protect - TM07
  (81, 8100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Magnemite - Substitute - TM08
  (81, 8100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Magnemite - Reflect - TM09
  (81, 8100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Magnemite - Facade - TM12
  (81, 8100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Magnemite - Thunder Wave - TM16
  (81, 8100, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 19),
  -- Magnemite - Toxic - TM27
  (81, 8100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Magnemite - Thunderbolt - TM36
  (81, 8100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 21),
  -- Magnemite - Thunder - TM38
  (81, 8100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 22),
  -- Magnemite - Flash Cannon - TM54
  (81, 8100, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 23),
  -- Magneton - Tri Attack - Evolution
  (82, 8200, 161, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Thunder Wave - Level 1
  (82, 8200, 86, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magneton - Thunder Shock - Level 5
  (82, 8200, 84, 17, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Wave - Level 10
  (82, 8200, 86, 17, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Magneton - Sonic Boom - Level 15
  (82, 8200, 49, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Magneton - Light Screen - Level 20
  (82, 8200, 113, 17, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Magneton - Thunderbolt - Level 26
  (82, 8200, 85, 17, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Magneton - Screech - Level 36
  (82, 8200, 103, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Magneton - Flash Cannon - Level 46
  (82, 8200, 430, 17, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Magneton - Thunder - Level 56
  (82, 8200, 87, 17, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Magneton - Headbutt - TM01
  (82, 8200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Magneton - Teleport - TM04
  (82, 8200, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 16),
  -- Magneton - Rest - TM05
  (82, 8200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Magneton - Light Screen - TM06
  (82, 8200, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 18),
  -- Magneton - Protect - TM07
  (82, 8200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Magneton - Substitute - TM08
  (82, 8200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Magneton - Reflect - TM09
  (82, 8200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 21),
  -- Magneton - Facade - TM12
  (82, 8200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Magneton - Thunder Wave - TM16
  (82, 8200, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Magneton - Toxic - TM27
  (82, 8200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Magneton - Tri Attack - TM28
  (82, 8200, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 25),
  -- Magneton - Thunderbolt - TM36
  (82, 8200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 26),
  -- Magneton - Thunder - TM38
  (82, 8200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Magneton - Hyper Beam - TM48
  (82, 8200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Magneton - Flash Cannon - TM54
  (82, 8200, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 29),
  -- Farfetch'd - Mirror Move - Level 1
  (83, 8300, 119, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Quick Attack - Level 1
  (83, 8300, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Poison Jab - Level 1
  (83, 8300, 398, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Farfetch'd - Feint - Level 1
  (83, 8300, 364, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Farfetch'd - Focus Energy - Level 4
  (83, 8300, 116, 17, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Farfetch'd - Cut - Level 9
  (83, 8300, 15, 17, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Farfetch'd - Razor Leaf - Level 13
  (83, 8300, 75, 17, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Farfetch'd - Fury Attack - Level 18
  (83, 8300, 31, 17, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Farfetch'd - Agility - Level 22
  (83, 8300, 97, 17, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Farfetch'd - Slash - Level 27
  (83, 8300, 163, 17, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Farfetch'd - Air Slash - Level 31
  (83, 8300, 403, 17, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Farfetch'd - Swords Dance - Level 36
  (83, 8300, 14, 17, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Farfetch'd - Sky Attack - Level 40
  (83, 8300, 143, 17, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Farfetch'd - Headbutt - TM01
  (83, 8300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Farfetch'd - Helping Hand - TM03
  (83, 8300, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Farfetch'd - Rest - TM05
  (83, 8300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Farfetch'd - Protect - TM07
  (83, 8300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Farfetch'd - Substitute - TM08
  (83, 8300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Farfetch'd - Reflect - TM09
  (83, 8300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Farfetch'd - Facade - TM12
  (83, 8300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Farfetch'd - Fly - TM14
  (83, 8300, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 24),
  -- Farfetch'd - U-turn - TM18
  (83, 8300, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 25),
  -- Farfetch'd - Iron Tail - TM19
  (83, 8300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Farfetch'd - Poison Jab - TM26
  (83, 8300, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 27),
  -- Farfetch'd - Toxic - TM27
  (83, 8300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Farfetch'd - Roost - TM50
  (83, 8300, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 29),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Rage - Level 10
  (84, 8400, 99, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 16
  (84, 8400, 31, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Doduo - Agility - Level 22
  (84, 8400, 97, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Doduo - Drill Peck - Level 27
  (84, 8400, 65, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Doduo - Swords Dance - Level 32
  (84, 8400, 14, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Doduo - Jump Kick - Level 38
  (84, 8400, 26, 17, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Doduo - Thrash - Level 44
  (84, 8400, 37, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Doduo - Headbutt - TM01
  (84, 8400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Doduo - Rest - TM05
  (84, 8400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Doduo - Protect - TM07
  (84, 8400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Doduo - Substitute - TM08
  (84, 8400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Doduo - Reflect - TM09
  (84, 8400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Doduo - Facade - TM12
  (84, 8400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Doduo - Fly - TM14
  (84, 8400, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 17),
  -- Doduo - Toxic - TM27
  (84, 8400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Doduo - Roost - TM50
  (84, 8400, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 19),
  -- Dodrio - Tri Attack - Level 1
  (85, 8500, 161, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Mirror Move - Level 1
  (85, 8500, 119, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Supersonic - Level 1
  (85, 8500, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 1
  (85, 8500, 99, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dodrio - Tri Attack - Evolution
  (85, 8500, 161, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 17, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Dodrio - Rage - Level 10
  (85, 8500, 99, 17, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Dodrio - Fury Attack - Level 16
  (85, 8500, 31, 17, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Dodrio - Agility - Level 22
  (85, 8500, 97, 17, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Dodrio - Drill Peck - Level 27
  (85, 8500, 65, 17, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Dodrio - Swords Dance - Level 37
  (85, 8500, 14, 17, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Dodrio - Jump Kick - Level 48
  (85, 8500, 26, 17, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Dodrio - Thrash - Level 59
  (85, 8500, 37, 17, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Dodrio - Headbutt - TM01
  (85, 8500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Dodrio - Taunt - TM02
  (85, 8500, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 18),
  -- Dodrio - Rest - TM05
  (85, 8500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Dodrio - Protect - TM07
  (85, 8500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Dodrio - Substitute - TM08
  (85, 8500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Dodrio - Reflect - TM09
  (85, 8500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Dodrio - Facade - TM12
  (85, 8500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Dodrio - Fly - TM14
  (85, 8500, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 24),
  -- Dodrio - Toxic - TM27
  (85, 8500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Dodrio - Tri Attack - TM28
  (85, 8500, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 26),
  -- Dodrio - Hyper Beam - TM48
  (85, 8500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Dodrio - Roost - TM50
  (85, 8500, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 28),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 4
  (86, 8600, 45, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Seel - Encore - Level 8
  (86, 8600, 227, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Seel - Aqua Jet - Level 12
  (86, 8600, 453, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Seel - Ice Shard - Level 16
  (86, 8600, 420, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Seel - Rest - Level 20
  (86, 8600, 156, 17, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seel - Aurora Beam - Level 26
  (86, 8600, 62, 17, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Seel - Waterfall - Level 32
  (86, 8600, 127, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Seel - Take Down - Level 38
  (86, 8600, 36, 17, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Seel - Ice Beam - Level 44
  (86, 8600, 58, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seel - Double-Edge - Level 50
  (86, 8600, 38, 17, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Seel - Headbutt - TM01
  (86, 8600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Seel - Helping Hand - TM03
  (86, 8600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Seel - Rest - TM05
  (86, 8600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Seel - Protect - TM07
  (86, 8600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Seel - Substitute - TM08
  (86, 8600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Seel - Facade - TM12
  (86, 8600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Seel - Iron Tail - TM19
  (86, 8600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 18),
  -- Seel - Waterfall - TM25
  (86, 8600, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 19),
  -- Seel - Toxic - TM27
  (86, 8600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Seel - Surf - TM47
  (86, 8600, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 21),
  -- Seel - Blizzard - TM51
  (86, 8600, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Seel - Ice Beam - TM55
  (86, 8600, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 23),
  -- Seel - Pay Day - TM57
  (86, 8600, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 24),
  -- Seel - Drill Run - TM58
  (86, 8600, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 25),
  -- Seel - Megahorn - TM60
  (86, 8600, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 26),
  -- Dewgong - Fake Out - Level 1
  (87, 8700, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Horn Drill - Level 1
  (87, 8700, 32, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Encore - Level 1
  (87, 8700, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dewgong - Aqua Jet - Level 1
  (87, 8700, 453, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dewgong - Growl - Level 4
  (87, 8700, 45, 17, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Dewgong - Encore - Level 8
  (87, 8700, 227, 17, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Dewgong - Aqua Jet - Level 12
  (87, 8700, 453, 17, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Dewgong - Ice Shard - Level 15
  (87, 8700, 420, 17, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Dewgong - Rest - Level 20
  (87, 8700, 156, 17, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Dewgong - Aurora Beam - Level 26
  (87, 8700, 62, 17, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dewgong - Waterfall - Level 32
  (87, 8700, 127, 17, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Dewgong - Take Down - Level 42
  (87, 8700, 36, 17, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dewgong - Ice Beam - Level 52
  (87, 8700, 58, 17, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dewgong - Double-Edge - Level 62
  (87, 8700, 38, 17, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Dewgong - Headbutt - TM01
  (87, 8700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Dewgong - Helping Hand - TM03
  (87, 8700, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Dewgong - Rest - TM05
  (87, 8700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Dewgong - Protect - TM07
  (87, 8700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Dewgong - Substitute - TM08
  (87, 8700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Dewgong - Facade - TM12
  (87, 8700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Dewgong - Iron Tail - TM19
  (87, 8700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Dewgong - Waterfall - TM25
  (87, 8700, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 24),
  -- Dewgong - Toxic - TM27
  (87, 8700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Dewgong - Surf - TM47
  (87, 8700, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 26),
  -- Dewgong - Hyper Beam - TM48
  (87, 8700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Dewgong - Blizzard - TM51
  (87, 8700, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 28),
  -- Dewgong - Ice Beam - TM55
  (87, 8700, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 29),
  -- Dewgong - Pay Day - TM57
  (87, 8700, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 30),
  -- Dewgong - Drill Run - TM58
  (87, 8700, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 31),
  -- Dewgong - Megahorn - TM60
  (87, 8700, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 32),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 6
  (88, 8800, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Grimer - Minimize - Level 12
  (88, 8800, 107, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 18
  (88, 8800, 50, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 24
  (88, 8800, 124, 17, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Grimer - Screech - Level 30
  (88, 8800, 103, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Grimer - Toxic - Level 36
  (88, 8800, 92, 17, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Grimer - Acid Armor - Level 42
  (88, 8800, 151, 17, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Grimer - Sludge Bomb - Level 48
  (88, 8800, 188, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Grimer - Headbutt - TM01
  (88, 8800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Grimer - Taunt - TM02
  (88, 8800, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Grimer - Helping Hand - TM03
  (88, 8800, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Grimer - Rest - TM05
  (88, 8800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Grimer - Protect - TM07
  (88, 8800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Grimer - Substitute - TM08
  (88, 8800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Grimer - Dig - TM10
  (88, 8800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Grimer - Facade - TM12
  (88, 8800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Grimer - Rock Slide - TM22
  (88, 8800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 19),
  -- Grimer - Thunder Punch - TM23
  (88, 8800, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 20),
  -- Grimer - Poison Jab - TM26
  (88, 8800, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Grimer - Toxic - TM27
  (88, 8800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Grimer - Fire Punch - TM31
  (88, 8800, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 23),
  -- Grimer - Ice Punch - TM35
  (88, 8800, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 24),
  -- Grimer - Thunderbolt - TM36
  (88, 8800, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Grimer - Flamethrower - TM37
  (88, 8800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 26),
  -- Grimer - Thunder - TM38
  (88, 8800, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Grimer - Self-Destruct - TM42
  (88, 8800, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 28),
  -- Grimer - Shadow Ball - TM43
  (88, 8800, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Grimer - Fire Blast - TM46
  (88, 8800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 30),
  -- Grimer - Sludge Bomb - TM52
  (88, 8800, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 31),
  -- Grimer - Mega Drain - TM53
  (88, 8800, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 32),
  -- Muk - Haze - Level 1
  (89, 8900, 114, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Moonblast - Level 1
  (89, 8900, 585, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Muk - Minimize - Level 1
  (89, 8900, 107, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Muk - Harden - Level 6
  (89, 8900, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Muk - Minimize - Level 12
  (89, 8900, 107, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Muk - Disable - Level 18
  (89, 8900, 50, 17, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Muk - Sludge - Level 24
  (89, 8900, 124, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Muk - Screech - Level 30
  (89, 8900, 103, 17, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Muk - Toxic - Level 36
  (89, 8900, 92, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Muk - Acid Armor - Level 48
  (89, 8900, 151, 17, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Muk - Sludge Bomb - Level 60
  (89, 8900, 188, 17, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Muk - Headbutt - TM01
  (89, 8900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Muk - Taunt - TM02
  (89, 8900, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Muk - Helping Hand - TM03
  (89, 8900, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 17),
  -- Muk - Rest - TM05
  (89, 8900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Muk - Protect - TM07
  (89, 8900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Muk - Substitute - TM08
  (89, 8900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Muk - Dig - TM10
  (89, 8900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Muk - Facade - TM12
  (89, 8900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Muk - Brick Break - TM13
  (89, 8900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 23),
  -- Muk - Dark Pulse - TM20
  (89, 8900, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 24),
  -- Muk - Rock Slide - TM22
  (89, 8900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 25),
  -- Muk - Thunder Punch - TM23
  (89, 8900, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Muk - Poison Jab - TM26
  (89, 8900, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 27),
  -- Muk - Toxic - TM27
  (89, 8900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Muk - Fire Punch - TM31
  (89, 8900, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 29),
  -- Muk - Ice Punch - TM35
  (89, 8900, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 30),
  -- Muk - Thunderbolt - TM36
  (89, 8900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 31),
  -- Muk - Flamethrower - TM37
  (89, 8900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 32),
  -- Muk - Thunder - TM38
  (89, 8900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 33),
  -- Muk - Self-Destruct - TM42
  (89, 8900, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 34),
  -- Muk - Shadow Ball - TM43
  (89, 8900, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 35),
  -- Muk - Fire Blast - TM46
  (89, 8900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 36),
  -- Muk - Hyper Beam - TM48
  (89, 8900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 37),
  -- Muk - Sludge Bomb - TM52
  (89, 8900, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 38),
  -- Muk - Mega Drain - TM53
  (89, 8900, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 39),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Water Gun - Level 1
  (90, 9000, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellder - Leer - Level 9
  (90, 9000, 43, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shellder - Ice Shard - Level 13
  (90, 9000, 420, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shellder - Supersonic - Level 18
  (90, 9000, 48, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 22
  (90, 9000, 128, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shellder - Aurora Beam - Level 27
  (90, 9000, 62, 17, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Shellder - Protect - Level 31
  (90, 9000, 182, 17, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Shellder - Ice Beam - Level 36
  (90, 9000, 58, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Shellder - Shell Smash - Level 40
  (90, 9000, 504, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shellder - Hydro Pump - Level 45
  (90, 9000, 56, 17, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shellder - Headbutt - TM01
  (90, 9000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Shellder - Teleport - TM04
  (90, 9000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Shellder - Rest - TM05
  (90, 9000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Shellder - Protect - TM07
  (90, 9000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Shellder - Substitute - TM08
  (90, 9000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Shellder - Reflect - TM09
  (90, 9000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Shellder - Facade - TM12
  (90, 9000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Shellder - Toxic - TM27
  (90, 9000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Shellder - Tri Attack - TM28
  (90, 9000, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 21),
  -- Shellder - Self-Destruct - TM42
  (90, 9000, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 22),
  -- Shellder - Surf - TM47
  (90, 9000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 23),
  -- Shellder - Blizzard - TM51
  (90, 9000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 24),
  -- Shellder - Ice Beam - TM55
  (90, 9000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 25),
  -- Cloyster - Spike Cannon - Level 1
  (91, 9100, 131, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Barrier - Level 1
  (91, 9100, 112, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Twineedle - Level 1
  (91, 9100, 41, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Tackle - Level 1
  (91, 9100, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Water Gun - Level 1
  (91, 9100, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cloyster - Leer - Level 1
  (91, 9100, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cloyster - Spike Cannon - Evolution
  (91, 9100, 131, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Cloyster - Headbutt - TM01
  (91, 9100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 9),
  -- Cloyster - Teleport - TM04
  (91, 9100, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 10),
  -- Cloyster - Rest - TM05
  (91, 9100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Cloyster - Protect - TM07
  (91, 9100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 12),
  -- Cloyster - Substitute - TM08
  (91, 9100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 13),
  -- Cloyster - Reflect - TM09
  (91, 9100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 14),
  -- Cloyster - Facade - TM12
  (91, 9100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 15),
  -- Cloyster - Poison Jab - TM26
  (91, 9100, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 16),
  -- Cloyster - Toxic - TM27
  (91, 9100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Cloyster - Tri Attack - TM28
  (91, 9100, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 18),
  -- Cloyster - Self-Destruct - TM42
  (91, 9100, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 19),
  -- Cloyster - Surf - TM47
  (91, 9100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 20),
  -- Cloyster - Hyper Beam - TM48
  (91, 9100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 21),
  -- Cloyster - Blizzard - TM51
  (91, 9100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Cloyster - Ice Beam - TM55
  (91, 9100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 23),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Smog - Level 1
  (92, 9200, 123, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastly - Confuse Ray - Level 5
  (92, 9200, 109, 17, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Gastly - Poison Gas - Level 7
  (92, 9200, 139, 17, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 12
  (92, 9200, 101, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gastly - Will-O-Wisp - Level 14
  (92, 9200, 261, 17, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Gastly - Sucker Punch - Level 19
  (92, 9200, 389, 17, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gastly - Toxic - Level 21
  (92, 9200, 92, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 26
  (92, 9200, 247, 17, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gastly - Dark Pulse - Level 28
  (92, 9200, 399, 17, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 17, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gastly - Headbutt - TM01
  (92, 9200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Gastly - Taunt - TM02
  (92, 9200, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 14),
  -- Gastly - Rest - TM05
  (92, 9200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Gastly - Protect - TM07
  (92, 9200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Gastly - Substitute - TM08
  (92, 9200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Gastly - Will-O-Wisp - TM11
  (92, 9200, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 18),
  -- Gastly - Facade - TM12
  (92, 9200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Gastly - Dark Pulse - TM20
  (92, 9200, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 20),
  -- Gastly - Foul Play - TM21
  (92, 9200, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 21),
  -- Gastly - Thunder Punch - TM23
  (92, 9200, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Gastly - Toxic - TM27
  (92, 9200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Gastly - Fire Punch - TM31
  (92, 9200, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 24),
  -- Gastly - Dazzling Gleam - TM32
  (92, 9200, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 25),
  -- Gastly - Ice Punch - TM35
  (92, 9200, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Gastly - Thunderbolt - TM36
  (92, 9200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 27),
  -- Gastly - Thunder - TM38
  (92, 9200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 28),
  -- Gastly - Psychic - TM40
  (92, 9200, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 29),
  -- Gastly - Self-Destruct - TM42
  (92, 9200, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 30),
  -- Gastly - Shadow Ball - TM43
  (92, 9200, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 31),
  -- Gastly - Sludge Bomb - TM52
  (92, 9200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 32),
  -- Gastly - Mega Drain - TM53
  (92, 9200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 33),
  -- Gastly - Dream Eater - TM59
  (92, 9200, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 34),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Smog - Level 1
  (93, 9300, 123, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Confuse Ray - Level 1
  (93, 9300, 109, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haunter - Confuse Ray - Level 5
  (93, 9300, 109, 17, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Haunter - Poison Gas - Level 7
  (93, 9300, 139, 17, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 12
  (93, 9300, 101, 17, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Haunter - Will-O-Wisp - Level 14
  (93, 9300, 261, 17, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Haunter - Sucker Punch - Level 19
  (93, 9300, 389, 17, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Haunter - Toxic - Level 21
  (93, 9300, 92, 17, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Haunter - Shadow Ball - Level 30
  (93, 9300, 247, 17, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Haunter - Dark Pulse - Level 36
  (93, 9300, 399, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Haunter - Dream Eater - Level 45
  (93, 9300, 138, 17, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Haunter - Headbutt - TM01
  (93, 9300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Haunter - Taunt - TM02
  (93, 9300, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 15),
  -- Haunter - Rest - TM05
  (93, 9300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Haunter - Protect - TM07
  (93, 9300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Haunter - Substitute - TM08
  (93, 9300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Haunter - Will-O-Wisp - TM11
  (93, 9300, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 19),
  -- Haunter - Facade - TM12
  (93, 9300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Haunter - Dark Pulse - TM20
  (93, 9300, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 21),
  -- Haunter - Foul Play - TM21
  (93, 9300, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 22),
  -- Haunter - Thunder Punch - TM23
  (93, 9300, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 23),
  -- Haunter - Poison Jab - TM26
  (93, 9300, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 24),
  -- Haunter - Toxic - TM27
  (93, 9300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Haunter - Fire Punch - TM31
  (93, 9300, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 26),
  -- Haunter - Dazzling Gleam - TM32
  (93, 9300, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 27),
  -- Haunter - Ice Punch - TM35
  (93, 9300, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 28),
  -- Haunter - Thunderbolt - TM36
  (93, 9300, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 29),
  -- Haunter - Thunder - TM38
  (93, 9300, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Haunter - Psychic - TM40
  (93, 9300, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 31),
  -- Haunter - Self-Destruct - TM42
  (93, 9300, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 32),
  -- Haunter - Shadow Ball - TM43
  (93, 9300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 33),
  -- Haunter - Sludge Bomb - TM52
  (93, 9300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 34),
  -- Haunter - Mega Drain - TM53
  (93, 9300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 35),
  -- Haunter - Dream Eater - TM59
  (93, 9300, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 36),
  -- Gengar - Disable - Level 1
  (94, 9400, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Haze - Level 1
  (94, 9400, 114, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gengar - Smog - Level 1
  (94, 9400, 123, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gengar - Confuse Ray - Level 1
  (94, 9400, 109, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gengar - Confuse Ray - Level 5
  (94, 9400, 109, 17, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Gengar - Poison Gas - Level 7
  (94, 9400, 139, 17, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Gengar - Night Shade - Level 12
  (94, 9400, 101, 17, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Gengar - Will-O-Wisp - Level 14
  (94, 9400, 261, 17, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Gengar - Sucker Punch - Level 19
  (94, 9400, 389, 17, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Gengar - Toxic - Level 21
  (94, 9400, 92, 17, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Gengar - Shadow Ball - Level 30
  (94, 9400, 247, 17, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 36
  (94, 9400, 399, 17, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gengar - Dream Eater - Level 45
  (94, 9400, 138, 17, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Gengar - Headbutt - TM01
  (94, 9400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Gengar - Taunt - TM02
  (94, 9400, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 17),
  -- Gengar - Rest - TM05
  (94, 9400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Gengar - Protect - TM07
  (94, 9400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Gengar - Substitute - TM08
  (94, 9400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Gengar - Will-O-Wisp - TM11
  (94, 9400, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 21),
  -- Gengar - Facade - TM12
  (94, 9400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Gengar - Brick Break - TM13
  (94, 9400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 23),
  -- Gengar - Seismic Toss - TM15
  (94, 9400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 24),
  -- Gengar - Dark Pulse - TM20
  (94, 9400, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 25),
  -- Gengar - Foul Play - TM21
  (94, 9400, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 26),
  -- Gengar - Thunder Punch - TM23
  (94, 9400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 27),
  -- Gengar - Poison Jab - TM26
  (94, 9400, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 28),
  -- Gengar - Toxic - TM27
  (94, 9400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Gengar - Fire Punch - TM31
  (94, 9400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 30),
  -- Gengar - Dazzling Gleam - TM32
  (94, 9400, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 31),
  -- Gengar - Ice Punch - TM35
  (94, 9400, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 32),
  -- Gengar - Thunderbolt - TM36
  (94, 9400, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 33),
  -- Gengar - Thunder - TM38
  (94, 9400, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 34),
  -- Gengar - Psychic - TM40
  (94, 9400, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 35),
  -- Gengar - Self-Destruct - TM42
  (94, 9400, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 36),
  -- Gengar - Shadow Ball - TM43
  (94, 9400, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 37),
  -- Gengar - Hyper Beam - TM48
  (94, 9400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 38),
  -- Gengar - Sludge Bomb - TM52
  (94, 9400, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 39),
  -- Gengar - Mega Drain - TM53
  (94, 9400, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 40),
  -- Gengar - Dream Eater - TM59
  (94, 9400, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 41),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Bind - Level 1
  (95, 9500, 20, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Level 1
  (95, 9500, 88, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Stealth Rock - Level 5
  (95, 9500, 446, 17, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Onix - Rage - Level 10
  (95, 9500, 99, 17, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Onix - Screech - Level 15
  (95, 9500, 103, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Onix - Dig - Level 20
  (95, 9500, 91, 17, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Onix - Slam - Level 25
  (95, 9500, 21, 17, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Onix - Rock Slide - Level 30
  (95, 9500, 157, 17, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Onix - Earthquake - Level 35
  (95, 9500, 89, 17, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Onix - Iron Tail - Level 40
  (95, 9500, 231, 17, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Onix - Double-Edge - Level 45
  (95, 9500, 38, 17, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Onix - Headbutt - TM01
  (95, 9500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Onix - Taunt - TM02
  (95, 9500, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 15),
  -- Onix - Rest - TM05
  (95, 9500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Onix - Protect - TM07
  (95, 9500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Onix - Substitute - TM08
  (95, 9500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Onix - Dig - TM10
  (95, 9500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Onix - Facade - TM12
  (95, 9500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Onix - Dragon Tail - TM17
  (95, 9500, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 21),
  -- Onix - Iron Tail - TM19
  (95, 9500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Onix - Rock Slide - TM22
  (95, 9500, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Onix - Toxic - TM27
  (95, 9500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Onix - Dragon Pulse - TM34
  (95, 9500, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 25),
  -- Onix - Earthquake - TM41
  (95, 9500, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 26),
  -- Onix - Self-Destruct - TM42
  (95, 9500, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 27),
  -- Onix - Flash Cannon - TM54
  (95, 9500, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 28),
  -- Onix - Stealth Rock - TM56
  (95, 9500, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 29),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 4
  (96, 9600, 50, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Poison Gas - Level 13
  (96, 9600, 139, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Meditate - Level 18
  (96, 9600, 96, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Drowzee - Psybeam - Level 22
  (96, 9600, 60, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Drowzee - Headbutt - Level 27
  (96, 9600, 29, 17, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Drowzee - Psychic - Level 31
  (96, 9600, 94, 17, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Drowzee - Nasty Plot - Level 36
  (96, 9600, 417, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Drowzee - Dream Eater - Level 40
  (96, 9600, 138, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Drowzee - Headbutt - TM01
  (96, 9600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Drowzee - Taunt - TM02
  (96, 9600, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 13),
  -- Drowzee - Teleport - TM04
  (96, 9600, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Drowzee - Rest - TM05
  (96, 9600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Drowzee - Light Screen - TM06
  (96, 9600, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Drowzee - Protect - TM07
  (96, 9600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Drowzee - Substitute - TM08
  (96, 9600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Drowzee - Reflect - TM09
  (96, 9600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Drowzee - Facade - TM12
  (96, 9600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Drowzee - Brick Break - TM13
  (96, 9600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Drowzee - Seismic Toss - TM15
  (96, 9600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Drowzee - Thunder Wave - TM16
  (96, 9600, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Drowzee - Foul Play - TM21
  (96, 9600, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 24),
  -- Drowzee - Thunder Punch - TM23
  (96, 9600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 25),
  -- Drowzee - Toxic - TM27
  (96, 9600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Drowzee - Tri Attack - TM28
  (96, 9600, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 27),
  -- Drowzee - Fire Punch - TM31
  (96, 9600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 28),
  -- Drowzee - Dazzling Gleam - TM32
  (96, 9600, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 29),
  -- Drowzee - Calm Mind - TM33
  (96, 9600, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 30),
  -- Drowzee - Ice Punch - TM35
  (96, 9600, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 31),
  -- Drowzee - Psychic - TM40
  (96, 9600, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 32),
  -- Drowzee - Shadow Ball - TM43
  (96, 9600, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 33),
  -- Drowzee - Dream Eater - TM59
  (96, 9600, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 34),
  -- Hypno - Barrier - Level 1
  (97, 9700, 112, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Disable - Level 4
  (97, 9700, 50, 17, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Hypno - Poison Gas - Level 13
  (97, 9700, 139, 17, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Hypno - Meditate - Level 18
  (97, 9700, 96, 17, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Hypno - Psybeam - Level 22
  (97, 9700, 60, 17, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Hypno - Headbutt - Level 27
  (97, 9700, 29, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Hypno - Psychic - Level 36
  (97, 9700, 94, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hypno - Nasty Plot - Level 46
  (97, 9700, 417, 17, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Hypno - Dream Eater - Level 55
  (97, 9700, 138, 17, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Hypno - Headbutt - TM01
  (97, 9700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Hypno - Taunt - TM02
  (97, 9700, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Hypno - Teleport - TM04
  (97, 9700, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 17),
  -- Hypno - Rest - TM05
  (97, 9700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Hypno - Light Screen - TM06
  (97, 9700, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Hypno - Protect - TM07
  (97, 9700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Hypno - Substitute - TM08
  (97, 9700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Hypno - Reflect - TM09
  (97, 9700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Hypno - Facade - TM12
  (97, 9700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Hypno - Brick Break - TM13
  (97, 9700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 24),
  -- Hypno - Seismic Toss - TM15
  (97, 9700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 25),
  -- Hypno - Thunder Wave - TM16
  (97, 9700, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 26),
  -- Hypno - Foul Play - TM21
  (97, 9700, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 27),
  -- Hypno - Thunder Punch - TM23
  (97, 9700, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 28),
  -- Hypno - Toxic - TM27
  (97, 9700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Hypno - Tri Attack - TM28
  (97, 9700, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 30),
  -- Hypno - Fire Punch - TM31
  (97, 9700, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 31),
  -- Hypno - Dazzling Gleam - TM32
  (97, 9700, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 32),
  -- Hypno - Calm Mind - TM33
  (97, 9700, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 33),
  -- Hypno - Ice Punch - TM35
  (97, 9700, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 34),
  -- Hypno - Psychic - TM40
  (97, 9700, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 35),
  -- Hypno - Shadow Ball - TM43
  (97, 9700, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 36),
  -- Hypno - Hyper Beam - TM48
  (97, 9700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 37),
  -- Hypno - Dream Eater - TM59
  (97, 9700, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 38),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Vise Grip - Level 5
  (98, 9800, 11, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Krabby - Leer - Level 9
  (98, 9800, 43, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Krabby - Harden - Level 14
  (98, 9800, 106, 17, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Krabby - Bubble Beam - Level 18
  (98, 9800, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Krabby - Stomp - Level 23
  (98, 9800, 23, 17, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Krabby - Protect - Level 27
  (98, 9800, 182, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Krabby - Slam - Level 32
  (98, 9800, 21, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Krabby - Crabhammer - Level 36
  (98, 9800, 152, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Krabby - Guillotine - Level 41
  (98, 9800, 12, 17, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Krabby - Headbutt - TM01
  (98, 9800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Krabby - Rest - TM05
  (98, 9800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Krabby - Protect - TM07
  (98, 9800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Krabby - Substitute - TM08
  (98, 9800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Krabby - Dig - TM10
  (98, 9800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Krabby - Facade - TM12
  (98, 9800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Krabby - Brick Break - TM13
  (98, 9800, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Krabby - Rock Slide - TM22
  (98, 9800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 18),
  -- Krabby - X-Scissor - TM24
  (98, 9800, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 19),
  -- Krabby - Toxic - TM27
  (98, 9800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Krabby - Scald - TM29
  (98, 9800, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 21),
  -- Krabby - Surf - TM47
  (98, 9800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 22),
  -- Krabby - Superpower - TM49
  (98, 9800, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 23),
  -- Krabby - Blizzard - TM51
  (98, 9800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 24),
  -- Krabby - Ice Beam - TM55
  (98, 9800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 25),
  -- Kingler - Agility - Level 1
  (99, 9900, 97, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Amnesia - Level 1
  (99, 9900, 133, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Harden - Level 1
  (99, 9900, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kingler - Vise Grip - Level 5
  (99, 9900, 11, 17, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Kingler - Leer - Level 9
  (99, 9900, 43, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Kingler - Harden - Level 14
  (99, 9900, 106, 17, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Kingler - Bubble Beam - Level 18
  (99, 9900, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Kingler - Stomp - Level 23
  (99, 9900, 23, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Kingler - Protect - Level 27
  (99, 9900, 182, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Kingler - Slam - Level 37
  (99, 9900, 21, 17, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Kingler - Crabhammer - Level 41
  (99, 9900, 152, 17, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Kingler - Guillotine - Level 56
  (99, 9900, 12, 17, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Kingler - Headbutt - TM01
  (99, 9900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Kingler - Rest - TM05
  (99, 9900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Kingler - Protect - TM07
  (99, 9900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Kingler - Substitute - TM08
  (99, 9900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Kingler - Dig - TM10
  (99, 9900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Kingler - Facade - TM12
  (99, 9900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Kingler - Brick Break - TM13
  (99, 9900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Kingler - Rock Slide - TM22
  (99, 9900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Kingler - X-Scissor - TM24
  (99, 9900, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 24),
  -- Kingler - Toxic - TM27
  (99, 9900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Kingler - Scald - TM29
  (99, 9900, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 26),
  -- Kingler - Surf - TM47
  (99, 9900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 27),
  -- Kingler - Hyper Beam - TM48
  (99, 9900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Kingler - Superpower - TM49
  (99, 9900, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 29),
  -- Kingler - Blizzard - TM51
  (99, 9900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Kingler - Ice Beam - TM55
  (99, 9900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Light Screen - Level 3
  (100, 10000, 113, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 6
  (100, 10000, 49, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Voltorb - Thunder Shock - Level 9
  (100, 10000, 84, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Voltorb - Swift - Level 14
  (100, 10000, 129, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Voltorb - Self-Destruct - Level 19
  (100, 10000, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Voltorb - Screech - Level 24
  (100, 10000, 103, 17, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Voltorb - Thunderbolt - Level 31
  (100, 10000, 85, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Voltorb - Mirror Coat - Level 38
  (100, 10000, 243, 17, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Voltorb - Explosion - Level 45
  (100, 10000, 153, 17, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Voltorb - Headbutt - TM01
  (100, 10000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Voltorb - Taunt - TM02
  (100, 10000, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Voltorb - Teleport - TM04
  (100, 10000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 13),
  -- Voltorb - Rest - TM05
  (100, 10000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Voltorb - Light Screen - TM06
  (100, 10000, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 15),
  -- Voltorb - Protect - TM07
  (100, 10000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Voltorb - Substitute - TM08
  (100, 10000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Voltorb - Reflect - TM09
  (100, 10000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Voltorb - Facade - TM12
  (100, 10000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Voltorb - Thunder Wave - TM16
  (100, 10000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 20),
  -- Voltorb - Foul Play - TM21
  (100, 10000, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 21),
  -- Voltorb - Toxic - TM27
  (100, 10000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Voltorb - Thunderbolt - TM36
  (100, 10000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Voltorb - Thunder - TM38
  (100, 10000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Voltorb - Self-Destruct - TM42
  (100, 10000, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 25);
