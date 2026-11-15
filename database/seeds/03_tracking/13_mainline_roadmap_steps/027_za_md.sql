-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Mega Dimension story page and its Hyperspace and side
-- mission pages.
-- Scope: Pokémon Mega Dimension Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Mega Dimension's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the story passes (location_id) or a milestone (milestone_id).
-- A place step carries a note on what happens there, and never lists the
-- Pokémon found there.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Lumiose City
  (27, 1, 798, NULL, 'After the Ange crisis, with the city rebuilt, a girl called Ansha asks Team MZ to make a donut for her friend Hoopa.'),
  -- 2: Coulant Waterway
  (27, 2, 1001, NULL, 'Ansha leads you to a distortion here and goes in through Hoopa''s ring. Team MZ follows her.'),
  -- 3: Investigate Hyperspace Lumiose (milestone)
  (27, 3, NULL, 270002, NULL),
  -- 4: Rust Syndicate Office
  (27, 4, 981, NULL, 'A black distortion has opened over what is left of Prism Tower. Corbeau, working with Vinnie, gives you survey work in Hyperspace Lumiose. Only three can go in at once, so he calls in Korrina, who battles you before she joins.'),
  -- 5: Hyperspace Disaster Arena
  (27, 5, 1002, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Absol Z in it. Taunie or Urbain and Korrina go in with you.'),
  -- 6: Rogue Mega Absol Z (milestone)
  (27, 6, NULL, 270012, NULL),
  -- 7: Hyperspace Hunting Grounds
  (27, 7, 1003, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Staraptor in it. Taunie or Urbain and Korrina go in with you.'),
  -- 8: Rogue Mega Staraptor (milestone)
  (27, 8, NULL, 270013, NULL),
  -- 9: Hyperspace Sushi Paradise
  (27, 9, 1004, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Tatsugiri in it. Taunie or Urbain and Korrina go in with you.'),
  -- 10: Rogue Mega Tatsugiri (milestone)
  (27, 10, NULL, 270014, NULL),
  -- 11: Hyperspace Second-Sight Arena
  (27, 11, 1005, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Meowstic in it. Taunie or Urbain and Korrina go in with you.'),
  -- 12: Rogue Mega Meowstic (milestone)
  (27, 12, NULL, 270015, NULL),
  -- 13: Hyperspace Infernal Arena
  (27, 13, 1006, NULL, 'The fifth arena the surveys find.'),
  -- 14: Lumiose City
  (27, 14, 798, NULL, 'One Pokémon is holding Hyperspace Lumiose together. Ansha bakes the Bad Dreams Cruller, and the Trainers of the Z-A Royale lend their Key Stones to send you to it.'),
  -- 15: Rogue Mega Darkrai (milestone)
  (27, 15, NULL, 270003, NULL),
  -- 16: Hyperspace Lumiose
  (27, 16, 806, NULL, 'Hyperspace Lumiose has stopped growing. Ansha still wants a Rayquaza as a gift for her mother, Diantha.'),
  -- 17: Capture Groudon (milestone)
  (27, 17, NULL, 270004, NULL),
  -- 18: Capture Kyogre (milestone)
  (27, 18, NULL, 270005, NULL),
  -- 19: Pokémon Research Lab
  (27, 19, 445, NULL, 'Mable studies the Red and Blue Orbs and works out what Ansha has to do for Rayquaza''s realm to appear.'),
  -- 20: Rogue Mega Rayquaza (milestone)
  (27, 20, NULL, 270006, NULL),
  -- 21: Wild Zone 13
  (27, 21, 488, NULL, 'A distortion opens at the wall of this Wild Zone once you own all four Drives.'),
  -- 22: Collecting Four Drives (milestone)
  (27, 22, NULL, 270007, NULL),
  -- 23: Rouge Sector 1
  (27, 23, 804, NULL, 'At dusk, the shadow of Prism Tower reaches the battle court here. A bank in this sector has a small visitor it cannot get rid of.'),
  -- 24: The Stealthy Shadow (milestone)
  (27, 24, NULL, 270008, NULL),
  -- 25: Dreams of Meltan (milestone)
  (27, 25, NULL, 270009, NULL),
  -- 26: Pokémon Research Lab
  (27, 26, 445, NULL, 'Mable has a hacked Poké Ball in the basement that she cannot open alone.'),
  -- 27: Volcanion Unleashed (milestone)
  (27, 27, NULL, 270010, NULL),
  -- 28: The Djinn Unbound (milestone)
  (27, 28, NULL, 270011, NULL),
  -- 29: Rust Syndicate Office
  (27, 29, 981, NULL, 'The Rust Syndicate runs Special Scans of Hyperspace Lumiose for 25,000 Hyperspace Survey Points each.'),
  -- 30: Special Scans (milestone)
  (27, 30, NULL, 270016, NULL),
  -- 31: Quasartico Inc. (building)
  (27, 31, 448, NULL, 'Jett has something that will not wake without a great many Mega Shards.'),
  -- 32: Restarting Magearna (milestone)
  (27, 32, NULL, 270023, NULL),
  -- 33: Raging Lightning (milestone)
  (27, 33, NULL, 270024, NULL);
