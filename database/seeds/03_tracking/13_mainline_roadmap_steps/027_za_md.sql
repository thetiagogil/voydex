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
  -- 10: Lumiose Museum
  (27, 10, 441, NULL, 'A break from the surveys. Ansha and Korrina take you sightseeing around the city, to the museum and a café, until Corbeau calls again.'),
  -- 11: Hotel Z
  (27, 11, 437, NULL, 'A loud boom comes from Team MZ''s strategy room. Search it for the source of the noise.'),
  -- 12: Hyperspace Sushi Paradise
  (27, 12, 1004, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Tatsugiri in it. Taunie or Urbain and Korrina go in with you.'),
  -- 13: Rogue Mega Tatsugiri (milestone)
  (27, 13, NULL, 270014, NULL),
  -- 14: Hotel Z
  (27, 14, 437, NULL, 'Naveen misses breakfast. Only his Scrafty turns up, and it leads you to his room to check on him.'),
  -- 15: Hotel Richissime
  (27, 15, 982, NULL, 'The survey points to this grand hotel. Jacinthe and Griselle are waiting, and Lida fights beside you in a Multi Battle.'),
  -- 16: Hyperspace Second-Sight Arena
  (27, 16, 1005, NULL, 'A survey finds this arena inside Hyperspace Lumiose, with a Rogue Mega Meowstic in it. Taunie or Urbain and Korrina go in with you.'),
  -- 17: Rogue Mega Meowstic (milestone)
  (27, 17, NULL, 270015, NULL),
  -- 18: Hyperspace Infernal Arena
  (27, 18, 1006, NULL, 'The fifth arena the surveys find.'),
  -- 19: Hotel Z
  (27, 19, 437, NULL, 'At midnight, Lida''s shouting wakes the whole hotel. Go and see what is going on.'),
  -- 20: Lumiose City
  (27, 20, 798, NULL, 'One Pokémon is holding Hyperspace Lumiose together. Ansha bakes the Bad Dreams Cruller, and the Trainers of the Z-A Royale lend their Key Stones to send you to it.'),
  -- 21: Rogue Mega Darkrai (milestone)
  (27, 21, NULL, 270003, NULL),
  -- 22: Hyperspace Lumiose
  (27, 22, 806, NULL, 'Hyperspace Lumiose has stopped growing. Ansha still wants a Rayquaza as a gift for her mother, Diantha.'),
  -- 23: Capture Groudon (milestone)
  (27, 23, NULL, 270004, NULL),
  -- 24: Capture Kyogre (milestone)
  (27, 24, NULL, 270005, NULL),
  -- 25: Pokémon Research Lab
  (27, 25, 445, NULL, 'Mable studies the Red and Blue Orbs and works out what Ansha has to do for Rayquaza''s realm to appear.'),
  -- 26: Rogue Mega Rayquaza (milestone)
  (27, 26, NULL, 270006, NULL),
  -- 27: Wild Zone 13
  (27, 27, 488, NULL, 'A distortion opens at the wall of this Wild Zone once you own all four Drives.'),
  -- 28: Collecting Four Drives (milestone)
  (27, 28, NULL, 270007, NULL),
  -- 29: Rouge Sector 1
  (27, 29, 804, NULL, 'At dusk, the shadow of Prism Tower reaches the battle court here. A bank in this sector has a small visitor it cannot get rid of. Thelo gives you a Gimmighoul at the start of his side mission here.'),
  -- 30: The Stealthy Shadow (milestone)
  (27, 30, NULL, 270008, NULL),
  -- 31: Dreams of Meltan (milestone)
  (27, 31, NULL, 270009, NULL),
  -- 32: Pokémon Research Lab
  (27, 32, 445, NULL, 'Mable has a hacked Poké Ball in the basement that she cannot open alone.'),
  -- 33: Volcanion Unleashed (milestone)
  (27, 33, NULL, 270010, NULL),
  -- 34: The Djinn Unbound (milestone)
  (27, 34, NULL, 270011, NULL),
  -- 35: Rust Syndicate Office
  (27, 35, 981, NULL, 'The Rust Syndicate runs Special Scans of Hyperspace Lumiose for 25,000 Hyperspace Survey Points each.'),
  -- 36: Special Scans (milestone)
  (27, 36, NULL, 270016, NULL),
  -- 37: Quasartico Inc. (building)
  (27, 37, 448, NULL, 'Jett has something that will not wake without a great many Mega Shards.'),
  -- 38: Restarting Magearna (milestone)
  (27, 38, NULL, 270023, NULL),
  -- 39: Raging Lightning (milestone)
  (27, 39, NULL, 270024, NULL),
  -- 40: Hyperspace Wild Zones (milestone)
  (27, 40, NULL, 270025, NULL),
  -- 41: Bleu Sector 6
  (27, 41, 805, NULL, 'A side trip to a sector of the Bleu District, north of Bleu Sector 8. The Passage de la Félicité arcade runs through it, with boutiques such as Kickspin and DEFOG Eyewear.');
