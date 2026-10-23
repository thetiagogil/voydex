-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen8 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Rapid Spin Generation VIII
  (229, 8, 1, 50, 100, 40, 0, 'physical', 'Raises the user''s Speed by one stage and clears Leech Seed, binding moves and hazards on its side.'),
  -- Multi-Attack Generation VIII
  (718, 8, 1, 120, 100, 10, 0, 'physical', 'Its type matches the Memory the user holds.'),
  -- Zippy Zap Generation VIII
  (729, 8, 4, 80, 100, 10, 2, 'physical', 'Strikes first (+2 priority) and raises the user''s evasion by one stage.'),
  -- Bouncy Bubble Generation VIII
  (733, 8, 3, 60, 100, 20, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Buzzy Buzz Generation VIII
  (734, 8, 4, 60, 100, 20, 0, 'special', 'Paralyzes the target if it hits.'),
  -- Sizzly Slide Generation VIII
  (735, 8, 2, 60, 100, 20, 0, 'physical', 'Burns the target if it hits.'),
  -- Glitzy Glow Generation VIII
  (736, 8, 11, 80, 95, 15, 0, 'special', 'Sets up Light Screen on the user''s side after it hits.'),
  -- Baddy Bad Generation VIII
  (737, 8, 16, 80, 95, 15, 0, 'special', 'Sets up Reflect on the user''s side after it hits.'),
  -- Sappy Seed Generation VIII
  (738, 8, 5, 100, 90, 10, 0, 'physical', 'Plants Leech Seed on the target after it hits.'),
  -- Freezy Frost Generation VIII
  (739, 8, 6, 100, 90, 10, 0, 'special', 'Resets the stat changes of every Pokémon on the field after it hits.'),
  -- Sparkly Swirl Generation VIII
  (740, 8, 18, 120, 85, 5, 0, 'special', 'Cures the status conditions of the user''s whole party after it hits.');
