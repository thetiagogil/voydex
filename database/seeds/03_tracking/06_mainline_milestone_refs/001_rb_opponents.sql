-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Red / Blue battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge -> Brock
  (10003, 1001, 1, 'battle-opponent', 2, NULL),
  -- Cascade Badge -> Misty
  (10005, 1002, 1, 'battle-opponent', 2, NULL),
  -- Thunder Badge -> Lt. Surge
  (10006, 1003, 1, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (10007, 1004, 1, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (10008, 1005, 1, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (10009, 1006, 1, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (10011, 1007, 1, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (10012, 1008, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (10013, 1009, 1, 'battle-opponent', 2, NULL),
  -- Elite Four Bruno -> Bruno
  (10014, 1010, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (10015, 1011, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (10016, 1012, 1, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (10017, 1013, 1, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Blue
  (10001, 1014, 1, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town'),
  -- Boulder Badge -> Blue
  (10003, 1014, 1, 'battle-opponent', 1, 'Route 22. You can skip this battle.'),
  -- Cascade Badge -> Blue
  (10005, 1014, 1, 'battle-opponent', 1, 'Cerulean City (north exit, before Nugget Bridge)'),
  -- S.S. Anne -> Blue
  (10019, 1014, 1, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City'),
  -- Pokémon Tower -> Blue
  (10021, 1014, 1, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town'),
  -- Rocket Hideout -> Giovanni
  (10020, 1015, 1, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City'),
  -- Silph Co. -> Blue
  (10022, 1014, 1, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City'),
  -- Silph Co. -> Giovanni
  (10022, 1015, 1, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City'),
  -- Elite Four Lorelei -> Blue
  (10013, 1014, 1, 'battle-opponent', 1, 'Route 22');
