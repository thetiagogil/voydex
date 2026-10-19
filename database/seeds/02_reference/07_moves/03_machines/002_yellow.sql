-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation I TM/HM catalog; the catalog is consistent
-- across Red / Blue and Yellow.
-- Cross-check: Serebii Gen I TM/HM list and PokemonDB Generation 1 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Yellow
-- Rows: 55
-- Scope: Yellow TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Mega Punch
  (2002001, 5, 2, NULL, 2, 'TM01', 1),
  -- TM02 Razor Wind
  (2002002, 13, 2, NULL, 2, 'TM02', 2),
  -- TM03 Swords Dance
  (2002003, 14, 2, NULL, 2, 'TM03', 3),
  -- TM04 Whirlwind
  (2002004, 18, 2, NULL, 2, 'TM04', 4),
  -- TM05 Mega Kick
  (2002005, 25, 2, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (2002006, 92, 2, NULL, 2, 'TM06', 6),
  -- TM07 Horn Drill
  (2002007, 32, 2, NULL, 2, 'TM07', 7),
  -- TM08 Body Slam
  (2002008, 34, 2, NULL, 2, 'TM08', 8),
  -- TM09 Take Down
  (2002009, 36, 2, NULL, 2, 'TM09', 9),
  -- TM10 Double-Edge
  (2002010, 38, 2, NULL, 2, 'TM10', 10),
  -- TM11 Bubble Beam
  (2002011, 61, 2, NULL, 2, 'TM11', 11),
  -- TM12 Water Gun
  (2002012, 55, 2, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (2002013, 58, 2, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (2002014, 59, 2, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (2002015, 63, 2, NULL, 2, 'TM15', 15),
  -- TM16 Pay Day
  (2002016, 6, 2, NULL, 2, 'TM16', 16),
  -- TM17 Submission
  (2002017, 66, 2, NULL, 2, 'TM17', 17),
  -- TM18 Counter
  (2002018, 68, 2, NULL, 2, 'TM18', 18),
  -- TM19 Seismic Toss
  (2002019, 69, 2, NULL, 2, 'TM19', 19),
  -- TM20 Rage
  (2002020, 99, 2, NULL, 2, 'TM20', 20),
  -- TM21 Mega Drain
  (2002021, 72, 2, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (2002022, 76, 2, NULL, 2, 'TM22', 22),
  -- TM23 Dragon Rage
  (2002023, 82, 2, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (2002024, 85, 2, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (2002025, 87, 2, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (2002026, 89, 2, NULL, 2, 'TM26', 26),
  -- TM27 Fissure
  (2002027, 90, 2, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (2002028, 91, 2, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (2002029, 94, 2, NULL, 2, 'TM29', 29),
  -- TM30 Teleport
  (2002030, 100, 2, NULL, 2, 'TM30', 30),
  -- TM31 Mimic
  (2002031, 102, 2, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (2002032, 104, 2, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (2002033, 115, 2, NULL, 2, 'TM33', 33),
  -- TM34 Bide
  (2002034, 117, 2, NULL, 2, 'TM34', 34),
  -- TM35 Metronome
  (2002035, 118, 2, NULL, 2, 'TM35', 35),
  -- TM36 Self-Destruct
  (2002036, 120, 2, NULL, 2, 'TM36', 36),
  -- TM37 Egg Bomb
  (2002037, 121, 2, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (2002038, 126, 2, NULL, 2, 'TM38', 38),
  -- TM39 Swift
  (2002039, 129, 2, NULL, 2, 'TM39', 39),
  -- TM40 Skull Bash
  (2002040, 130, 2, NULL, 2, 'TM40', 40),
  -- TM41 Soft-Boiled
  (2002041, 135, 2, NULL, 2, 'TM41', 41),
  -- TM42 Dream Eater
  (2002042, 138, 2, NULL, 2, 'TM42', 42),
  -- TM43 Sky Attack
  (2002043, 143, 2, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (2002044, 156, 2, NULL, 2, 'TM44', 44),
  -- TM45 Thunder Wave
  (2002045, 86, 2, NULL, 2, 'TM45', 45),
  -- TM46 Psywave
  (2002046, 149, 2, NULL, 2, 'TM46', 46),
  -- TM47 Explosion
  (2002047, 153, 2, NULL, 2, 'TM47', 47),
  -- TM48 Rock Slide
  (2002048, 157, 2, NULL, 2, 'TM48', 48),
  -- TM49 Tri Attack
  (2002049, 161, 2, NULL, 2, 'TM49', 49),
  -- TM50 Substitute
  (2002050, 164, 2, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (2003001, 15, 2, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (2003002, 19, 2, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (2003003, 57, 2, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (2003004, 70, 2, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (2003005, 148, 2, NULL, 3, 'HM05', 55);
