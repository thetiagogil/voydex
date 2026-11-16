-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's The Teal Mask story page, with the places its
-- walkthrough index lists for Kitakami.
-- Scope: Pokémon The Teal Mask Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- The Teal Mask's Story roadmap, step by step, in Red / Blue's pattern: a
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
  -- 1: Kitakami Road
  (24, 1, 761, NULL, 'The bus from Paldea drops your school trip on the road into Kitakami, a land of rice fields under Oni Mountain.'),
  -- 2: Mossui Town
  (24, 2, 765, NULL, 'Kitakami''s one town. Carmine, a local girl, battles you at the gate, and her brother Kieran after her. At the community center, the caretaker pairs you with Kieran to find three signboards.'),
  -- 3: Arrive in Kitakami (milestone)
  (24, 3, NULL, 240001, NULL),
  -- 4: Apple Hills
  (24, 4, 738, NULL, 'Orchards on the way to the first signboard.'),
  -- 5: Loyalty Plaza
  (24, 5, 973, NULL, 'The first signboard stands by the monument to the Loyal Three, who are said to have died fighting an ogre.'),
  -- 6: Reveler's Road
  (24, 6, 777, NULL, 'A road out of town through the rice fields. Later on, Jacq waits here with an Egg that hatches into a Turtwig, a Chimchar or a Piplup.'),
  -- 7: Oni Mountain
  (24, 7, 771, NULL, 'Kieran likes the ogre better than the Loyal Three. He takes you up to its home, the Dreaded Den, and battles you outside it.'),
  -- 8: Mossui Town
  (24, 8, 765, NULL, 'Back in town, Carmine battles you again. The Festival of Masks starts at Kitakami Hall that evening.'),
  -- 9: Festival of Masks (milestone)
  (24, 9, NULL, 240002, NULL),
  -- 10: Mossui Town
  (24, 10, 765, NULL, 'The next day, Carmine''s grandfather tells the true story. The Loyal Three were thieves, and the ogre only fought back. He takes the chipped mask to mend it. Kieran listens at the door.'),
  -- 11: Kitakami Wilds
  (24, 11, 762, NULL, 'Wild country on the way to the last signboard, in the Paradise Barrens.'),
  -- 12: Three Signboards (milestone)
  (24, 12, NULL, 240003, NULL),
  -- 13: Crystal Pool
  (24, 13, 750, NULL, 'At the top of Oni Mountain, with Carmine. The mask needs a crystal from this pool. Briar is here studying the crystals, which give off energy like Terastallizing does.'),
  -- 14: Mossui Town
  (24, 14, 765, NULL, 'Kieran has taken the mended mask and run.'),
  -- 15: Loyalty Plaza
  (24, 15, 973, NULL, 'Kieran battles you for the mask, loses and hits the monument. The Loyal Three come back to life.'),
  -- 16: Kitakami Hall
  (24, 16, 760, NULL, 'The townspeople hand the Loyal Three the three masks kept here and feed them mochi, which makes them huge. Clear Ogre Oustin'' on hard here for a Shiny Munchlax.'),
  -- 17: Paradise Barrens
  (24, 17, 773, NULL, 'One of the Loyal Three has gone to ground here. Beat it with Carmine to win back a mask.'),
  -- 18: Wistful Fields
  (24, 18, 794, NULL, 'The second waits in the pond here.'),
  -- 19: The Loyal Three (milestone)
  (24, 19, NULL, 240004, NULL),
  -- 20: Mossui Town
  (24, 20, 765, NULL, 'Kieran has told the town the truth about Ogerpon. Take her home to the Dreaded Den with Carmine and Kieran.'),
  -- 21: Ogerpon (milestone)
  (24, 21, NULL, 240005, NULL),
  -- 22: Mossui Town
  (24, 22, 765, NULL, 'Perrin, a photographer, is in town. She asks for help once your Kitakami Pokédex has 150 entries. Finish her search and she gives you a Hisuian Growlithe.'),
  -- 23: Bloodmoon Ursaluna (milestone)
  (24, 23, NULL, 240007, NULL),
  -- 24: Paradise Barrens
  (24, 24, 773, NULL, 'After you catch Ogerpon, the Loyal Three are back at their normal size where you fought them.'),
  -- 25: Paradise Barrens (milestone)
  (24, 25, NULL, 240008, NULL),
  -- 26: Wistful Fields (milestone)
  (24, 26, NULL, 240009, NULL),
  -- 27: Oni Mountain (milestone)
  (24, 27, NULL, 240010, NULL);
