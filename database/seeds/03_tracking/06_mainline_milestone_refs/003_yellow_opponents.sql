-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Scope: Pokémon Yellow milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Yellow battle milestones to their primary opponents.
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
  (20003, 2001, 2, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (20005, 2002, 2, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (20006, 2003, 2, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (20007, 2004, 2, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (20008, 2005, 2, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (20009, 2006, 2, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (20011, 2007, 2, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (20012, 2008, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (20013, 2009, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (20014, 2010, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (20015, 2011, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (20016, 2012, 2, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (20017, 2013, 2, 'battle-opponent', 1, NULL);
