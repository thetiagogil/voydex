-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 151-200.
-- Rows represent acquisition-method deltas for the Master Dojo Move Tutor.
-- The Crown Tundra depends on The Isle of Armor and inherits these rows through resolved content-scope views.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Mew - Expanding Force - Tutor
  (151, 15100, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mew - Steel Roller - Tutor
  (151, 15100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mew - Scale Shot - Tutor
  (151, 15100, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Mew - Meteor Beam - Tutor
  (151, 15100, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Mew - Misty Explosion - Tutor
  (151, 15100, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 5),
  -- Mew - Grassy Glide - Tutor
  (151, 15100, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 6),
  -- Mew - Rising Voltage - Tutor
  (151, 15100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 7),
  -- Mew - Terrain Pulse - Tutor
  (151, 15100, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 8),
  -- Mew - Skitter Smack - Tutor
  (151, 15100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 9),
  -- Mew - Burning Jealousy - Tutor
  (151, 15100, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 10),
  -- Mew - Lash Out - Tutor
  (151, 15100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 11),
  -- Mew - Poltergeist - Tutor
  (151, 15100, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 12),
  -- Mew - Corrosive Gas - Tutor
  (151, 15100, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 13),
  -- Mew - Coaching - Tutor
  (151, 15100, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 14),
  -- Mew - Flip Turn - Tutor
  (151, 15100, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 15),
  -- Mew - Triple Axel - Tutor
  (151, 15100, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 16),
  -- Mew - Dual Wingbeat - Tutor
  (151, 15100, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 17),
  -- Mew - Scorching Sands - Tutor
  (151, 15100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 18),
  -- Hoothoot - Dual Wingbeat - Tutor
  (163, 16300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Noctowl - Dual Wingbeat - Tutor
  (164, 16400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Crobat - Dual Wingbeat - Tutor
  (169, 16900, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Chinchou - Rising Voltage - Tutor
  (170, 17000, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lanturn - Rising Voltage - Tutor
  (171, 17100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Togetic - Dual Wingbeat - Tutor
  (176, 17600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Natu - Expanding Force - Tutor
  (177, 17700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Natu - Dual Wingbeat - Tutor
  (177, 17700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Xatu - Expanding Force - Tutor
  (178, 17800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Xatu - Dual Wingbeat - Tutor
  (178, 17800, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Bellossom - Grassy Glide - Tutor
  (182, 18200, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Marill - Steel Roller - Tutor
  (183, 18300, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Marill - Misty Explosion - Tutor
  (183, 18300, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Azumarill - Steel Roller - Tutor
  (184, 18400, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Azumarill - Misty Explosion - Tutor
  (184, 18400, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Sudowoodo - Meteor Beam - Tutor
  (185, 18500, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Espeon - Expanding Force - Tutor
  (196, 19600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Umbreon - Lash Out - Tutor
  (197, 19700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowking - Expanding Force - Tutor
  (199, 19900, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowking (Galarian Slowking) - Expanding Force - Tutor
  (199, 19901, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
