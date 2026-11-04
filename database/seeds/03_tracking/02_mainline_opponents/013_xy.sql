-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Lysandre's first Team Flare Secret HQ battle: Bulbapedia, cross-checked with Serebii.
-- Team Flare scientists (Aliana, Celosia, Bryony, Mable, Xerosic) and Serena / Calem's
-- partner team: Bulbapedia's trainer pages, cross-checked with Serebii's Pokéarth.
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
  place,
  sort_order
) VALUES
  -- Viola
  (13001, 13, NULL, 'viola', 'Viola', 'gym-leader', 12, NULL, 'viola', 'Santalune City', 1),
  -- Grant
  (13002, 13, NULL, 'grant', 'Grant', 'gym-leader', 13, NULL, 'grant', 'Cyllage City', 2),
  -- Korrina
  (13003, 13, NULL, 'korrina', 'Korrina', 'gym-leader', 7, NULL, 'korrina', 'Shalour City', 3),
  -- Ramos
  (13004, 13, NULL, 'ramos', 'Ramos', 'gym-leader', 5, NULL, 'ramos', 'Coumarine City', 4),
  -- Clemont
  (13005, 13, NULL, 'clemont', 'Clemont', 'gym-leader', 4, NULL, 'clemont', 'Lumiose City', 5),
  -- Valerie
  (13006, 13, NULL, 'valerie', 'Valerie', 'gym-leader', 18, NULL, 'valerie', 'Laverre City', 6),
  -- Olympia
  (13007, 13, NULL, 'olympia', 'Olympia', 'gym-leader', 11, NULL, 'olympia', 'Anistar City', 7),
  -- Wulfric
  (13008, 13, NULL, 'wulfric', 'Wulfric', 'gym-leader', 6, NULL, 'wulfric', 'Snowbelle City', 8),
  -- Malva
  (13009, 13, NULL, 'malva', 'Malva', 'elite-four', 2, NULL, 'malva', NULL, 9),
  -- Siebold
  (13010, 13, NULL, 'siebold', 'Siebold', 'elite-four', 3, NULL, 'siebold', NULL, 10),
  -- Wikstrom
  (13011, 13, NULL, 'wikstrom', 'Wikstrom', 'elite-four', 17, NULL, 'wikstrom', NULL, 11),
  -- Drasna
  (13012, 13, NULL, 'drasna', 'Drasna', 'elite-four', 15, NULL, 'drasna', NULL, 12),
  -- Diantha
  (13013, 13, NULL, 'diantha', 'Diantha', 'champion', NULL, NULL, 'diantha', 'Pokémon League', 13),
  -- AZ
  (13014, 13, NULL, 'az', 'AZ', 'boss', NULL, NULL, NULL, NULL, 14),
  -- Shauna (rival)
  (13015, 13, NULL, 'shauna', 'Shauna', 'rival', NULL, NULL, 'shauna', NULL, 15),
  -- Tierno (rival)
  (13016, 13, NULL, 'tierno', 'Tierno', 'rival', NULL, NULL, 'tierno', NULL, 16),
  -- Tierno & Trevor (rival)
  (13017, 13, NULL, 'tierno-trevor', 'Tierno & Trevor', 'rival', NULL, NULL, 'tierno', NULL, 17),
  -- Serena / Calem (rival)
  (13018, 13, NULL, 'serena-calem', 'Serena / Calem', 'rival', NULL, NULL, 'serena', NULL, 18),
  -- Lysandre (boss)
  (13019, 13, NULL, 'lysandre', 'Lysandre', 'boss', NULL, NULL, 'lysandre', NULL, 19),
  -- Trevor (rival)
  (13020, 13, NULL, 'trevor', 'Trevor', 'rival', NULL, NULL, 'trevor', NULL, 20),
  -- Xerneas (boss, x)
  (13021, 13, 21, 'xerneas', 'Xerneas', 'boss', 18, NULL, NULL, NULL, 1),
  -- Yveltal (boss, y)
  (13022, 13, 22, 'yveltal', 'Yveltal', 'boss', 16, 10, NULL, NULL, 1),
  -- Zygarde (boss)
  (13023, 13, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, NULL, NULL, 21),
  -- Mewtwo (boss)
  (13024, 13, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, NULL, NULL, 22),
  -- Articuno (boss)
  (13025, 13, NULL, 'articuno', 'Articuno', 'boss', 6, 10, NULL, NULL, 23),
  -- Zapdos (boss)
  (13026, 13, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, NULL, NULL, 24),
  -- Moltres (boss)
  (13027, 13, NULL, 'moltres', 'Moltres', 'boss', 2, 10, NULL, NULL, 25),
  -- Lysandre (boss, first Team Flare Secret HQ battle, so he can fight twice there)
  (13028, 13, NULL, 'lysandre-secret-hq', 'Lysandre', 'boss', NULL, NULL, 'lysandre', NULL, 26),
  -- Korrina (gym-leader, Geosenge Town battle before her Gym, so she can fight twice)
  (13029, 13, NULL, 'korrina-geosenge', 'Korrina', 'gym-leader', 7, NULL, 'korrina', 'Geosenge Town', 27),
  -- Aliana (boss; Team Flare scientist)
  (13030, 13, NULL, 'aliana', 'Aliana', 'boss', NULL, NULL, NULL, NULL, 28),
  -- Celosia & Bryony (boss; the Multi Battle with Serena / Calem at your side)
  (13031, 13, NULL, 'celosia-bryony', 'Celosia & Bryony', 'boss', NULL, NULL, NULL, NULL, 29),
  -- Celosia (boss; Team Flare scientist)
  (13032, 13, NULL, 'celosia', 'Celosia', 'boss', NULL, NULL, NULL, NULL, 30),
  -- Bryony (boss; Team Flare scientist)
  (13033, 13, NULL, 'bryony', 'Bryony', 'boss', NULL, NULL, NULL, NULL, 31),
  -- Mable (boss; Team Flare scientist)
  (13034, 13, NULL, 'mable', 'Mable', 'boss', NULL, NULL, NULL, NULL, 32),
  -- Xerosic (boss; Team Flare scientist)
  (13035, 13, NULL, 'xerosic', 'Xerosic', 'boss', NULL, NULL, NULL, NULL, 33);
