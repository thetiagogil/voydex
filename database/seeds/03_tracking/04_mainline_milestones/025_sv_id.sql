-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Indigo Disk, Blueberry League, Kieran, Terapagos, and Mochi Mayhem pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon The Indigo Disk major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Indigo Disk mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  -- Arrive at Blueberry Academy
  (250001, 25, NULL, 2501, 1, 1, NULL, 'arrive-blueberry-academy', 'Arrive at Blueberry Academy', 'Arrive at Blueberry Academy as an exchange student.', 1, true),
  -- BB Elite Four Crispin
  (250002, 25, NULL, 2501, 7, 2, NULL, 'bb-elite-four-crispin', 'BB Elite Four Crispin', 'Defeat Crispin in the Blueberry League Elite Four.', 2, true),
  -- BB Elite Four Amarys
  (250003, 25, NULL, 2501, 7, 2, NULL, 'bb-elite-four-amarys', 'BB Elite Four Amarys', 'Defeat Amarys in the Blueberry League Elite Four.', 3, true),
  -- BB Elite Four Lacey
  (250004, 25, NULL, 2501, 7, 2, NULL, 'bb-elite-four-lacey', 'BB Elite Four Lacey', 'Defeat Lacey in the Blueberry League Elite Four.', 4, true),
  -- BB Elite Four Drayton
  (250005, 25, NULL, 2501, 7, 2, NULL, 'bb-elite-four-drayton', 'BB Elite Four Drayton', 'Defeat Drayton in the Blueberry League Elite Four.', 5, true),
  -- BB Champion Kieran
  (250006, 25, NULL, 2501, 8, 2, NULL, 'bb-champion-kieran', 'BB Champion Kieran', 'Defeat Kieran as Champion of the Blueberry League.', 6, true),
  -- Area Zero Underdepths
  (250007, 25, NULL, 2501, 1, 1, NULL, 'area-zero-underdepths', 'Area Zero Underdepths', 'Enter the Area Zero Underdepths during the Indigo Disk climax.', 7, true),
  -- Terapagos Battle
  (250008, 25, NULL, 2501, 6, 3, NULL, 'terapagos-battle', 'Terapagos Battle', 'Battle Terapagos and complete the main Indigo Disk story.', 8, true),
  -- Mochi Mayhem
  (250009, 25, NULL, 2502, 6, 3, NULL, 'mochi-mayhem', 'Mochi Mayhem', 'Complete the Mochi Mayhem epilogue and battle Pecharunt.', 1, false),
  -- Coastal Biome
  (250010, 25, NULL, 2502, 6, 2, NULL, 'coastal-biome', 'Coastal Biome', 'Spin in the leaf cyclone east of the Coastal Outdoor Classroom, then use the sepia camera filter to call Meloetta.', 2, false),
  -- Perrin's Paradox Photos
  (250011, 25, NULL, 2502, 6, 2, NULL, 'perrins-paradox-photos', 'Perrin''s Paradox Photos', 'Reach 200 Blueberry Pokédex entries, then use Perrin''s photos to find two Paradox Pokémon in Area Zero.', 3, false),
  -- Snacksworth's Legendary Treats
  (250012, 25, NULL, 2502, 6, 2, NULL, 'snacksworth-legendary-treats', 'Snacksworth''s Legendary Treats', 'Trade Blueberry Quests for Snacksworth''s treats, then find each returning Legendary Pokémon in Paldea.', 4, false);
