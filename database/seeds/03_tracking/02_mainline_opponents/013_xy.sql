-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
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
  (13014, 13, NULL, 'az', 'AZ', 'boss', NULL, NULL, 'az', 14);
