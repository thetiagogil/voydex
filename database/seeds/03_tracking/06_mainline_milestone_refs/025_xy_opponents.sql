-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Scope: Pokémon X / Y milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links X / Y battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge -> Viola
  (130003, 13001, 13, 'battle-opponent', 1, NULL),
  -- Cliff Badge -> Grant
  (130006, 13002, 13, 'battle-opponent', 1, NULL),
  -- Rumble Badge -> Korrina
  (130007, 13003, 13, 'battle-opponent', 1, NULL),
  -- Plant Badge -> Ramos
  (130008, 13004, 13, 'battle-opponent', 1, NULL),
  -- Voltage Badge -> Clemont
  (130009, 13005, 13, 'battle-opponent', 1, NULL),
  -- Fairy Badge -> Valerie
  (130010, 13006, 13, 'battle-opponent', 1, NULL),
  -- Psychic Badge -> Olympia
  (130011, 13007, 13, 'battle-opponent', 1, NULL),
  -- Iceberg Badge -> Wulfric
  (130012, 13008, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Malva -> Malva
  (130013, 13009, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Siebold -> Siebold
  (130014, 13010, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Wikstrom -> Wikstrom
  (130015, 13011, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Drasna -> Drasna
  (130016, 13012, 13, 'battle-opponent', 1, NULL),
  -- Champion Diantha -> Diantha
  (130017, 13013, 13, 'battle-opponent', 1, NULL),
  -- Battle AZ -> AZ
  (130019, 13014, 13, 'battle-opponent', 1, NULL);
