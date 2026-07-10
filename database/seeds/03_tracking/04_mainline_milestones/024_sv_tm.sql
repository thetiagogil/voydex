-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Scope: Pokémon The Teal Mask major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion
) VALUES
  -- Arrive in Kitakami
  (240001, 24, NULL, 2401, 1, 1, NULL, 'arrive-kitakami', 'Arrive in Kitakami', 'Arrive in Kitakami for the school trip.', 1, true),
  -- Festival of Masks
  (240002, 24, NULL, 2401, 1, 1, NULL, 'festival-of-masks', 'Festival of Masks', 'Participate in the Festival of Masks.', 2, true),
  -- Battle Kieran
  (240003, 24, NULL, 2401, 5, 2, NULL, 'kieran-battle-1', 'Battle Kieran', 'Battle Kieran during the Kitakami story.', 3, true),
  -- Loyal Three Quest
  (240004, 24, NULL, 2401, 6, 3, NULL, 'loyal-three-quest', 'Loyal Three Quest', 'Complete the story sequence involving the Loyal Three.', 4, true),
  -- Ogerpon Battle
  (240005, 24, NULL, 2401, 6, 3, NULL, 'ogerpon-battle', 'Ogerpon Battle', 'Battle Ogerpon and complete the main Kitakami story.', 5, true),
  -- Kieran Rematch
  (240006, 24, NULL, 2401, 5, 2, NULL, 'kieran-battle-2', 'Kieran Rematch', 'Battle Kieran after the Ogerpon story climax.', 6, true),
  -- Bloodmoon Ursaluna
  (240007, 24, NULL, 2402, 6, 3, NULL, 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'Complete the Perrin quest and encounter Bloodmoon Ursaluna.', 1, false);
