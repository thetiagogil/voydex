-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon The Crown Tundra major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Crown Tundra mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  -- Arrive at the Crown Tundra
  (200001, 20, NULL, 2001, 1, 1, NULL, 'arrive-crown-tundra', 'Arrive at the Crown Tundra', 'Arrive at the Crown Tundra and reach Freezington.', 1, true),
  -- Battle Peony
  (200002, 20, NULL, 2001, 6, 2, NULL, 'peony-battle', 'Battle Peony', 'Battle Peony at the Crown Tundra station.', 2, true),
  -- Steed Choice
  (200003, 20, NULL, 2001, 12, 1, NULL, 'steed-choice', 'Steed Choice', 'Choose which steed Calyrex will reunite with.', 3, true),
  -- Calyrex Quest
  (200004, 20, NULL, 2001, 6, 3, NULL, 'calyrex-quest', 'Calyrex Quest', 'Complete The Sacred Bonds of Sovereign and Steed.', 4, true),
  -- Regi Choice
  (200005, 20, NULL, 2001, 12, 1, NULL, 'regi-choice', 'Regi Choice', 'Choose between Regieleki and Regidrago at the Split-Decision Ruins.', 5, true),
  -- Regi Temples
  (200006, 20, NULL, 2001, 1, 3, NULL, 'regi-temples', 'Regi Temples', 'Complete The Terrible Titans... Lurking Locked Away.', 6, true),
  -- Galarian Birds
  (200007, 20, NULL, 2001, 1, 3, NULL, 'galarian-birds', 'Galarian Birds', 'Complete A Legendary Tree of a Legendary Three.', 7, true),
  -- Finish Crown Tundra Expeditions
  (200008, 20, NULL, 2001, 1, 3, NULL, 'finish-expeditions', 'Finish Crown Tundra Expeditions', 'Report the completed Legendary Clues to Peony.', 8, true),
  -- Swords of Justice
  (200009, 20, NULL, 2002, 6, 2, NULL, 'swords-of-justice', 'Swords of Justice', 'Track Sonia''s footprints to find and battle Cobalion, Terrakion and Virizion across the Crown Tundra.', 1, false),
  -- Ballimere Lake
  (200010, 20, NULL, 2002, 6, 2, NULL, 'ballimere-lake', 'Ballimere Lake', 'Cook a curry with Cobalion, Terrakion and Virizion on Ballimere Lake''s island to meet Keldeo.', 2, false);
