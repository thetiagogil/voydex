-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Scope: Pokémon Scarlet / Violet major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Scarlet / Violet major fights. Game-specific rows are scoped where the source game changes the opponent.
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Katy
  (23001, 23, NULL, 'katy', 'Katy', 'gym-leader', 12, NULL, 'katy', 1),
  -- Brassius
  (23002, 23, NULL, 'brassius', 'Brassius', 'gym-leader', 5, NULL, 'brassius', 2),
  -- Iono
  (23003, 23, NULL, 'iono', 'Iono', 'gym-leader', 4, NULL, 'iono', 3),
  -- Kofu
  (23004, 23, NULL, 'kofu', 'Kofu', 'gym-leader', 3, NULL, 'kofu', 4),
  -- Larry
  (23005, 23, NULL, 'larry-gym', 'Larry', 'gym-leader', 1, NULL, 'larry-gym', 5),
  -- Ryme
  (23006, 23, NULL, 'ryme', 'Ryme', 'gym-leader', 14, NULL, 'ryme', 6),
  -- Tulip
  (23007, 23, NULL, 'tulip', 'Tulip', 'gym-leader', 11, NULL, 'tulip', 7),
  -- Grusha
  (23008, 23, NULL, 'grusha', 'Grusha', 'gym-leader', 6, NULL, 'grusha', 8),
  -- Rika
  (23009, 23, NULL, 'rika', 'Rika', 'elite-four', 9, NULL, 'rika', 9),
  -- Poppy
  (23010, 23, NULL, 'poppy', 'Poppy', 'elite-four', 17, NULL, 'poppy', 10),
  -- Larry
  (23011, 23, NULL, 'larry-e4', 'Larry', 'elite-four', 10, NULL, 'larry-e4', 11),
  -- Hassel
  (23012, 23, NULL, 'hassel', 'Hassel', 'elite-four', 15, NULL, 'hassel', 12),
  -- Geeta
  (23013, 23, NULL, 'geeta', 'Geeta', 'champion', NULL, NULL, 'geeta', 13),
  -- Nemona
  (23014, 23, NULL, 'nemona', 'Nemona', 'champion', NULL, NULL, 'nemona', 14),
  -- Giacomo
  (23015, 23, NULL, 'giacomo', 'Giacomo', 'team-star-boss', 16, NULL, 'giacomo', 15),
  -- Mela
  (23016, 23, NULL, 'mela', 'Mela', 'team-star-boss', 2, NULL, 'mela', 16),
  -- Atticus
  (23017, 23, NULL, 'atticus', 'Atticus', 'team-star-boss', 8, NULL, 'atticus', 17),
  -- Ortega
  (23018, 23, NULL, 'ortega', 'Ortega', 'team-star-boss', 18, NULL, 'ortega', 18),
  -- Eri
  (23019, 23, NULL, 'eri', 'Eri', 'team-star-boss', 7, NULL, 'eri', 19),
  -- Clavell
  (23020, 23, NULL, 'clavell', 'Clavell', 'boss', NULL, NULL, 'clavell', 20),
  -- Penny
  (23021, 23, NULL, 'penny', 'Penny', 'boss', NULL, NULL, 'penny', 21),
  -- Stony Cliff Titan
  (23022, 23, NULL, 'stony-cliff-titan', 'Stony Cliff Titan', 'titan', 13, NULL, 'stony-cliff-titan', 22),
  -- Open Sky Titan
  (23023, 23, NULL, 'open-sky-titan', 'Open Sky Titan', 'titan', 10, 16, 'open-sky-titan', 23),
  -- Lurking Steel Titan
  (23024, 23, NULL, 'lurking-steel-titan', 'Lurking Steel Titan', 'titan', 17, NULL, 'lurking-steel-titan', 24),
  -- Quaking Earth Titan
  (23025, 23, NULL, 'quaking-earth-titan', 'Quaking Earth Titan', 'titan', 9, NULL, 'quaking-earth-titan', 25),
  -- False Dragon Titan
  (23026, 23, NULL, 'false-dragon-titan', 'False Dragon Titan', 'titan', 3, 15, 'false-dragon-titan', 26),
  -- Arven
  (23027, 23, NULL, 'arven', 'Arven', 'rival', NULL, NULL, 'arven', 27),
  -- AI Professor
  (23028, 23, NULL, 'ai-professor', 'AI Professor', 'boss', NULL, NULL, 'ai-professor', 28);
