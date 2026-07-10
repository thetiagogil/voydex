-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen6 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Flying Press Generation VI
  (560, 6, 7, 80, 95, 10, 0, 'physical'),
  -- Mat Block Generation VI
  (561, 6, 7, NULL, NULL, 10, 0, 'status'),
  -- Belch Generation VI
  (562, 6, 8, 120, 90, 10, 0, 'special'),
  -- Rototiller Generation VI
  (563, 6, 9, NULL, NULL, 10, 0, 'status'),
  -- Sticky Web Generation VI
  (564, 6, 12, NULL, NULL, 20, 0, 'status'),
  -- Fell Stinger Generation VI
  (565, 6, 12, 30, 100, 25, 0, 'physical'),
  -- Phantom Force Generation VI
  (566, 6, 14, 90, 100, 10, 0, 'physical'),
  -- Trick-or-Treat Generation VI
  (567, 6, 14, NULL, 100, 20, 0, 'status'),
  -- Noble Roar Generation VI
  (568, 6, 1, NULL, 100, 30, 0, 'status'),
  -- Ion Deluge Generation VI
  (569, 6, 4, NULL, NULL, 25, 1, 'status'),
  -- Parabolic Charge Generation VI
  (570, 6, 4, 50, 100, 20, 0, 'special'),
  -- Forest's Curse Generation VI
  (571, 6, 5, NULL, 100, 20, 0, 'status'),
  -- Petal Blizzard Generation VI
  (572, 6, 5, 90, 100, 15, 0, 'physical'),
  -- Freeze-Dry Generation VI
  (573, 6, 6, 70, 100, 20, 0, 'special'),
  -- Disarming Voice Generation VI
  (574, 6, 18, 40, NULL, 15, 0, 'special'),
  -- Parting Shot Generation VI
  (575, 6, 16, NULL, 100, 20, 0, 'status'),
  -- Topsy-Turvy Generation VI
  (576, 6, 16, NULL, NULL, 20, 0, 'status'),
  -- Draining Kiss Generation VI
  (577, 6, 18, 50, 100, 10, 0, 'special'),
  -- Crafty Shield Generation VI
  (578, 6, 18, NULL, NULL, 10, 3, 'status'),
  -- Flower Shield Generation VI
  (579, 6, 18, NULL, NULL, 10, 0, 'status'),
  -- Grassy Terrain Generation VI
  (580, 6, 5, NULL, NULL, 10, 0, 'status'),
  -- Misty Terrain Generation VI
  (581, 6, 18, NULL, NULL, 10, 0, 'status'),
  -- Electrify Generation VI
  (582, 6, 4, NULL, NULL, 20, 0, 'status'),
  -- Play Rough Generation VI
  (583, 6, 18, 90, 90, 10, 0, 'physical'),
  -- Fairy Wind Generation VI
  (584, 6, 18, 40, 100, 30, 0, 'special'),
  -- Moonblast Generation VI
  (585, 6, 18, 95, 100, 15, 0, 'special'),
  -- Boomburst Generation VI
  (586, 6, 1, 140, 100, 10, 0, 'special'),
  -- Fairy Lock Generation VI
  (587, 6, 18, NULL, NULL, 10, 0, 'status'),
  -- King's Shield Generation VI
  (588, 6, 17, NULL, NULL, 10, 4, 'status'),
  -- Play Nice Generation VI
  (589, 6, 1, NULL, NULL, 20, 0, 'status'),
  -- Confide Generation VI
  (590, 6, 1, NULL, NULL, 20, 0, 'status'),
  -- Diamond Storm Generation VI
  (591, 6, 13, 100, 95, 5, 0, 'physical'),
  -- Steam Eruption Generation VI
  (592, 6, 3, 110, 95, 5, 0, 'special'),
  -- Hyperspace Hole Generation VI
  (593, 6, 11, 80, NULL, 5, 0, 'special'),
  -- Water Shuriken Generation VI
  (594, 6, 3, 15, 100, 20, 1, 'special'),
  -- Mystical Fire Generation VI
  (595, 6, 2, 65, 100, 10, 0, 'special'),
  -- Spiky Shield Generation VI
  (596, 6, 5, NULL, NULL, 10, 4, 'status'),
  -- Aromatic Mist Generation VI
  (597, 6, 18, NULL, NULL, 20, 0, 'status'),
  -- Eerie Impulse Generation VI
  (598, 6, 4, NULL, 100, 15, 0, 'status'),
  -- Venom Drench Generation VI
  (599, 6, 8, NULL, 100, 20, 0, 'status'),
  -- Powder Generation VI
  (600, 6, 12, NULL, 100, 20, 1, 'status'),
  -- Geomancy Generation VI
  (601, 6, 18, NULL, NULL, 10, 0, 'status'),
  -- Magnetic Flux Generation VI
  (602, 6, 4, NULL, NULL, 20, 0, 'status'),
  -- Happy Hour Generation VI
  (603, 6, 1, NULL, NULL, 30, 0, 'status'),
  -- Electric Terrain Generation VI
  (604, 6, 4, NULL, NULL, 10, 0, 'status'),
  -- Dazzling Gleam Generation VI
  (605, 6, 18, 80, 100, 10, 0, 'special'),
  -- Celebrate Generation VI
  (606, 6, 1, NULL, NULL, 40, 0, 'status'),
  -- Hold Hands Generation VI
  (607, 6, 1, NULL, NULL, 40, 0, 'status'),
  -- Baby-Doll Eyes Generation VI
  (608, 6, 18, NULL, 100, 30, 1, 'status'),
  -- Nuzzle Generation VI
  (609, 6, 4, 20, 100, 20, 0, 'physical'),
  -- Hold Back Generation VI
  (610, 6, 1, 40, 100, 40, 0, 'physical'),
  -- Infestation Generation VI
  (611, 6, 12, 20, 100, 20, 0, 'special'),
  -- Power-Up Punch Generation VI
  (612, 6, 7, 40, 100, 20, 0, 'physical'),
  -- Oblivion Wing Generation VI
  (613, 6, 10, 80, 100, 10, 0, 'special'),
  -- Thousand Arrows Generation VI
  (614, 6, 9, 90, 100, 10, 0, 'physical'),
  -- Thousand Waves Generation VI
  (615, 6, 9, 90, 100, 10, 0, 'physical'),
  -- Land's Wrath Generation VI
  (616, 6, 9, 90, 100, 10, 0, 'physical'),
  -- Light of Ruin Generation VI
  (617, 6, 18, 140, 90, 5, 0, 'special'),
  -- Origin Pulse Generation VI
  (618, 6, 3, 110, 85, 10, 0, 'special'),
  -- Precipice Blades Generation VI
  (619, 6, 9, 120, 85, 10, 0, 'physical'),
  -- Dragon Ascent Generation VI
  (620, 6, 10, 120, 100, 5, 0, 'physical'),
  -- Hyperspace Fury Generation VI
  (621, 6, 16, 100, NULL, 5, 0, 'physical');
