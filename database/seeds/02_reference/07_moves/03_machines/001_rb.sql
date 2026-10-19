-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation I Pokémon learnset raw pages, using Red / Blue
-- TM/HM compatibility rows to derive the machine catalog.
-- Cross-check: Serebii Gen I TM/HM list and PokemonDB Generation 1 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Red / Blue
-- Rows: 55
-- Scope: Red / Blue TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Mega Punch
  (1002001, 5, 1, NULL, 2, 'TM01', 1),
  -- TM02 Razor Wind
  (1002002, 13, 1, NULL, 2, 'TM02', 2),
  -- TM03 Swords Dance
  (1002003, 14, 1, NULL, 2, 'TM03', 3),
  -- TM04 Whirlwind
  (1002004, 18, 1, NULL, 2, 'TM04', 4),
  -- TM05 Mega Kick
  (1002005, 25, 1, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (1002006, 92, 1, NULL, 2, 'TM06', 6),
  -- TM07 Horn Drill
  (1002007, 32, 1, NULL, 2, 'TM07', 7),
  -- TM08 Body Slam
  (1002008, 34, 1, NULL, 2, 'TM08', 8),
  -- TM09 Take Down
  (1002009, 36, 1, NULL, 2, 'TM09', 9),
  -- TM10 Double-Edge
  (1002010, 38, 1, NULL, 2, 'TM10', 10),
  -- TM11 Bubble Beam
  (1002011, 61, 1, NULL, 2, 'TM11', 11),
  -- TM12 Water Gun
  (1002012, 55, 1, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (1002013, 58, 1, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (1002014, 59, 1, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (1002015, 63, 1, NULL, 2, 'TM15', 15),
  -- TM16 Pay Day
  (1002016, 6, 1, NULL, 2, 'TM16', 16),
  -- TM17 Submission
  (1002017, 66, 1, NULL, 2, 'TM17', 17),
  -- TM18 Counter
  (1002018, 68, 1, NULL, 2, 'TM18', 18),
  -- TM19 Seismic Toss
  (1002019, 69, 1, NULL, 2, 'TM19', 19),
  -- TM20 Rage
  (1002020, 99, 1, NULL, 2, 'TM20', 20),
  -- TM21 Mega Drain
  (1002021, 72, 1, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (1002022, 76, 1, NULL, 2, 'TM22', 22),
  -- TM23 Dragon Rage
  (1002023, 82, 1, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (1002024, 85, 1, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (1002025, 87, 1, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (1002026, 89, 1, NULL, 2, 'TM26', 26),
  -- TM27 Fissure
  (1002027, 90, 1, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (1002028, 91, 1, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (1002029, 94, 1, NULL, 2, 'TM29', 29),
  -- TM30 Teleport
  (1002030, 100, 1, NULL, 2, 'TM30', 30),
  -- TM31 Mimic
  (1002031, 102, 1, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (1002032, 104, 1, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (1002033, 115, 1, NULL, 2, 'TM33', 33),
  -- TM34 Bide
  (1002034, 117, 1, NULL, 2, 'TM34', 34),
  -- TM35 Metronome
  (1002035, 118, 1, NULL, 2, 'TM35', 35),
  -- TM36 Self-Destruct
  (1002036, 120, 1, NULL, 2, 'TM36', 36),
  -- TM37 Egg Bomb
  (1002037, 121, 1, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (1002038, 126, 1, NULL, 2, 'TM38', 38),
  -- TM39 Swift
  (1002039, 129, 1, NULL, 2, 'TM39', 39),
  -- TM40 Skull Bash
  (1002040, 130, 1, NULL, 2, 'TM40', 40),
  -- TM41 Soft-Boiled
  (1002041, 135, 1, NULL, 2, 'TM41', 41),
  -- TM42 Dream Eater
  (1002042, 138, 1, NULL, 2, 'TM42', 42),
  -- TM43 Sky Attack
  (1002043, 143, 1, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (1002044, 156, 1, NULL, 2, 'TM44', 44),
  -- TM45 Thunder Wave
  (1002045, 86, 1, NULL, 2, 'TM45', 45),
  -- TM46 Psywave
  (1002046, 149, 1, NULL, 2, 'TM46', 46),
  -- TM47 Explosion
  (1002047, 153, 1, NULL, 2, 'TM47', 47),
  -- TM48 Rock Slide
  (1002048, 157, 1, NULL, 2, 'TM48', 48),
  -- TM49 Tri Attack
  (1002049, 161, 1, NULL, 2, 'TM49', 49),
  -- TM50 Substitute
  (1002050, 164, 1, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (1003001, 15, 1, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (1003002, 19, 1, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (1003003, 57, 1, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (1003004, 70, 1, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (1003005, 148, 1, NULL, 3, 'HM05', 55);
