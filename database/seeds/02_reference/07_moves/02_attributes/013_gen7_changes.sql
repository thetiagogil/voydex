-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen7 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Swords Dance Generation VII
  (14, 7, 1, NULL, NULL, 20, 0, 'status'),
  -- Whirlwind Generation VII
  (18, 7, 1, NULL, NULL, 20, -6, 'status'),
  -- Vine Whip Generation VII
  (22, 7, 5, 45, 100, 25, 0, 'physical'),
  -- Pin Missile Generation VII
  (42, 7, 12, 25, 95, 20, 0, 'physical'),
  -- Roar Generation VII
  (46, 7, 1, NULL, NULL, 20, -6, 'status'),
  -- Flamethrower Generation VII
  (53, 7, 2, 90, 100, 15, 0, 'special'),
  -- Hydro Pump Generation VII
  (56, 7, 3, 110, 80, 5, 0, 'special'),
  -- Surf Generation VII
  (57, 7, 3, 90, 100, 15, 0, 'special'),
  -- Ice Beam Generation VII
  (58, 7, 6, 90, 100, 10, 0, 'special'),
  -- Blizzard Generation VII
  (59, 7, 6, 110, 70, 5, 0, 'special'),
  -- Submission Generation VII
  (66, 7, 7, 80, 80, 20, 0, 'physical'),
  -- Growth Generation VII
  (74, 7, 1, NULL, NULL, 20, 0, 'status'),
  -- Thunderbolt Generation VII
  (85, 7, 4, 90, 100, 15, 0, 'special'),
  -- Thunder Generation VII
  (87, 7, 4, 110, 70, 10, 0, 'special'),
  -- Minimize Generation VII
  (107, 7, 1, NULL, NULL, 10, 0, 'status'),
  -- Barrier Generation VII
  (112, 7, 11, NULL, NULL, 20, 0, 'status'),
  -- Lick Generation VII
  (122, 7, 14, 30, 100, 30, 0, 'physical'),
  -- Smog Generation VII
  (123, 7, 8, 30, 70, 20, 0, 'special'),
  -- Fire Blast Generation VII
  (126, 7, 2, 110, 85, 5, 0, 'special'),
  -- Skull Bash Generation VII
  (130, 7, 1, 130, 100, 10, 0, 'physical'),
  -- Glare Generation VII
  (137, 7, 1, NULL, 100, 30, 0, 'status'),
  -- Poison Gas Generation VII
  (139, 7, 8, NULL, 90, 40, 0, 'status'),
  -- Bubble Generation VII
  (145, 7, 3, 40, 100, 30, 0, 'special'),
  -- Psywave Generation VII
  (149, 7, 11, NULL, 100, 15, 0, 'special'),
  -- Acid Armor Generation VII
  (151, 7, 8, NULL, NULL, 20, 0, 'status'),
  -- Crabhammer Generation VII
  (152, 7, 3, 100, 90, 10, 0, 'physical'),
  -- Thief Generation VII
  (168, 7, 16, 60, 100, 25, 0, 'physical'),
  -- Snore Generation VII
  (173, 7, 1, 50, 100, 15, 0, 'special'),
  -- Sweet Kiss Generation VII
  (186, 7, 18, NULL, 75, 10, 0, 'status'),
  -- Charm Generation VII
  (204, 7, 18, NULL, 100, 20, 0, 'status'),
  -- Fury Cutter Generation VII
  (210, 7, 12, 40, 95, 20, 0, 'physical'),
  -- Moonlight Generation VII
  (236, 7, 18, NULL, NULL, 5, 0, 'status'),
  -- Hidden Power Generation VII
  (237, 7, 1, 60, 100, 15, 0, 'special'),
  -- Future Sight Generation VII
  (248, 7, 11, 120, 100, 10, 0, 'special'),
  -- Heat Wave Generation VII
  (257, 7, 2, 95, 90, 10, 0, 'special'),
  -- Will-O-Wisp Generation VII
  (261, 7, 2, NULL, 85, 15, 0, 'status'),
  -- Smelling Salts Generation VII
  (265, 7, 1, 70, 100, 10, 0, 'physical'),
  -- Knock Off Generation VII
  (282, 7, 16, 65, 100, 20, 0, 'physical'),
  -- Meteor Mash Generation VII
  (309, 7, 17, 90, 90, 10, 0, 'physical'),
  -- Air Cutter Generation VII
  (314, 7, 10, 60, 95, 25, 0, 'special'),
  -- Overheat Generation VII
  (315, 7, 2, 130, 90, 5, 0, 'special'),
  -- Rock Tomb Generation VII
  (317, 7, 13, 60, 95, 15, 0, 'physical'),
  -- Extrasensory Generation VII
  (326, 7, 11, 80, 100, 20, 0, 'special'),
  -- Muddy Water Generation VII
  (330, 7, 3, 90, 85, 10, 0, 'special'),
  -- Covet Generation VII
  (343, 7, 1, 60, 100, 25, 0, 'physical'),
  -- Wake-Up Slap Generation VII
  (358, 7, 7, 70, 100, 10, 0, 'physical'),
  -- Tailwind Generation VII
  (366, 7, 10, NULL, NULL, 15, 0, 'status'),
  -- Assurance Generation VII
  (372, 7, 16, 60, 100, 10, 0, 'physical'),
  -- Psycho Shift Generation VII
  (375, 7, 11, NULL, 100, 10, 0, 'status'),
  -- Aura Sphere Generation VII
  (396, 7, 7, 80, NULL, 20, 0, 'special'),
  -- Air Slash Generation VII
  (403, 7, 10, 75, 95, 15, 0, 'special'),
  -- Dragon Pulse Generation VII
  (406, 7, 15, 85, 100, 10, 0, 'special'),
  -- Power Gem Generation VII
  (408, 7, 13, 80, 100, 20, 0, 'special'),
  -- Energy Ball Generation VII
  (412, 7, 5, 90, 100, 10, 0, 'special'),
  -- Draco Meteor Generation VII
  (434, 7, 15, 130, 90, 5, 0, 'special'),
  -- Leaf Storm Generation VII
  (437, 7, 5, 130, 90, 5, 0, 'special'),
  -- Gunk Shot Generation VII
  (441, 7, 8, 120, 80, 5, 0, 'physical'),
  -- Chatter Generation VII
  (448, 7, 10, 65, 100, 20, 0, 'special'),
  -- Magma Storm Generation VII
  (463, 7, 2, 100, 75, 5, 0, 'special'),
  -- Storm Throw Generation VII
  (480, 7, 7, 60, 100, 10, 0, 'physical'),
  -- Synchronoise Generation VII
  (485, 7, 11, 120, 100, 10, 0, 'special'),
  -- Low Sweep Generation VII
  (490, 7, 7, 65, 100, 20, 0, 'physical'),
  -- Hex Generation VII
  (506, 7, 14, 65, 100, 10, 0, 'special'),
  -- Incinerate Generation VII
  (510, 7, 2, 60, 100, 15, 0, 'special'),
  -- Water Pledge Generation VII
  (518, 7, 3, 80, 100, 10, 0, 'special'),
  -- Fire Pledge Generation VII
  (519, 7, 2, 80, 100, 10, 0, 'special'),
  -- Grass Pledge Generation VII
  (520, 7, 5, 80, 100, 10, 0, 'special'),
  -- Struggle Bug Generation VII
  (522, 7, 12, 50, 100, 20, 0, 'special'),
  -- Frost Breath Generation VII
  (524, 7, 6, 60, 90, 10, 0, 'special'),
  -- Sacred Sword Generation VII
  (533, 7, 7, 90, 100, 15, 0, 'physical'),
  -- Hurricane Generation VII
  (542, 7, 10, 110, 70, 10, 0, 'special'),
  -- Techno Blast Generation VII
  (546, 7, 1, 120, 100, 5, 0, 'special');
