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
  (210003, 21001, 21, 'battle-opponent', 2, NULL),
  -- Forest Badge -> Gardenia
  (210004, 21002, 21, 'battle-opponent', 1, NULL),
  -- Cobble Badge -> Maylene
  (210005, 21003, 21, 'battle-opponent', 2, NULL),
  -- Fen Badge -> Crasher Wake
  (210006, 21004, 21, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (210007, 21005, 21, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (210008, 21006, 21, 'battle-opponent', 2, NULL),
  -- Icicle Badge -> Candice
  (210009, 21007, 21, 'battle-opponent', 1, NULL),
  -- Beacon Badge -> Volkner
  (210010, 21008, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (210011, 21009, 21, 'battle-opponent', 2, NULL),
  -- Elite Four Bertha -> Bertha
  (210012, 21010, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (210013, 21011, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (210014, 21012, 21, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (210015, 21013, 21, 'battle-opponent', 1, NULL),
  -- Coal Badge -> Barry
  (210003, 21014, 21, 'battle-opponent', 1, 'Route 203'),
  -- Cobble Badge -> Barry
  (210005, 21014, 21, 'battle-opponent', 1, 'Hearthome City'),
  -- Fen Badge -> Barry
  (210006, 21014, 21, 'battle-opponent', 2, 'Pastoria City'),
  -- Mine Badge -> Barry
  (210008, 21014, 21, 'battle-opponent', 1, 'Canalave City'),
  -- Team Galactic HQ -> Cyrus
  (210018, 21015, 21, 'battle-opponent', 1, 'Team Galactic HQ, Veilstone City'),
  -- Spear Pillar -> Cyrus
  (210019, 21015, 21, 'battle-opponent', 1, 'Spear Pillar'),
  -- Elite Four Aaron -> Barry
  (210011, 21014, 21, 'battle-opponent', 1, 'Pokémon League'),
  -- Fight Area -> Barry
  (210020, 21014, 21, 'battle-opponent', 1, 'Fight Area. You can skip this battle.');
