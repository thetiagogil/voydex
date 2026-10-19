-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII TM catalog for Let's Go, Pikachu! / Let's Go, Eevee!.
-- Cross-check: Serebii Let's Go TM list and PokemonDB Let's Go move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Let's Go, Pikachu! / Let's Go, Eevee!
-- Rows: 60
-- Scope: Let's Go TM catalog used by machine learnset rows.
-- Let's Go has 60 TMs and no HMs; field Secret Techniques are not Pokémon move machines.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Headbutt
  (17002001, 29, 17, NULL, 2, 'TM01', 1),
  -- TM02 Taunt
  (17002002, 269, 17, NULL, 2, 'TM02', 2),
  -- TM03 Helping Hand
  (17002003, 270, 17, NULL, 2, 'TM03', 3),
  -- TM04 Teleport
  (17002004, 100, 17, NULL, 2, 'TM04', 4),
  -- TM05 Rest
  (17002005, 156, 17, NULL, 2, 'TM05', 5),
  -- TM06 Light Screen
  (17002006, 113, 17, NULL, 2, 'TM06', 6),
  -- TM07 Protect
  (17002007, 182, 17, NULL, 2, 'TM07', 7),
  -- TM08 Substitute
  (17002008, 164, 17, NULL, 2, 'TM08', 8),
  -- TM09 Reflect
  (17002009, 115, 17, NULL, 2, 'TM09', 9),
  -- TM10 Dig
  (17002010, 91, 17, NULL, 2, 'TM10', 10),
  -- TM11 Will-O-Wisp
  (17002011, 261, 17, NULL, 2, 'TM11', 11),
  -- TM12 Facade
  (17002012, 263, 17, NULL, 2, 'TM12', 12),
  -- TM13 Brick Break
  (17002013, 280, 17, NULL, 2, 'TM13', 13),
  -- TM14 Fly
  (17002014, 19, 17, NULL, 2, 'TM14', 14),
  -- TM15 Seismic Toss
  (17002015, 69, 17, NULL, 2, 'TM15', 15),
  -- TM16 Thunder Wave
  (17002016, 86, 17, NULL, 2, 'TM16', 16),
  -- TM17 Dragon Tail
  (17002017, 525, 17, NULL, 2, 'TM17', 17),
  -- TM18 U-turn
  (17002018, 369, 17, NULL, 2, 'TM18', 18),
  -- TM19 Iron Tail
  (17002019, 231, 17, NULL, 2, 'TM19', 19),
  -- TM20 Dark Pulse
  (17002020, 399, 17, NULL, 2, 'TM20', 20),
  -- TM21 Foul Play
  (17002021, 492, 17, NULL, 2, 'TM21', 21),
  -- TM22 Rock Slide
  (17002022, 157, 17, NULL, 2, 'TM22', 22),
  -- TM23 Thunder Punch
  (17002023, 9, 17, NULL, 2, 'TM23', 23),
  -- TM24 X-Scissor
  (17002024, 404, 17, NULL, 2, 'TM24', 24),
  -- TM25 Waterfall
  (17002025, 127, 17, NULL, 2, 'TM25', 25),
  -- TM26 Poison Jab
  (17002026, 398, 17, NULL, 2, 'TM26', 26),
  -- TM27 Toxic
  (17002027, 92, 17, NULL, 2, 'TM27', 27),
  -- TM28 Tri Attack
  (17002028, 161, 17, NULL, 2, 'TM28', 28),
  -- TM29 Scald
  (17002029, 503, 17, NULL, 2, 'TM29', 29),
  -- TM30 Bulk Up
  (17002030, 339, 17, NULL, 2, 'TM30', 30),
  -- TM31 Fire Punch
  (17002031, 7, 17, NULL, 2, 'TM31', 31),
  -- TM32 Dazzling Gleam
  (17002032, 605, 17, NULL, 2, 'TM32', 32),
  -- TM33 Calm Mind
  (17002033, 347, 17, NULL, 2, 'TM33', 33),
  -- TM34 Dragon Pulse
  (17002034, 406, 17, NULL, 2, 'TM34', 34),
  -- TM35 Ice Punch
  (17002035, 8, 17, NULL, 2, 'TM35', 35),
  -- TM36 Thunderbolt
  (17002036, 85, 17, NULL, 2, 'TM36', 36),
  -- TM37 Flamethrower
  (17002037, 53, 17, NULL, 2, 'TM37', 37),
  -- TM38 Thunder
  (17002038, 87, 17, NULL, 2, 'TM38', 38),
  -- TM39 Outrage
  (17002039, 200, 17, NULL, 2, 'TM39', 39),
  -- TM40 Psychic
  (17002040, 94, 17, NULL, 2, 'TM40', 40),
  -- TM41 Earthquake
  (17002041, 89, 17, NULL, 2, 'TM41', 41),
  -- TM42 Self-Destruct
  (17002042, 120, 17, NULL, 2, 'TM42', 42),
  -- TM43 Shadow Ball
  (17002043, 247, 17, NULL, 2, 'TM43', 43),
  -- TM44 Play Rough
  (17002044, 583, 17, NULL, 2, 'TM44', 44),
  -- TM45 Solar Beam
  (17002045, 76, 17, NULL, 2, 'TM45', 45),
  -- TM46 Fire Blast
  (17002046, 126, 17, NULL, 2, 'TM46', 46),
  -- TM47 Surf
  (17002047, 57, 17, NULL, 2, 'TM47', 47),
  -- TM48 Hyper Beam
  (17002048, 63, 17, NULL, 2, 'TM48', 48),
  -- TM49 Superpower
  (17002049, 276, 17, NULL, 2, 'TM49', 49),
  -- TM50 Roost
  (17002050, 355, 17, NULL, 2, 'TM50', 50),
  -- TM51 Blizzard
  (17002051, 59, 17, NULL, 2, 'TM51', 51),
  -- TM52 Sludge Bomb
  (17002052, 188, 17, NULL, 2, 'TM52', 52),
  -- TM53 Mega Drain
  (17002053, 72, 17, NULL, 2, 'TM53', 53),
  -- TM54 Flash Cannon
  (17002054, 430, 17, NULL, 2, 'TM54', 54),
  -- TM55 Ice Beam
  (17002055, 58, 17, NULL, 2, 'TM55', 55),
  -- TM56 Stealth Rock
  (17002056, 446, 17, NULL, 2, 'TM56', 56),
  -- TM57 Pay Day
  (17002057, 6, 17, NULL, 2, 'TM57', 57),
  -- TM58 Drill Run
  (17002058, 529, 17, NULL, 2, 'TM58', 58),
  -- TM59 Dream Eater
  (17002059, 138, 17, NULL, 2, 'TM59', 59),
  -- TM60 Megahorn
  (17002060, 224, 17, NULL, 2, 'TM60', 60);
