-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Jessie & James: the pret pokeyellow disassembly's trainer parties, cross-checked
-- with Bulbapedia's Team Rocket trio page. Their Pokémon have no set moves and get
-- the game's default: the base moves plus the level-up moves to their level, the
-- last four kept, worked out from the Yellow learnsets as the game does.
-- Scope: Pokémon Yellow Gym Leader, Elite Four, and Champion data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Yellow major required fights.
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
  -- Brock
  (2001, 2, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 'Pewter City', 1),
  -- Misty
  (2002, 2, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 'Cerulean City', 2),
  -- Lt. Surge
  (2003, 2, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 'Vermilion City', 3),
  -- Erika
  (2004, 2, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 'Celadon City', 4),
  -- Koga
  (2005, 2, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 'Fuchsia City', 5),
  -- Sabrina
  (2006, 2, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 'Saffron City', 6),
  -- Blaine
  (2007, 2, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 'Cinnabar Island', 7),
  -- Giovanni
  (2008, 2, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 'Viridian City', 8),
  -- Lorelei
  (2009, 2, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', NULL, 9),
  -- Bruno
  (2010, 2, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', NULL, 10),
  -- Agatha
  (2011, 2, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', NULL, 11),
  -- Lance
  (2012, 2, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', NULL, 12),
  -- Blue
  (2013, 2, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 'Indigo Plateau', 13),
  -- Blue (rival)
  (2014, 2, NULL, 'blue-rival', 'Blue', 'rival', NULL, NULL, 'blue', NULL, 14),
  -- Giovanni (boss)
  (2015, 2, NULL, 'giovanni-boss', 'Giovanni', 'boss', NULL, NULL, 'giovanni', NULL, 15),
  -- Zapdos (boss)
  (2016, 2, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, NULL, NULL, 16),
  -- Articuno (boss)
  (2017, 2, NULL, 'articuno', 'Articuno', 'boss', 6, 10, NULL, NULL, 17),
  -- Moltres (boss)
  (2018, 2, NULL, 'moltres', 'Moltres', 'boss', 2, 10, NULL, NULL, 18),
  -- Mewtwo (boss)
  (2019, 2, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, NULL, NULL, 19),
  -- Jessie & James (boss; Team Rocket, four forced fights)
  (2020, 2, NULL, 'jessie-james', 'Jessie & James', 'boss', NULL, NULL, NULL, NULL, 20);
