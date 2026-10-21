-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon X / Y major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for X / Y major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Viola
  (13001, 13, NULL, 'viola', 'Viola', 'gym-leader', 12, NULL, 'viola', 1),
  -- Grant
  (13002, 13, NULL, 'grant', 'Grant', 'gym-leader', 13, NULL, 'grant', 2),
  -- Korrina
  (13003, 13, NULL, 'korrina', 'Korrina', 'gym-leader', 7, NULL, 'korrina', 3),
  -- Ramos
  (13004, 13, NULL, 'ramos', 'Ramos', 'gym-leader', 5, NULL, 'ramos', 4),
  -- Clemont
  (13005, 13, NULL, 'clemont', 'Clemont', 'gym-leader', 4, NULL, 'clemont', 5),
  -- Valerie
  (13006, 13, NULL, 'valerie', 'Valerie', 'gym-leader', 18, NULL, 'valerie', 6),
  -- Olympia
  (13007, 13, NULL, 'olympia', 'Olympia', 'gym-leader', 11, NULL, 'olympia', 7),
  -- Wulfric
  (13008, 13, NULL, 'wulfric', 'Wulfric', 'gym-leader', 6, NULL, 'wulfric', 8),
  -- Malva
  (13009, 13, NULL, 'malva', 'Malva', 'elite-four', 2, NULL, 'malva', 9),
  -- Siebold
  (13010, 13, NULL, 'siebold', 'Siebold', 'elite-four', 3, NULL, 'siebold', 10),
  -- Wikstrom
  (13011, 13, NULL, 'wikstrom', 'Wikstrom', 'elite-four', 17, NULL, 'wikstrom', 11),
  -- Drasna
  (13012, 13, NULL, 'drasna', 'Drasna', 'elite-four', 15, NULL, 'drasna', 12),
  -- Diantha
  (13013, 13, NULL, 'diantha', 'Diantha', 'champion', NULL, NULL, 'diantha', 13),
  -- AZ
  (13014, 13, NULL, 'az', 'AZ', 'boss', NULL, NULL, 'az', 14),
  -- Shauna (rival)
  (13015, 13, NULL, 'shauna', 'Shauna', 'rival', NULL, NULL, 'shauna', 15),
  -- Tierno (rival)
  (13016, 13, NULL, 'tierno', 'Tierno', 'rival', NULL, NULL, 'tierno', 16),
  -- Tierno & Trevor (rival)
  (13017, 13, NULL, 'tierno-trevor', 'Tierno & Trevor', 'rival', NULL, NULL, 'tierno', 17),
  -- Serena / Calem (rival)
  (13018, 13, NULL, 'serena-calem', 'Serena / Calem', 'rival', NULL, NULL, 'serena', 18),
  -- Lysandre (boss)
  (13019, 13, NULL, 'lysandre', 'Lysandre', 'boss', NULL, NULL, 'lysandre', 19),
  -- Trevor (rival)
  (13020, 13, NULL, 'trevor', 'Trevor', 'rival', NULL, NULL, 'trevor', 20),
  -- Xerneas (boss, x)
  (13021, 13, 21, 'xerneas', 'Xerneas', 'boss', 18, NULL, 'xerneas', 1),
  -- Yveltal (boss, y)
  (13022, 13, 22, 'yveltal', 'Yveltal', 'boss', 16, 10, 'yveltal', 1),
  -- Zygarde (boss)
  (13023, 13, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, 'zygarde', 21),
  -- Mewtwo (boss)
  (13024, 13, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, 'mewtwo', 22),
  -- Articuno (boss)
  (13025, 13, NULL, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', 23),
  -- Zapdos (boss)
  (13026, 13, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', 24),
  -- Moltres (boss)
  (13027, 13, NULL, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', 25);
