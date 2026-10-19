-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages, LGPE sections.
-- Cross-check: PokemonDB Let's Go learnset pages and Serebii LGPE Pokedex pages.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! learnsets for default forms, species 101-151.
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Light Screen - Level 1
  (101, 10100, 113, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Thunder Shock - Level 1
  (101, 10100, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Light Screen - Level 3
  (101, 10100, 113, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 6
  (101, 10100, 49, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Electrode - Thunder Shock - Level 9
  (101, 10100, 84, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Electrode - Swift - Level 14
  (101, 10100, 129, 17, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Electrode - Self-Destruct - Level 19
  (101, 10100, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Electrode - Screech - Level 24
  (101, 10100, 103, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Electrode - Thunderbolt - Level 36
  (101, 10100, 85, 17, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Electrode - Mirror Coat - Level 48
  (101, 10100, 243, 17, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Electrode - Explosion - Level 60
  (101, 10100, 153, 17, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Electrode - Headbutt - TM01
  (101, 10100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Electrode - Taunt - TM02
  (101, 10100, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 15),
  -- Electrode - Teleport - TM04
  (101, 10100, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 16),
  -- Electrode - Rest - TM05
  (101, 10100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Electrode - Light Screen - TM06
  (101, 10100, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 18),
  -- Electrode - Protect - TM07
  (101, 10100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Electrode - Substitute - TM08
  (101, 10100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Electrode - Reflect - TM09
  (101, 10100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 21),
  -- Electrode - Facade - TM12
  (101, 10100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Electrode - Thunder Wave - TM16
  (101, 10100, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Electrode - Foul Play - TM21
  (101, 10100, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 24),
  -- Electrode - Toxic - TM27
  (101, 10100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Electrode - Thunderbolt - TM36
  (101, 10100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 26),
  -- Electrode - Thunder - TM38
  (101, 10100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Electrode - Self-Destruct - TM42
  (101, 10100, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 28),
  -- Electrode - Hyper Beam - TM48
  (101, 10100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Level 7
  (102, 10200, 95, 17, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Exeggcute - Confusion - Level 14
  (102, 10200, 93, 17, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Exeggcute - Stun Spore - Level 16
  (102, 10200, 78, 17, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Exeggcute - Poison Powder - Level 18
  (102, 10200, 77, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Exeggcute - Sleep Powder - Level 20
  (102, 10200, 79, 17, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Exeggcute - Psybeam - Level 27
  (102, 10200, 60, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Exeggcute - Leech Seed - Level 34
  (102, 10200, 73, 17, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Exeggcute - Reflect - Level 41
  (102, 10200, 115, 17, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Exeggcute - Solar Beam - Level 48
  (102, 10200, 76, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Exeggcute - Headbutt - TM01
  (102, 10200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Exeggcute - Teleport - TM04
  (102, 10200, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 12),
  -- Exeggcute - Rest - TM05
  (102, 10200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Exeggcute - Light Screen - TM06
  (102, 10200, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Exeggcute - Protect - TM07
  (102, 10200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Exeggcute - Substitute - TM08
  (102, 10200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Exeggcute - Reflect - TM09
  (102, 10200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Exeggcute - Facade - TM12
  (102, 10200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Exeggcute - Toxic - TM27
  (102, 10200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Exeggcute - Psychic - TM40
  (102, 10200, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 20),
  -- Exeggcute - Self-Destruct - TM42
  (102, 10200, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 21),
  -- Exeggcute - Solar Beam - TM45
  (102, 10200, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 22),
  -- Exeggcute - Sludge Bomb - TM52
  (102, 10200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 23),
  -- Exeggcute - Mega Drain - TM53
  (102, 10200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 24),
  -- Exeggcute - Dream Eater - TM59
  (102, 10200, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 25),
  -- Exeggutor - Stomp - Level 1
  (103, 10300, 23, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Power Whip - Level 1
  (103, 10300, 438, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Egg Bomb - Level 1
  (103, 10300, 121, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor - Stun Spore - Level 1
  (103, 10300, 78, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor - Stomp - Evolution
  (103, 10300, 23, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Exeggutor - Headbutt - TM01
  (103, 10300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 9),
  -- Exeggutor - Teleport - TM04
  (103, 10300, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 10),
  -- Exeggutor - Rest - TM05
  (103, 10300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Exeggutor - Light Screen - TM06
  (103, 10300, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 12),
  -- Exeggutor - Protect - TM07
  (103, 10300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Exeggutor - Substitute - TM08
  (103, 10300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Exeggutor - Reflect - TM09
  (103, 10300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Exeggutor - Facade - TM12
  (103, 10300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Exeggutor - Toxic - TM27
  (103, 10300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Exeggutor - Psychic - TM40
  (103, 10300, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 18),
  -- Exeggutor - Self-Destruct - TM42
  (103, 10300, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 19),
  -- Exeggutor - Solar Beam - TM45
  (103, 10300, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 20),
  -- Exeggutor - Hyper Beam - TM48
  (103, 10300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 21),
  -- Exeggutor - Sludge Bomb - TM52
  (103, 10300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 22),
  -- Exeggutor - Mega Drain - TM53
  (103, 10300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 23),
  -- Exeggutor - Dream Eater - TM59
  (103, 10300, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 24),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 2
  (104, 10400, 39, 17, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Cubone - Leer - Level 6
  (104, 10400, 43, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cubone - Bone Club - Level 12
  (104, 10400, 125, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cubone - Headbutt - Level 14
  (104, 10400, 29, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Cubone - Rage - Level 18
  (104, 10400, 99, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Cubone - Focus Energy - Level 24
  (104, 10400, 116, 17, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cubone - Bonemerang - Level 26
  (104, 10400, 155, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Cubone - Thrash - Level 30
  (104, 10400, 37, 17, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Cubone - Double-Edge - Level 36
  (104, 10400, 38, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Cubone - Headbutt - TM01
  (104, 10400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Cubone - Rest - TM05
  (104, 10400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Cubone - Protect - TM07
  (104, 10400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Cubone - Substitute - TM08
  (104, 10400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Cubone - Dig - TM10
  (104, 10400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Cubone - Facade - TM12
  (104, 10400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Cubone - Brick Break - TM13
  (104, 10400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Cubone - Seismic Toss - TM15
  (104, 10400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 18),
  -- Cubone - Iron Tail - TM19
  (104, 10400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Cubone - Rock Slide - TM22
  (104, 10400, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 20),
  -- Cubone - Thunder Punch - TM23
  (104, 10400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 21),
  -- Cubone - Toxic - TM27
  (104, 10400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Cubone - Fire Punch - TM31
  (104, 10400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 23),
  -- Cubone - Flamethrower - TM37
  (104, 10400, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 24),
  -- Cubone - Earthquake - TM41
  (104, 10400, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 25),
  -- Cubone - Fire Blast - TM46
  (104, 10400, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 26),
  -- Cubone - Blizzard - TM51
  (104, 10400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 27),
  -- Cubone - Ice Beam - TM55
  (104, 10400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 28),
  -- Cubone - Stealth Rock - TM56
  (104, 10400, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 29),
  -- Marowak - Swords Dance - Evolution
  (105, 10500, 14, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Marowak - Swords Dance - Level 1
  (105, 10500, 14, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Screech - Level 1
  (105, 10500, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marowak - Leer - Level 1
  (105, 10500, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marowak - Tail Whip - Level 2
  (105, 10500, 39, 17, NULL, 1, 2, NULL, NULL, NULL, 8),
  -- Marowak - Leer - Level 6
  (105, 10500, 43, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Marowak - Bone Club - Level 12
  (105, 10500, 125, 17, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Marowak - Headbutt - Level 14
  (105, 10500, 29, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Marowak - Rage - Level 18
  (105, 10500, 99, 17, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Marowak - Focus Energy - Level 24
  (105, 10500, 116, 17, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Marowak - Bonemerang - Level 26
  (105, 10500, 155, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Marowak - Thrash - Level 36
  (105, 10500, 37, 17, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Marowak - Double-Edge - Level 48
  (105, 10500, 38, 17, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Marowak - Headbutt - TM01
  (105, 10500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Marowak - Rest - TM05
  (105, 10500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Marowak - Protect - TM07
  (105, 10500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Marowak - Substitute - TM08
  (105, 10500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Marowak - Dig - TM10
  (105, 10500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Marowak - Facade - TM12
  (105, 10500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Marowak - Brick Break - TM13
  (105, 10500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 23),
  -- Marowak - Seismic Toss - TM15
  (105, 10500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 24),
  -- Marowak - Iron Tail - TM19
  (105, 10500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Marowak - Rock Slide - TM22
  (105, 10500, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 26),
  -- Marowak - Thunder Punch - TM23
  (105, 10500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 27),
  -- Marowak - Toxic - TM27
  (105, 10500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Marowak - Fire Punch - TM31
  (105, 10500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 29),
  -- Marowak - Flamethrower - TM37
  (105, 10500, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 30),
  -- Marowak - Outrage - TM39
  (105, 10500, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 31),
  -- Marowak - Earthquake - TM41
  (105, 10500, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 32),
  -- Marowak - Fire Blast - TM46
  (105, 10500, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 33),
  -- Marowak - Hyper Beam - TM48
  (105, 10500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 34),
  -- Marowak - Blizzard - TM51
  (105, 10500, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 35),
  -- Marowak - Ice Beam - TM55
  (105, 10500, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 36),
  -- Marowak - Stealth Rock - TM56
  (105, 10500, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 37),
  -- Hitmonlee - Rolling Kick - Level 1
  (106, 10600, 27, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Meditate - Level 5
  (106, 10600, 96, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Hitmonlee - Double Kick - Level 10
  (106, 10600, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Hitmonlee - Feint - Level 15
  (106, 10600, 364, 17, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Hitmonlee - Brick Break - Level 20
  (106, 10600, 280, 17, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Hitmonlee - Facade - Level 25
  (106, 10600, 263, 17, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Hitmonlee - Jump Kick - Level 30
  (106, 10600, 26, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Hitmonlee - Focus Energy - Level 35
  (106, 10600, 116, 17, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Hitmonlee - Mega Kick - Level 40
  (106, 10600, 25, 17, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Hitmonlee - High Jump Kick - Level 45
  (106, 10600, 136, 17, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Hitmonlee - Headbutt - TM01
  (106, 10600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Hitmonlee - Helping Hand - TM03
  (106, 10600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Hitmonlee - Rest - TM05
  (106, 10600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Hitmonlee - Protect - TM07
  (106, 10600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Hitmonlee - Substitute - TM08
  (106, 10600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Hitmonlee - Facade - TM12
  (106, 10600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Hitmonlee - Brick Break - TM13
  (106, 10600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Hitmonlee - Seismic Toss - TM15
  (106, 10600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 18),
  -- Hitmonlee - Rock Slide - TM22
  (106, 10600, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 19),
  -- Hitmonlee - Poison Jab - TM26
  (106, 10600, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 20),
  -- Hitmonlee - Toxic - TM27
  (106, 10600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Hitmonlee - Bulk Up - TM30
  (106, 10600, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 22),
  -- Hitmonlee - Earthquake - TM41
  (106, 10600, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 23),
  -- Hitmonlee - Superpower - TM49
  (106, 10600, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 24),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Leer - Level 5
  (107, 10700, 43, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Hitmonchan - Agility - Level 10
  (107, 10700, 97, 17, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Hitmonchan - Feint - Level 15
  (107, 10700, 364, 17, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Hitmonchan - Swift - Level 20
  (107, 10700, 129, 17, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Hitmonchan - Dizzy Punch - Level 25
  (107, 10700, 146, 17, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Hitmonchan - Thunder Punch - Level 30
  (107, 10700, 9, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Hitmonchan - Ice Punch - Level 30
  (107, 10700, 8, 17, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Hitmonchan - Fire Punch - Level 30
  (107, 10700, 7, 17, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Hitmonchan - Focus Energy - Level 35
  (107, 10700, 116, 17, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Hitmonchan - Mega Punch - Level 40
  (107, 10700, 5, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Hitmonchan - Counter - Level 45
  (107, 10700, 68, 17, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Hitmonchan - Headbutt - TM01
  (107, 10700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Hitmonchan - Helping Hand - TM03
  (107, 10700, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Hitmonchan - Rest - TM05
  (107, 10700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Hitmonchan - Protect - TM07
  (107, 10700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Hitmonchan - Substitute - TM08
  (107, 10700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Hitmonchan - Facade - TM12
  (107, 10700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Hitmonchan - Brick Break - TM13
  (107, 10700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Hitmonchan - Seismic Toss - TM15
  (107, 10700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Hitmonchan - Rock Slide - TM22
  (107, 10700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Hitmonchan - Thunder Punch - TM23
  (107, 10700, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Hitmonchan - Toxic - TM27
  (107, 10700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Hitmonchan - Bulk Up - TM30
  (107, 10700, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 24),
  -- Hitmonchan - Fire Punch - TM31
  (107, 10700, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 25),
  -- Hitmonchan - Ice Punch - TM35
  (107, 10700, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Hitmonchan - Earthquake - TM41
  (107, 10700, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 27),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Wrap - Level 5
  (108, 10800, 35, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickitung - Acid - Level 10
  (108, 10800, 51, 17, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Lickitung - Stomp - Level 15
  (108, 10800, 23, 17, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lickitung - Disable - Level 20
  (108, 10800, 50, 17, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Lickitung - Bind - Level 25
  (108, 10800, 20, 17, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Lickitung - Slam - Level 30
  (108, 10800, 21, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Lickitung - Screech - Level 35
  (108, 10800, 103, 17, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Lickitung - Thrash - Level 40
  (108, 10800, 37, 17, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Lickitung - Power Whip - Level 45
  (108, 10800, 438, 17, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Lickitung - Headbutt - TM01
  (108, 10800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Lickitung - Helping Hand - TM03
  (108, 10800, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Lickitung - Rest - TM05
  (108, 10800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Lickitung - Protect - TM07
  (108, 10800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Lickitung - Substitute - TM08
  (108, 10800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Lickitung - Dig - TM10
  (108, 10800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Lickitung - Facade - TM12
  (108, 10800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Lickitung - Brick Break - TM13
  (108, 10800, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Lickitung - Seismic Toss - TM15
  (108, 10800, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Lickitung - Dragon Tail - TM17
  (108, 10800, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 20),
  -- Lickitung - Iron Tail - TM19
  (108, 10800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Lickitung - Rock Slide - TM22
  (108, 10800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 22),
  -- Lickitung - Thunder Punch - TM23
  (108, 10800, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 23),
  -- Lickitung - Toxic - TM27
  (108, 10800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Lickitung - Fire Punch - TM31
  (108, 10800, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 25),
  -- Lickitung - Ice Punch - TM35
  (108, 10800, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Lickitung - Thunderbolt - TM36
  (108, 10800, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 27),
  -- Lickitung - Flamethrower - TM37
  (108, 10800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 28),
  -- Lickitung - Thunder - TM38
  (108, 10800, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 29),
  -- Lickitung - Earthquake - TM41
  (108, 10800, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 30),
  -- Lickitung - Shadow Ball - TM43
  (108, 10800, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 31),
  -- Lickitung - Solar Beam - TM45
  (108, 10800, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 32),
  -- Lickitung - Fire Blast - TM46
  (108, 10800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 33),
  -- Lickitung - Surf - TM47
  (108, 10800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 34),
  -- Lickitung - Hyper Beam - TM48
  (108, 10800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 35),
  -- Lickitung - Blizzard - TM51
  (108, 10800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 36),
  -- Lickitung - Ice Beam - TM55
  (108, 10800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 37),
  -- Lickitung - Dream Eater - TM59
  (108, 10800, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 38),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 6
  (109, 10900, 123, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Koffing - Clear Smog - Level 12
  (109, 10900, 499, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Koffing - Sludge - Level 18
  (109, 10900, 124, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Koffing - Self-Destruct - Level 24
  (109, 10900, 120, 17, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Koffing - Toxic - Level 30
  (109, 10900, 92, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Koffing - Haze - Level 36
  (109, 10900, 114, 17, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Koffing - Sludge Bomb - Level 42
  (109, 10900, 188, 17, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Koffing - Explosion - Level 48
  (109, 10900, 153, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Koffing - Headbutt - TM01
  (109, 10900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Koffing - Taunt - TM02
  (109, 10900, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Koffing - Rest - TM05
  (109, 10900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Koffing - Protect - TM07
  (109, 10900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Koffing - Substitute - TM08
  (109, 10900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Koffing - Will-O-Wisp - TM11
  (109, 10900, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 16),
  -- Koffing - Facade - TM12
  (109, 10900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Koffing - Dark Pulse - TM20
  (109, 10900, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 18),
  -- Koffing - Toxic - TM27
  (109, 10900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Koffing - Thunderbolt - TM36
  (109, 10900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 20),
  -- Koffing - Flamethrower - TM37
  (109, 10900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 21),
  -- Koffing - Thunder - TM38
  (109, 10900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 22),
  -- Koffing - Self-Destruct - TM42
  (109, 10900, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 23),
  -- Koffing - Shadow Ball - TM43
  (109, 10900, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 24),
  -- Koffing - Fire Blast - TM46
  (109, 10900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 25),
  -- Koffing - Sludge Bomb - TM52
  (109, 10900, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 26),
  -- Weezing - Psybeam - Level 1
  (110, 11000, 60, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Screech - Level 1
  (110, 11000, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weezing - Clear Smog - Level 1
  (110, 11000, 499, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weezing - Smog - Level 6
  (110, 11000, 123, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Weezing - Clear Smog - Level 12
  (110, 11000, 499, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Weezing - Sludge - Level 18
  (110, 11000, 124, 17, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Weezing - Self-Destruct - Level 24
  (110, 11000, 120, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Weezing - Toxic - Level 30
  (110, 11000, 92, 17, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Weezing - Haze - Level 40
  (110, 11000, 114, 17, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Weezing - Sludge Bomb - Level 50
  (110, 11000, 188, 17, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Weezing - Explosion - Level 60
  (110, 11000, 153, 17, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Weezing - Headbutt - TM01
  (110, 11000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Weezing - Taunt - TM02
  (110, 11000, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Weezing - Rest - TM05
  (110, 11000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Weezing - Protect - TM07
  (110, 11000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Weezing - Substitute - TM08
  (110, 11000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Weezing - Will-O-Wisp - TM11
  (110, 11000, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 20),
  -- Weezing - Facade - TM12
  (110, 11000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Weezing - Dark Pulse - TM20
  (110, 11000, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 22),
  -- Weezing - Toxic - TM27
  (110, 11000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Weezing - Thunderbolt - TM36
  (110, 11000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 24),
  -- Weezing - Flamethrower - TM37
  (110, 11000, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Weezing - Thunder - TM38
  (110, 11000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Weezing - Self-Destruct - TM42
  (110, 11000, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 27),
  -- Weezing - Shadow Ball - TM43
  (110, 11000, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 28),
  -- Weezing - Fire Blast - TM46
  (110, 11000, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 29),
  -- Weezing - Hyper Beam - TM48
  (110, 11000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Weezing - Sludge Bomb - TM52
  (110, 11000, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 31),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Sand Attack - Level 1
  (111, 11100, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 7
  (111, 11100, 31, 17, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rhyhorn - Stomp - Level 12
  (111, 11100, 23, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rhyhorn - Rock Throw - Level 19
  (111, 11100, 88, 17, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rhyhorn - Drill Run - Level 24
  (111, 11100, 529, 17, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rhyhorn - Take Down - Level 31
  (111, 11100, 36, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Rhyhorn - Megahorn - Level 36
  (111, 11100, 224, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Rhyhorn - Rock Slide - Level 43
  (111, 11100, 157, 17, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Rhyhorn - Earthquake - Level 48
  (111, 11100, 89, 17, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Rhyhorn - Horn Drill - Level 55
  (111, 11100, 32, 17, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Rhyhorn - Headbutt - TM01
  (111, 11100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Rhyhorn - Rest - TM05
  (111, 11100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Rhyhorn - Protect - TM07
  (111, 11100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Rhyhorn - Substitute - TM08
  (111, 11100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Rhyhorn - Dig - TM10
  (111, 11100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Rhyhorn - Facade - TM12
  (111, 11100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Rhyhorn - Iron Tail - TM19
  (111, 11100, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Rhyhorn - Rock Slide - TM22
  (111, 11100, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 20),
  -- Rhyhorn - Poison Jab - TM26
  (111, 11100, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Rhyhorn - Toxic - TM27
  (111, 11100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Rhyhorn - Dragon Pulse - TM34
  (111, 11100, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 23),
  -- Rhyhorn - Thunderbolt - TM36
  (111, 11100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 24),
  -- Rhyhorn - Flamethrower - TM37
  (111, 11100, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Rhyhorn - Thunder - TM38
  (111, 11100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Rhyhorn - Earthquake - TM41
  (111, 11100, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 27),
  -- Rhyhorn - Fire Blast - TM46
  (111, 11100, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 28),
  -- Rhyhorn - Superpower - TM49
  (111, 11100, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 29),
  -- Rhyhorn - Blizzard - TM51
  (111, 11100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Rhyhorn - Ice Beam - TM55
  (111, 11100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Rhyhorn - Stealth Rock - TM56
  (111, 11100, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 32),
  -- Rhyhorn - Drill Run - TM58
  (111, 11100, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 33),
  -- Rhyhorn - Megahorn - TM60
  (111, 11100, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 34),
  -- Rhydon - Counter - Level 1
  (112, 11200, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Crunch - Level 1
  (112, 11200, 242, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Sand Attack - Level 1
  (112, 11200, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rhydon - Fury Attack - Level 7
  (112, 11200, 31, 17, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Rhydon - Stomp - Level 12
  (112, 11200, 23, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Rhydon - Rock Throw - Level 19
  (112, 11200, 88, 17, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Rhydon - Drill Run - Level 24
  (112, 11200, 529, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rhydon - Take Down - Level 31
  (112, 11200, 36, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Rhydon - Megahorn - Level 36
  (112, 11200, 224, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rhydon - Rock Slide - Level 48
  (112, 11200, 157, 17, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Rhydon - Earthquake - Level 54
  (112, 11200, 89, 17, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Rhydon - Horn Drill - Level 67
  (112, 11200, 32, 17, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Rhydon - Headbutt - TM01
  (112, 11200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Rhydon - Helping Hand - TM03
  (112, 11200, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 17),
  -- Rhydon - Rest - TM05
  (112, 11200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Rhydon - Protect - TM07
  (112, 11200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Rhydon - Substitute - TM08
  (112, 11200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Rhydon - Dig - TM10
  (112, 11200, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Rhydon - Facade - TM12
  (112, 11200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Rhydon - Brick Break - TM13
  (112, 11200, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 23),
  -- Rhydon - Seismic Toss - TM15
  (112, 11200, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 24),
  -- Rhydon - Dragon Tail - TM17
  (112, 11200, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 25),
  -- Rhydon - Iron Tail - TM19
  (112, 11200, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Rhydon - Rock Slide - TM22
  (112, 11200, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 27),
  -- Rhydon - Thunder Punch - TM23
  (112, 11200, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 28),
  -- Rhydon - Poison Jab - TM26
  (112, 11200, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 29),
  -- Rhydon - Toxic - TM27
  (112, 11200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 30),
  -- Rhydon - Fire Punch - TM31
  (112, 11200, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 31),
  -- Rhydon - Dragon Pulse - TM34
  (112, 11200, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 32),
  -- Rhydon - Ice Punch - TM35
  (112, 11200, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 33),
  -- Rhydon - Thunderbolt - TM36
  (112, 11200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 34),
  -- Rhydon - Flamethrower - TM37
  (112, 11200, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 35),
  -- Rhydon - Thunder - TM38
  (112, 11200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 36),
  -- Rhydon - Outrage - TM39
  (112, 11200, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 37),
  -- Rhydon - Earthquake - TM41
  (112, 11200, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 38),
  -- Rhydon - Fire Blast - TM46
  (112, 11200, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 39),
  -- Rhydon - Surf - TM47
  (112, 11200, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 40),
  -- Rhydon - Hyper Beam - TM48
  (112, 11200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 41),
  -- Rhydon - Superpower - TM49
  (112, 11200, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 42),
  -- Rhydon - Blizzard - TM51
  (112, 11200, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 43),
  -- Rhydon - Ice Beam - TM55
  (112, 11200, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 44),
  -- Rhydon - Stealth Rock - TM56
  (112, 11200, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 45),
  -- Rhydon - Pay Day - TM57
  (112, 11200, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 46),
  -- Rhydon - Drill Run - TM58
  (112, 11200, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 47),
  -- Rhydon - Megahorn - TM60
  (112, 11200, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 48),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Growl - Level 1
  (113, 11300, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Defense Curl - Level 4
  (113, 11300, 111, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Chansey - Tail Whip - Level 8
  (113, 11300, 39, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chansey - Double Slap - Level 12
  (113, 11300, 3, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chansey - Soft-Boiled - Level 16
  (113, 11300, 135, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chansey - Minimize - Level 20
  (113, 11300, 107, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chansey - Take Down - Level 25
  (113, 11300, 36, 17, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chansey - Sing - Level 30
  (113, 11300, 47, 17, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Chansey - Egg Bomb - Level 35
  (113, 11300, 121, 17, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Chansey - Light Screen - Level 40
  (113, 11300, 113, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Chansey - Double-Edge - Level 45
  (113, 11300, 38, 17, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Chansey - Headbutt - TM01
  (113, 11300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Chansey - Helping Hand - TM03
  (113, 11300, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Chansey - Teleport - TM04
  (113, 11300, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 15),
  -- Chansey - Rest - TM05
  (113, 11300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Chansey - Light Screen - TM06
  (113, 11300, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 17),
  -- Chansey - Protect - TM07
  (113, 11300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Chansey - Substitute - TM08
  (113, 11300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Chansey - Reflect - TM09
  (113, 11300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 20),
  -- Chansey - Facade - TM12
  (113, 11300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Chansey - Brick Break - TM13
  (113, 11300, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Chansey - Seismic Toss - TM15
  (113, 11300, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Chansey - Thunder Wave - TM16
  (113, 11300, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Chansey - Iron Tail - TM19
  (113, 11300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Chansey - Rock Slide - TM22
  (113, 11300, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 26),
  -- Chansey - Thunder Punch - TM23
  (113, 11300, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 27),
  -- Chansey - Toxic - TM27
  (113, 11300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Chansey - Tri Attack - TM28
  (113, 11300, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 29),
  -- Chansey - Fire Punch - TM31
  (113, 11300, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 30),
  -- Chansey - Dazzling Gleam - TM32
  (113, 11300, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 31),
  -- Chansey - Calm Mind - TM33
  (113, 11300, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 32),
  -- Chansey - Ice Punch - TM35
  (113, 11300, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 33),
  -- Chansey - Thunderbolt - TM36
  (113, 11300, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 34),
  -- Chansey - Flamethrower - TM37
  (113, 11300, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 35),
  -- Chansey - Thunder - TM38
  (113, 11300, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 36),
  -- Chansey - Psychic - TM40
  (113, 11300, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 37),
  -- Chansey - Earthquake - TM41
  (113, 11300, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 38),
  -- Chansey - Shadow Ball - TM43
  (113, 11300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 39),
  -- Chansey - Solar Beam - TM45
  (113, 11300, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 40),
  -- Chansey - Fire Blast - TM46
  (113, 11300, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 41),
  -- Chansey - Hyper Beam - TM48
  (113, 11300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 42),
  -- Chansey - Blizzard - TM51
  (113, 11300, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 43),
  -- Chansey - Ice Beam - TM55
  (113, 11300, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 44),
  -- Chansey - Stealth Rock - TM56
  (113, 11300, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 45),
  -- Chansey - Dream Eater - TM59
  (113, 11300, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 46),
  -- Tangela - Absorb - Level 1
  (114, 11400, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Sleep Powder - Level 5
  (114, 11400, 79, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tangela - Confusion - Level 10
  (114, 11400, 93, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tangela - Vine Whip - Level 15
  (114, 11400, 22, 17, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tangela - Poison Powder - Level 17
  (114, 11400, 77, 17, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Tangela - Bind - Level 22
  (114, 11400, 20, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tangela - Growth - Level 27
  (114, 11400, 74, 17, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Tangela - Stun Spore - Level 29
  (114, 11400, 78, 17, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tangela - Mega Drain - Level 34
  (114, 11400, 72, 17, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Tangela - Leech Seed - Level 39
  (114, 11400, 73, 17, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Tangela - Slam - Level 44
  (114, 11400, 21, 17, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Tangela - Amnesia - Level 49
  (114, 11400, 133, 17, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Tangela - Power Whip - Level 54
  (114, 11400, 438, 17, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Tangela - Headbutt - TM01
  (114, 11400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Tangela - Rest - TM05
  (114, 11400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Tangela - Protect - TM07
  (114, 11400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Tangela - Substitute - TM08
  (114, 11400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Tangela - Reflect - TM09
  (114, 11400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Tangela - Facade - TM12
  (114, 11400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Tangela - Toxic - TM27
  (114, 11400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Tangela - Solar Beam - TM45
  (114, 11400, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 22),
  -- Tangela - Hyper Beam - TM48
  (114, 11400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 23),
  -- Tangela - Sludge Bomb - TM52
  (114, 11400, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 24),
  -- Tangela - Mega Drain - TM53
  (114, 11400, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 25),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 1
  (115, 11500, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Fake Out - Level 6
  (115, 11500, 252, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 11
  (115, 11500, 39, 17, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 17
  (115, 11500, 44, 17, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Kangaskhan - Rage - Level 22
  (115, 11500, 99, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kangaskhan - Mega Punch - Level 28
  (115, 11500, 5, 17, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Kangaskhan - Dizzy Punch - Level 33
  (115, 11500, 146, 17, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Kangaskhan - Crunch - Level 39
  (115, 11500, 242, 17, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Kangaskhan - Outrage - Level 44
  (115, 11500, 200, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Kangaskhan - Sucker Punch - Level 50
  (115, 11500, 389, 17, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Kangaskhan - Headbutt - TM01
  (115, 11500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Kangaskhan - Helping Hand - TM03
  (115, 11500, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Kangaskhan - Rest - TM05
  (115, 11500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Kangaskhan - Protect - TM07
  (115, 11500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Kangaskhan - Substitute - TM08
  (115, 11500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Kangaskhan - Dig - TM10
  (115, 11500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Kangaskhan - Facade - TM12
  (115, 11500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Kangaskhan - Brick Break - TM13
  (115, 11500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Kangaskhan - Seismic Toss - TM15
  (115, 11500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Kangaskhan - Iron Tail - TM19
  (115, 11500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Kangaskhan - Rock Slide - TM22
  (115, 11500, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 22),
  -- Kangaskhan - Thunder Punch - TM23
  (115, 11500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 23),
  -- Kangaskhan - Toxic - TM27
  (115, 11500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Kangaskhan - Fire Punch - TM31
  (115, 11500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 25),
  -- Kangaskhan - Ice Punch - TM35
  (115, 11500, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 26),
  -- Kangaskhan - Thunderbolt - TM36
  (115, 11500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 27),
  -- Kangaskhan - Flamethrower - TM37
  (115, 11500, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 28),
  -- Kangaskhan - Thunder - TM38
  (115, 11500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 29),
  -- Kangaskhan - Outrage - TM39
  (115, 11500, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 30),
  -- Kangaskhan - Earthquake - TM41
  (115, 11500, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 31),
  -- Kangaskhan - Shadow Ball - TM43
  (115, 11500, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 32),
  -- Kangaskhan - Solar Beam - TM45
  (115, 11500, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 33),
  -- Kangaskhan - Fire Blast - TM46
  (115, 11500, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 34),
  -- Kangaskhan - Surf - TM47
  (115, 11500, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 35),
  -- Kangaskhan - Hyper Beam - TM48
  (115, 11500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 36),
  -- Kangaskhan - Blizzard - TM51
  (115, 11500, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 37),
  -- Kangaskhan - Ice Beam - TM55
  (115, 11500, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 38),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 6
  (116, 11600, 108, 17, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Horsea - Water Gun - Level 9
  (116, 11600, 55, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Horsea - Leer - Level 15
  (116, 11600, 43, 17, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Horsea - Bubble Beam - Level 18
  (116, 11600, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Horsea - Focus Energy - Level 24
  (116, 11600, 116, 17, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Horsea - Waterfall - Level 27
  (116, 11600, 127, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Horsea - Agility - Level 33
  (116, 11600, 97, 17, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Horsea - Dragon Pulse - Level 36
  (116, 11600, 406, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Horsea - Hydro Pump - Level 42
  (116, 11600, 56, 17, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Horsea - Headbutt - TM01
  (116, 11600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Horsea - Rest - TM05
  (116, 11600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Horsea - Protect - TM07
  (116, 11600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Horsea - Substitute - TM08
  (116, 11600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Horsea - Facade - TM12
  (116, 11600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 15),
  -- Horsea - Waterfall - TM25
  (116, 11600, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 16),
  -- Horsea - Toxic - TM27
  (116, 11600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Horsea - Scald - TM29
  (116, 11600, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 18),
  -- Horsea - Dragon Pulse - TM34
  (116, 11600, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 19),
  -- Horsea - Outrage - TM39
  (116, 11600, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 20),
  -- Horsea - Surf - TM47
  (116, 11600, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 21),
  -- Horsea - Blizzard - TM51
  (116, 11600, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Horsea - Flash Cannon - TM54
  (116, 11600, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 23),
  -- Horsea - Ice Beam - TM55
  (116, 11600, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 24),
  -- Seadra - Disable - Level 1
  (117, 11700, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Clear Smog - Level 1
  (117, 11700, 499, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Seadra - Smokescreen - Level 6
  (117, 11700, 108, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Seadra - Water Gun - Level 9
  (117, 11700, 55, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Seadra - Leer - Level 15
  (117, 11700, 43, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Seadra - Bubble Beam - Level 18
  (117, 11700, 61, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Seadra - Focus Energy - Level 24
  (117, 11700, 116, 17, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Seadra - Waterfall - Level 27
  (117, 11700, 127, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Seadra - Agility - Level 36
  (117, 11700, 97, 17, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Seadra - Dragon Pulse - Level 42
  (117, 11700, 406, 17, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 17, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Seadra - Headbutt - TM01
  (117, 11700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Seadra - Rest - TM05
  (117, 11700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Seadra - Protect - TM07
  (117, 11700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Seadra - Substitute - TM08
  (117, 11700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Seadra - Facade - TM12
  (117, 11700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Seadra - Waterfall - TM25
  (117, 11700, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 21),
  -- Seadra - Toxic - TM27
  (117, 11700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Seadra - Scald - TM29
  (117, 11700, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 23),
  -- Seadra - Dragon Pulse - TM34
  (117, 11700, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 24),
  -- Seadra - Outrage - TM39
  (117, 11700, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 25),
  -- Seadra - Surf - TM47
  (117, 11700, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 26),
  -- Seadra - Hyper Beam - TM48
  (117, 11700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Seadra - Blizzard - TM51
  (117, 11700, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 28),
  -- Seadra - Flash Cannon - TM54
  (117, 11700, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 29),
  -- Seadra - Ice Beam - TM55
  (117, 11700, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 30),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Supersonic - Level 4
  (118, 11800, 48, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Goldeen - Quick Attack - Level 10
  (118, 11800, 98, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 14
  (118, 11800, 30, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Goldeen - Fury Attack - Level 20
  (118, 11800, 31, 17, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Goldeen - Waterfall - Level 24
  (118, 11800, 127, 17, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Goldeen - Agility - Level 30
  (118, 11800, 97, 17, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Goldeen - Horn Drill - Level 34
  (118, 11800, 32, 17, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Goldeen - Megahorn - Level 40
  (118, 11800, 224, 17, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Goldeen - Headbutt - TM01
  (118, 11800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Goldeen - Rest - TM05
  (118, 11800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Goldeen - Protect - TM07
  (118, 11800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Goldeen - Substitute - TM08
  (118, 11800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Goldeen - Facade - TM12
  (118, 11800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 15),
  -- Goldeen - Waterfall - TM25
  (118, 11800, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 16),
  -- Goldeen - Poison Jab - TM26
  (118, 11800, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 17),
  -- Goldeen - Toxic - TM27
  (118, 11800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Goldeen - Scald - TM29
  (118, 11800, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 19),
  -- Goldeen - Surf - TM47
  (118, 11800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 20),
  -- Goldeen - Blizzard - TM51
  (118, 11800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 21),
  -- Goldeen - Ice Beam - TM55
  (118, 11800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 22),
  -- Goldeen - Drill Run - TM58
  (118, 11800, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 23),
  -- Goldeen - Megahorn - TM60
  (118, 11800, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 24),
  -- Seaking - Skull Bash - Level 1
  (119, 11900, 130, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Psybeam - Level 1
  (119, 11900, 60, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seaking - Quick Attack - Level 1
  (119, 11900, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Seaking - Supersonic - Level 4
  (119, 11900, 48, 17, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Seaking - Quick Attack - Level 10
  (119, 11900, 98, 17, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Seaking - Horn Attack - Level 14
  (119, 11900, 30, 17, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Seaking - Fury Attack - Level 20
  (119, 11900, 31, 17, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Seaking - Waterfall - Level 24
  (119, 11900, 127, 17, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Seaking - Agility - Level 30
  (119, 11900, 97, 17, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seaking - Horn Drill - Level 39
  (119, 11900, 32, 17, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Seaking - Megahorn - Level 50
  (119, 11900, 224, 17, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Seaking - Headbutt - TM01
  (119, 11900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Seaking - Rest - TM05
  (119, 11900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Seaking - Protect - TM07
  (119, 11900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Seaking - Substitute - TM08
  (119, 11900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Seaking - Facade - TM12
  (119, 11900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Seaking - Waterfall - TM25
  (119, 11900, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 20),
  -- Seaking - Poison Jab - TM26
  (119, 11900, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Seaking - Toxic - TM27
  (119, 11900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Seaking - Scald - TM29
  (119, 11900, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 23),
  -- Seaking - Surf - TM47
  (119, 11900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 24),
  -- Seaking - Hyper Beam - TM48
  (119, 11900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 25),
  -- Seaking - Blizzard - TM51
  (119, 11900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 26),
  -- Seaking - Ice Beam - TM55
  (119, 11900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 27),
  -- Seaking - Drill Run - TM58
  (119, 11900, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 28),
  -- Seaking - Megahorn - TM60
  (119, 11900, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 29),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Psywave - Level 4
  (120, 12000, 149, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Staryu - Water Gun - Level 9
  (120, 12000, 55, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Staryu - Swift - Level 13
  (120, 12000, 129, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Staryu - Minimize - Level 18
  (120, 12000, 107, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Staryu - Confuse Ray - Level 22
  (120, 12000, 109, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Staryu - Bubble Beam - Level 27
  (120, 12000, 61, 17, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Staryu - Light Screen - Level 31
  (120, 12000, 113, 17, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Staryu - Psychic - Level 36
  (120, 12000, 94, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Staryu - Recover - Level 40
  (120, 12000, 105, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Staryu - Hydro Pump - Level 45
  (120, 12000, 56, 17, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Staryu - Headbutt - TM01
  (120, 12000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Staryu - Teleport - TM04
  (120, 12000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Staryu - Rest - TM05
  (120, 12000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Staryu - Light Screen - TM06
  (120, 12000, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Staryu - Protect - TM07
  (120, 12000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Staryu - Substitute - TM08
  (120, 12000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Staryu - Reflect - TM09
  (120, 12000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Staryu - Facade - TM12
  (120, 12000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Staryu - Thunder Wave - TM16
  (120, 12000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 21),
  -- Staryu - Waterfall - TM25
  (120, 12000, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 22),
  -- Staryu - Toxic - TM27
  (120, 12000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Staryu - Tri Attack - TM28
  (120, 12000, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 24),
  -- Staryu - Scald - TM29
  (120, 12000, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 25),
  -- Staryu - Dazzling Gleam - TM32
  (120, 12000, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 26),
  -- Staryu - Thunderbolt - TM36
  (120, 12000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 27),
  -- Staryu - Thunder - TM38
  (120, 12000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 28),
  -- Staryu - Psychic - TM40
  (120, 12000, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 29),
  -- Staryu - Surf - TM47
  (120, 12000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 30),
  -- Staryu - Blizzard - TM51
  (120, 12000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 31),
  -- Staryu - Flash Cannon - TM54
  (120, 12000, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 32),
  -- Staryu - Ice Beam - TM55
  (120, 12000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Starmie - Tackle - Level 1
  (121, 12100, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Harden - Level 1
  (121, 12100, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Psywave - Level 1
  (121, 12100, 149, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Headbutt - TM01
  (121, 12100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 5),
  -- Starmie - Teleport - TM04
  (121, 12100, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 6),
  -- Starmie - Rest - TM05
  (121, 12100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 7),
  -- Starmie - Light Screen - TM06
  (121, 12100, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 8),
  -- Starmie - Protect - TM07
  (121, 12100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 9),
  -- Starmie - Substitute - TM08
  (121, 12100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 10),
  -- Starmie - Reflect - TM09
  (121, 12100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 11),
  -- Starmie - Facade - TM12
  (121, 12100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 12),
  -- Starmie - Thunder Wave - TM16
  (121, 12100, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 13),
  -- Starmie - Waterfall - TM25
  (121, 12100, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 14),
  -- Starmie - Toxic - TM27
  (121, 12100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 15),
  -- Starmie - Tri Attack - TM28
  (121, 12100, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 16),
  -- Starmie - Scald - TM29
  (121, 12100, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 17),
  -- Starmie - Dazzling Gleam - TM32
  (121, 12100, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 18),
  -- Starmie - Thunderbolt - TM36
  (121, 12100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 19),
  -- Starmie - Thunder - TM38
  (121, 12100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 20),
  -- Starmie - Psychic - TM40
  (121, 12100, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 21),
  -- Starmie - Surf - TM47
  (121, 12100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 22),
  -- Starmie - Hyper Beam - TM48
  (121, 12100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 23),
  -- Starmie - Blizzard - TM51
  (121, 12100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 24),
  -- Starmie - Flash Cannon - TM54
  (121, 12100, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 25),
  -- Starmie - Ice Beam - TM55
  (121, 12100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 26),
  -- Starmie - Dream Eater - TM59
  (121, 12100, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 27),
  -- Mr. Mime - Pound - Level 1
  (122, 12200, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Meditate - Level 6
  (122, 12200, 96, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Mr. Mime - Double Slap - Level 10
  (122, 12200, 3, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Mr. Mime - Mimic - Level 16
  (122, 12200, 102, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mr. Mime - Psywave - Level 20
  (122, 12200, 149, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mr. Mime - Encore - Level 26
  (122, 12200, 227, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Mr. Mime - Psybeam - Level 30
  (122, 12200, 60, 17, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Mr. Mime - Light Screen - Level 36
  (122, 12200, 113, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Mr. Mime - Reflect - Level 36
  (122, 12200, 115, 17, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mr. Mime - Substitute - Level 40
  (122, 12200, 164, 17, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psychic - Level 46
  (122, 12200, 94, 17, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Mr. Mime - Headbutt - TM01
  (122, 12200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Mr. Mime - Taunt - TM02
  (122, 12200, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 15),
  -- Mr. Mime - Helping Hand - TM03
  (122, 12200, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 16),
  -- Mr. Mime - Teleport - TM04
  (122, 12200, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 17),
  -- Mr. Mime - Rest - TM05
  (122, 12200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Mr. Mime - Light Screen - TM06
  (122, 12200, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Mr. Mime - Protect - TM07
  (122, 12200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Mr. Mime - Substitute - TM08
  (122, 12200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Mr. Mime - Reflect - TM09
  (122, 12200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Mr. Mime - Facade - TM12
  (122, 12200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Mr. Mime - Brick Break - TM13
  (122, 12200, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 24),
  -- Mr. Mime - Seismic Toss - TM15
  (122, 12200, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 25),
  -- Mr. Mime - Thunder Wave - TM16
  (122, 12200, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 26),
  -- Mr. Mime - Foul Play - TM21
  (122, 12200, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 27),
  -- Mr. Mime - Thunder Punch - TM23
  (122, 12200, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 28),
  -- Mr. Mime - Toxic - TM27
  (122, 12200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Mr. Mime - Fire Punch - TM31
  (122, 12200, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 30),
  -- Mr. Mime - Dazzling Gleam - TM32
  (122, 12200, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 31),
  -- Mr. Mime - Calm Mind - TM33
  (122, 12200, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 32),
  -- Mr. Mime - Ice Punch - TM35
  (122, 12200, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 33),
  -- Mr. Mime - Thunderbolt - TM36
  (122, 12200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 34),
  -- Mr. Mime - Thunder - TM38
  (122, 12200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 35),
  -- Mr. Mime - Psychic - TM40
  (122, 12200, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 36),
  -- Mr. Mime - Shadow Ball - TM43
  (122, 12200, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 37),
  -- Mr. Mime - Solar Beam - TM45
  (122, 12200, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 38),
  -- Mr. Mime - Hyper Beam - TM48
  (122, 12200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 39),
  -- Mr. Mime - Dream Eater - TM59
  (122, 12200, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 40),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Focus Energy - Level 4
  (123, 12300, 116, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scyther - Double Team - Level 8
  (123, 12300, 104, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scyther - Feint - Level 12
  (123, 12300, 364, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scyther - Wing Attack - Level 16
  (123, 12300, 17, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scyther - Agility - Level 20
  (123, 12300, 97, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 26
  (123, 12300, 163, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Scyther - Razor Wind - Level 32
  (123, 12300, 13, 17, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Scyther - Air Slash - Level 38
  (123, 12300, 403, 17, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Scyther - Swords Dance - Level 44
  (123, 12300, 14, 17, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Scyther - X-Scissor - Level 50
  (123, 12300, 404, 17, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Scyther - Headbutt - TM01
  (123, 12300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Scyther - Rest - TM05
  (123, 12300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Scyther - Light Screen - TM06
  (123, 12300, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 15),
  -- Scyther - Protect - TM07
  (123, 12300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Scyther - Substitute - TM08
  (123, 12300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Scyther - Facade - TM12
  (123, 12300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Scyther - Brick Break - TM13
  (123, 12300, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Scyther - U-turn - TM18
  (123, 12300, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 20),
  -- Scyther - X-Scissor - TM24
  (123, 12300, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 21),
  -- Scyther - Toxic - TM27
  (123, 12300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Scyther - Hyper Beam - TM48
  (123, 12300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 23),
  -- Scyther - Roost - TM50
  (123, 12300, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 24),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 6
  (124, 12400, 122, 17, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Jynx - Confusion - Level 12
  (124, 12400, 93, 17, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Jynx - Screech - Level 18
  (124, 12400, 103, 17, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Jynx - Double Slap - Level 22
  (124, 12400, 3, 17, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Jynx - Ice Punch - Level 26
  (124, 12400, 8, 17, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Jynx - Body Slam - Level 30
  (124, 12400, 34, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Jynx - Lovely Kiss - Level 35
  (124, 12400, 142, 17, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Jynx - Psychic - Level 40
  (124, 12400, 94, 17, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Jynx - Blizzard - Level 45
  (124, 12400, 59, 17, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Jynx - Headbutt - TM01
  (124, 12400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Jynx - Taunt - TM02
  (124, 12400, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Jynx - Helping Hand - TM03
  (124, 12400, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Jynx - Teleport - TM04
  (124, 12400, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Jynx - Rest - TM05
  (124, 12400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Jynx - Light Screen - TM06
  (124, 12400, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Jynx - Protect - TM07
  (124, 12400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Jynx - Substitute - TM08
  (124, 12400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Jynx - Reflect - TM09
  (124, 12400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Jynx - Facade - TM12
  (124, 12400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Jynx - Brick Break - TM13
  (124, 12400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Jynx - Seismic Toss - TM15
  (124, 12400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Jynx - Toxic - TM27
  (124, 12400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Jynx - Calm Mind - TM33
  (124, 12400, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 24),
  -- Jynx - Ice Punch - TM35
  (124, 12400, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 25),
  -- Jynx - Psychic - TM40
  (124, 12400, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 26),
  -- Jynx - Shadow Ball - TM43
  (124, 12400, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 27),
  -- Jynx - Hyper Beam - TM48
  (124, 12400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Jynx - Blizzard - TM51
  (124, 12400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 29),
  -- Jynx - Ice Beam - TM55
  (124, 12400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 30),
  -- Jynx - Dream Eater - TM59
  (124, 12400, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 31),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Quick Attack - Level 6
  (125, 12500, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Wave - Level 11
  (125, 12500, 86, 17, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Electabuzz - Swift - Level 17
  (125, 12500, 129, 17, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electabuzz - Low Kick - Level 22
  (125, 12500, 67, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Electabuzz - Light Screen - Level 28
  (125, 12500, 113, 17, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Electabuzz - Thunder Punch - Level 33
  (125, 12500, 9, 17, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Electabuzz - Screech - Level 39
  (125, 12500, 103, 17, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Electabuzz - Thunderbolt - Level 44
  (125, 12500, 85, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Electabuzz - Thunder - Level 50
  (125, 12500, 87, 17, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Electabuzz - Headbutt - TM01
  (125, 12500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Electabuzz - Taunt - TM02
  (125, 12500, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 13),
  -- Electabuzz - Helping Hand - TM03
  (125, 12500, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Electabuzz - Teleport - TM04
  (125, 12500, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 15),
  -- Electabuzz - Rest - TM05
  (125, 12500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Electabuzz - Light Screen - TM06
  (125, 12500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 17),
  -- Electabuzz - Protect - TM07
  (125, 12500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Electabuzz - Substitute - TM08
  (125, 12500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Electabuzz - Reflect - TM09
  (125, 12500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 20),
  -- Electabuzz - Facade - TM12
  (125, 12500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Electabuzz - Brick Break - TM13
  (125, 12500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Electabuzz - Seismic Toss - TM15
  (125, 12500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Electabuzz - Thunder Wave - TM16
  (125, 12500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Electabuzz - Iron Tail - TM19
  (125, 12500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Electabuzz - Thunder Punch - TM23
  (125, 12500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Electabuzz - Toxic - TM27
  (125, 12500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Electabuzz - Fire Punch - TM31
  (125, 12500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 28),
  -- Electabuzz - Ice Punch - TM35
  (125, 12500, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 29),
  -- Electabuzz - Thunderbolt - TM36
  (125, 12500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 30),
  -- Electabuzz - Thunder - TM38
  (125, 12500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 31),
  -- Electabuzz - Psychic - TM40
  (125, 12500, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 32),
  -- Electabuzz - Hyper Beam - TM48
  (125, 12500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 33),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smog - Level 6
  (126, 12600, 123, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magmar - Smokescreen - Level 11
  (126, 12600, 108, 17, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magmar - Clear Smog - Level 17
  (126, 12600, 499, 17, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Magmar - Low Kick - Level 22
  (126, 12600, 67, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Magmar - Fire Spin - Level 28
  (126, 12600, 83, 17, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Magmar - Fire Punch - Level 33
  (126, 12600, 7, 17, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Magmar - Confuse Ray - Level 39
  (126, 12600, 109, 17, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Magmar - Flamethrower - Level 44
  (126, 12600, 53, 17, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Magmar - Fire Blast - Level 50
  (126, 12600, 126, 17, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Magmar - Headbutt - TM01
  (126, 12600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Magmar - Taunt - TM02
  (126, 12600, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 13),
  -- Magmar - Helping Hand - TM03
  (126, 12600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Magmar - Teleport - TM04
  (126, 12600, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 15),
  -- Magmar - Rest - TM05
  (126, 12600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Magmar - Protect - TM07
  (126, 12600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Magmar - Substitute - TM08
  (126, 12600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Magmar - Will-O-Wisp - TM11
  (126, 12600, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 19),
  -- Magmar - Facade - TM12
  (126, 12600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Magmar - Brick Break - TM13
  (126, 12600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Magmar - Seismic Toss - TM15
  (126, 12600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Magmar - Iron Tail - TM19
  (126, 12600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Magmar - Thunder Punch - TM23
  (126, 12600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Magmar - Toxic - TM27
  (126, 12600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Magmar - Fire Punch - TM31
  (126, 12600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 26),
  -- Magmar - Flamethrower - TM37
  (126, 12600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 27),
  -- Magmar - Psychic - TM40
  (126, 12600, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 28),
  -- Magmar - Fire Blast - TM46
  (126, 12600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 29),
  -- Magmar - Hyper Beam - TM48
  (126, 12600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 1
  (127, 12700, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 4
  (127, 12700, 20, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 8
  (127, 12700, 69, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 12
  (127, 12700, 106, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pinsir - Brick Break - Level 16
  (127, 12700, 280, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pinsir - X-Scissor - Level 20
  (127, 12700, 404, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pinsir - Submission - Level 26
  (127, 12700, 66, 17, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Pinsir - Swords Dance - Level 32
  (127, 12700, 14, 17, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Pinsir - Thrash - Level 38
  (127, 12700, 37, 17, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Pinsir - Superpower - Level 44
  (127, 12700, 276, 17, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Pinsir - Guillotine - Level 50
  (127, 12700, 12, 17, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pinsir - Headbutt - TM01
  (127, 12700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Pinsir - Helping Hand - TM03
  (127, 12700, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Pinsir - Rest - TM05
  (127, 12700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Pinsir - Protect - TM07
  (127, 12700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Pinsir - Substitute - TM08
  (127, 12700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Pinsir - Dig - TM10
  (127, 12700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Pinsir - Facade - TM12
  (127, 12700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Pinsir - Brick Break - TM13
  (127, 12700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 20),
  -- Pinsir - Seismic Toss - TM15
  (127, 12700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 21),
  -- Pinsir - Rock Slide - TM22
  (127, 12700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 22),
  -- Pinsir - X-Scissor - TM24
  (127, 12700, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 23),
  -- Pinsir - Toxic - TM27
  (127, 12700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Pinsir - Bulk Up - TM30
  (127, 12700, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 25),
  -- Pinsir - Outrage - TM39
  (127, 12700, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 26),
  -- Pinsir - Earthquake - TM41
  (127, 12700, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 27),
  -- Pinsir - Hyper Beam - TM48
  (127, 12700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Pinsir - Superpower - TM49
  (127, 12700, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 29),
  -- Pinsir - Stealth Rock - TM56
  (127, 12700, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 30),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 6
  (128, 12800, 39, 17, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 12
  (128, 12800, 99, 17, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 18
  (128, 12800, 30, 17, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Tauros - Leer - Level 24
  (128, 12800, 43, 17, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Tauros - Rest - Level 30
  (128, 12800, 156, 17, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Tauros - Take Down - Level 34
  (128, 12800, 36, 17, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Tauros - Focus Energy - Level 38
  (128, 12800, 116, 17, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Tauros - Thrash - Level 42
  (128, 12800, 37, 17, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Tauros - Double-Edge - Level 46
  (128, 12800, 38, 17, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Tauros - Outrage - Level 50
  (128, 12800, 200, 17, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Tauros - Headbutt - TM01
  (128, 12800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Tauros - Helping Hand - TM03
  (128, 12800, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Tauros - Rest - TM05
  (128, 12800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Tauros - Protect - TM07
  (128, 12800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Tauros - Substitute - TM08
  (128, 12800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Tauros - Facade - TM12
  (128, 12800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Tauros - Iron Tail - TM19
  (128, 12800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 18),
  -- Tauros - Rock Slide - TM22
  (128, 12800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 19),
  -- Tauros - Toxic - TM27
  (128, 12800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Tauros - Thunderbolt - TM36
  (128, 12800, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 21),
  -- Tauros - Flamethrower - TM37
  (128, 12800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 22),
  -- Tauros - Thunder - TM38
  (128, 12800, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 23),
  -- Tauros - Outrage - TM39
  (128, 12800, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 24),
  -- Tauros - Earthquake - TM41
  (128, 12800, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 25),
  -- Tauros - Solar Beam - TM45
  (128, 12800, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 26),
  -- Tauros - Fire Blast - TM46
  (128, 12800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 27),
  -- Tauros - Surf - TM47
  (128, 12800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Tauros - Hyper Beam - TM48
  (128, 12800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Tauros - Blizzard - TM51
  (128, 12800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Tauros - Ice Beam - TM55
  (128, 12800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 17, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Gyarados - Bite - Level 1
  (130, 13000, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gyarados - Leer - Level 1
  (130, 13000, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gyarados - Dragon Rage - Level 1
  (130, 13000, 82, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gyarados - Bind - Level 1
  (130, 13000, 20, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gyarados - Bite - Evolution
  (130, 13000, 44, 17, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Gyarados - Leer - Level 6
  (130, 13000, 43, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gyarados - Dragon Rage - Level 11
  (130, 13000, 82, 17, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gyarados - Bind - Level 16
  (130, 13000, 20, 17, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gyarados - Rage - Level 21
  (130, 13000, 99, 17, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Gyarados - Dragon Tail - Level 26
  (130, 13000, 525, 17, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Gyarados - Waterfall - Level 31
  (130, 13000, 127, 17, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Gyarados - Crunch - Level 36
  (130, 13000, 242, 17, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gyarados - Outrage - Level 41
  (130, 13000, 200, 17, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gyarados - Hydro Pump - Level 46
  (130, 13000, 56, 17, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Gyarados - Hyper Beam - Level 51
  (130, 13000, 63, 17, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Gyarados - Headbutt - TM01
  (130, 13000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Gyarados - Taunt - TM02
  (130, 13000, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 18),
  -- Gyarados - Rest - TM05
  (130, 13000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Gyarados - Protect - TM07
  (130, 13000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Gyarados - Substitute - TM08
  (130, 13000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Gyarados - Reflect - TM09
  (130, 13000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Gyarados - Facade - TM12
  (130, 13000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Gyarados - Thunder Wave - TM16
  (130, 13000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Gyarados - Dragon Tail - TM17
  (130, 13000, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 25),
  -- Gyarados - Iron Tail - TM19
  (130, 13000, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Gyarados - Dark Pulse - TM20
  (130, 13000, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 27),
  -- Gyarados - Waterfall - TM25
  (130, 13000, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 28),
  -- Gyarados - Toxic - TM27
  (130, 13000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Gyarados - Scald - TM29
  (130, 13000, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 30),
  -- Gyarados - Dragon Pulse - TM34
  (130, 13000, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 31),
  -- Gyarados - Thunderbolt - TM36
  (130, 13000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 32),
  -- Gyarados - Flamethrower - TM37
  (130, 13000, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 33),
  -- Gyarados - Thunder - TM38
  (130, 13000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 34),
  -- Gyarados - Outrage - TM39
  (130, 13000, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 35),
  -- Gyarados - Earthquake - TM41
  (130, 13000, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 36),
  -- Gyarados - Fire Blast - TM46
  (130, 13000, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 37),
  -- Gyarados - Surf - TM47
  (130, 13000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 38),
  -- Gyarados - Hyper Beam - TM48
  (130, 13000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 39),
  -- Gyarados - Blizzard - TM51
  (130, 13000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 40),
  -- Gyarados - Ice Beam - TM55
  (130, 13000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 41),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Growl - Level 6
  (131, 13100, 45, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 13
  (131, 13100, 54, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lapras - Ice Shard - Level 19
  (131, 13100, 420, 17, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Lapras - Confuse Ray - Level 26
  (131, 13100, 109, 17, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Lapras - Body Slam - Level 32
  (131, 13100, 34, 17, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Lapras - Ice Beam - Level 39
  (131, 13100, 58, 17, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Lapras - Surf - Level 45
  (131, 13100, 57, 17, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Lapras - Dragon Pulse - Level 52
  (131, 13100, 406, 17, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Lapras - Blizzard - Level 58
  (131, 13100, 59, 17, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Lapras - Hydro Pump - Level 65
  (131, 13100, 56, 17, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Lapras - Headbutt - TM01
  (131, 13100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Lapras - Rest - TM05
  (131, 13100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Lapras - Protect - TM07
  (131, 13100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Lapras - Substitute - TM08
  (131, 13100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Lapras - Reflect - TM09
  (131, 13100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Lapras - Facade - TM12
  (131, 13100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Lapras - Iron Tail - TM19
  (131, 13100, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Lapras - Waterfall - TM25
  (131, 13100, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 20),
  -- Lapras - Toxic - TM27
  (131, 13100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Lapras - Dragon Pulse - TM34
  (131, 13100, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 22),
  -- Lapras - Thunderbolt - TM36
  (131, 13100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Lapras - Thunder - TM38
  (131, 13100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Lapras - Outrage - TM39
  (131, 13100, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 25),
  -- Lapras - Psychic - TM40
  (131, 13100, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 26),
  -- Lapras - Solar Beam - TM45
  (131, 13100, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 27),
  -- Lapras - Surf - TM47
  (131, 13100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Lapras - Hyper Beam - TM48
  (131, 13100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Lapras - Blizzard - TM51
  (131, 13100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Lapras - Ice Beam - TM55
  (131, 13100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Lapras - Drill Run - TM58
  (131, 13100, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 32),
  -- Lapras - Dream Eater - TM59
  (131, 13100, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 33),
  -- Lapras - Megahorn - TM60
  (131, 13100, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 34),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Growl - Level 1
  (133, 13300, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Tail Whip - Level 3
  (133, 13300, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Eevee - Quick Attack - Level 6
  (133, 13300, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Eevee - Double Kick - Level 10
  (133, 13300, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Eevee - Sand Attack - Level 14
  (133, 13300, 28, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Eevee - Bite - Level 17
  (133, 13300, 44, 17, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Eevee - Swift - Level 21
  (133, 13300, 129, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Eevee - Take Down - Level 24
  (133, 13300, 36, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Eevee - Double-Edge - Level 28
  (133, 13300, 38, 17, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Eevee - Helping Hand - Level 31
  (133, 13300, 270, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Eevee - Headbutt - TM01
  (133, 13300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Eevee - Helping Hand - TM03
  (133, 13300, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Eevee - Rest - TM05
  (133, 13300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Eevee - Protect - TM07
  (133, 13300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Eevee - Substitute - TM08
  (133, 13300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Eevee - Reflect - TM09
  (133, 13300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Eevee - Dig - TM10
  (133, 13300, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Eevee - Facade - TM12
  (133, 13300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Eevee - Iron Tail - TM19
  (133, 13300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Eevee - Toxic - TM27
  (133, 13300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Eevee - Shadow Ball - TM43
  (133, 13300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 22),
  -- Eevee - Pay Day - TM57
  (133, 13300, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 23),
  -- Vaporeon - Water Gun - Evolution
  (134, 13400, 55, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Vaporeon - Water Gun - Level 1
  (134, 13400, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Yawn - Level 1
  (134, 13400, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vaporeon - Growl - Level 1
  (134, 13400, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vaporeon - Sand Attack - Level 1
  (134, 13400, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vaporeon - Tail Whip - Level 3
  (134, 13400, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Vaporeon - Quick Attack - Level 6
  (134, 13400, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Vaporeon - Double Kick - Level 10
  (134, 13400, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Vaporeon - Sand Attack - Level 14
  (134, 13400, 28, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Vaporeon - Aurora Beam - Level 17
  (134, 13400, 62, 17, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Vaporeon - Haze - Level 21
  (134, 13400, 114, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Vaporeon - Acid Armor - Level 24
  (134, 13400, 151, 17, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Vaporeon - Helping Hand - Level 28
  (134, 13400, 270, 17, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Vaporeon - Hydro Pump - Level 31
  (134, 13400, 56, 17, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Vaporeon - Headbutt - TM01
  (134, 13400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Vaporeon - Helping Hand - TM03
  (134, 13400, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Vaporeon - Rest - TM05
  (134, 13400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Vaporeon - Protect - TM07
  (134, 13400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Vaporeon - Substitute - TM08
  (134, 13400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Vaporeon - Reflect - TM09
  (134, 13400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Vaporeon - Dig - TM10
  (134, 13400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Vaporeon - Facade - TM12
  (134, 13400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Vaporeon - Iron Tail - TM19
  (134, 13400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Vaporeon - Waterfall - TM25
  (134, 13400, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 26),
  -- Vaporeon - Toxic - TM27
  (134, 13400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Vaporeon - Scald - TM29
  (134, 13400, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 28),
  -- Vaporeon - Shadow Ball - TM43
  (134, 13400, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Vaporeon - Surf - TM47
  (134, 13400, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 30),
  -- Vaporeon - Hyper Beam - TM48
  (134, 13400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 31),
  -- Vaporeon - Blizzard - TM51
  (134, 13400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 32),
  -- Vaporeon - Ice Beam - TM55
  (134, 13400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Vaporeon - Pay Day - TM57
  (134, 13400, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 34),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Jolteon - Thunder Shock - Level 1
  (135, 13500, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Yawn - Level 1
  (135, 13500, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jolteon - Growl - Level 1
  (135, 13500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jolteon - Sand Attack - Level 1
  (135, 13500, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Jolteon - Tail Whip - Level 3
  (135, 13500, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Jolteon - Quick Attack - Level 6
  (135, 13500, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Jolteon - Double Kick - Level 10
  (135, 13500, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Jolteon - Sand Attack - Level 14
  (135, 13500, 28, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Jolteon - Pin Missile - Level 17
  (135, 13500, 42, 17, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Jolteon - Thunder Wave - Level 21
  (135, 13500, 86, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Jolteon - Agility - Level 24
  (135, 13500, 97, 17, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Jolteon - Helping Hand - Level 28
  (135, 13500, 270, 17, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Jolteon - Thunder - Level 31
  (135, 13500, 87, 17, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Jolteon - Headbutt - TM01
  (135, 13500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Jolteon - Helping Hand - TM03
  (135, 13500, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Jolteon - Rest - TM05
  (135, 13500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Jolteon - Light Screen - TM06
  (135, 13500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 20),
  -- Jolteon - Protect - TM07
  (135, 13500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 21),
  -- Jolteon - Substitute - TM08
  (135, 13500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 22),
  -- Jolteon - Reflect - TM09
  (135, 13500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 23),
  -- Jolteon - Dig - TM10
  (135, 13500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 24),
  -- Jolteon - Facade - TM12
  (135, 13500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Jolteon - Thunder Wave - TM16
  (135, 13500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 26),
  -- Jolteon - Iron Tail - TM19
  (135, 13500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 27),
  -- Jolteon - Toxic - TM27
  (135, 13500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Jolteon - Thunderbolt - TM36
  (135, 13500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 29),
  -- Jolteon - Thunder - TM38
  (135, 13500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Jolteon - Shadow Ball - TM43
  (135, 13500, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 31),
  -- Jolteon - Hyper Beam - TM48
  (135, 13500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 32),
  -- Jolteon - Pay Day - TM57
  (135, 13500, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 33),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Flareon - Ember - Level 1
  (136, 13600, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Yawn - Level 1
  (136, 13600, 281, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flareon - Growl - Level 1
  (136, 13600, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flareon - Sand Attack - Level 1
  (136, 13600, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Flareon - Tail Whip - Level 3
  (136, 13600, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Flareon - Quick Attack - Level 6
  (136, 13600, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Flareon - Double Kick - Level 10
  (136, 13600, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Flareon - Sand Attack - Level 14
  (136, 13600, 28, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Flareon - Fire Spin - Level 17
  (136, 13600, 83, 17, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Flareon - Smog - Level 21
  (136, 13600, 123, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Flareon - Focus Energy - Level 24
  (136, 13600, 116, 17, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Flareon - Helping Hand - Level 28
  (136, 13600, 270, 17, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Flareon - Flare Blitz - Level 31
  (136, 13600, 394, 17, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Flareon - Headbutt - TM01
  (136, 13600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Flareon - Helping Hand - TM03
  (136, 13600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 18),
  -- Flareon - Rest - TM05
  (136, 13600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Flareon - Protect - TM07
  (136, 13600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Flareon - Substitute - TM08
  (136, 13600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Flareon - Reflect - TM09
  (136, 13600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Flareon - Dig - TM10
  (136, 13600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Flareon - Will-O-Wisp - TM11
  (136, 13600, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 24),
  -- Flareon - Facade - TM12
  (136, 13600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Flareon - Iron Tail - TM19
  (136, 13600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Flareon - Toxic - TM27
  (136, 13600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Flareon - Flamethrower - TM37
  (136, 13600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 28),
  -- Flareon - Shadow Ball - TM43
  (136, 13600, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Flareon - Fire Blast - TM46
  (136, 13600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 30),
  -- Flareon - Hyper Beam - TM48
  (136, 13600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 31),
  -- Flareon - Superpower - TM49
  (136, 13600, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 32),
  -- Flareon - Pay Day - TM57
  (136, 13600, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 33),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Sharpen - Level 4
  (137, 13700, 159, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Porygon - Psybeam - Level 9
  (137, 13700, 60, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Porygon - Agility - Level 13
  (137, 13700, 97, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Porygon - Barrier - Level 18
  (137, 13700, 112, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Porygon - Tri Attack - Level 22
  (137, 13700, 161, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Porygon - Thunder Wave - Level 27
  (137, 13700, 86, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Porygon - Conversion - Level 31
  (137, 13700, 160, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Porygon - Recover - Level 36
  (137, 13700, 105, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Porygon - Hyper Beam - Level 40
  (137, 13700, 63, 17, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Porygon - Headbutt - TM01
  (137, 13700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Porygon - Teleport - TM04
  (137, 13700, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 12),
  -- Porygon - Rest - TM05
  (137, 13700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Porygon - Protect - TM07
  (137, 13700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Porygon - Substitute - TM08
  (137, 13700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Porygon - Reflect - TM09
  (137, 13700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Porygon - Facade - TM12
  (137, 13700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Porygon - Thunder Wave - TM16
  (137, 13700, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 18),
  -- Porygon - Iron Tail - TM19
  (137, 13700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Porygon - Foul Play - TM21
  (137, 13700, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 20),
  -- Porygon - Toxic - TM27
  (137, 13700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Porygon - Tri Attack - TM28
  (137, 13700, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 22),
  -- Porygon - Thunderbolt - TM36
  (137, 13700, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Porygon - Thunder - TM38
  (137, 13700, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Porygon - Psychic - TM40
  (137, 13700, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 25),
  -- Porygon - Shadow Ball - TM43
  (137, 13700, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 26),
  -- Porygon - Solar Beam - TM45
  (137, 13700, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 27),
  -- Porygon - Hyper Beam - TM48
  (137, 13700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Porygon - Blizzard - TM51
  (137, 13700, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 29),
  -- Porygon - Ice Beam - TM55
  (137, 13700, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 30),
  -- Porygon - Dream Eater - TM59
  (137, 13700, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 31),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 4
  (138, 13800, 110, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Omanyte - Leer - Level 11
  (138, 13800, 43, 17, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 15
  (138, 13800, 55, 17, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Omanyte - Bite - Level 22
  (138, 13800, 44, 17, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Omanyte - Rock Throw - Level 26
  (138, 13800, 88, 17, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Omanyte - Protect - Level 33
  (138, 13800, 182, 17, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Omanyte - Rock Slide - Level 37
  (138, 13800, 157, 17, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Omanyte - Hydro Pump - Level 44
  (138, 13800, 56, 17, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Omanyte - Shell Smash - Level 48
  (138, 13800, 504, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Omanyte - Headbutt - TM01
  (138, 13800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Omanyte - Rest - TM05
  (138, 13800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Omanyte - Protect - TM07
  (138, 13800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Omanyte - Substitute - TM08
  (138, 13800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Omanyte - Reflect - TM09
  (138, 13800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Omanyte - Facade - TM12
  (138, 13800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Omanyte - Rock Slide - TM22
  (138, 13800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 17),
  -- Omanyte - Waterfall - TM25
  (138, 13800, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 18),
  -- Omanyte - Toxic - TM27
  (138, 13800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Omanyte - Scald - TM29
  (138, 13800, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 20),
  -- Omanyte - Surf - TM47
  (138, 13800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 21),
  -- Omanyte - Blizzard - TM51
  (138, 13800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Omanyte - Ice Beam - TM55
  (138, 13800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 23),
  -- Omanyte - Stealth Rock - TM56
  (138, 13800, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 24),
  -- Omastar - Spike Cannon - Level 1
  (139, 13900, 131, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Bide - Level 1
  (139, 13900, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Supersonic - Level 1
  (139, 13900, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Omastar - Leer - Level 1
  (139, 13900, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Omastar - Water Gun - Level 1
  (139, 13900, 55, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Omastar - Spike Cannon - Evolution
  (139, 13900, 131, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Omastar - Withdraw - Level 4
  (139, 13900, 110, 17, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Omastar - Leer - Level 11
  (139, 13900, 43, 17, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Omastar - Water Gun - Level 15
  (139, 13900, 55, 17, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Omastar - Bite - Level 22
  (139, 13900, 44, 17, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Omastar - Rock Throw - Level 26
  (139, 13900, 88, 17, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Omastar - Protect - Level 33
  (139, 13900, 182, 17, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Omastar - Rock Slide - Level 37
  (139, 13900, 157, 17, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Omastar - Hydro Pump - Level 50
  (139, 13900, 56, 17, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Omastar - Shell Smash - Level 60
  (139, 13900, 504, 17, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Omastar - Headbutt - TM01
  (139, 13900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 18),
  -- Omastar - Rest - TM05
  (139, 13900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Omastar - Protect - TM07
  (139, 13900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Omastar - Substitute - TM08
  (139, 13900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Omastar - Reflect - TM09
  (139, 13900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Omastar - Facade - TM12
  (139, 13900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Omastar - Seismic Toss - TM15
  (139, 13900, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 24),
  -- Omastar - Rock Slide - TM22
  (139, 13900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 25),
  -- Omastar - Waterfall - TM25
  (139, 13900, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 26),
  -- Omastar - Toxic - TM27
  (139, 13900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Omastar - Scald - TM29
  (139, 13900, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 28),
  -- Omastar - Surf - TM47
  (139, 13900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 29),
  -- Omastar - Hyper Beam - TM48
  (139, 13900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Omastar - Blizzard - TM51
  (139, 13900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 31),
  -- Omastar - Ice Beam - TM55
  (139, 13900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 32),
  -- Omastar - Stealth Rock - TM56
  (139, 13900, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 33),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 6
  (140, 14000, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Kabuto - Leer - Level 12
  (140, 14000, 43, 17, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Kabuto - Absorb - Level 18
  (140, 14000, 71, 17, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Kabuto - Aqua Jet - Level 24
  (140, 14000, 453, 17, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Kabuto - Rock Throw - Level 30
  (140, 14000, 88, 17, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Kabuto - Sand Attack - Level 36
  (140, 14000, 28, 17, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kabuto - Rock Slide - Level 42
  (140, 14000, 157, 17, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Kabuto - Leech Life - Level 48
  (140, 14000, 141, 17, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Kabuto - Headbutt - TM01
  (140, 14000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Kabuto - Rest - TM05
  (140, 14000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Kabuto - Protect - TM07
  (140, 14000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 12),
  -- Kabuto - Substitute - TM08
  (140, 14000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 13),
  -- Kabuto - Reflect - TM09
  (140, 14000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 14),
  -- Kabuto - Dig - TM10
  (140, 14000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Kabuto - Facade - TM12
  (140, 14000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Kabuto - Rock Slide - TM22
  (140, 14000, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 17),
  -- Kabuto - Waterfall - TM25
  (140, 14000, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 18),
  -- Kabuto - Toxic - TM27
  (140, 14000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Kabuto - Scald - TM29
  (140, 14000, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 20),
  -- Kabuto - Surf - TM47
  (140, 14000, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 21),
  -- Kabuto - Blizzard - TM51
  (140, 14000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Kabuto - Mega Drain - TM53
  (140, 14000, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 23),
  -- Kabuto - Ice Beam - TM55
  (140, 14000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 24),
  -- Kabuto - Stealth Rock - TM56
  (140, 14000, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 25),
  -- Kabutops - Slash - Level 1
  (141, 14100, 163, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Screech - Level 1
  (141, 14100, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Confuse Ray - Level 1
  (141, 14100, 109, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Feint - Level 1
  (141, 14100, 364, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kabutops - Leer - Level 1
  (141, 14100, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Kabutops - Slash - Evolution
  (141, 14100, 163, 17, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Kabutops - Harden - Level 6
  (141, 14100, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Kabutops - Leer - Level 12
  (141, 14100, 43, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Kabutops - Absorb - Level 18
  (141, 14100, 71, 17, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Kabutops - Aqua Jet - Level 24
  (141, 14100, 453, 17, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Kabutops - Rock Throw - Level 30
  (141, 14100, 88, 17, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Kabutops - Sand Attack - Level 36
  (141, 14100, 28, 17, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Kabutops - Rock Slide - Level 45
  (141, 14100, 157, 17, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Kabutops - Leech Life - Level 54
  (141, 14100, 141, 17, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Kabutops - Swords Dance - Level 63
  (141, 14100, 14, 17, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Kabutops - Headbutt - TM01
  (141, 14100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 19),
  -- Kabutops - Rest - TM05
  (141, 14100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 20),
  -- Kabutops - Protect - TM07
  (141, 14100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 21),
  -- Kabutops - Substitute - TM08
  (141, 14100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 22),
  -- Kabutops - Reflect - TM09
  (141, 14100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 23),
  -- Kabutops - Dig - TM10
  (141, 14100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 24),
  -- Kabutops - Facade - TM12
  (141, 14100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Kabutops - Brick Break - TM13
  (141, 14100, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 26),
  -- Kabutops - Seismic Toss - TM15
  (141, 14100, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 27),
  -- Kabutops - Rock Slide - TM22
  (141, 14100, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 28),
  -- Kabutops - X-Scissor - TM24
  (141, 14100, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 29),
  -- Kabutops - Waterfall - TM25
  (141, 14100, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 30),
  -- Kabutops - Toxic - TM27
  (141, 14100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 31),
  -- Kabutops - Scald - TM29
  (141, 14100, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 32),
  -- Kabutops - Surf - TM47
  (141, 14100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 33),
  -- Kabutops - Hyper Beam - TM48
  (141, 14100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 34),
  -- Kabutops - Superpower - TM49
  (141, 14100, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 35),
  -- Kabutops - Blizzard - TM51
  (141, 14100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 36),
  -- Kabutops - Mega Drain - TM53
  (141, 14100, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 37),
  -- Kabutops - Ice Beam - TM55
  (141, 14100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 38),
  -- Kabutops - Stealth Rock - TM56
  (141, 14100, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 39),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Roar - Level 7
  (142, 14200, 46, 17, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Aerodactyl - Supersonic - Level 14
  (142, 14200, 48, 17, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Aerodactyl - Rock Throw - Level 21
  (142, 14200, 88, 17, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Aerodactyl - Agility - Level 28
  (142, 14200, 97, 17, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Aerodactyl - Crunch - Level 35
  (142, 14200, 242, 17, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Aerodactyl - Rock Slide - Level 42
  (142, 14200, 157, 17, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Aerodactyl - Fly - Level 49
  (142, 14200, 19, 17, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Aerodactyl - Take Down - Level 56
  (142, 14200, 36, 17, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Aerodactyl - Hyper Beam - Level 63
  (142, 14200, 63, 17, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Aerodactyl - Headbutt - TM01
  (142, 14200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Aerodactyl - Taunt - TM02
  (142, 14200, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 13),
  -- Aerodactyl - Rest - TM05
  (142, 14200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Aerodactyl - Protect - TM07
  (142, 14200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Aerodactyl - Substitute - TM08
  (142, 14200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Aerodactyl - Reflect - TM09
  (142, 14200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Aerodactyl - Facade - TM12
  (142, 14200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Aerodactyl - Fly - TM14
  (142, 14200, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 19),
  -- Aerodactyl - Iron Tail - TM19
  (142, 14200, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Aerodactyl - Rock Slide - TM22
  (142, 14200, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Aerodactyl - Toxic - TM27
  (142, 14200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Aerodactyl - Dragon Pulse - TM34
  (142, 14200, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 23),
  -- Aerodactyl - Flamethrower - TM37
  (142, 14200, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 24),
  -- Aerodactyl - Earthquake - TM41
  (142, 14200, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 25),
  -- Aerodactyl - Fire Blast - TM46
  (142, 14200, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 26),
  -- Aerodactyl - Hyper Beam - TM48
  (142, 14200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Aerodactyl - Roost - TM50
  (142, 14200, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 28),
  -- Aerodactyl - Stealth Rock - TM56
  (142, 14200, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 29),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Defense Curl - Level 6
  (143, 14300, 111, 17, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Snorlax - Yawn - Level 13
  (143, 14300, 281, 17, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Snorlax - Lick - Level 19
  (143, 14300, 122, 17, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Snorlax - Headbutt - Level 26
  (143, 14300, 29, 17, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Snorlax - Rest - Level 32
  (143, 14300, 156, 17, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Snorlax - Screech - Level 39
  (143, 14300, 103, 17, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Snorlax - Amnesia - Level 45
  (143, 14300, 133, 17, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Snorlax - Body Slam - Level 52
  (143, 14300, 34, 17, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Snorlax - Crunch - Level 58
  (143, 14300, 242, 17, NULL, 1, 58, NULL, NULL, NULL, 10),
  -- Snorlax - Superpower - Level 65
  (143, 14300, 276, 17, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Snorlax - Headbutt - TM01
  (143, 14300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Snorlax - Rest - TM05
  (143, 14300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Snorlax - Protect - TM07
  (143, 14300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Snorlax - Substitute - TM08
  (143, 14300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Snorlax - Reflect - TM09
  (143, 14300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Snorlax - Facade - TM12
  (143, 14300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Snorlax - Brick Break - TM13
  (143, 14300, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Snorlax - Seismic Toss - TM15
  (143, 14300, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Snorlax - Rock Slide - TM22
  (143, 14300, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 20),
  -- Snorlax - Thunder Punch - TM23
  (143, 14300, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 21),
  -- Snorlax - Toxic - TM27
  (143, 14300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Snorlax - Fire Punch - TM31
  (143, 14300, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 23),
  -- Snorlax - Ice Punch - TM35
  (143, 14300, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 24),
  -- Snorlax - Thunderbolt - TM36
  (143, 14300, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Snorlax - Flamethrower - TM37
  (143, 14300, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 26),
  -- Snorlax - Thunder - TM38
  (143, 14300, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Snorlax - Outrage - TM39
  (143, 14300, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 28),
  -- Snorlax - Psychic - TM40
  (143, 14300, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 29),
  -- Snorlax - Earthquake - TM41
  (143, 14300, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 30),
  -- Snorlax - Self-Destruct - TM42
  (143, 14300, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 31),
  -- Snorlax - Shadow Ball - TM43
  (143, 14300, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 32),
  -- Snorlax - Solar Beam - TM45
  (143, 14300, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 33),
  -- Snorlax - Fire Blast - TM46
  (143, 14300, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 34),
  -- Snorlax - Surf - TM47
  (143, 14300, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 35),
  -- Snorlax - Hyper Beam - TM48
  (143, 14300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 36),
  -- Snorlax - Superpower - TM49
  (143, 14300, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 37),
  -- Snorlax - Blizzard - TM51
  (143, 14300, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 38),
  -- Snorlax - Ice Beam - TM55
  (143, 14300, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 39),
  -- Snorlax - Pay Day - TM57
  (143, 14300, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 40),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Ice Shard - Level 1
  (144, 14400, 420, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Mist - Level 8
  (144, 14400, 54, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Articuno - Leer - Level 16
  (144, 14400, 43, 17, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Articuno - Mirror Coat - Level 24
  (144, 14400, 243, 17, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Articuno - Ice Beam - Level 32
  (144, 14400, 58, 17, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Articuno - Agility - Level 40
  (144, 14400, 97, 17, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Articuno - Reflect - Level 48
  (144, 14400, 115, 17, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Articuno - Roost - Level 56
  (144, 14400, 355, 17, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Articuno - Blizzard - Level 64
  (144, 14400, 59, 17, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Articuno - Sky Attack - Level 72
  (144, 14400, 143, 17, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Articuno - Headbutt - TM01
  (144, 14400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Articuno - Rest - TM05
  (144, 14400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Articuno - Protect - TM07
  (144, 14400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Articuno - Substitute - TM08
  (144, 14400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Articuno - Reflect - TM09
  (144, 14400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Articuno - Facade - TM12
  (144, 14400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Articuno - Fly - TM14
  (144, 14400, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 18),
  -- Articuno - U-turn - TM18
  (144, 14400, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 19),
  -- Articuno - Toxic - TM27
  (144, 14400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Articuno - Hyper Beam - TM48
  (144, 14400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 21),
  -- Articuno - Roost - TM50
  (144, 14400, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 22),
  -- Articuno - Blizzard - TM51
  (144, 14400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 23),
  -- Articuno - Ice Beam - TM55
  (144, 14400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 24),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Wave - Level 8
  (145, 14500, 86, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Zapdos - Leer - Level 16
  (145, 14500, 43, 17, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Zapdos - Drill Peck - Level 24
  (145, 14500, 65, 17, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Zapdos - Thunderbolt - Level 32
  (145, 14500, 85, 17, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Zapdos - Agility - Level 40
  (145, 14500, 97, 17, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Zapdos - Light Screen - Level 48
  (145, 14500, 113, 17, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Zapdos - Roost - Level 56
  (145, 14500, 355, 17, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Zapdos - Thunder - Level 64
  (145, 14500, 87, 17, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Zapdos - Sky Attack - Level 72
  (145, 14500, 143, 17, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Zapdos - Headbutt - TM01
  (145, 14500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Zapdos - Rest - TM05
  (145, 14500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Zapdos - Light Screen - TM06
  (145, 14500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Zapdos - Protect - TM07
  (145, 14500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Zapdos - Substitute - TM08
  (145, 14500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Zapdos - Reflect - TM09
  (145, 14500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Zapdos - Facade - TM12
  (145, 14500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Zapdos - Fly - TM14
  (145, 14500, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 19),
  -- Zapdos - Thunder Wave - TM16
  (145, 14500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 20),
  -- Zapdos - U-turn - TM18
  (145, 14500, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 21),
  -- Zapdos - Toxic - TM27
  (145, 14500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Zapdos - Thunderbolt - TM36
  (145, 14500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Zapdos - Thunder - TM38
  (145, 14500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Zapdos - Hyper Beam - TM48
  (145, 14500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 25),
  -- Zapdos - Roost - TM50
  (145, 14500, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 26),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Fire Spin - Level 8
  (146, 14600, 83, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Moltres - Leer - Level 16
  (146, 14600, 43, 17, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Moltres - Air Slash - Level 24
  (146, 14600, 403, 17, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Moltres - Flamethrower - Level 32
  (146, 14600, 53, 17, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Moltres - Agility - Level 40
  (146, 14600, 97, 17, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Moltres - Heat Wave - Level 48
  (146, 14600, 257, 17, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Moltres - Roost - Level 56
  (146, 14600, 355, 17, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Moltres - Solar Beam - Level 64
  (146, 14600, 76, 17, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Moltres - Sky Attack - Level 72
  (146, 14600, 143, 17, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Moltres - Headbutt - TM01
  (146, 14600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Moltres - Rest - TM05
  (146, 14600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Moltres - Protect - TM07
  (146, 14600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Moltres - Substitute - TM08
  (146, 14600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Moltres - Reflect - TM09
  (146, 14600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Moltres - Will-O-Wisp - TM11
  (146, 14600, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 17),
  -- Moltres - Facade - TM12
  (146, 14600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Moltres - Fly - TM14
  (146, 14600, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 19),
  -- Moltres - U-turn - TM18
  (146, 14600, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 20),
  -- Moltres - Toxic - TM27
  (146, 14600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Moltres - Flamethrower - TM37
  (146, 14600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 22),
  -- Moltres - Solar Beam - TM45
  (146, 14600, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 23),
  -- Moltres - Fire Blast - TM46
  (146, 14600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 24),
  -- Moltres - Hyper Beam - TM48
  (146, 14600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 25),
  -- Moltres - Roost - TM50
  (146, 14600, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 26),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 7
  (147, 14700, 86, 17, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dratini - Dragon Rage - Level 14
  (147, 14700, 82, 17, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Dratini - Agility - Level 21
  (147, 14700, 97, 17, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Dratini - Dragon Tail - Level 28
  (147, 14700, 525, 17, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Dratini - Slam - Level 35
  (147, 14700, 21, 17, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Dratini - Outrage - Level 42
  (147, 14700, 200, 17, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Dratini - Hyper Beam - Level 49
  (147, 14700, 63, 17, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Dratini - Headbutt - TM01
  (147, 14700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Dratini - Rest - TM05
  (147, 14700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Dratini - Light Screen - TM06
  (147, 14700, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 12),
  -- Dratini - Protect - TM07
  (147, 14700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Dratini - Substitute - TM08
  (147, 14700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Dratini - Reflect - TM09
  (147, 14700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Dratini - Facade - TM12
  (147, 14700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Dratini - Thunder Wave - TM16
  (147, 14700, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 17),
  -- Dratini - Dragon Tail - TM17
  (147, 14700, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 18),
  -- Dratini - Iron Tail - TM19
  (147, 14700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Dratini - Waterfall - TM25
  (147, 14700, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 20),
  -- Dratini - Toxic - TM27
  (147, 14700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Dratini - Dragon Pulse - TM34
  (147, 14700, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 22),
  -- Dratini - Thunderbolt - TM36
  (147, 14700, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Dratini - Flamethrower - TM37
  (147, 14700, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 24),
  -- Dratini - Thunder - TM38
  (147, 14700, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 25),
  -- Dratini - Outrage - TM39
  (147, 14700, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 26),
  -- Dratini - Fire Blast - TM46
  (147, 14700, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 27),
  -- Dratini - Surf - TM47
  (147, 14700, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 28),
  -- Dratini - Hyper Beam - TM48
  (147, 14700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Dratini - Blizzard - TM51
  (147, 14700, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Dratini - Ice Beam - TM55
  (147, 14700, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Dragon Rage - Level 1
  (148, 14800, 82, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 7
  (148, 14800, 86, 17, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Dragonair - Dragon Rage - Level 14
  (148, 14800, 82, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Dragonair - Agility - Level 21
  (148, 14800, 97, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dragonair - Dragon Tail - Level 28
  (148, 14800, 525, 17, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Dragonair - Slam - Level 40
  (148, 14800, 21, 17, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Dragonair - Outrage - Level 52
  (148, 14800, 200, 17, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Dragonair - Hyper Beam - Level 64
  (148, 14800, 63, 17, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Dragonair - Headbutt - TM01
  (148, 14800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Dragonair - Rest - TM05
  (148, 14800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Dragonair - Light Screen - TM06
  (148, 14800, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Dragonair - Protect - TM07
  (148, 14800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Dragonair - Substitute - TM08
  (148, 14800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Dragonair - Reflect - TM09
  (148, 14800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Dragonair - Facade - TM12
  (148, 14800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Dragonair - Thunder Wave - TM16
  (148, 14800, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 19),
  -- Dragonair - Dragon Tail - TM17
  (148, 14800, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 20),
  -- Dragonair - Iron Tail - TM19
  (148, 14800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Dragonair - Waterfall - TM25
  (148, 14800, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 22),
  -- Dragonair - Toxic - TM27
  (148, 14800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Dragonair - Dragon Pulse - TM34
  (148, 14800, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 24),
  -- Dragonair - Thunderbolt - TM36
  (148, 14800, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Dragonair - Flamethrower - TM37
  (148, 14800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 26),
  -- Dragonair - Thunder - TM38
  (148, 14800, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Dragonair - Outrage - TM39
  (148, 14800, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 28),
  -- Dragonair - Fire Blast - TM46
  (148, 14800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 29),
  -- Dragonair - Surf - TM47
  (148, 14800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 30),
  -- Dragonair - Hyper Beam - TM48
  (148, 14800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 31),
  -- Dragonair - Blizzard - TM51
  (148, 14800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 32),
  -- Dragonair - Ice Beam - TM55
  (148, 14800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Dragonite - Wing Attack - Level 1
  (149, 14900, 17, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Mist - Level 1
  (149, 14900, 54, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Aqua Jet - Level 1
  (149, 14900, 453, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dragonite - Dragon Rage - Level 1
  (149, 14900, 82, 17, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dragonite - Wing Attack - Evolution
  (149, 14900, 17, 17, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Dragonite - Thunder Wave - Level 7
  (149, 14900, 86, 17, NULL, 1, 7, NULL, NULL, NULL, 11),
  -- Dragonite - Dragon Rage - Level 14
  (149, 14900, 82, 17, NULL, 1, 14, NULL, NULL, NULL, 12),
  -- Dragonite - Agility - Level 21
  (149, 14900, 97, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Dragonite - Dragon Tail - Level 28
  (149, 14900, 525, 17, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Dragonite - Slam - Level 40
  (149, 14900, 21, 17, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Dragonite - Outrage - Level 52
  (149, 14900, 200, 17, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Dragonite - Hyper Beam - Level 70
  (149, 14900, 63, 17, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Dragonite - Roost - Level 88
  (149, 14900, 355, 17, NULL, 1, 88, NULL, NULL, NULL, 18),
  -- Dragonite - Headbutt - TM01
  (149, 14900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 19),
  -- Dragonite - Rest - TM05
  (149, 14900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 20),
  -- Dragonite - Light Screen - TM06
  (149, 14900, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 21),
  -- Dragonite - Protect - TM07
  (149, 14900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 22),
  -- Dragonite - Substitute - TM08
  (149, 14900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 23),
  -- Dragonite - Reflect - TM09
  (149, 14900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 24),
  -- Dragonite - Facade - TM12
  (149, 14900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 25),
  -- Dragonite - Brick Break - TM13
  (149, 14900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 26),
  -- Dragonite - Fly - TM14
  (149, 14900, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 27),
  -- Dragonite - Thunder Wave - TM16
  (149, 14900, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 28),
  -- Dragonite - Dragon Tail - TM17
  (149, 14900, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 29),
  -- Dragonite - Iron Tail - TM19
  (149, 14900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 30),
  -- Dragonite - Rock Slide - TM22
  (149, 14900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 31),
  -- Dragonite - Thunder Punch - TM23
  (149, 14900, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 32),
  -- Dragonite - Waterfall - TM25
  (149, 14900, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 33),
  -- Dragonite - Toxic - TM27
  (149, 14900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 34),
  -- Dragonite - Fire Punch - TM31
  (149, 14900, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 35),
  -- Dragonite - Dragon Pulse - TM34
  (149, 14900, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 36),
  -- Dragonite - Ice Punch - TM35
  (149, 14900, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 37),
  -- Dragonite - Thunderbolt - TM36
  (149, 14900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 38),
  -- Dragonite - Flamethrower - TM37
  (149, 14900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 39),
  -- Dragonite - Thunder - TM38
  (149, 14900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 40),
  -- Dragonite - Outrage - TM39
  (149, 14900, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 41),
  -- Dragonite - Earthquake - TM41
  (149, 14900, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 42),
  -- Dragonite - Fire Blast - TM46
  (149, 14900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 43),
  -- Dragonite - Surf - TM47
  (149, 14900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 44),
  -- Dragonite - Hyper Beam - TM48
  (149, 14900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 45),
  -- Dragonite - Superpower - TM49
  (149, 14900, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 46),
  -- Dragonite - Roost - TM50
  (149, 14900, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 47),
  -- Dragonite - Blizzard - TM51
  (149, 14900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 48),
  -- Dragonite - Ice Beam - TM55
  (149, 14900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 49),
  -- Mewtwo - Psywave - Level 1
  (150, 15000, 149, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Confuse Ray - Level 1
  (150, 15000, 109, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mewtwo - Teleport - Level 1
  (150, 15000, 100, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mewtwo - Mist - Level 11
  (150, 15000, 54, 17, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Mewtwo - Psybeam - Level 22
  (150, 15000, 60, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Mewtwo - Swift - Level 33
  (150, 15000, 129, 17, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 44
  (150, 15000, 133, 17, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Mewtwo - Recover - Level 55
  (150, 15000, 105, 17, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Mewtwo - Psychic - Level 66
  (150, 15000, 94, 17, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Mewtwo - Barrier - Level 77
  (150, 15000, 112, 17, NULL, 1, 77, NULL, NULL, NULL, 12),
  -- Mewtwo - Agility - Level 88
  (150, 15000, 97, 17, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Mewtwo - Calm Mind - Level 99
  (150, 15000, 347, 17, NULL, 1, 99, NULL, NULL, NULL, 14),
  -- Mewtwo - Headbutt - TM01
  (150, 15000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Mewtwo - Taunt - TM02
  (150, 15000, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Mewtwo - Teleport - TM04
  (150, 15000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 17),
  -- Mewtwo - Rest - TM05
  (150, 15000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Mewtwo - Light Screen - TM06
  (150, 15000, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Mewtwo - Protect - TM07
  (150, 15000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Mewtwo - Substitute - TM08
  (150, 15000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Mewtwo - Reflect - TM09
  (150, 15000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Mewtwo - Will-O-Wisp - TM11
  (150, 15000, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 23),
  -- Mewtwo - Facade - TM12
  (150, 15000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Mewtwo - Brick Break - TM13
  (150, 15000, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Mewtwo - Seismic Toss - TM15
  (150, 15000, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 26),
  -- Mewtwo - Thunder Wave - TM16
  (150, 15000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 27),
  -- Mewtwo - Iron Tail - TM19
  (150, 15000, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 28),
  -- Mewtwo - Foul Play - TM21
  (150, 15000, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 29),
  -- Mewtwo - Rock Slide - TM22
  (150, 15000, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 30),
  -- Mewtwo - Thunder Punch - TM23
  (150, 15000, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 31),
  -- Mewtwo - Poison Jab - TM26
  (150, 15000, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 32),
  -- Mewtwo - Toxic - TM27
  (150, 15000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 33),
  -- Mewtwo - Tri Attack - TM28
  (150, 15000, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 34),
  -- Mewtwo - Bulk Up - TM30
  (150, 15000, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 35),
  -- Mewtwo - Fire Punch - TM31
  (150, 15000, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 36),
  -- Mewtwo - Calm Mind - TM33
  (150, 15000, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 37),
  -- Mewtwo - Ice Punch - TM35
  (150, 15000, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 38),
  -- Mewtwo - Thunderbolt - TM36
  (150, 15000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 39),
  -- Mewtwo - Flamethrower - TM37
  (150, 15000, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 40),
  -- Mewtwo - Thunder - TM38
  (150, 15000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 41),
  -- Mewtwo - Psychic - TM40
  (150, 15000, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 42),
  -- Mewtwo - Earthquake - TM41
  (150, 15000, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 43),
  -- Mewtwo - Self-Destruct - TM42
  (150, 15000, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 44),
  -- Mewtwo - Shadow Ball - TM43
  (150, 15000, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 45),
  -- Mewtwo - Solar Beam - TM45
  (150, 15000, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 46),
  -- Mewtwo - Fire Blast - TM46
  (150, 15000, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 47),
  -- Mewtwo - Hyper Beam - TM48
  (150, 15000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 48),
  -- Mewtwo - Blizzard - TM51
  (150, 15000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 49),
  -- Mewtwo - Ice Beam - TM55
  (150, 15000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 50),
  -- Mewtwo - Pay Day - TM57
  (150, 15000, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 51),
  -- Mewtwo - Dream Eater - TM59
  (150, 15000, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 52),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Confusion - Level 1
  (151, 15100, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Mimic - Level 1
  (151, 15100, 102, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mew - Swift - Level 11
  (151, 15100, 129, 17, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Mew - Amnesia - Level 22
  (151, 15100, 133, 17, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Mew - Psywave - Level 33
  (151, 15100, 149, 17, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Mew - Barrier - Level 44
  (151, 15100, 112, 17, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Mew - Mega Punch - Level 55
  (151, 15100, 5, 17, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Mew - Metronome - Level 66
  (151, 15100, 118, 17, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Mew - Psychic - Level 77
  (151, 15100, 94, 17, NULL, 1, 77, NULL, NULL, NULL, 10),
  -- Mew - Nasty Plot - Level 88
  (151, 15100, 417, 17, NULL, 1, 88, NULL, NULL, NULL, 11),
  -- Mew - Transform - Level 99
  (151, 15100, 144, 17, NULL, 1, 99, NULL, NULL, NULL, 12),
  -- Mew - Headbutt - TM01
  (151, 15100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Mew - Taunt - TM02
  (151, 15100, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 14),
  -- Mew - Helping Hand - TM03
  (151, 15100, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 15),
  -- Mew - Teleport - TM04
  (151, 15100, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 16),
  -- Mew - Rest - TM05
  (151, 15100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Mew - Light Screen - TM06
  (151, 15100, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 18),
  -- Mew - Protect - TM07
  (151, 15100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Mew - Substitute - TM08
  (151, 15100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Mew - Reflect - TM09
  (151, 15100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 21),
  -- Mew - Dig - TM10
  (151, 15100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 22),
  -- Mew - Will-O-Wisp - TM11
  (151, 15100, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 23),
  -- Mew - Facade - TM12
  (151, 15100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Mew - Brick Break - TM13
  (151, 15100, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Mew - Fly - TM14
  (151, 15100, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 26),
  -- Mew - Seismic Toss - TM15
  (151, 15100, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 27),
  -- Mew - Thunder Wave - TM16
  (151, 15100, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 28),
  -- Mew - Dragon Tail - TM17
  (151, 15100, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 29),
  -- Mew - U-turn - TM18
  (151, 15100, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 30),
  -- Mew - Iron Tail - TM19
  (151, 15100, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 31),
  -- Mew - Dark Pulse - TM20
  (151, 15100, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 32),
  -- Mew - Foul Play - TM21
  (151, 15100, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 33),
  -- Mew - Rock Slide - TM22
  (151, 15100, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 34),
  -- Mew - Thunder Punch - TM23
  (151, 15100, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 35),
  -- Mew - X-Scissor - TM24
  (151, 15100, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 36),
  -- Mew - Waterfall - TM25
  (151, 15100, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 37),
  -- Mew - Poison Jab - TM26
  (151, 15100, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 38),
  -- Mew - Toxic - TM27
  (151, 15100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 39),
  -- Mew - Tri Attack - TM28
  (151, 15100, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 40),
  -- Mew - Scald - TM29
  (151, 15100, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 41),
  -- Mew - Bulk Up - TM30
  (151, 15100, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 42),
  -- Mew - Fire Punch - TM31
  (151, 15100, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 43),
  -- Mew - Dazzling Gleam - TM32
  (151, 15100, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 44),
  -- Mew - Calm Mind - TM33
  (151, 15100, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 45),
  -- Mew - Dragon Pulse - TM34
  (151, 15100, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 46),
  -- Mew - Ice Punch - TM35
  (151, 15100, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 47),
  -- Mew - Thunderbolt - TM36
  (151, 15100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 48),
  -- Mew - Flamethrower - TM37
  (151, 15100, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 49),
  -- Mew - Thunder - TM38
  (151, 15100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 50),
  -- Mew - Outrage - TM39
  (151, 15100, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 51),
  -- Mew - Psychic - TM40
  (151, 15100, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 52),
  -- Mew - Earthquake - TM41
  (151, 15100, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 53),
  -- Mew - Self-Destruct - TM42
  (151, 15100, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 54),
  -- Mew - Shadow Ball - TM43
  (151, 15100, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 55),
  -- Mew - Play Rough - TM44
  (151, 15100, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 56),
  -- Mew - Solar Beam - TM45
  (151, 15100, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 57),
  -- Mew - Fire Blast - TM46
  (151, 15100, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 58),
  -- Mew - Surf - TM47
  (151, 15100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 59),
  -- Mew - Hyper Beam - TM48
  (151, 15100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 60),
  -- Mew - Superpower - TM49
  (151, 15100, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 61),
  -- Mew - Roost - TM50
  (151, 15100, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 62),
  -- Mew - Blizzard - TM51
  (151, 15100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 63),
  -- Mew - Sludge Bomb - TM52
  (151, 15100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 64),
  -- Mew - Mega Drain - TM53
  (151, 15100, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 65),
  -- Mew - Flash Cannon - TM54
  (151, 15100, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 66),
  -- Mew - Ice Beam - TM55
  (151, 15100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 67),
  -- Mew - Stealth Rock - TM56
  (151, 15100, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 68),
  -- Mew - Pay Day - TM57
  (151, 15100, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 69),
  -- Mew - Drill Run - TM58
  (151, 15100, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 70),
  -- Mew - Dream Eater - TM59
  (151, 15100, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 71),
  -- Mew - Megahorn - TM60
  (151, 15100, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 72);
