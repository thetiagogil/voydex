-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Isle of Armor story and location pages.
-- Scope: Pokémon Sword / Shield: The Isle of Armor story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor's story and decision milestones, each at the place it
-- happens (location_id), in Red / Blue's pattern. The two towers share one
-- place, the Towers of Two Fists, since a Play climbs only one.
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
  -- Arrive at the Isle of Armor (Master Dojo)
  (190001, 19, NULL, 1901, 1, 1, NULL, 'arrive-isle-of-armor', 'Arrive at the Isle of Armor', 'Travel to the Isle of Armor. Klara in Sword or Avery in Shield battles you at the station, then Mustard tests you at the Master Dojo and takes you on as a student.', 1, true, 612),
  -- Dojo Trials (Master Dojo)
  (190002, 19, NULL, 1901, 5, 2, NULL, 'dojo-trials', 'Dojo Trials', 'Pass Mustard''s three trials. Catch the three fast Slowpoke in the Soothing Wetlands, bring Max Mushrooms back from the Warm-Up Tunnel past your rival, then beat that rival on the dojo''s battle court. Mustard gives you the dojo''s secret armor, the Pokémon Kubfu.', 2, true, 612),
  -- Choose Dojo Starter (Master Dojo)
  (190003, 19, NULL, 1901, 12, 1, NULL, 'choose-dojo-starter', 'Choose Dojo Starter', 'After the first trial, Mustard offers you a Bulbasaur or a Squirtle that can Gigantamax.', 3, false, 612),
  -- Tower Choice (Towers of Two Fists)
  (190005, 19, NULL, 1901, 12, 1, NULL, 'tower-choice', 'Tower Choice', 'Walk with Kubfu and show it the island''s views until it trusts you, then take it to one of the Towers of Two Fists. The Tower of Darkness makes it a Single Strike Urshifu and the Tower of Waters a Rapid Strike Urshifu. You can enter only one.', 4, true, 942),
  -- Tower of Two Fists (Towers of Two Fists)
  (190006, 19, NULL, 1901, 1, 3, NULL, 'tower-of-two-fists', 'Tower of Two Fists', 'Climb the five floors of the tower with Kubfu alone. Mustard waits at the top with his own Kubfu. Beat him, and the scroll there makes your Kubfu evolve into Urshifu.', 5, true, 942),
  -- Final Mustard Battle (Master Dojo)
  (190007, 19, NULL, 1901, 6, 3, NULL, 'final-mustard-battle', 'Final Mustard Battle', 'Make Max Soup for Urshifu with Hop''s help, using Max Honey from the Vespiquen on Honeycalm Island. Mustard then battles you at full strength on the dojo''s battle court.', 6, true, 612);
