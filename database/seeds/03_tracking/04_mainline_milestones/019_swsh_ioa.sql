-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Isle of Armor, Kubfu, Urshifu, and Gift Pokémon pages.
-- Scope: Pokémon The Isle of Armor major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  is_required_for_completion
) VALUES
  -- Arrive at the Isle of Armor
  (190001, 19, NULL, 1901, 1, 1, NULL, 'arrive-isle-of-armor', 'Arrive at the Isle of Armor', 'Arrive at the Isle of Armor and reach the Master Dojo.', 1, true),
  -- Dojo Rival Battle
  (190002, 19, NULL, 1901, 5, 2, NULL, 'dojo-trials', 'Dojo Trials', 'Clear the three trials of the Master Dojo, battling Klara or Avery in the Warm-Up Tunnel and then at the dojo.', 2, true),
  -- Choose Dojo Starter
  (190003, 19, NULL, 1901, 12, 1, NULL, 'choose-dojo-starter', 'Choose Dojo Starter', 'Choose Bulbasaur or Squirtle at the Master Dojo.', 3, false),
  -- Receive Kubfu
  (190004, 19, NULL, 1901, 1, 1, NULL, 'receive-kubfu', 'Receive Kubfu', 'Receive Kubfu from Mustard at the Master Dojo.', 4, true),
  -- Tower Choice
  (190005, 19, NULL, 1901, 12, 1, NULL, 'tower-choice', 'Tower Choice', 'Choose the Tower of Darkness or Tower of Waters for Kubfu.', 5, true),
  -- Tower of Two Fists
  (190006, 19, NULL, 1901, 1, 3, NULL, 'tower-of-two-fists', 'Tower of Two Fists', 'Complete the chosen Tower of Two Fists and evolve Kubfu into Urshifu.', 6, true),
  -- Final Mustard Battle
  (190007, 19, NULL, 1901, 6, 3, NULL, 'final-mustard-battle', 'Final Mustard Battle', 'Defeat Mustard in the final Isle of Armor story battle.', 7, true);
