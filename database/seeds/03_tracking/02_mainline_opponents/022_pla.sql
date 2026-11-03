-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Legends: Arceus major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Pokémon Legends: Arceus major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Kleavor
  (22001, 22, NULL, 'kleavor', 'Kleavor', 'noble', 12, 13, 'kleavor', NULL, 1),
  -- Hisuian Lilligant
  (22002, 22, NULL, 'hisuian-lilligant', 'Hisuian Lilligant', 'noble', 5, 7, 'hisuian-lilligant', NULL, 2),
  -- Hisuian Arcanine
  (22003, 22, NULL, 'hisuian-arcanine', 'Hisuian Arcanine', 'noble', 2, 13, 'hisuian-arcanine', NULL, 3),
  -- Hisuian Electrode
  (22004, 22, NULL, 'hisuian-electrode', 'Hisuian Electrode', 'noble', 4, 5, 'hisuian-electrode', NULL, 4),
  -- Hisuian Avalugg
  (22005, 22, NULL, 'hisuian-avalugg', 'Hisuian Avalugg', 'noble', 6, 13, 'hisuian-avalugg', NULL, 5),
  -- Commander Kamado
  (22006, 22, NULL, 'commander-kamado', 'Commander Kamado', 'boss', NULL, NULL, 'commander-kamado', NULL, 6),
  -- Origin Dialga / Origin Palkia
  (22007, 22, NULL, 'origin-pokemon', 'Origin Dialga / Origin Palkia', 'boss', 15, NULL, 'origin-pokemon', NULL, 7),
  -- Volo
  (22008, 22, NULL, 'volo', 'Volo', 'boss', NULL, NULL, 'volo', NULL, 8),
  -- Arceus
  (22009, 22, NULL, 'arceus', 'Arceus', 'boss', 1, NULL, 'arceus', NULL, 9),
  -- Dialga / Palkia (boss)
  (22010, 22, NULL, 'dialga-palkia', 'Dialga / Palkia', 'boss', 15, NULL, 'dialga-palkia', NULL, 10),
  -- Giratina (boss)
  (22011, 22, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', NULL, 11),
  -- Uxie (boss)
  (22012, 22, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', NULL, 12),
  -- Mesprit (boss)
  (22013, 22, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', NULL, 13),
  -- Azelf (boss)
  (22014, 22, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', NULL, 14),
  -- Heatran (boss)
  (22015, 22, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', NULL, 15),
  -- Cresselia (boss)
  (22016, 22, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', NULL, 16),
  -- Regigigas (boss)
  (22017, 22, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', NULL, 17),
  -- Manaphy (boss)
  (22018, 22, NULL, 'manaphy', 'Manaphy', 'boss', 3, NULL, 'manaphy', NULL, 18),
  -- Tornadus (boss)
  (22019, 22, NULL, 'tornadus', 'Tornadus', 'boss', 10, NULL, 'tornadus', NULL, 19),
  -- Thundurus (boss)
  (22020, 22, NULL, 'thundurus', 'Thundurus', 'boss', 4, 10, 'thundurus', NULL, 20),
  -- Landorus (boss)
  (22021, 22, NULL, 'landorus', 'Landorus', 'boss', 9, 10, 'landorus', NULL, 21),
  -- Enamorus (boss)
  (22022, 22, NULL, 'enamorus', 'Enamorus', 'boss', 18, 10, 'enamorus', NULL, 22),
  -- Lian (boss; Warden)
  (22023, 22, NULL, 'lian', 'Lian', 'boss', NULL, NULL, 'lian', NULL, 23),
  -- Irida (boss; Pearl Clan leader)
  (22024, 22, NULL, 'irida', 'Irida', 'boss', NULL, NULL, 'irida', NULL, 24),
  -- Clover (boss; the Miss Fortunes)
  (22025, 22, NULL, 'clover', 'Clover', 'boss', NULL, NULL, 'clover', NULL, 25),
  -- Coin (boss; the Miss Fortunes)
  (22026, 22, NULL, 'coin', 'Coin', 'boss', NULL, NULL, 'coin', NULL, 26),
  -- Charm (boss; the Miss Fortunes)
  (22027, 22, NULL, 'charm', 'Charm', 'boss', NULL, NULL, 'charm', NULL, 27),
  -- Adaman (boss; Diamond Clan leader)
  (22028, 22, NULL, 'adaman', 'Adaman', 'boss', NULL, NULL, 'adaman', NULL, 28),
  -- Ingo (boss; Warden)
  (22029, 22, NULL, 'ingo', 'Ingo', 'boss', NULL, NULL, 'ingo', NULL, 29),
  -- Melli (boss; Warden)
  (22030, 22, NULL, 'melli', 'Melli', 'boss', NULL, NULL, 'melli', NULL, 30),
  -- Sabi (boss; Warden)
  (22031, 22, NULL, 'sabi', 'Sabi', 'boss', NULL, NULL, 'sabi', NULL, 31),
  -- Beni (boss)
  (22032, 22, NULL, 'beni', 'Beni', 'boss', NULL, NULL, 'beni', NULL, 32);
