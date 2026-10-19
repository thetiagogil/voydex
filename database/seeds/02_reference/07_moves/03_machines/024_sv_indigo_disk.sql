-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia machine catalog for the full target ruleset.
-- Delta rule: this file keeps only machine labels introduced by this content scope.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: The Indigo Disk
-- Rows: 28
-- Scope: cumulative DLC/update machine delta rows. Resolve with parent/dependency scopes for a full catalog.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM202 Pain Split
  (25002202, 220, 25, NULL, 2, 'TM202', 1),
  -- TM203 Psych Up
  (25002203, 244, 25, NULL, 2, 'TM203', 2),
  -- TM204 Double-Edge
  (25002204, 38, 25, NULL, 2, 'TM204', 3),
  -- TM205 Endeavor
  (25002205, 283, 25, NULL, 2, 'TM205', 4),
  -- TM206 Petal Blizzard
  (25002206, 572, 25, NULL, 2, 'TM206', 5),
  -- TM207 Temper Flare
  (25002207, 915, 25, NULL, 2, 'TM207', 6),
  -- TM208 Whirlpool
  (25002208, 250, 25, NULL, 2, 'TM208', 7),
  -- TM209 Muddy Water
  (25002209, 330, 25, NULL, 2, 'TM209', 8),
  -- TM210 Supercell Slam
  (25002210, 916, 25, NULL, 2, 'TM210', 9),
  -- TM211 Electroweb
  (25002211, 527, 25, NULL, 2, 'TM211', 10),
  -- TM212 Triple Axel
  (25002212, 813, 25, NULL, 2, 'TM212', 11),
  -- TM213 Coaching
  (25002213, 811, 25, NULL, 2, 'TM213', 12),
  -- TM214 Sludge Wave
  (25002214, 482, 25, NULL, 2, 'TM214', 13),
  -- TM215 Scorching Sands
  (25002215, 815, 25, NULL, 2, 'TM215', 14),
  -- TM216 Feather Dance
  (25002216, 297, 25, NULL, 2, 'TM216', 15),
  -- TM217 Future Sight
  (25002217, 248, 25, NULL, 2, 'TM217', 16),
  -- TM218 Expanding Force
  (25002218, 797, 25, NULL, 2, 'TM218', 17),
  -- TM219 Skitter Smack
  (25002219, 806, 25, NULL, 2, 'TM219', 18),
  -- TM220 Meteor Beam
  (25002220, 800, 25, NULL, 2, 'TM220', 19),
  -- TM221 Throat Chop
  (25002221, 675, 25, NULL, 2, 'TM221', 20),
  -- TM222 Breaking Swipe
  (25002222, 784, 25, NULL, 2, 'TM222', 21),
  -- TM223 Metal Sound
  (25002223, 319, 25, NULL, 2, 'TM223', 22),
  -- TM224 Curse
  (25002224, 174, 25, NULL, 2, 'TM224', 23),
  -- TM225 Hard Press
  (25002225, 912, 25, NULL, 2, 'TM225', 24),
  -- TM226 Dragon Cheer
  (25002226, 913, 25, NULL, 2, 'TM226', 25),
  -- TM227 Alluring Voice
  (25002227, 914, 25, NULL, 2, 'TM227', 26),
  -- TM228 Psychic Noise
  (25002228, 917, 25, NULL, 2, 'TM228', 27),
  -- TM229 Upper Hand
  (25002229, 918, 25, NULL, 2, 'TM229', 28);
