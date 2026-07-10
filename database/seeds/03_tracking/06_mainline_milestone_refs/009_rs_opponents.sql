-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Scope: Pokémon Ruby / Sapphire milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ruby / Sapphire battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Stone Badge -> Roxanne
  (50003, 5001, 5, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (50004, 5002, 5, 'battle-opponent', 1, NULL),
  -- Dynamo Badge -> Wattson
  (50005, 5003, 5, 'battle-opponent', 1, NULL),
  -- Heat Badge -> Flannery
  (50007, 5004, 5, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (50008, 5005, 5, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (50009, 5006, 5, 'battle-opponent', 1, NULL),
  -- Mind Badge -> Tate & Liza
  (50010, 5007, 5, 'battle-opponent', 1, NULL),
  -- Rain Badge -> Wallace
  (50011, 5008, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Sidney -> Sidney
  (50012, 5009, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Phoebe -> Phoebe
  (50013, 5010, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (50014, 5011, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (50015, 5012, 5, 'battle-opponent', 1, NULL),
  -- Champion Steven -> Steven
  (50016, 5013, 5, 'battle-opponent', 1, NULL);
