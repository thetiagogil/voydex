-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Brilliant Diamond / Shining Pearl battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge -> Roark
  (210003, 21001, 21, 'battle-opponent', 1, NULL),
  -- Forest Badge -> Gardenia
  (210004, 21002, 21, 'battle-opponent', 1, NULL),
  -- Cobble Badge -> Maylene
  (210005, 21003, 21, 'battle-opponent', 1, NULL),
  -- Fen Badge -> Crasher Wake
  (210006, 21004, 21, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (210007, 21005, 21, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (210008, 21006, 21, 'battle-opponent', 1, NULL),
  -- Icicle Badge -> Candice
  (210009, 21007, 21, 'battle-opponent', 1, NULL),
  -- Beacon Badge -> Volkner
  (210010, 21008, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (210011, 21009, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Bertha -> Bertha
  (210012, 21010, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (210013, 21011, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (210014, 21012, 21, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (210015, 21013, 21, 'battle-opponent', 1, NULL);
