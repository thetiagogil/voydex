-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Megas of Hyperspace Missions 1, 3, 6 and 8: Bulbapedia Rogue Mega Evolution page,
-- cross-checked with Serebii's hyperspace mission list and Mega Stone locations.
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
  (270003, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-darkrai', 'Rogue Mega Darkrai', 'Battle and capture Darkrai to stabilize Hyperspace Lumiose.', 7, true),
  -- Capture Groudon
  (270004, 27, NULL, 2701, 6, 3, NULL, 'capture-groudon', 'Capture Groudon', 'Capture Groudon as part of Ansha''s request.', 8, true),
  -- Capture Kyogre
  (270005, 27, NULL, 2701, 6, 3, NULL, 'capture-kyogre', 'Capture Kyogre', 'Capture Kyogre as part of Ansha''s request.', 9, true),
  -- Rogue Mega Rayquaza
  (270006, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-rayquaza', 'Rogue Mega Rayquaza', 'Battle and capture Rayquaza in Hyperspace Lumiose.', 10, true),
  -- Collecting Four Drives
  (270007, 27, NULL, 2702, 6, 2, NULL, 'collecting-four-drives', 'Collecting Four Drives', 'Buy all four Drives for Mega Shards, then enter the distortion at the Wild Zone 13 wall to find Genesect.', 1, false),
  -- The Stealthy Shadow
  (270008, 27, NULL, 2702, 6, 2, NULL, 'the-stealthy-shadow', 'The Stealthy Shadow', 'At dusk, when Prism Tower''s shadow touches the Rouge Sector 1 battle court, call out Marshadow.', 2, false),
  -- Dreams of Meltan
  (270009, 27, NULL, 2702, 6, 2, NULL, 'dreams-of-meltan', 'Dreams of Meltan', 'Catch the Meltan bothering a bank in Rouge Sector 1.', 3, false),
  -- Volcanion Unleashed
  (270010, 27, NULL, 2702, 6, 2, NULL, 'volcanion-unleashed', 'Volcanion Unleashed', 'Help Mable open a hacked Poké Ball at the Pokémon Research Lab and catch Volcanion.', 4, false),
  -- The Djinn Unbound
  (270011, 27, NULL, 2702, 6, 2, NULL, 'the-djinn-unbound', 'The Djinn Unbound', 'Take the Prison Bottle into a hyperspace distortion and battle Hoopa Unbound.', 5, false),
  -- Rogue Mega Absol Z (Hyperspace Mission 1)
  (270012, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-absol-z', 'Rogue Mega Absol Z', 'Battle and catch the Rogue Mega Absol Z in Hyperspace Disaster Arena and receive Absolite Z.', 3, true),
  -- Rogue Mega Staraptor (Hyperspace Mission 3)
  (270013, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-staraptor', 'Rogue Mega Staraptor', 'Battle and catch the Rogue Mega Staraptor in Hyperspace Hunting Grounds and receive Staraptite.', 4, true),
  -- Rogue Mega Tatsugiri (Hyperspace Mission 6)
  (270014, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-tatsugiri', 'Rogue Mega Tatsugiri', 'Battle and catch the Rogue Mega Tatsugiri in Hyperspace Sushi Paradise and receive Tatsugirinite.', 5, true),
  -- Rogue Mega Meowstic (Hyperspace Mission 8)
  (270015, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-meowstic', 'Rogue Mega Meowstic', 'Battle and catch the Rogue Mega Meowstic in Hyperspace Second-Sight Arena and receive Meowsticite.', 6, true);
