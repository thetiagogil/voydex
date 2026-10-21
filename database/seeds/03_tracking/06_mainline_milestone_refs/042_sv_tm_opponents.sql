-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- The Dreaded Den Munkidori (Lv. 30, or 70 after The Way Home) is confirmed by data-mined game data only.
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
  (240006, 24005, 24, 'battle-opponent', 2, 'Loyalty Plaza. You can skip this battle.'),
  -- Loyal Three Quest -> Munkidori
  (240004, 24006, 24, 'battle-opponent', 2, 'Dreaded Den, Oni Mountain, as the Loyal Three attack Ogerpon'),
  -- Loyal Three Quest -> Okidogi
  (240004, 24007, 24, 'battle-opponent', 3, 'Paradise Barrens, with Carmine'),
  -- Loyal Three Quest -> Munkidori
  (240004, 24008, 24, 'battle-opponent', 4, 'Wistful Fields, in the pond, with Carmine'),
  -- Loyal Three Quest -> Fezandipiti
  (240004, 24009, 24, 'battle-opponent', 5, 'Oni Mountain, above Fellhorn Gorge, with Carmine'),
  -- Paradise Barrens -> Okidogi
  (240008, 24010, 24, 'battle-opponent', 1, 'Paradise Barrens. You can skip this battle.'),
  -- Wistful Fields -> Munkidori
  (240009, 24006, 24, 'battle-opponent', 1, 'Wistful Fields (the pond). You can skip this battle.'),
  -- Oni Mountain -> Fezandipiti
  (240010, 24011, 24, 'battle-opponent', 1, 'Oni Mountain (east side). You can skip this battle.');
