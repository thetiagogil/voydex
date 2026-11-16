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
  -- 7: Hotel Z
  (27, 7, 437, NULL, 'Lebanne storms into the hotel with Gwynn, angry at how the surveys are run. Naveen steps in beside you for a Multi Battle in front of the hotel.'),
  -- 8: Hyperspace Hunting Grounds
  (27, 8, 1003, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Staraptor in it. Taunie or Urbain and Korrina go in with you.'),
  -- 9: Rogue Mega Staraptor (milestone)
  (27, 9, NULL, 270013, NULL),
  -- 10: Hyperspace Sushi Paradise
  (27, 10, 1004, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Tatsugiri in it. Taunie or Urbain and Korrina go in with you.'),
  -- 11: Rogue Mega Tatsugiri (milestone)
  (27, 11, NULL, 270014, NULL),
  -- 12: Hotel Richissime
  (27, 12, 982, NULL, 'The survey points to this grand hotel. Jacinthe and Griselle are waiting, and Lida fights beside you in a Multi Battle.'),
  -- 13: Hyperspace Second-Sight Arena
  (27, 13, 1005, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Meowstic in it. Taunie or Urbain and Korrina go in with you.'),
  -- 14: Rogue Mega Meowstic (milestone)
  (27, 14, NULL, 270015, NULL),
  -- 15: Hyperspace Infernal Arena
  (27, 15, 1006, NULL, 'The fifth arena the surveys find.'),
  -- 16: Lumiose City
  (27, 16, 798, NULL, 'One Pokémon is holding Hyperspace Lumiose together. Ansha bakes the Bad Dreams Cruller, and the Trainers of the Z-A Royale lend their Key Stones to send you to it.'),
  -- 17: Rogue Mega Darkrai (milestone)
  (27, 17, NULL, 270003, NULL),
  -- 18: Hyperspace Lumiose
  (27, 18, 806, NULL, 'Hyperspace Lumiose has stopped growing. Ansha still wants a Rayquaza as a gift for her mother, Diantha.'),
  -- 19: Capture Groudon (milestone)
  (27, 19, NULL, 270004, NULL),
  -- 20: Capture Kyogre (milestone)
  (27, 20, NULL, 270005, NULL),
  -- 21: Pokémon Research Lab
  (27, 21, 445, NULL, 'Mable studies the Red and Blue Orbs and works out what Ansha has to do for Rayquaza''s realm to appear.'),
  -- 22: Rogue Mega Rayquaza (milestone)
  (27, 22, NULL, 270006, NULL),
  -- 23: Wild Zone 13
  (27, 23, 488, NULL, 'A distortion opens at the wall of this Wild Zone once you own all four Drives.'),
  -- 24: Collecting Four Drives (milestone)
  (27, 24, NULL, 270007, NULL),
  -- 25: Rouge Sector 1
  (27, 25, 804, NULL, 'At dusk, the shadow of Prism Tower reaches the battle court here. A bank in this sector has a small visitor it cannot get rid of. Thelo gives you a Gimmighoul at the start of his side mission here.'),
  -- 26: The Stealthy Shadow (milestone)
  (27, 26, NULL, 270008, NULL),
  -- 27: Dreams of Meltan (milestone)
  (27, 27, NULL, 270009, NULL),
  -- 28: Pokémon Research Lab
  (27, 28, 445, NULL, 'Mable has a hacked Poké Ball in the basement that she cannot open alone.'),
  -- 29: Volcanion Unleashed (milestone)
  (27, 29, NULL, 270010, NULL),
  -- 30: The Djinn Unbound (milestone)
  (27, 30, NULL, 270011, NULL),
  -- 31: Rust Syndicate Office
  (27, 31, 981, NULL, 'The Rust Syndicate runs Special Scans of Hyperspace Lumiose for 25,000 Hyperspace Survey Points each.'),
  -- 32: Special Scans (milestone)
  (27, 32, NULL, 270016, NULL),
  -- 33: Quasartico Inc. (building)
  (27, 33, 448, NULL, 'Jett has something that will not wake without a great many Mega Shards.'),
  -- 34: Restarting Magearna (milestone)
  (27, 34, NULL, 270023, NULL),
  -- 35: Raging Lightning (milestone)
  (27, 35, NULL, 270024, NULL),
  -- 36: Hyperspace Wild Zones (milestone)
  (27, 36, NULL, 270025, NULL),
  -- 37: Bleu Sector 6
  (27, 37, 805, NULL, 'A side trip to a sector of the Bleu District, north of Bleu Sector 8.');
