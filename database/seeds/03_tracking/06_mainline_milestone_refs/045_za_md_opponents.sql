-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Mega Dimension milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Mega Dimension battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Rogue Mega Darkrai -> Darkrai
  (270003, 27001, 27, 'battle-opponent', 2, NULL),
  -- Capture Groudon -> Groudon
  (270004, 27002, 27, 'battle-opponent', 1, NULL),
  -- Capture Kyogre -> Kyogre
  (270005, 27003, 27, 'battle-opponent', 1, NULL),
  -- Rogue Mega Rayquaza -> Rayquaza
  (270006, 27004, 27, 'battle-opponent', 1, NULL),
  -- Rogue Mega Darkrai -> Heatran
  (270003, 27005, 27, 'battle-opponent', 1, 'Hyperspace Infernal Arena (Hyperspace Lumiose Survey No. 5)'),
  -- Collecting Four Drives -> Genesect
  (270007, 27006, 27, 'battle-opponent', 1, 'Hyperspace Lumiose, through the distortion at the Wild Zone 13 wall. You can skip this battle.'),
  -- The Stealthy Shadow -> Marshadow
  (270008, 27007, 27, 'battle-opponent', 1, 'Rouge Sector 1 battle court. You can skip this battle.'),
  -- Dreams of Meltan -> Meltan
  (270009, 27008, 27, 'battle-opponent', 1, 'Rouge Sector 1, by the bank (recorded met location: Autumnal Avenue). You can skip this battle.'),
  -- Volcanion Unleashed -> Volcanion
  (270010, 27009, 27, 'battle-opponent', 1, 'Pokémon Research Lab, basement room. You can skip this battle.'),
  -- The Djinn Unbound -> Hoopa
  (270011, 27010, 27, 'battle-opponent', 1, 'Hyperspace Lumiose distortion. You can skip this battle.');
