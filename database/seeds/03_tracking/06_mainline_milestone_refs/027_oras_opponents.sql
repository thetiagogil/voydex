-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Omega Ruby / Alpha Sapphire battle milestones to their primary opponents.
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
  (140003, 14001, 14, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (140004, 14002, 14, 'battle-opponent', 1, NULL),
  -- Dynamo Badge -> Wattson
  (140005, 14003, 14, 'battle-opponent', 1, NULL),
  -- Heat Badge -> Flannery
  (140007, 14004, 14, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (140008, 14005, 14, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (140009, 14006, 14, 'battle-opponent', 1, NULL),
  -- Mind Badge -> Tate & Liza
  (140010, 14007, 14, 'battle-opponent', 1, NULL),
  -- Rain Badge -> Wallace
  (140011, 14008, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Sidney -> Sidney
  (140012, 14009, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Phoebe -> Phoebe
  (140013, 14010, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (140014, 14011, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (140015, 14012, 14, 'battle-opponent', 1, NULL),
  -- Champion Steven -> Steven
  (140016, 14013, 14, 'battle-opponent', 1, NULL),
  -- Delta Episode -> Zinnia
  (140018, 14014, 14, 'battle-opponent', 1, NULL);
