-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen2 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Karate Chop Generation II
  (2, 2, 7, 50, 100, 25, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Razor Wind Generation II
  (13, 2, 1, 80, 100, 10, 0, 'physical', 'Charges on the first turn and strikes on the second; has a high critical-hit ratio.'),
  -- Gust Generation II
  (16, 2, 10, 40, 100, 35, 0, 'physical', 'Doubles in power against a target in the air from Fly or Bounce.'),
  -- Wing Attack Generation II
  (17, 2, 10, 60, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Whirlwind Generation II
  (18, 2, 1, NULL, 100, 20, -1, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Sand Attack Generation II
  (28, 2, 9, NULL, 100, 15, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Double-Edge Generation II
  (38, 2, 1, 120, 100, 15, 0, 'physical', 'The user takes 1/3 of the damage dealt as recoil. In Gen 2 it was 1/4.'),
  -- Bite Generation II
  (44, 2, 16, 60, 100, 25, 0, 'special', 'May make the target flinch (30% chance).'),
  -- Roar Generation II
  (46, 2, 1, NULL, 100, 20, -1, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Blizzard Generation II
  (59, 2, 6, 120, 70, 5, 0, 'special', 'May freeze the target (10% chance). From Gen 4 it never misses in hail.'),
  -- Rock Throw Generation II
  (88, 2, 13, 50, 90, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Dig Generation II
  (91, 2, 9, 60, 100, 10, 0, 'physical', 'Digs underground on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Self-Destruct Generation II
  (120, 2, 1, 200, 100, 5, 0, 'physical', 'The user faints after attacking.'),
  -- Explosion Generation II
  (153, 2, 1, 250, 100, 5, 0, 'physical', 'The user faints after attacking.');
