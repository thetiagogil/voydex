-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Megas of Hyperspace Missions 1, 3, 6 and 8: Bulbapedia Rogue Mega Evolution page,
-- cross-checked with Serebii's hyperspace mission list and Mega Stone locations.
-- Special Scan legendaries, Zeraora and Magearna (#115 audit): Bulbapedia's event list, cross-checked with Serebii.
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
  (270009, 27, NULL, 2702, 6, 2, NULL, 'dreams-of-meltan', 'Dreams of Meltan', 'Catch the Meltan bothering a bank in Rouge Sector 1, then follow the distortion it leaves into Hyperspace Lumiose, where a girl gives you a Melmetal.', 3, false),
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
  (270015, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-meowstic', 'Rogue Mega Meowstic', 'Battle and catch the Rogue Mega Meowstic in Hyperspace Second-Sight Arena and receive Meowsticite.', 6, true),
  -- Special Scan: Latias
  (270016, 27, NULL, 2702, 6, 2, NULL, 'special-scan-latias', 'Special Scan: Latias', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Latias (after Side Mission 189, Siblings of the Sky).', 6, false),
  -- Special Scan: Latios
  (270017, 27, NULL, 2702, 6, 2, NULL, 'special-scan-latios', 'Special Scan: Latios', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Latios (after Side Mission 189, Siblings of the Sky).', 7, false),
  -- Special Scan: Cobalion
  (270018, 27, NULL, 2702, 6, 2, NULL, 'special-scan-cobalion', 'Special Scan: Cobalion', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Cobalion.', 8, false),
  -- Special Scan: Terrakion
  (270019, 27, NULL, 2702, 6, 2, NULL, 'special-scan-terrakion', 'Special Scan: Terrakion', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Terrakion.', 9, false),
  -- Special Scan: Virizion
  (270020, 27, NULL, 2702, 6, 2, NULL, 'special-scan-virizion', 'Special Scan: Virizion', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Virizion.', 10, false),
  -- Special Scan: Keldeo
  (270021, 27, NULL, 2702, 6, 2, NULL, 'special-scan-keldeo', 'Special Scan: Keldeo', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Keldeo.', 11, false),
  -- Special Scan: Meloetta
  (270022, 27, NULL, 2702, 6, 2, NULL, 'special-scan-meloetta', 'Special Scan: Meloetta', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office; when it opens an unknown zone, battle and catch Meloetta.', 12, false),
  -- Restarting Magearna
  (270023, 27, NULL, 2702, 1, 2, NULL, 'restarting-magearna', 'Restarting Magearna', 'Gather the 999 Mega Shards Jett needs at Quasartico Inc. to wake Magearna, which joins you with its Magearnite.', 13, false),
  -- Raging Lightning
  (270024, 27, NULL, 2702, 6, 2, NULL, 'raging-lightning', 'Raging Lightning', 'Make the Plasma-Glazed Donut with Ansha, then enter the distortion in front of the Gare de Lumiose with Emma and Korrina to battle and catch the Rogue Mega Zeraora. Needs the Mystery Gift side missions EX1 and EX2 first.', 14, false);
