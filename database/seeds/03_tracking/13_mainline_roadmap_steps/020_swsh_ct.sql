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
  (20, 3, 613, NULL, 'Peonia has slipped away into the Max Lair. Go in for a Dynamax Adventure, and she asks you to take her place on her father''s trip. Much later, catch five Ultra Beasts here and the attendant gives you a Poipole.'),
  -- 4: Freezington
  (20, 4, 590, NULL, 'A village in the snow. Peony makes the Freeze Inn his base, names you chief of the expedition and hands you three Legendary Clues.'),
  -- 5: Arrive at the Crown Tundra (milestone)
  (20, 5, NULL, 200001, NULL),
  -- 6: Freezington
  (20, 6, 590, NULL, 'Put Peony''s wooden crown back on the statue. Calyrex then speaks to you through Peony and asks for its lost steed. Buy Carrot Seeds in the village to lure it.'),
  -- 7: Frostpoint Field
  (20, 7, 592, NULL, 'The snowfield outside the village, on the way to the two carrot fields.'),
  -- 8: Giant's Bed
  (20, 8, 595, NULL, 'A wide plain below the village. The Old Cemetery is on it, and Snowslide Slope climbs away from it.'),
  -- 9: Snowslide Slope
  (20, 9, 639, NULL, 'The field here grows an Iceroot Carrot from the Carrot Seeds. The Iceberg Ruins stand sealed further up.'),
  -- 10: Old Cemetery
  (20, 10, 620, NULL, 'The field here grows a Shaderoot Carrot from the Carrot Seeds.'),
  -- 11: Steed Choice (milestone)
  (20, 11, NULL, 200003, NULL),
  -- 12: Freezington
  (20, 12, 590, NULL, 'The steed smells its carrot and charges into the village. Drive it back. After that, an old woman in the village gives you a Cosmog.'),
  -- 13: Tunnel to the Top
  (20, 13, 650, NULL, 'At the top of Snowslide Slope, a cave up the mountain toward the Crown Shrine.'),
  -- 14: Path to the Peak
  (20, 14, 621, NULL, 'A snowy climb to the shrine at the top.'),
  -- 15: Calyrex Quest (milestone)
  (20, 15, NULL, 200004, NULL),
  -- 16: Rock Peak Ruins
  (20, 16, 625, NULL, 'The second clue. Sealed ruins south of the Old Cemetery, by the river. Peony phones the first time you reach one of the three.'),
  -- 17: Iceberg Ruins
  (20, 17, 606, NULL, 'Sealed ruins at the top of Snowslide Slope.'),
  -- 18: Giant's Bed
  (20, 18, 595, NULL, 'The Iron Ruins stand sealed on the plain.'),
  -- 19: Regi Temples (milestone)
  (20, 19, NULL, 200006, NULL),
  -- 20: Three-Point Pass
  (20, 20, 647, NULL, 'A pass at the edge of the tundra. The Split-Decision Ruins stand in it and open once you have the three giants.'),
  -- 21: Regi Choice (milestone)
  (20, 21, NULL, 200005, NULL),
  -- 22: Ballimere Lake
  (20, 22, 574, NULL, 'The third clue. A lake at the south end of the tundra, around a hill with a great red tree.'),
  -- 23: Galarian Birds (milestone)
  (20, 23, NULL, 200007, NULL),
  -- 24: Freezington
  (20, 24, 590, NULL, 'Back in the village, tell Peony about each clue you finish. With all three done, he calls the expedition a success.'),
  -- 25: Finish Crown Tundra Expeditions (milestone)
  (20, 25, NULL, 200008, NULL),
  -- 26: Frostpoint Field
  (20, 26, 592, NULL, 'Footprints lead away from a tree by the village. Sonia is studying them and asks you to find more across the tundra.'),
  -- 27: Giant's Foot
  (20, 27, 597, NULL, 'A side trip east of Giant''s Bed.'),
  -- 28: Roaring-Sea Caves
  (20, 28, 624, NULL, 'Caves north of Giant''s Foot that open onto the Frigid Sea.'),
  -- 29: Frigid Sea
  (20, 29, 591, NULL, 'Past Three-Point Pass, the cold sea off the tundra''s coast, with one big island.'),
  -- 30: Lakeside Cave
  (20, 30, 610, NULL, 'A cave on the shore of Ballimere Lake.'),
  -- 31: Swords of Justice (milestone)
  (20, 31, NULL, 200009, NULL),
  -- 32: Ballimere Lake
  (20, 32, 574, NULL, 'A small island in the lake has an old cooking pot on it.'),
  -- 33: Ballimere Lake (milestone)
  (20, 33, NULL, 200010, NULL);
