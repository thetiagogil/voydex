-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Mega Dimension major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  -- Begin Mega Dimension
  (270001, 27, NULL, 2701, 1, 1, NULL, 'begin-mega-dimension', 'Begin Mega Dimension', 'Begin the Mega Dimension story after the main Lumiose City crisis.', 1, true),
  -- Investigate Hyperspace Lumiose
  (270002, 27, NULL, 2701, 1, 1, NULL, 'investigate-hyperspace-lumiose', 'Investigate Hyperspace Lumiose', 'Investigate Hyperspace Lumiose with Team MZ.', 2, true),
  -- Rogue Mega Darkrai
  (270003, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-darkrai', 'Rogue Mega Darkrai', 'Battle and capture Darkrai to stabilize Hyperspace Lumiose.', 3, true),
  -- Capture Groudon
  (270004, 27, NULL, 2701, 6, 3, NULL, 'capture-groudon', 'Capture Groudon', 'Capture Groudon as part of Ansha''s request.', 4, true),
  -- Capture Kyogre
  (270005, 27, NULL, 2701, 6, 3, NULL, 'capture-kyogre', 'Capture Kyogre', 'Capture Kyogre as part of Ansha''s request.', 5, true),
  -- Rogue Mega Rayquaza
  (270006, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-rayquaza', 'Rogue Mega Rayquaza', 'Battle and capture Rayquaza in Hyperspace Lumiose.', 6, true),
  -- Collecting Four Drives
  (270007, 27, NULL, 2702, 6, 2, NULL, 'collecting-four-drives', 'Collecting Four Drives', 'Buy all four Drives for Mega Shards, then enter the distortion at the Wild Zone 13 wall to find Genesect.', 1, false),
  -- The Stealthy Shadow
  (270008, 27, NULL, 2702, 6, 2, NULL, 'the-stealthy-shadow', 'The Stealthy Shadow', 'At dusk, when Prism Tower''s shadow touches the Rouge Sector 1 battle court, call out Marshadow.', 2, false),
  -- Dreams of Meltan
  (270009, 27, NULL, 2702, 6, 2, NULL, 'dreams-of-meltan', 'Dreams of Meltan', 'Catch the Meltan bothering a bank in Rouge Sector 1.', 3, false),
  -- Volcanion Unleashed
  (270010, 27, NULL, 2702, 6, 2, NULL, 'volcanion-unleashed', 'Volcanion Unleashed', 'Help Mable open a hacked Poké Ball at the Pokémon Research Lab and catch Volcanion.', 4, false),
  -- The Djinn Unbound
  (270011, 27, NULL, 2702, 6, 2, NULL, 'the-djinn-unbound', 'The Djinn Unbound', 'Take the Prison Bottle into a hyperspace distortion and battle Hoopa Unbound.', 5, false);
