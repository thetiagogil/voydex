-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Scope: Pokémon The Teal Mask milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Teal Mask battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Arrive in Kitakami -> Kieran (his first battle, in Mossui Town)
  (240001, 24001, 24, 'battle-opponent', 2, 'Mossui Town'),
  -- Loyal Three Quest -> The Loyal Three
  (240004, 24002, 24, 'battle-opponent', 2, NULL),
  -- Ogerpon Battle -> Ogerpon
  (240005, 24003, 24, 'battle-opponent', 1, NULL),
  -- Kieran Rematch -> Kieran
  (240006, 24001, 24, 'battle-opponent', 1, NULL),
  -- Bloodmoon Ursaluna -> Bloodmoon Ursaluna
  (240007, 24004, 24, 'battle-opponent', 1, NULL),
  -- Arrive in Kitakami -> Carmine
  (240001, 24005, 24, 'battle-opponent', 1, 'Mossui Town'),
  -- Festival of Masks -> Kieran
  (240002, 24001, 24, 'battle-opponent', 1, 'Outside the Dreaded Den'),
  -- Festival of Masks -> Carmine
  (240002, 24005, 24, 'battle-opponent', 2, 'Mossui Town'),
  -- Battle Kieran -> Kieran
  (240003, 24001, 24, 'battle-opponent', 1, 'Paradise Barrens (last signpost)'),
  -- Loyal Three Quest -> Kieran
  (240004, 24001, 24, 'battle-opponent', 1, 'Monument of the Loyal Three, Loyalty Plaza'),
  -- Kieran Rematch -> Carmine
  (240006, 24005, 24, 'battle-opponent', 2, 'Loyalty Plaza. You can skip this battle.');
