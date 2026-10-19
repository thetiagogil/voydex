-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen6 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Swords Dance Generation VI
  (14, 6, 1, NULL, NULL, 20, 0, 'status'),
  -- Whirlwind Generation VI
  (18, 6, 1, NULL, NULL, 20, -6, 'status'),
  -- Vine Whip Generation VI
  (22, 6, 5, 45, 100, 25, 0, 'physical'),
  -- Pin Missile Generation VI
  (42, 6, 12, 25, 95, 20, 0, 'physical'),
  -- Roar Generation VI
  (46, 6, 1, NULL, NULL, 20, -6, 'status'),
  -- Flamethrower Generation VI
  (53, 6, 2, 90, 100, 15, 0, 'special'),
  -- Hydro Pump Generation VI
  (56, 6, 3, 110, 80, 5, 0, 'special'),
  -- Surf Generation VI
  (57, 6, 3, 90, 100, 15, 0, 'special'),
  -- Ice Beam Generation VI
  (58, 6, 6, 90, 100, 10, 0, 'special'),
  -- Blizzard Generation VI
  (59, 6, 6, 110, 70, 5, 0, 'special'),
  -- Submission Generation VI
  (66, 6, 7, 80, 80, 20, 0, 'physical'),
  -- Growth Generation VI
  (74, 6, 1, NULL, NULL, 20, 0, 'status'),
  -- Thunderbolt Generation VI
  (85, 6, 4, 90, 100, 15, 0, 'special'),
  -- Thunder Generation VI
  (87, 6, 4, 110, 70, 10, 0, 'special'),
  -- Minimize Generation VI
  (107, 6, 1, NULL, NULL, 10, 0, 'status'),
  -- Barrier Generation VI
  (112, 6, 11, NULL, NULL, 20, 0, 'status'),
  -- Lick Generation VI
  (122, 6, 14, 30, 100, 30, 0, 'physical'),
  -- Smog Generation VI
  (123, 6, 8, 30, 70, 20, 0, 'special'),
  -- Fire Blast Generation VI
  (126, 6, 2, 110, 85, 5, 0, 'special'),
  -- Skull Bash Generation VI
  (130, 6, 1, 130, 100, 10, 0, 'physical'),
  -- Glare Generation VI
  (137, 6, 1, NULL, 100, 30, 0, 'status'),
  -- Poison Gas Generation VI
  (139, 6, 8, NULL, 90, 40, 0, 'status'),
  -- Bubble Generation VI
  (145, 6, 3, 40, 100, 30, 0, 'special'),
  -- Psywave Generation VI
  (149, 6, 11, NULL, 100, 15, 0, 'special'),
  -- Acid Armor Generation VI
  (151, 6, 8, NULL, NULL, 20, 0, 'status'),
  -- Crabhammer Generation VI
  (152, 6, 3, 100, 90, 10, 0, 'physical'),
  -- Thief Generation VI
  (168, 6, 16, 60, 100, 25, 0, 'physical'),
  -- Snore Generation VI
  (173, 6, 1, 50, 100, 15, 0, 'special'),
  -- Sweet Kiss Generation VI
  (186, 6, 18, NULL, 75, 10, 0, 'status'),
  -- Charm Generation VI
  (204, 6, 18, NULL, 100, 20, 0, 'status'),
  -- Fury Cutter Generation VI
  (210, 6, 12, 40, 95, 20, 0, 'physical'),
  -- Moonlight Generation VI
  (236, 6, 18, NULL, NULL, 5, 0, 'status'),
  -- Hidden Power Generation VI
  (237, 6, 1, 60, 100, 15, 0, 'special'),
  -- Future Sight Generation VI
  (248, 6, 11, 120, 100, 10, 0, 'special'),
  -- Heat Wave Generation VI
  (257, 6, 2, 95, 90, 10, 0, 'special'),
  -- Will-O-Wisp Generation VI
  (261, 6, 2, NULL, 85, 15, 0, 'status'),
  -- Smelling Salts Generation VI
  (265, 6, 1, 70, 100, 10, 0, 'physical'),
  -- Knock Off Generation VI
  (282, 6, 16, 65, 100, 20, 0, 'physical'),
  -- Meteor Mash Generation VI
  (309, 6, 17, 90, 90, 10, 0, 'physical'),
  -- Air Cutter Generation VI
  (314, 6, 10, 60, 95, 25, 0, 'special'),
  -- Overheat Generation VI
  (315, 6, 2, 130, 90, 5, 0, 'special'),
  -- Rock Tomb Generation VI
  (317, 6, 13, 60, 95, 15, 0, 'physical'),
  -- Extrasensory Generation VI
  (326, 6, 11, 80, 100, 20, 0, 'special'),
  -- Muddy Water Generation VI
  (330, 6, 3, 90, 85, 10, 0, 'special'),
  -- Covet Generation VI
  (343, 6, 1, 60, 100, 25, 0, 'physical'),
  -- Wake-Up Slap Generation VI
  (358, 6, 7, 70, 100, 10, 0, 'physical'),
  -- Tailwind Generation VI
  (366, 6, 10, NULL, NULL, 15, 0, 'status'),
  -- Assurance Generation VI
  (372, 6, 16, 60, 100, 10, 0, 'physical'),
  -- Psycho Shift Generation VI
  (375, 6, 11, NULL, 100, 10, 0, 'status'),
  -- Aura Sphere Generation VI
  (396, 6, 7, 80, NULL, 20, 0, 'special'),
  -- Air Slash Generation VI
  (403, 6, 10, 75, 95, 15, 0, 'special'),
  -- Dragon Pulse Generation VI
  (406, 6, 15, 85, 100, 10, 0, 'special'),
  -- Power Gem Generation VI
  (408, 6, 13, 80, 100, 20, 0, 'special'),
  -- Energy Ball Generation VI
  (412, 6, 5, 90, 100, 10, 0, 'special'),
  -- Draco Meteor Generation VI
  (434, 6, 15, 130, 90, 5, 0, 'special'),
  -- Leaf Storm Generation VI
  (437, 6, 5, 130, 90, 5, 0, 'special'),
  -- Gunk Shot Generation VI
  (441, 6, 8, 120, 80, 5, 0, 'physical'),
  -- Chatter Generation VI
  (448, 6, 10, 65, 100, 20, 0, 'special'),
  -- Magma Storm Generation VI
  (463, 6, 2, 100, 75, 5, 0, 'special'),
  -- Storm Throw Generation VI
  (480, 6, 7, 60, 100, 10, 0, 'physical'),
  -- Synchronoise Generation VI
  (485, 6, 11, 120, 100, 10, 0, 'special'),
  -- Low Sweep Generation VI
  (490, 6, 7, 65, 100, 20, 0, 'physical'),
  -- Hex Generation VI
  (506, 6, 14, 65, 100, 10, 0, 'special'),
  -- Incinerate Generation VI
  (510, 6, 2, 60, 100, 15, 0, 'special'),
  -- Water Pledge Generation VI
  (518, 6, 3, 80, 100, 10, 0, 'special'),
  -- Fire Pledge Generation VI
  (519, 6, 2, 80, 100, 10, 0, 'special'),
  -- Grass Pledge Generation VI
  (520, 6, 5, 80, 100, 10, 0, 'special'),
  -- Struggle Bug Generation VI
  (522, 6, 12, 50, 100, 20, 0, 'special'),
  -- Frost Breath Generation VI
  (524, 6, 6, 60, 90, 10, 0, 'special'),
  -- Sacred Sword Generation VI
  (533, 6, 7, 90, 100, 15, 0, 'physical'),
  -- Hurricane Generation VI
  (542, 6, 10, 110, 70, 10, 0, 'special'),
  -- Techno Blast Generation VI
  (546, 6, 1, 120, 100, 5, 0, 'special');
