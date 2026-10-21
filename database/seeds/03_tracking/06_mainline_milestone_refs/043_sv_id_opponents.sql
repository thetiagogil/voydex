-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Indigo Disk, Blueberry League, Kieran, Terapagos, and Mochi Mayhem pages.
-- Scope: Pokémon The Indigo Disk milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Indigo Disk battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- BB Elite Four Crispin -> Crispin
  (250002, 25001, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Amarys -> Amarys
  (250003, 25002, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Lacey -> Lacey
  (250004, 25003, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Drayton -> Drayton
  (250005, 25004, 25, 'battle-opponent', 1, NULL),
  -- BB Champion Kieran -> Kieran
  (250006, 25005, 25, 'battle-opponent', 1, NULL),
  -- Terapagos Battle -> Terapagos
  (250008, 25006, 25, 'battle-opponent', 2, NULL),
  -- Mochi Mayhem -> Pecharunt
  (250009, 25007, 25, 'battle-opponent', 3, NULL),
  -- Arrive at Blueberry Academy -> Carmine
  (250001, 25008, 25, 'battle-opponent', 1, 'Central Plaza, Terarium'),
  -- Terapagos Battle -> Kieran
  (250008, 25009, 25, 'battle-opponent', 1, 'Area Zero Underdepths'),
  -- Mochi Mayhem -> Arven & Penny
  (250009, 25010, 25, 'battle-opponent', 1, 'Mossui Town (Peachy''s). You can skip this battle.'),
  -- Mochi Mayhem -> Nemona
  (250009, 25011, 25, 'battle-opponent', 2, 'Loyalty Plaza. You can skip this battle.');
