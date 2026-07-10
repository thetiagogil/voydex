-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Scope: Pokémon X / Y milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links X / Y Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge milestone -> Bug Badge
  (130003, 13001, 13, 'reward', 1, NULL),
  -- Cliff Badge milestone -> Cliff Badge
  (130006, 13002, 13, 'reward', 1, NULL),
  -- Rumble Badge milestone -> Rumble Badge
  (130007, 13003, 13, 'reward', 1, NULL),
  -- Plant Badge milestone -> Plant Badge
  (130008, 13004, 13, 'reward', 1, NULL),
  -- Voltage Badge milestone -> Voltage Badge
  (130009, 13005, 13, 'reward', 1, NULL),
  -- Fairy Badge milestone -> Fairy Badge
  (130010, 13006, 13, 'reward', 1, NULL),
  -- Psychic Badge milestone -> Psychic Badge
  (130011, 13007, 13, 'reward', 1, NULL),
  -- Iceberg Badge milestone -> Iceberg Badge
  (130012, 13008, 13, 'reward', 1, NULL);
