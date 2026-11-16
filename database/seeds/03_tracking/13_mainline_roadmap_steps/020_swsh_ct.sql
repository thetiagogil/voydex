-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Crown Tundra story and location pages.
-- Scope: Pokémon Sword / Shield: The Crown Tundra Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- The Crown Tundra's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the story passes (location_id) or a milestone (milestone_id). The
-- Legendary Clues can be done in any order, so they follow Peony's numbering.
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
  -- 1: Slippery Slope
  (20, 1, 637, NULL, 'The Crown Tundra''s station is at the foot of this slope. Peony and his daughter Peonia are arguing outside, and he battles you.'),
  -- 2: Battle Peony (milestone)
  (20, 2, NULL, 200002, NULL),
  -- 3: Max Lair
  (20, 3, 613, NULL, 'Peonia has slipped away into the Max Lair. Go in for a Dynamax Adventure, and she asks you to take her place on her father''s trip.'),
  -- 4: Freezington
  (20, 4, 590, NULL, 'A village in the snow. Peony makes the Freeze Inn his base, names you chief of the expedition and hands you three Legendary Clues.'),
  -- 5: Arrive at the Crown Tundra (milestone)
  (20, 5, NULL, 200001, NULL),
  -- 6: Steed Choice (milestone)
  (20, 6, NULL, 200003, NULL),
  -- 7: Frostpoint Field
  (20, 7, 592, NULL, 'The snowfield outside the village, on the way to the two carrot fields.'),
  -- 8: Giant's Bed
  (20, 8, 595, NULL, 'A wide plain below the village. The Old Cemetery is on it, and Snowslide Slope climbs away from it.'),
  -- 9: Snowslide Slope
  (20, 9, 639, NULL, 'The field here grows an Iceroot Carrot from the Carrot Seeds. The Iceberg Ruins stand sealed further up.'),
  -- 10: Old Cemetery
  (20, 10, 620, NULL, 'The field here grows a Shaderoot Carrot from the Carrot Seeds.'),
  -- 11: Freezington
  (20, 11, 590, NULL, 'The steed smells its carrot and charges into the village. Drive it back.'),
  -- 12: Tunnel to the Top
  (20, 12, 650, NULL, 'A cave up the mountain toward the Crown Shrine.'),
  -- 13: Path to the Peak
  (20, 13, 621, NULL, 'A snowy climb to the shrine at the top.'),
  -- 14: Calyrex Quest (milestone)
  (20, 14, NULL, 200004, NULL),
  -- 15: Rock Peak Ruins
  (20, 15, 625, NULL, 'The second clue. Sealed ruins south of the Old Cemetery, by the river. Peony phones the first time you reach one of the three.'),
  -- 16: Iceberg Ruins
  (20, 16, 606, NULL, 'Sealed ruins at the top of Snowslide Slope.'),
  -- 17: Giant's Bed
  (20, 17, 595, NULL, 'The Iron Ruins stand sealed on the plain.'),
  -- 18: Regi Temples (milestone)
  (20, 18, NULL, 200006, NULL),
  -- 19: Three-Point Pass
  (20, 19, 647, NULL, 'A pass at the edge of the tundra. The Split-Decision Ruins stand in it and open once you have the three giants.'),
  -- 20: Regi Choice (milestone)
  (20, 20, NULL, 200005, NULL),
  -- 21: Ballimere Lake
  (20, 21, 574, NULL, 'The third clue. A lake at the south end of the tundra, around a hill with a great red tree.'),
  -- 22: Galarian Birds (milestone)
  (20, 22, NULL, 200007, NULL),
  -- 23: Freezington
  (20, 23, 590, NULL, 'Tell Peony about each clue you finish. With all three done, he calls the expedition a success.'),
  -- 24: Finish Crown Tundra Expeditions (milestone)
  (20, 24, NULL, 200008, NULL),
  -- 25: Frostpoint Field
  (20, 25, 592, NULL, 'Footprints lead away from a tree by the village. Sonia is studying them and asks you to find more across the tundra.'),
  -- 26: Frigid Sea
  (20, 26, 591, NULL, 'The cold sea off the tundra''s coast, with one big island.'),
  -- 27: Lakeside Cave
  (20, 27, 610, NULL, 'A cave on the shore of Ballimere Lake.'),
  -- 28: Swords of Justice (milestone)
  (20, 28, NULL, 200009, NULL),
  -- 29: Ballimere Lake
  (20, 29, 574, NULL, 'A small island in the lake has an old cooking pot on it.'),
  -- 30: Ballimere Lake (milestone)
  (20, 30, NULL, 200010, NULL);
