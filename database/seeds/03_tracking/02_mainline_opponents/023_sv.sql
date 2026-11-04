-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
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
  place,
  sort_order
) VALUES
  -- Katy
  (23001, 23, NULL, 'katy', 'Katy', 'gym-leader', 12, NULL, NULL, 'Cortondo', 1),
  -- Brassius
  (23002, 23, NULL, 'brassius', 'Brassius', 'gym-leader', 5, NULL, 'brassius', 'Artazon', 2),
  -- Iono
  (23003, 23, NULL, 'iono', 'Iono', 'gym-leader', 4, NULL, 'iono', 'Levincia', 3),
  -- Kofu
  (23004, 23, NULL, 'kofu', 'Kofu', 'gym-leader', 3, NULL, 'kofu', 'Cascarrafa', 4),
  -- Larry
  (23005, 23, NULL, 'larry-gym', 'Larry', 'gym-leader', 1, NULL, 'larry', 'Medali', 5),
  -- Ryme
  (23006, 23, NULL, 'ryme', 'Ryme', 'gym-leader', 14, NULL, 'ryme', 'Montenevera', 6),
  -- Tulip
  (23007, 23, NULL, 'tulip', 'Tulip', 'gym-leader', 11, NULL, 'tulip', 'Alfornada', 7),
  -- Grusha
  (23008, 23, NULL, 'grusha', 'Grusha', 'gym-leader', 6, NULL, 'grusha', 'Glaseado Mountain', 8),
  -- Rika
  (23009, 23, NULL, 'rika', 'Rika', 'elite-four', 9, NULL, 'rika', NULL, 9),
  -- Poppy
  (23010, 23, NULL, 'poppy', 'Poppy', 'elite-four', 17, NULL, 'poppy', NULL, 10),
  -- Larry
  (23011, 23, NULL, 'larry-e4', 'Larry', 'elite-four', 10, NULL, 'larry', NULL, 11),
  -- Hassel
  (23012, 23, NULL, 'hassel', 'Hassel', 'elite-four', 15, NULL, 'hassel', NULL, 12),
  -- Geeta
  (23013, 23, NULL, 'geeta', 'Geeta', 'champion', NULL, NULL, 'geeta', 'Pokémon League', 13),
  -- Nemona
  (23014, 23, NULL, 'nemona', 'Nemona', 'champion', NULL, NULL, 'nemona', 'Mesagoza', 14),
  -- Giacomo
  (23015, 23, NULL, 'giacomo', 'Giacomo', 'team-star-boss', 16, NULL, 'giacomo', NULL, 15),
  -- Mela
  (23016, 23, NULL, 'mela', 'Mela', 'team-star-boss', 2, NULL, 'mela', NULL, 16),
  -- Atticus
  (23017, 23, NULL, 'atticus', 'Atticus', 'team-star-boss', 8, NULL, 'atticus', NULL, 17),
  -- Ortega
  (23018, 23, NULL, 'ortega', 'Ortega', 'team-star-boss', 18, NULL, 'ortega', NULL, 18),
  -- Eri
  (23019, 23, NULL, 'eri', 'Eri', 'team-star-boss', 7, NULL, 'eri', NULL, 19),
  -- Clavell
  (23020, 23, NULL, 'clavell', 'Clavell', 'boss', NULL, NULL, 'clavell', NULL, 20),
  -- Penny
  (23021, 23, NULL, 'penny', 'Penny', 'boss', NULL, NULL, 'penny', NULL, 21),
  -- Stony Cliff Titan
  (23022, 23, NULL, 'stony-cliff-titan', 'Stony Cliff Titan', 'titan', 13, NULL, NULL, NULL, 22),
  -- Open Sky Titan
  (23023, 23, NULL, 'open-sky-titan', 'Open Sky Titan', 'titan', 10, 16, NULL, NULL, 23),
  -- Lurking Steel Titan
  (23024, 23, NULL, 'lurking-steel-titan', 'Lurking Steel Titan', 'titan', 17, NULL, NULL, NULL, 24),
  -- Quaking Earth Titan
  (23025, 23, NULL, 'quaking-earth-titan', 'Quaking Earth Titan', 'titan', 9, NULL, NULL, NULL, 25),
  -- False Dragon Titan
  (23026, 23, NULL, 'false-dragon-titan', 'False Dragon Titan', 'titan', 3, 15, NULL, NULL, 26),
  -- Arven
  (23027, 23, NULL, 'arven', 'Arven', 'rival', NULL, NULL, 'arven', NULL, 27),
  -- AI Professor
  (23028, 23, NULL, 'ai-professor', 'AI Professor', 'boss', NULL, NULL, NULL, NULL, 28),
  -- Nemona (rival)
  (23029, 23, NULL, 'nemona-rival', 'Nemona', 'rival', NULL, NULL, 'nemona', NULL, 29),
  -- Koraidon (boss, scarlet)
  (23030, 23, 36, 'koraidon', 'Koraidon', 'boss', 7, 15, NULL, NULL, 1),
  -- Miraidon (boss, violet)
  (23031, 23, 37, 'miraidon', 'Miraidon', 'boss', 4, 15, NULL, NULL, 1),
  -- Wo-Chien (boss)
  (23032, 23, NULL, 'wo-chien', 'Wo-Chien', 'boss', 16, 5, NULL, NULL, 30),
  -- Chien-Pao (boss)
  (23033, 23, NULL, 'chien-pao', 'Chien-Pao', 'boss', 16, 6, NULL, NULL, 31),
  -- Ting-Lu (boss)
  (23034, 23, NULL, 'ting-lu', 'Ting-Lu', 'boss', 16, 9, NULL, NULL, 32),
  -- Chi-Yu (boss)
  (23035, 23, NULL, 'chi-yu', 'Chi-Yu', 'boss', 16, 2, NULL, NULL, 33);
