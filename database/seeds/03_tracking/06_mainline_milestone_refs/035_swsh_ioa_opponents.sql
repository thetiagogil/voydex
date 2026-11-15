-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Isle of Armor, Kubfu, Urshifu, and Gift Pokémon pages.
-- Scope: Pokémon Sword / Shield: The Isle of Armor milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links the Isle of Armor's battle milestones to their opponents. location_id
-- is set only where the battle is fought away from its milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Arrive at the Isle of Armor -> Klara / Avery (Fields of Honor)
  (190001, 19001, 19, 'battle-opponent', 1, 'At the station, where you are taken for a new student.', 588),
  -- Arrive at the Isle of Armor -> Mustard
  (190001, 19002, 19, 'battle-opponent', 2, 'Mustard tests you inside the dojo', NULL),
  -- Dojo Trials -> Klara / Avery (Warm-Up Tunnel) (Warm-Up Tunnel)
  (190002, 19003, 19, 'battle-opponent', 1, 'The second trial, over the Max Mushrooms.', 653),
  -- Dojo Trials -> Klara / Avery
  (190002, 19001, 19, 'battle-opponent', 2, 'The third trial, on the dojo''s battle court', NULL),
  -- Tower of Two Fists -> Mustard
  (190006, 19002, 19, 'battle-opponent', 1, 'At the top of the tower, Kubfu against Kubfu', NULL),
  -- Final Mustard Battle -> Mustard
  (190007, 19002, 19, 'battle-opponent', 1, NULL, NULL);
