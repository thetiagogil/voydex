-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 201-250.
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
  -- Dunsparce - Scale Shot - Tutor
  (206, 20600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dunsparce - Terrain Pulse - Tutor
  (206, 20600, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dunsparce - Skitter Smack - Tutor
  (206, 20600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Dunsparce - Dual Wingbeat - Tutor
  (206, 20600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Steelix - Steel Roller - Tutor
  (208, 20800, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Steelix - Meteor Beam - Tutor
  (208, 20800, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Steelix - Scorching Sands - Tutor
  (208, 20800, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Qwilfish - Steel Roller - Tutor
  (211, 21100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Qwilfish - Scale Shot - Tutor
  (211, 21100, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Scizor - Dual Wingbeat - Tutor
  (212, 21200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Shuckle - Steel Roller - Tutor
  (213, 21300, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Shuckle - Meteor Beam - Tutor
  (213, 21300, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Shuckle - Skitter Smack - Tutor
  (213, 21300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Heracross - Coaching - Tutor
  (214, 21400, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sneasel - Lash Out - Tutor
  (215, 21500, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sneasel - Triple Axel - Tutor
  (215, 21500, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Corsola - Meteor Beam - Tutor
  (222, 22200, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Corsola (Galarian Corsola) - Meteor Beam - Tutor
  (222, 22201, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Octillery - Skitter Smack - Tutor
  (224, 22400, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Delibird - Triple Axel - Tutor
  (225, 22500, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Delibird - Dual Wingbeat - Tutor
  (225, 22500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mantine - Dual Wingbeat - Tutor
  (226, 22600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Skarmory - Dual Wingbeat - Tutor
  (227, 22700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kingdra - Scale Shot - Tutor
  (230, 23000, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kingdra - Flip Turn - Tutor
  (230, 23000, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Hitmontop - Coaching - Tutor
  (237, 23700, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hitmontop - Triple Axel - Tutor
  (237, 23700, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Miltank - Steel Roller - Tutor
  (241, 24100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Raikou - Rising Voltage - Tutor
  (243, 24300, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Entei - Scorching Sands - Tutor
  (244, 24400, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tyranitar - Lash Out - Tutor
  (248, 24800, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lugia - Scale Shot - Tutor
  (249, 24900, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lugia - Dual Wingbeat - Tutor
  (249, 24900, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Ho-Oh - Dual Wingbeat - Tutor
  (250, 25000, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Ho-Oh - Scorching Sands - Tutor
  (250, 25000, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
