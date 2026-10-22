-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gmax move attribute rows.
-- G-Max rows use null PP/accuracy and variable damage class because mechanics derive from compatible base moves.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- G-Max Wildfire Generation VIII
  (10001, 8, 2, NULL, NULL, NULL, 0, 'variable', 'Charizard''s G-Max Move; hurts foes that are not Fire type each turn for four turns.'),
  -- G-Max Befuddle Generation VIII
  (10002, 8, 12, NULL, NULL, NULL, 0, 'variable', 'Butterfree''s G-Max Move; poisons, paralyzes or puts each foe to sleep.'),
  -- G-Max Volt Crash Generation VIII
  (10003, 8, 4, NULL, NULL, NULL, 0, 'variable', 'Pikachu''s G-Max Move; paralyzes each foe.'),
  -- G-Max Gold Rush Generation VIII
  (10004, 8, 1, NULL, NULL, NULL, 0, 'variable', 'Meowth''s G-Max Move; confuses each foe and scatters coins.'),
  -- G-Max Chi Strike Generation VIII
  (10005, 8, 7, NULL, NULL, NULL, 0, 'variable', 'Machamp''s G-Max Move; raises the critical-hit ratio of the user and its ally.'),
  -- G-Max Terror Generation VIII
  (10006, 8, 14, NULL, NULL, NULL, 0, 'variable', 'Gengar''s G-Max Move; stops each foe from fleeing or switching out.'),
  -- G-Max Resonance Generation VIII
  (10007, 8, 6, NULL, NULL, NULL, 0, 'variable', 'Lapras''s G-Max Move; sets up Aurora Veil on the user''s side.'),
  -- G-Max Cuddle Generation VIII
  (10008, 8, 1, NULL, NULL, NULL, 0, 'variable', 'Eevee''s G-Max Move; infatuates each foe of the opposite gender.'),
  -- G-Max Replenish Generation VIII
  (10009, 8, 1, NULL, NULL, NULL, 0, 'variable', 'Snorlax''s G-Max Move; may restore the Berries the user''s side has eaten (50% chance).'),
  -- G-Max Malodor Generation VIII
  (10010, 8, 8, NULL, NULL, NULL, 0, 'variable', 'Garbodor''s G-Max Move; poisons each foe.'),
  -- G-Max Stonesurge Generation VIII
  (10011, 8, 3, NULL, NULL, NULL, 0, 'variable', 'Drednaw''s G-Max Move; scatters pointed stones on the foes'' side.'),
  -- G-Max Wind Rage Generation VIII
  (10012, 8, 10, NULL, NULL, NULL, 0, 'variable', 'Corviknight''s G-Max Move; clears screens, hazards and terrain.'),
  -- G-Max Stun Shock Generation VIII
  (10013, 8, 4, NULL, NULL, NULL, 0, 'variable', 'Toxtricity''s G-Max Move; poisons or paralyzes each foe.'),
  -- G-Max Finale Generation VIII
  (10014, 8, 18, NULL, NULL, NULL, 0, 'variable', 'Alcremie''s G-Max Move; heals the user and its ally by 1/6 of their max HP.'),
  -- G-Max Depletion Generation VIII
  (10015, 8, 15, NULL, NULL, NULL, 0, 'variable', 'Duraludon''s G-Max Move; cuts the PP of each foe''s last move by two.'),
  -- G-Max Gravitas Generation VIII
  (10016, 8, 11, NULL, NULL, NULL, 0, 'variable', 'Orbeetle''s G-Max Move; intensifies gravity for five turns.'),
  -- G-Max Volcalith Generation VIII
  (10017, 8, 13, NULL, NULL, NULL, 0, 'variable', 'Coalossal''s G-Max Move; hurts foes that are not Rock type each turn for four turns.'),
  -- G-Max Sandblast Generation VIII
  (10018, 8, 9, NULL, NULL, NULL, 0, 'variable', 'Sandaconda''s G-Max Move; traps foes in a sandstorm for four to five turns.'),
  -- G-Max Snooze Generation VIII
  (10019, 8, 16, NULL, NULL, NULL, 0, 'variable', 'Grimmsnarl''s G-Max Move; may make the target drowsy (50% chance).'),
  -- G-Max Tartness Generation VIII
  (10020, 8, 5, NULL, NULL, NULL, 0, 'variable', 'Flapple''s G-Max Move; lowers each foe''s evasion by one stage.'),
  -- G-Max Sweetness Generation VIII
  (10021, 8, 5, NULL, NULL, NULL, 0, 'variable', 'Appletun''s G-Max Move; cures the status conditions of the user''s side.'),
  -- G-Max Smite Generation VIII
  (10022, 8, 18, NULL, NULL, NULL, 0, 'variable', 'Hatterene''s G-Max Move; confuses each foe.'),
  -- G-Max Steelsurge Generation VIII
  (10023, 8, 17, NULL, NULL, NULL, 0, 'variable', 'Copperajah''s G-Max Move; scatters sharp steel spikes on the foes'' side.'),
  -- G-Max Meltdown Generation VIII
  (10024, 8, 17, NULL, NULL, NULL, 0, 'variable', 'Melmetal''s G-Max Move; stops each foe from using the same move twice in a row.'),
  -- G-Max Foam Burst Generation VIII
  (10025, 8, 3, NULL, NULL, NULL, 0, 'variable', 'Kingler''s G-Max Move; lowers each foe''s Speed by two stages.'),
  -- G-Max Centiferno Generation VIII
  (10026, 8, 2, NULL, NULL, NULL, 0, 'variable', 'Centiskorch''s G-Max Move; traps foes in flames for four to five turns.'),
  -- G-Max Vine Lash Generation VIII
  (10027, 8, 5, NULL, NULL, NULL, 0, 'variable', 'Venusaur''s G-Max Move; hurts foes that are not Grass type each turn for four turns.'),
  -- G-Max Cannonade Generation VIII
  (10028, 8, 3, NULL, NULL, NULL, 0, 'variable', 'Blastoise''s G-Max Move; hurts foes that are not Water type each turn for four turns.'),
  -- G-Max Drum Solo Generation VIII
  (10029, 8, 5, 160, NULL, NULL, 0, 'variable', 'Rillaboom''s G-Max Move; 160 power and ignores the target''s Ability.'),
  -- G-Max Fireball Generation VIII
  (10030, 8, 2, 160, NULL, NULL, 0, 'variable', 'Cinderace''s G-Max Move; 160 power and ignores the target''s Ability.'),
  -- G-Max Hydrosnipe Generation VIII
  (10031, 8, 3, 160, NULL, NULL, 0, 'variable', 'Inteleon''s G-Max Move; 160 power and ignores the target''s Ability.'),
  -- G-Max One Blow Generation VIII
  (10032, 8, 16, NULL, NULL, NULL, 0, 'variable', 'Single Strike Urshifu''s G-Max Move; hits through Max Guard and protecting moves.'),
  -- G-Max Rapid Flow Generation VIII
  (10033, 8, 3, NULL, NULL, NULL, 0, 'variable', 'Rapid Strike Urshifu''s G-Max Move; hits through Max Guard and protecting moves.');
