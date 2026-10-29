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
  sort_order
) VALUES
  -- Kleavor
  (22001, 22, NULL, 'kleavor', 'Kleavor', 'noble', 12, 13, 'kleavor', 1),
  -- Hisuian Lilligant
  (22002, 22, NULL, 'hisuian-lilligant', 'Hisuian Lilligant', 'noble', 5, 7, 'hisuian-lilligant', 2),
  -- Hisuian Arcanine
  (22003, 22, NULL, 'hisuian-arcanine', 'Hisuian Arcanine', 'noble', 2, 13, 'hisuian-arcanine', 3),
  -- Hisuian Electrode
  (22004, 22, NULL, 'hisuian-electrode', 'Hisuian Electrode', 'noble', 4, 5, 'hisuian-electrode', 4),
  -- Hisuian Avalugg
  (22005, 22, NULL, 'hisuian-avalugg', 'Hisuian Avalugg', 'noble', 6, 13, 'hisuian-avalugg', 5),
  -- Commander Kamado
  (22006, 22, NULL, 'commander-kamado', 'Commander Kamado', 'boss', NULL, NULL, 'commander-kamado', 6),
  -- Origin Dialga / Origin Palkia
  (22007, 22, NULL, 'origin-pokemon', 'Origin Dialga / Origin Palkia', 'boss', 15, NULL, 'origin-pokemon', 7),
  -- Volo
  (22008, 22, NULL, 'volo', 'Volo', 'boss', NULL, NULL, 'volo', 8),
  -- Arceus
  (22009, 22, NULL, 'arceus', 'Arceus', 'boss', 1, NULL, 'arceus', 9),
  -- Dialga / Palkia (boss)
  (22010, 22, NULL, 'dialga-palkia', 'Dialga / Palkia', 'boss', 15, NULL, 'dialga-palkia', 10),
  -- Giratina (boss)
  (22011, 22, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', 11),
  -- Uxie (boss)
  (22012, 22, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', 12),
  -- Mesprit (boss)
  (22013, 22, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', 13),
  -- Azelf (boss)
  (22014, 22, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', 14),
  -- Heatran (boss)
  (22015, 22, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 15),
  -- Cresselia (boss)
  (22016, 22, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', 16),
  -- Regigigas (boss)
  (22017, 22, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', 17),
  -- Manaphy (boss)
  (22018, 22, NULL, 'manaphy', 'Manaphy', 'boss', 3, NULL, 'manaphy', 18),
  -- Tornadus (boss)
  (22019, 22, NULL, 'tornadus', 'Tornadus', 'boss', 10, NULL, 'tornadus', 19),
  -- Thundurus (boss)
  (22020, 22, NULL, 'thundurus', 'Thundurus', 'boss', 4, 10, 'thundurus', 20),
  -- Landorus (boss)
  (22021, 22, NULL, 'landorus', 'Landorus', 'boss', 9, 10, 'landorus', 21),
  -- Enamorus (boss)
  (22022, 22, NULL, 'enamorus', 'Enamorus', 'boss', 18, 10, 'enamorus', 22),
  -- Lian (boss; Warden)
  (22023, 22, NULL, 'lian', 'Lian', 'boss', NULL, NULL, 'lian', 23),
  -- Irida (boss; Pearl Clan leader)
  (22024, 22, NULL, 'irida', 'Irida', 'boss', NULL, NULL, 'irida', 24),
  -- Clover (boss; the Miss Fortunes)
  (22025, 22, NULL, 'clover', 'Clover', 'boss', NULL, NULL, 'clover', 25),
  -- Coin (boss; the Miss Fortunes)
  (22026, 22, NULL, 'coin', 'Coin', 'boss', NULL, NULL, 'coin', 26),
  -- Charm (boss; the Miss Fortunes)
  (22027, 22, NULL, 'charm', 'Charm', 'boss', NULL, NULL, 'charm', 27),
  -- Adaman (boss; Diamond Clan leader)
  (22028, 22, NULL, 'adaman', 'Adaman', 'boss', NULL, NULL, 'adaman', 28),
  -- Ingo (boss; Warden)
  (22029, 22, NULL, 'ingo', 'Ingo', 'boss', NULL, NULL, 'ingo', 29),
  -- Melli (boss; Warden)
  (22030, 22, NULL, 'melli', 'Melli', 'boss', NULL, NULL, 'melli', 30),
  -- Sabi (boss; Warden)
  (22031, 22, NULL, 'sabi', 'Sabi', 'boss', NULL, NULL, 'sabi', 31),
  -- Beni (boss)
  (22032, 22, NULL, 'beni', 'Beni', 'boss', NULL, NULL, 'beni', 32);
