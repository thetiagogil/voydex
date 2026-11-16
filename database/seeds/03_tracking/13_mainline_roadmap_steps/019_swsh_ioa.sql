-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Isle of Armor story and location pages.
-- Scope: Pokémon Sword / Shield: The Isle of Armor Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- The Isle of Armor's Story roadmap, step by step, in Red / Blue's pattern: a
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
  -- 1: Fields of Honor
  (19, 1, 588, NULL, 'The fields around the island''s station. Klara in Sword or Avery in Shield, a student of the dojo, takes you for the new student and battles you. A hiker asks you to find the Alolan Diglett hidden across the island. He gives you Alolan Pokémon as you find more.'),
  -- 2: Master Dojo
  (19, 2, 612, NULL, 'The dojo of Mustard, once Galar''s Champion. He tests you on the battle court and takes you on as a student.'),
  -- 3: Arrive at the Isle of Armor (milestone)
  (19, 3, NULL, 190001, NULL),
  -- 4: Soothing Wetlands
  (19, 4, 640, NULL, 'The first trial. Three fast Slowpoke have run off with the dojo uniform. Chase each one down and beat it.'),
  -- 5: Master Dojo
  (19, 5, 612, NULL, 'Bring the uniform back. For passing the first trial, you are given a Bulbasaur or a Squirtle that can Gigantamax.'),
  -- 6: Choose Dojo Starter (milestone)
  (19, 6, NULL, 190003, NULL),
  -- 7: Forest of Focus
  (19, 7, 589, NULL, 'The second trial sends you after three Max Mushrooms. The way runs through this forest.'),
  -- 8: Training Lowlands
  (19, 8, 649, NULL, 'Open ground past the forest, with the Warm-Up Tunnel on its far side.'),
  -- 9: Warm-Up Tunnel
  (19, 9, 653, NULL, 'Max Mushrooms grow at the far end. Your rival gets there first and battles you for them.'),
  -- 10: Master Dojo
  (19, 10, 612, NULL, 'The third trial, back at the dojo. You and your rival are the only two left, and the secret armor goes to whoever wins on the battle court. The armor is a Kubfu.'),
  -- 11: Dojo Trials (milestone)
  (19, 11, NULL, 190002, NULL),
  -- 12: Challenge Beach
  (19, 12, 579, NULL, 'Mustard marks views around the island to show Kubfu. The first way runs past the Soothing Wetlands and along this beach, where the Tower of Waters stands.'),
  -- 13: Courageous Cavern
  (19, 13, 582, NULL, 'A cave on the way to the next view.'),
  -- 14: Loop Lagoon
  (19, 14, 611, NULL, 'A lagoon by the sea. A student of the dojo is here to share the view.'),
  -- 15: Brawlers' Cave
  (19, 15, 577, NULL, 'A cave through to Challenge Road.'),
  -- 16: Challenge Road
  (19, 16, 580, NULL, 'A climb through the hills. The Tower of Darkness stands at its end.'),
  -- 17: Potbottom Desert
  (19, 17, 623, NULL, 'A desert in the middle of the island, on the way round.'),
  -- 18: Tower Choice (milestone)
  (19, 18, NULL, 190005, NULL),
  -- 19: Tower of Two Fists (milestone)
  (19, 19, NULL, 190006, NULL),
  -- 20: Master Dojo
  (19, 20, 612, NULL, 'Back at the dojo, Hop is studying Dynamax. Urshifu can Gigantamax, but it won''t take Max Soup without a secret ingredient that Mustard has forgotten.'),
  -- 21: Forest of Focus
  (19, 21, 589, NULL, 'Hop thinks the ingredient is honey and looks for nectar here. A lost Pokémon needs its parent found first.'),
  -- 22: Honeycalm Island
  (19, 22, 603, NULL, 'An island out at sea. A Dynamax Vespiquen guards the Max Honey at its tree. Beat it with Hop.'),
  -- 23: Master Dojo
  (19, 23, 612, NULL, 'Back at the dojo, make the Max Soup for Urshifu. Mustard is waiting on the battle court, this time at full strength. After you beat him, his son Hyde gives you a Porygon.'),
  -- 24: Final Mustard Battle (milestone)
  (19, 24, NULL, 190007, NULL);
