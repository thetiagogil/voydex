-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's The Indigo Disk and Mochi Mayhem story pages, with its
-- location pages for the Terarium.
-- Scope: Pokémon The Indigo Disk Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- The Indigo Disk's Story roadmap, step by step, in Red / Blue's pattern: a
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
  -- 1: Blueberry Academy
  (25, 1, 974, NULL, 'A school of battling in the sea off Unova. Director Cyrano welcomes you as an exchange student, on Carmine''s word. Lacey battles you at the entrance.'),
  -- 2: Arrive at Blueberry Academy (milestone)
  (25, 2, NULL, 250001, NULL),
  -- 3: League Club Room
  (25, 3, 797, NULL, 'Drayton tells you about the BB League, the school''s own Pokémon League. Kieran is its Champion now and thinks of nothing but getting stronger. A vote lets you go straight to its Elite Four, one in each biome of the Terarium.'),
  -- 4: Savanna Biome
  (25, 4, 778, NULL, 'One of the four biomes of the Terarium, the dome where the academy keeps its Pokémon. Crispin sets his Elite Trial here.'),
  -- 5: BB Elite Four Crispin (milestone)
  (25, 5, NULL, 250002, NULL),
  -- 6: Canyon Biome
  (25, 6, 742, NULL, 'Amarys sets her Elite Trial here.'),
  -- 7: BB Elite Four Amarys (milestone)
  (25, 7, NULL, 250003, NULL),
  -- 8: Coastal Biome
  (25, 8, 747, NULL, 'Lacey sets her Elite Trial here.'),
  -- 9: BB Elite Four Lacey (milestone)
  (25, 9, NULL, 250004, NULL),
  -- 10: Torchlit Labyrinth
  (25, 10, 788, NULL, 'A side trip into the cavern under the Coastal Biome.'),
  -- 11: Polar Biome
  (25, 11, 776, NULL, 'Drayton sets his Elite Trial here.'),
  -- 12: BB Elite Four Drayton (milestone)
  (25, 12, NULL, 250005, NULL),
  -- 13: Chargestone Cavern
  (25, 13, 745, NULL, 'A side trip into the cavern under the Polar and Canyon Biomes, full of blue charged rocks.'),
  -- 14: League Club Room
  (25, 14, 797, NULL, 'With the four beaten, you can challenge the Champion.'),
  -- 15: BB Champion Kieran (milestone)
  (25, 15, NULL, 250006, NULL),
  -- 16: Blueberry Academy
  (25, 16, 974, NULL, 'Briar has leave to enter Area Zero and asks you, Carmine and Kieran along. Geeta and Rika come by with an old researcher''s artifact, the Indigo Disk.'),
  -- 17: Area Zero
  (25, 17, 739, NULL, 'Back in the Great Crater of Paldea, go down to the Zero Lab.'),
  -- 18: Zero Lab
  (25, 18, 795, NULL, 'The Indigo Disk sends the lab''s lift further down than the time machine room.'),
  -- 19: Terapagos (milestone)
  (25, 19, NULL, 250008, NULL),
  -- 20: Mossui Town
  (25, 20, 765, NULL, 'After the story, fly back to Kitakami. A decoration has turned up at Peachy''s, the shop in Mossui Town.'),
  -- 21: Mochi Mayhem (milestone)
  (25, 21, NULL, 250009, NULL),
  -- 22: Coastal Biome
  (25, 22, 747, NULL, 'Back in the Terarium, a leaf cyclone turns east of the Coastal Outdoor Classroom.'),
  -- 23: Coastal Biome (milestone)
  (25, 23, NULL, 250010, NULL),
  -- 24: Area Zero
  (25, 24, 739, NULL, 'Perrin has photos of Pokémon nobody has recorded. She shares them once your Blueberry Pokédex has 200 entries.'),
  -- 25: Perrin's Paradox Photos (milestone)
  (25, 25, NULL, 250011, NULL),
  -- 26: Blueberry Academy
  (25, 26, 974, NULL, 'Snacksworth, by the entrance, hands out treats for finishing Blueberry Quests.'),
  -- 27: Snacksworth's Legendary Treats (milestone)
  (25, 27, NULL, 250012, NULL);
