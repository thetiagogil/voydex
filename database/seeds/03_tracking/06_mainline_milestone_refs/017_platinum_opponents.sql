-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Scope: Pokémon Platinum milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Platinum battle milestones to their primary opponents.
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
  (90003, 9001, 9, 'battle-opponent', 2, NULL),
  -- Forest Badge -> Gardenia
  (90004, 9002, 9, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (90005, 9003, 9, 'battle-opponent', 1, NULL),
  -- Cobble Badge -> Maylene
  (90006, 9004, 9, 'battle-opponent', 1, NULL),
  -- Fen Badge -> Crasher Wake
  (90007, 9005, 9, 'battle-opponent', 2, NULL),
  -- Mine Badge -> Byron
  (90008, 9006, 9, 'battle-opponent', 2, NULL),
  -- Icicle Badge -> Candice
  (90009, 9007, 9, 'battle-opponent', 1, NULL),
  -- Beacon Badge -> Volkner
  (90010, 9008, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (90011, 9009, 9, 'battle-opponent', 2, NULL),
  -- Elite Four Bertha -> Bertha
  (90012, 9010, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (90013, 9011, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (90014, 9012, 9, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (90015, 9013, 9, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Barry
  (90001, 9014, 9, 'battle-opponent', 1, 'Route 201'),
  -- Coal Badge -> Barry
  (90003, 9014, 9, 'battle-opponent', 1, 'Route 203'),
  -- Relic Badge -> Barry
  (90005, 9014, 9, 'battle-opponent', 2, 'Route 209 gate, Hearthome City'),
  -- Fen Badge -> Barry
  (90007, 9014, 9, 'battle-opponent', 1, 'Pastoria City'),
  -- Celestic Town -> Cyrus
  (90017, 9015, 9, 'battle-opponent', 1, 'Celestic Town ruins'),
  -- Mine Badge -> Barry
  (90008, 9014, 9, 'battle-opponent', 1, 'Canalave City'),
  -- Team Galactic HQ -> Cyrus
  (90018, 9015, 9, 'battle-opponent', 1, 'Team Galactic HQ, Veilstone City'),
  -- Distortion World -> Cyrus
  (90019, 9015, 9, 'battle-opponent', 1, 'Distortion World'),
  -- Elite Four Aaron -> Barry
  (90011, 9014, 9, 'battle-opponent', 1, 'Pokémon League'),
  -- Stark Mountain -> Barry
  (90020, 9014, 9, 'battle-opponent', 1, 'Survival Area. You can skip this battle.');
