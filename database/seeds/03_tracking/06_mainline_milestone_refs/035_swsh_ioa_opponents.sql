-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Isle of Armor, Kubfu, Urshifu, and Gift Pokémon pages.
-- Scope: Pokémon The Isle of Armor milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Isle of Armor battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Dojo Rival Battle -> Klara / Avery
  (190002, 19001, 19, 'battle-opponent', 2, NULL),
  -- Final Mustard Battle -> Mustard
  (190007, 19002, 19, 'battle-opponent', 1, NULL),
  -- Arrive at the Isle of Armor -> Klara / Avery
  (190001, 19001, 19, 'battle-opponent', 1, 'Fields of Honor'),
  -- Arrive at the Isle of Armor -> Mustard
  (190001, 19002, 19, 'battle-opponent', 2, 'Master Dojo'),
  -- Tower of Two Fists -> Mustard (his Kubfu)
  (190006, 19002, 19, 'battle-opponent', 1, 'Top of the Tower of Darkness / Tower of Waters'),
  -- Dojo Trials -> Klara / Avery (Warm-Up Tunnel)
  (190002, 19003, 19, 'battle-opponent', 1, 'Warm-Up Tunnel (second trial, Max Mushrooms)');
