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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Flying Press Generation VI
  (560, 6, 7, 80, 95, 10, 0, 'physical', 'Counts as both Fighting and Flying type for damage.'),
  -- Mat Block Generation VI
  (561, 6, 7, NULL, NULL, 10, 0, 'status', 'Blocks damaging moves aimed at the user''s side; works only on the user''s first turn out.'),
  -- Belch Generation VI
  (562, 6, 8, 120, 90, 10, 0, 'special', 'Usable only after the user has eaten a Berry.'),
  -- Rototiller Generation VI
  (563, 6, 9, NULL, NULL, 10, 0, 'status', 'Raises the Attack and Sp. Atk of grounded Grass-type Pokémon by one stage.'),
  -- Sticky Web Generation VI
  (564, 6, 12, NULL, NULL, 20, 0, 'status', 'Lays a web that lowers the Speed of foes switching in by one stage.'),
  -- Fell Stinger Generation VI
  (565, 6, 12, 30, 100, 25, 0, 'physical', 'Raises the user''s Attack by two stages if it knocks out the target.'),
  -- Phantom Force Generation VI
  (566, 6, 14, 90, 100, 10, 0, 'physical', 'Vanishes on the first turn and strikes on the second, breaking through protection.'),
  -- Trick-or-Treat Generation VI
  (567, 6, 14, NULL, 100, 20, 0, 'status', 'Adds the Ghost type to the target.'),
  -- Noble Roar Generation VI
  (568, 6, 1, NULL, 100, 30, 0, 'status', 'Lowers the target''s Attack and Sp. Atk by one stage.'),
  -- Ion Deluge Generation VI
  (569, 6, 4, NULL, NULL, 25, 1, 'status', 'Turns Normal moves into Electric moves for the rest of the turn.'),
  -- Parabolic Charge Generation VI
  (570, 6, 4, 50, 100, 20, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Forest's Curse Generation VI
  (571, 6, 5, NULL, 100, 20, 0, 'status', 'Adds the Grass type to the target.'),
  -- Petal Blizzard Generation VI
  (572, 6, 5, 90, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Freeze-Dry Generation VI
  (573, 6, 6, 70, 100, 20, 0, 'special', 'May freeze the target (10% chance); super effective on Water types.'),
  -- Disarming Voice Generation VI
  (574, 6, 18, 40, NULL, 15, 0, 'special', 'A plain attack that never misses.'),
  -- Parting Shot Generation VI
  (575, 6, 16, NULL, 100, 20, 0, 'status', 'Lowers the target''s Attack and Sp. Atk by one stage, then the user switches out.'),
  -- Topsy-Turvy Generation VI
  (576, 6, 16, NULL, NULL, 20, 0, 'status', 'Reverses all of the target''s stat changes.'),
  -- Draining Kiss Generation VI
  (577, 6, 18, 50, 100, 10, 0, 'special', 'Restores the user''s HP by 3/4 of the damage dealt.'),
  -- Crafty Shield Generation VI
  (578, 6, 18, NULL, NULL, 10, 3, 'status', 'Protects the user''s side from status moves this turn.'),
  -- Flower Shield Generation VI
  (579, 6, 18, NULL, NULL, 10, 0, 'status', 'Raises the Defense of every Grass-type Pokémon on the field by one stage.'),
  -- Grassy Terrain Generation VI
  (580, 6, 5, NULL, NULL, 10, 0, 'status', 'Covers the field in grass for five turns, powering up Grass moves and healing grounded Pokémon.'),
  -- Misty Terrain Generation VI
  (581, 6, 18, NULL, NULL, 10, 0, 'status', 'Covers the field in mist for five turns, blocking status conditions and weakening Dragon moves.'),
  -- Electrify Generation VI
  (582, 6, 4, NULL, NULL, 20, 0, 'status', 'Turns the target''s move this turn into an Electric move.'),
  -- Play Rough Generation VI
  (583, 6, 18, 90, 90, 10, 0, 'physical', 'May lower the target''s Attack by one stage (10% chance).'),
  -- Fairy Wind Generation VI
  (584, 6, 18, 40, 100, 30, 0, 'special', 'A plain attack with no added effect.'),
  -- Moonblast Generation VI
  (585, 6, 18, 95, 100, 15, 0, 'special', 'May lower the target''s Sp. Atk by one stage (30% chance).'),
  -- Boomburst Generation VI
  (586, 6, 1, 140, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Fairy Lock Generation VI
  (587, 6, 18, NULL, NULL, 10, 0, 'status', 'Stops every Pokémon from fleeing or switching out during the next turn.'),
  -- King's Shield Generation VI
  (588, 6, 17, NULL, NULL, 10, 4, 'status', 'Blocks damaging moves this turn and lowers a contact attacker''s Attack by one stage. In Gen 6-7 it was two stages.'),
  -- Play Nice Generation VI
  (589, 6, 1, NULL, NULL, 20, 0, 'status', 'Lowers the target''s Attack by one stage; never misses.'),
  -- Confide Generation VI
  (590, 6, 1, NULL, NULL, 20, 0, 'status', 'Lowers the target''s Sp. Atk by one stage; never misses.'),
  -- Diamond Storm Generation VI
  (591, 6, 13, 100, 95, 5, 0, 'physical', 'May raise the user''s Defense by two stages (50% chance). In Gen 6 it was one stage.'),
  -- Steam Eruption Generation VI
  (592, 6, 3, 110, 95, 5, 0, 'special', 'May burn the target (30% chance).'),
  -- Hyperspace Hole Generation VI
  (593, 6, 11, 80, NULL, 5, 0, 'special', 'Never misses and breaks through protecting moves.'),
  -- Water Shuriken Generation VI
  (594, 6, 3, 15, 100, 20, 1, 'special', 'Strikes first (+1 priority) and hits two to five times in a row.'),
  -- Mystical Fire Generation VI
  (595, 6, 2, 65, 100, 10, 0, 'special', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Spiky Shield Generation VI
  (596, 6, 5, NULL, NULL, 10, 4, 'status', 'Blocks moves this turn and hurts a contact attacker by 1/8 of its max HP.'),
  -- Aromatic Mist Generation VI
  (597, 6, 18, NULL, NULL, 20, 0, 'status', 'Raises an ally''s Sp. Def by one stage.'),
  -- Eerie Impulse Generation VI
  (598, 6, 4, NULL, 100, 15, 0, 'status', 'Lowers the target''s Sp. Atk by two stages.'),
  -- Venom Drench Generation VI
  (599, 6, 8, NULL, 100, 20, 0, 'status', 'Lowers a poisoned target''s Attack, Sp. Atk and Speed by one stage.'),
  -- Powder Generation VI
  (600, 6, 12, NULL, 100, 20, 1, 'status', 'If the target uses a Fire move this turn, the powder explodes and hurts it instead.'),
  -- Geomancy Generation VI
  (601, 6, 18, NULL, NULL, 10, 0, 'status', 'Charges on the first turn, then raises the user''s Sp. Atk, Sp. Def and Speed by two stages.'),
  -- Magnetic Flux Generation VI
  (602, 6, 4, NULL, NULL, 20, 0, 'status', 'Raises the Defense and Sp. Def of allies with Plus or Minus by one stage.'),
  -- Happy Hour Generation VI
  (603, 6, 1, NULL, NULL, 30, 0, 'status', 'Doubles the prize money from the battle.'),
  -- Electric Terrain Generation VI
  (604, 6, 4, NULL, NULL, 10, 0, 'status', 'Electrifies the field for five turns, powering up Electric moves and preventing sleep.'),
  -- Dazzling Gleam Generation VI
  (605, 6, 18, 80, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Celebrate Generation VI
  (606, 6, 1, NULL, NULL, 40, 0, 'status', 'Does nothing; the user just celebrates.'),
  -- Hold Hands Generation VI
  (607, 6, 1, NULL, NULL, 40, 0, 'status', 'Does nothing; the user and an ally hold hands.'),
  -- Baby-Doll Eyes Generation VI
  (608, 6, 18, NULL, 100, 30, 1, 'status', 'Strikes first (+1 priority) and lowers the target''s Attack by one stage.'),
  -- Nuzzle Generation VI
  (609, 6, 4, 20, 100, 20, 0, 'physical', 'Paralyzes the target if it hits.'),
  -- Hold Back Generation VI
  (610, 6, 1, 40, 100, 40, 0, 'physical', 'Always leaves the target with at least 1 HP.'),
  -- Infestation Generation VI
  (611, 6, 12, 20, 100, 20, 0, 'special', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn.'),
  -- Power-Up Punch Generation VI
  (612, 6, 7, 40, 100, 20, 0, 'physical', 'Raises the user''s Attack by one stage.'),
  -- Oblivion Wing Generation VI
  (613, 6, 10, 80, 100, 10, 0, 'special', 'Restores the user''s HP by 3/4 of the damage dealt.'),
  -- Thousand Arrows Generation VI
  (614, 6, 9, 90, 100, 10, 0, 'physical', 'Hits a flying or levitating target and knocks it to the ground.'),
  -- Thousand Waves Generation VI
  (615, 6, 9, 90, 100, 10, 0, 'physical', 'Stops the target from fleeing or switching out.'),
  -- Land's Wrath Generation VI
  (616, 6, 9, 90, 100, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Light of Ruin Generation VI
  (617, 6, 18, 140, 90, 5, 0, 'special', 'The user takes 1/2 of the damage dealt as recoil.'),
  -- Origin Pulse Generation VI
  (618, 6, 3, 110, 85, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Precipice Blades Generation VI
  (619, 6, 9, 120, 85, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Dragon Ascent Generation VI
  (620, 6, 10, 120, 100, 5, 0, 'physical', 'Lowers the user''s Defense and Sp. Def by one stage.'),
  -- Hyperspace Fury Generation VI
  (621, 6, 16, 100, NULL, 5, 0, 'physical', 'Breaks through protecting moves and lowers the user''s Defense by one stage.');
