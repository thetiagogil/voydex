-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia, Serebii, and PokemonDB terminology.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon, move, and item availability method lookup rows.
-- ============================================================================
INSERT INTO reference.availability_methods (id, slug, name, description, sort_order)
VALUES
  -- Native Encounter
  (1, 'native_encounter', 'Native Encounter', 'Available through ordinary wild or overworld encounters in the selected game or content scope.', 1),
  -- Static Encounter
  (2, 'static_encounter', 'Static Encounter', 'Available as a fixed, scripted, visible, or otherwise non-random encounter in the selected game or content scope.', 2),
  -- Starter
  (3, 'starter', 'Starter', 'Available as a first partner or starter choice in the selected game or content scope.', 3),
  -- Gift
  (4, 'gift', 'Gift', 'Available as a gift, prize, or direct NPC reward that is not an in-game trade.', 4),
  -- In-Game Trade
  (5, 'in_game_trade', 'In-Game Trade', 'Available through a trade with an NPC inside the selected game or content scope.', 5),
  -- Fossil Restoration
  (6, 'fossil_restoration', 'Fossil Restoration', 'Available by restoring a fossil or fossil-like item inside the selected game or content scope.', 6),
  -- Evolution
  (7, 'evolution', 'Evolution', 'Available by evolving an available source Pokémon under the selected game or content rules.', 7),
  -- Breeding
  (8, 'breeding', 'Breeding', 'Available by breeding compatible Pokémon inside the selected game or content scope.', 8),
  -- Roaming Encounter
  (9, 'roaming_encounter', 'Roaming Encounter', 'Available through a roaming encounter system where the Pokémon moves between routes, areas, or map sectors after being unlocked.', 9),
  -- Raid or Special Encounter
  (10, 'raid_or_special', 'Raid or Special Encounter', 'Available through raid, outbreak, distortion, den, or similar special encounter systems.', 10),
  -- Event
  (11, 'event', 'Event', 'Available only through an official event, distribution, or event-unlocked encounter.', 11),
  -- External Trade
  (12, 'external_trade', 'External Trade', 'Available by trading from a compatible same-era game, but not normally obtainable in this game or content scope.', 12),
  -- Transfer Only
  (13, 'transfer_only', 'Transfer Only', 'Available only through a cross-generation, service, or import pipeline rather than normal gameplay or same-era trading.', 13);