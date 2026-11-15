-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Mega Dimension story page and its Hyperspace and side
-- mission pages.
-- Scope: Pokémon Mega Dimension story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension's story milestones, each at the place it happens
-- (location_id), in Red / Blue's pattern.
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
  is_required_for_completion,
  location_id
) VALUES
  -- Investigate Hyperspace Lumiose (Hyperspace Lumiose)
  (270002, 27, NULL, 2701, 1, 1, NULL, 'investigate-hyperspace-lumiose', 'Investigate Hyperspace Lumiose', 'After the Ange crisis, a girl called Ansha asks Team MZ for a donut for her friend Hoopa, then goes into a distortion at Coulant Waterway. Follow her into Hyperspace Lumiose and bring her back.', 1, true, 806),
  -- Rogue Mega Absol Z (Hyperspace Disaster Arena)
  (270012, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-absol-z', 'Rogue Mega Absol Z', 'Battle and catch the Rogue Mega Absol Z in the Hyperspace Disaster Arena with Taunie or Urbain and Korrina beside you. It leaves you its Absolite Z.', 2, true, 1002),
  -- Rogue Mega Staraptor (Hyperspace Hunting Grounds)
  (270013, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-staraptor', 'Rogue Mega Staraptor', 'Battle and catch the Rogue Mega Staraptor in the Hyperspace Hunting Grounds with Taunie or Urbain and Korrina beside you. It leaves you its Staraptite.', 3, true, 1003),
  -- Rogue Mega Tatsugiri (Hyperspace Sushi Paradise)
  (270014, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-tatsugiri', 'Rogue Mega Tatsugiri', 'Battle and catch the Rogue Mega Tatsugiri in the Hyperspace Sushi Paradise with Taunie or Urbain and Korrina beside you. It leaves you its Tatsugirinite.', 4, true, 1004),
  -- Rogue Mega Meowstic (Hyperspace Second-Sight Arena)
  (270015, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-meowstic', 'Rogue Mega Meowstic', 'Battle and catch the Rogue Mega Meowstic in the Hyperspace Second-Sight Arena with Taunie or Urbain and Korrina beside you. It leaves you its Meowsticite.', 5, true, 1005),
  -- Rogue Mega Darkrai (Hyperspace Newmoon Nightmare)
  (270003, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-darkrai', 'Rogue Mega Darkrai', 'Clear the fifth arena, then feed Hoopa the Bad Dreams Cruller with the Key Stones of the city''s Trainers behind it. It opens the way to Hyperspace Newmoon Nightmare, where Darkrai holds Hyperspace Lumiose together. Battle and catch it.', 6, true, 1007),
  -- Capture Groudon (Hyperspace Lumiose)
  (270004, 27, NULL, 2701, 6, 3, NULL, 'capture-groudon', 'Capture Groudon', 'Ansha wants a Rayquaza for her mother, and the way to it runs through two more Pokémon. Battle and catch the Rogue Primal Groudon for its Red Orb.', 7, true, 806),
  -- Capture Kyogre (Hyperspace Lumiose)
  (270005, 27, NULL, 2701, 6, 3, NULL, 'capture-kyogre', 'Capture Kyogre', 'Battle and catch the Rogue Primal Kyogre for its Blue Orb.', 8, true, 806),
  -- Rogue Mega Rayquaza (Hyperspace Sky Pillar)
  (270006, 27, NULL, 2701, 6, 3, NULL, 'rogue-mega-rayquaza', 'Rogue Mega Rayquaza', 'With the two orbs studied, bake the Delta Old-Fashioned Donut to open Hyperspace Sky Pillar. Battle and catch the Rogue Mega Rayquaza there, and look after it for Ansha.', 9, true, 1008),
  -- Collecting Four Drives (Wild Zone 13)
  (270007, 27, NULL, 2702, 6, 2, NULL, 'collecting-four-drives', 'Collecting Four Drives', 'Buy all four Drives for Mega Shards, then enter the distortion at the Wild Zone 13 wall to find Genesect.', 1, false, 488),
  -- The Stealthy Shadow (Rouge Sector 1)
  (270008, 27, NULL, 2702, 6, 2, NULL, 'the-stealthy-shadow', 'The Stealthy Shadow', 'At dusk, when Prism Tower''s shadow touches the Rouge Sector 1 battle court, call out Marshadow.', 2, false, 804),
  -- Dreams of Meltan (Rouge Sector 1)
  (270009, 27, NULL, 2702, 6, 2, NULL, 'dreams-of-meltan', 'Dreams of Meltan', 'Catch the Meltan bothering a bank in Rouge Sector 1, then follow the distortion it leaves into Hyperspace Lumiose.', 3, false, 804),
  -- Volcanion Unleashed (Pokémon Research Lab)
  (270010, 27, NULL, 2702, 6, 2, NULL, 'volcanion-unleashed', 'Volcanion Unleashed', 'Help Mable open a hacked Poké Ball at the Pokémon Research Lab and catch Volcanion.', 4, false, 445),
  -- The Djinn Unbound (Hyperspace Lumiose)
  (270011, 27, NULL, 2702, 6, 2, NULL, 'the-djinn-unbound', 'The Djinn Unbound', 'Take the Prison Bottle into a hyperspace distortion and battle Hoopa Unbound.', 5, false, 806),
  -- Special Scans (Rust Syndicate Office)
  (270016, 27, NULL, 2702, 6, 2, NULL, 'special-scans', 'Special Scans', 'Spend 25,000 Hyperspace Survey Points on a Special Scan at the Rust Syndicate Office. When it opens an unknown zone in Hyperspace Lumiose, one of seven Legendary Pokémon waits inside. Catch or defeat each one.', 6, false, 981),
  -- Restarting Magearna (Quasartico Inc. (building))
  (270023, 27, NULL, 2702, 1, 2, NULL, 'restarting-magearna', 'Restarting Magearna', 'Gather the 999 Mega Shards Jett needs at Quasartico Inc. to wake Magearna, which joins you with its Magearnite.', 7, false, 448),
  -- Raging Lightning (Gare de Lumiose)
  (270024, 27, NULL, 2702, 6, 2, NULL, 'raging-lightning', 'Raging Lightning', 'Make the Plasma-Glazed Donut with Ansha, then enter the distortion in front of the Gare de Lumiose with Emma and calm the Rogue Mega Zeraora.', 8, false, 976);
