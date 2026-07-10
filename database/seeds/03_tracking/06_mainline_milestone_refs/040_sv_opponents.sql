-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Scope: Pokémon Scarlet / Violet milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Scarlet / Violet battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge -> Katy
  (230003, 23001, 23, 'battle-opponent', 1, NULL),
  -- Grass Badge -> Brassius
  (230004, 23002, 23, 'battle-opponent', 1, NULL),
  -- Electric Badge -> Iono
  (230005, 23003, 23, 'battle-opponent', 1, NULL),
  -- Water Badge -> Kofu
  (230006, 23004, 23, 'battle-opponent', 1, NULL),
  -- Normal Badge -> Larry
  (230007, 23005, 23, 'battle-opponent', 1, NULL),
  -- Ghost Badge -> Ryme
  (230008, 23006, 23, 'battle-opponent', 1, NULL),
  -- Psychic Badge -> Tulip
  (230009, 23007, 23, 'battle-opponent', 1, NULL),
  -- Ice Badge -> Grusha
  (230010, 23008, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Rika -> Rika
  (230011, 23009, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Poppy -> Poppy
  (230012, 23010, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Larry -> Larry
  (230013, 23011, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Hassel -> Hassel
  (230014, 23012, 23, 'battle-opponent', 1, NULL),
  -- Champion Geeta -> Geeta
  (230015, 23013, 23, 'battle-opponent', 1, NULL),
  -- Champion Nemona -> Nemona
  (230016, 23014, 23, 'battle-opponent', 1, NULL),
  -- Dark Crew -> Giacomo
  (230017, 23015, 23, 'battle-opponent', 1, NULL),
  -- Fire Crew -> Mela
  (230018, 23016, 23, 'battle-opponent', 1, NULL),
  -- Poison Crew -> Atticus
  (230019, 23017, 23, 'battle-opponent', 1, NULL),
  -- Fairy Crew -> Ortega
  (230020, 23018, 23, 'battle-opponent', 1, NULL),
  -- Fighting Crew -> Eri
  (230021, 23019, 23, 'battle-opponent', 1, NULL),
  -- Defeat Clavell -> Clavell
  (230022, 23020, 23, 'battle-opponent', 1, NULL),
  -- Defeat Penny -> Penny
  (230023, 23021, 23, 'battle-opponent', 1, NULL),
  -- Stony Cliff Titan -> Stony Cliff Titan
  (230024, 23022, 23, 'battle-opponent', 1, NULL),
  -- Open Sky Titan -> Open Sky Titan
  (230025, 23023, 23, 'battle-opponent', 1, NULL),
  -- Lurking Steel Titan -> Lurking Steel Titan
  (230026, 23024, 23, 'battle-opponent', 1, NULL),
  -- Quaking Earth Titan -> Quaking Earth Titan
  (230027, 23025, 23, 'battle-opponent', 1, NULL),
  -- False Dragon Titan -> False Dragon Titan
  (230028, 23026, 23, 'battle-opponent', 1, NULL),
  -- Defeat Arven -> Arven
  (230029, 23027, 23, 'battle-opponent', 1, NULL),
  -- Defeat AI Professor -> AI Professor
  (230031, 23028, 23, 'battle-opponent', 1, NULL);
