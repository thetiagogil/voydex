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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Swords Dance Generation VI
  (14, 6, 1, NULL, NULL, 20, 0, 'status', 'Raises the user''s Attack by two stages.'),
  -- Whirlwind Generation VI
  (18, 6, 1, NULL, NULL, 20, -6, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Vine Whip Generation VI
  (22, 6, 5, 45, 100, 25, 0, 'physical', 'A plain attack with no added effect.'),
  -- Pin Missile Generation VI
  (42, 6, 12, 25, 95, 20, 0, 'physical', 'Hits two to five times in a row.'),
  -- Roar Generation VI
  (46, 6, 1, NULL, NULL, 20, -6, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Flamethrower Generation VI
  (53, 6, 2, 90, 100, 15, 0, 'special', 'May burn the target (10% chance).'),
  -- Hydro Pump Generation VI
  (56, 6, 3, 110, 80, 5, 0, 'special', 'A plain attack with no added effect.'),
  -- Surf Generation VI
  (57, 6, 3, 90, 100, 15, 0, 'special', 'A plain attack with no added effect.'),
  -- Ice Beam Generation VI
  (58, 6, 6, 90, 100, 10, 0, 'special', 'May freeze the target (10% chance).'),
  -- Blizzard Generation VI
  (59, 6, 6, 110, 70, 5, 0, 'special', 'May freeze the target (10% chance); never misses in hail or snow.'),
  -- Submission Generation VI
  (66, 6, 7, 80, 80, 20, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Growth Generation VI
  (74, 6, 1, NULL, NULL, 20, 0, 'status', 'Raises the user''s Attack and Sp. Atk by one stage, or by two in harsh sunlight.'),
  -- Thunderbolt Generation VI
  (85, 6, 4, 90, 100, 15, 0, 'special', 'May paralyze the target (10% chance).'),
  -- Thunder Generation VI
  (87, 6, 4, 110, 70, 10, 0, 'special', 'May paralyze the target (30% chance) and never misses in rain.'),
  -- Minimize Generation VI
  (107, 6, 1, NULL, NULL, 10, 0, 'status', 'Raises the user''s evasion by two stages.'),
  -- Barrier Generation VI
  (112, 6, 11, NULL, NULL, 20, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Lick Generation VI
  (122, 6, 14, 30, 100, 30, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Smog Generation VI
  (123, 6, 8, 30, 70, 20, 0, 'special', 'May poison the target (40% chance).'),
  -- Fire Blast Generation VI
  (126, 6, 2, 110, 85, 5, 0, 'special', 'May burn the target (10% chance).'),
  -- Skull Bash Generation VI
  (130, 6, 1, 130, 100, 10, 0, 'physical', 'Raises the user''s Defense by one stage on the first turn and strikes on the second.'),
  -- Glare Generation VI
  (137, 6, 1, NULL, 100, 30, 0, 'status', 'Paralyzes the target.'),
  -- Poison Gas Generation VI
  (139, 6, 8, NULL, 90, 40, 0, 'status', 'Poisons the target.'),
  -- Bubble Generation VI
  (145, 6, 3, 40, 100, 30, 0, 'special', 'May lower the target''s Speed by one stage (10% chance).'),
  -- Psywave Generation VI
  (149, 6, 11, NULL, 100, 15, 0, 'special', 'Deals random damage between half and one and a half times the user''s level.'),
  -- Acid Armor Generation VI
  (151, 6, 8, NULL, NULL, 20, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Crabhammer Generation VI
  (152, 6, 3, 100, 90, 10, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Thief Generation VI
  (168, 6, 16, 60, 100, 25, 0, 'physical', 'Steals the target''s held item if the user holds none.'),
  -- Snore Generation VI
  (173, 6, 1, 50, 100, 15, 0, 'special', 'Usable only while asleep; may make the target flinch (30% chance).'),
  -- Sweet Kiss Generation VI
  (186, 6, 18, NULL, 75, 10, 0, 'status', 'Confuses the target.'),
  -- Charm Generation VI
  (204, 6, 18, NULL, 100, 20, 0, 'status', 'Lowers the target''s Attack by two stages.'),
  -- Fury Cutter Generation VI
  (210, 6, 12, 40, 95, 20, 0, 'physical', 'Doubles in power each time it hits in a row.'),
  -- Moonlight Generation VI
  (236, 6, 18, NULL, NULL, 5, 0, 'status', 'Restores the user''s HP, healing more in harsh sunlight and less in rain or sand.'),
  -- Hidden Power Generation VI
  (237, 6, 1, 60, 100, 15, 0, 'special', 'Its type depends on the user''s individual values; power is fixed at 60.'),
  -- Future Sight Generation VI
  (248, 6, 11, 120, 100, 10, 0, 'special', 'Strikes the target two turns after it is used.'),
  -- Heat Wave Generation VI
  (257, 6, 2, 95, 90, 10, 0, 'special', 'May burn the target (10% chance).'),
  -- Will-O-Wisp Generation VI
  (261, 6, 2, NULL, 85, 15, 0, 'status', 'Burns the target.'),
  -- Smelling Salts Generation VI
  (265, 6, 1, 70, 100, 10, 0, 'physical', 'Doubles in power against a paralyzed target, then cures its paralysis.'),
  -- Knock Off Generation VI
  (282, 6, 16, 65, 100, 20, 0, 'physical', 'Knocks off the target''s held item, dealing 50% more damage when it has one.'),
  -- Meteor Mash Generation VI
  (309, 6, 17, 90, 90, 10, 0, 'physical', 'May raise the user''s Attack by one stage (20% chance).'),
  -- Air Cutter Generation VI
  (314, 6, 10, 60, 95, 25, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Overheat Generation VI
  (315, 6, 2, 130, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Rock Tomb Generation VI
  (317, 6, 13, 60, 95, 15, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Extrasensory Generation VI
  (326, 6, 11, 80, 100, 20, 0, 'special', 'May make the target flinch (10% chance).'),
  -- Muddy Water Generation VI
  (330, 6, 3, 90, 85, 10, 0, 'special', 'May lower the target''s accuracy by one stage (30% chance).'),
  -- Covet Generation VI
  (343, 6, 1, 60, 100, 25, 0, 'physical', 'Steals the target''s held item if the user holds none.'),
  -- Wake-Up Slap Generation VI
  (358, 6, 7, 70, 100, 10, 0, 'physical', 'Doubles in power against a sleeping target, then wakes it up.'),
  -- Tailwind Generation VI
  (366, 6, 10, NULL, NULL, 15, 0, 'status', 'Doubles the Speed of the user''s side for four turns.'),
  -- Assurance Generation VI
  (372, 6, 16, 60, 100, 10, 0, 'physical', 'Doubles in power if the target was already hurt this turn.'),
  -- Psycho Shift Generation VI
  (375, 6, 11, NULL, 100, 10, 0, 'status', 'Passes the user''s status condition to the target.'),
  -- Aura Sphere Generation VI
  (396, 6, 7, 80, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- Air Slash Generation VI
  (403, 6, 10, 75, 95, 15, 0, 'special', 'May make the target flinch (30% chance).'),
  -- Dragon Pulse Generation VI
  (406, 6, 15, 85, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Power Gem Generation VI
  (408, 6, 13, 80, 100, 20, 0, 'special', 'A plain attack with no added effect.'),
  -- Energy Ball Generation VI
  (412, 6, 5, 90, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Draco Meteor Generation VI
  (434, 6, 15, 130, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Leaf Storm Generation VI
  (437, 6, 5, 130, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Gunk Shot Generation VI
  (441, 6, 8, 120, 80, 5, 0, 'physical', 'May poison the target (30% chance).'),
  -- Chatter Generation VI
  (448, 6, 10, 65, 100, 20, 0, 'special', 'Confuses the target if it hits.'),
  -- Magma Storm Generation VI
  (463, 6, 2, 100, 75, 5, 0, 'special', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn.'),
  -- Storm Throw Generation VI
  (480, 6, 7, 60, 100, 10, 0, 'physical', 'Always lands a critical hit.'),
  -- Synchronoise Generation VI
  (485, 6, 11, 120, 100, 10, 0, 'special', 'Hits only Pokémon that share a type with the user.'),
  -- Low Sweep Generation VI
  (490, 6, 7, 65, 100, 20, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Hex Generation VI
  (506, 6, 14, 65, 100, 10, 0, 'special', 'Doubles in power against a target with a status condition.'),
  -- Incinerate Generation VI
  (510, 6, 2, 60, 100, 15, 0, 'special', 'Burns up the target''s held Berry or Gem.'),
  -- Water Pledge Generation VI
  (518, 6, 3, 80, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Fire Pledge Generation VI
  (519, 6, 2, 80, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Grass Pledge Generation VI
  (520, 6, 5, 80, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Struggle Bug Generation VI
  (522, 6, 12, 50, 100, 20, 0, 'special', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Frost Breath Generation VI
  (524, 6, 6, 60, 90, 10, 0, 'special', 'Always lands a critical hit.'),
  -- Sacred Sword Generation VI
  (533, 6, 7, 90, 100, 15, 0, 'physical', 'Ignores the target''s stat changes.'),
  -- Hurricane Generation VI
  (542, 6, 10, 110, 70, 10, 0, 'special', 'May confuse the target (30% chance) and never misses in rain.'),
  -- Techno Blast Generation VI
  (546, 6, 1, 120, 100, 5, 0, 'special', 'Its type matches the Drive the user holds.');
