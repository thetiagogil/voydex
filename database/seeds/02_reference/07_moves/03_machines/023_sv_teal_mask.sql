-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia machine catalog for the full target ruleset.
-- Delta rule: this file keeps only machine labels introduced by this content scope.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: The Teal Mask
-- Rows: 30
-- Scope: cumulative DLC/update machine delta rows. Resolve with parent/dependency scopes for a full catalog.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM172 Roar
  (24002172, 46, 24, NULL, 2, 'TM172', 1),
  -- TM173 Charge
  (24002173, 268, 24, NULL, 2, 'TM173', 2),
  -- TM174 Haze
  (24002174, 114, 24, NULL, 2, 'TM174', 3),
  -- TM175 Toxic
  (24002175, 92, 24, NULL, 2, 'TM175', 4),
  -- TM176 Sand Tomb
  (24002176, 328, 24, NULL, 2, 'TM176', 5),
  -- TM177 Spite
  (24002177, 180, 24, NULL, 2, 'TM177', 6),
  -- TM178 Gravity
  (24002178, 356, 24, NULL, 2, 'TM178', 7),
  -- TM179 Smack Down
  (24002179, 479, 24, NULL, 2, 'TM179', 8),
  -- TM180 Gyro Ball
  (24002180, 360, 24, NULL, 2, 'TM180', 9),
  -- TM181 Knock Off
  (24002181, 282, 24, NULL, 2, 'TM181', 10),
  -- TM182 Bug Bite
  (24002182, 450, 24, NULL, 2, 'TM182', 11),
  -- TM183 Super Fang
  (24002183, 162, 24, NULL, 2, 'TM183', 12),
  -- TM184 Vacuum Wave
  (24002184, 410, 24, NULL, 2, 'TM184', 13),
  -- TM185 Lunge
  (24002185, 679, 24, NULL, 2, 'TM185', 14),
  -- TM186 High Horsepower
  (24002186, 667, 24, NULL, 2, 'TM186', 15),
  -- TM187 Icicle Spear
  (24002187, 333, 24, NULL, 2, 'TM187', 16),
  -- TM188 Scald
  (24002188, 503, 24, NULL, 2, 'TM188', 17),
  -- TM189 Heat Crash
  (24002189, 535, 24, NULL, 2, 'TM189', 18),
  -- TM190 Solar Blade
  (24002190, 669, 24, NULL, 2, 'TM190', 19),
  -- TM191 Uproar
  (24002191, 253, 24, NULL, 2, 'TM191', 20),
  -- TM192 Focus Punch
  (24002192, 264, 24, NULL, 2, 'TM192', 21),
  -- TM193 Weather Ball
  (24002193, 311, 24, NULL, 2, 'TM193', 22),
  -- TM194 Grassy Glide
  (24002194, 803, 24, NULL, 2, 'TM194', 23),
  -- TM195 Burning Jealousy
  (24002195, 807, 24, NULL, 2, 'TM195', 24),
  -- TM196 Flip Turn
  (24002196, 812, 24, NULL, 2, 'TM196', 25),
  -- TM197 Dual Wingbeat
  (24002197, 814, 24, NULL, 2, 'TM197', 26),
  -- TM198 Poltergeist
  (24002198, 809, 24, NULL, 2, 'TM198', 27),
  -- TM199 Lash Out
  (24002199, 808, 24, NULL, 2, 'TM199', 28),
  -- TM200 Scale Shot
  (24002200, 799, 24, NULL, 2, 'TM200', 29),
  -- TM201 Misty Explosion
  (24002201, 802, 24, NULL, 2, 'TM201', 30);
