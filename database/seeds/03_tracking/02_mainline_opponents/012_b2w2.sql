-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Team Plasma (Zinzolin, the Shadow Triad) and Hugh's partner teams: Bulbapedia's trainer
-- and Plasma Frigate pages (Normal Mode levels), cross-checked with Serebii's Pokéarth.
-- N at N's Castle after the credits: Bulbapedia's N page, cross-checked with Serebii.
-- He brings Zekrom (Black 2) or Reshiram (White 2); his later seasonal teams are
-- rematches and stay out.
-- Scope: Pokémon Black 2 / White 2 major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Black 2 / White 2 major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Cheren
  (12001, 12, NULL, 'cheren', 'Cheren', 'gym-leader', 1, NULL, 'cheren', 'Aspertia City', 1),
  -- Roxie
  (12002, 12, NULL, 'roxie', 'Roxie', 'gym-leader', 8, NULL, 'roxie', 'Virbank City', 2),
  -- Burgh
  (12003, 12, NULL, 'burgh', 'Burgh', 'gym-leader', 12, NULL, 'burgh', 'Castelia City', 3),
  -- Elesa
  (12004, 12, NULL, 'elesa', 'Elesa', 'gym-leader', 4, NULL, 'elesa', 'Nimbasa City', 4),
  -- Clay
  (12005, 12, NULL, 'clay', 'Clay', 'gym-leader', 9, NULL, 'clay', 'Driftveil City', 5),
  -- Skyla
  (12006, 12, NULL, 'skyla', 'Skyla', 'gym-leader', 10, NULL, 'skyla', 'Mistralton City', 6),
  -- Drayden
  (12007, 12, NULL, 'drayden', 'Drayden', 'gym-leader', 15, NULL, 'drayden', 'Opelucid City', 7),
  -- Marlon
  (12008, 12, NULL, 'marlon', 'Marlon', 'gym-leader', 3, NULL, 'marlon', 'Humilau City', 8),
  -- Colress
  (12009, 12, NULL, 'colress', 'Colress', 'boss', NULL, NULL, 'colress', NULL, 9),
  -- Ghetsis
  (12010, 12, NULL, 'ghetsis', 'Ghetsis', 'boss', NULL, NULL, 'ghetsis', NULL, 10),
  -- Shauntal
  (12011, 12, NULL, 'shauntal', 'Shauntal', 'elite-four', 14, NULL, 'shauntal', NULL, 11),
  -- Grimsley
  (12012, 12, NULL, 'grimsley', 'Grimsley', 'elite-four', 16, NULL, 'grimsley', NULL, 12),
  -- Caitlin
  (12013, 12, NULL, 'caitlin', 'Caitlin', 'elite-four', 11, NULL, 'caitlin', NULL, 13),
  -- Marshal
  (12014, 12, NULL, 'marshal', 'Marshal', 'elite-four', 7, NULL, 'marshal', NULL, 14),
  -- Iris
  (12015, 12, NULL, 'iris', 'Iris', 'champion', 15, NULL, 'iris', 'Pokémon League', 15),
  -- Hugh (rival)
  (12016, 12, NULL, 'hugh', 'Hugh', 'rival', NULL, NULL, 'hugh', NULL, 16),
  -- Kyurem (boss)
  (12017, 12, NULL, 'kyurem', 'Kyurem', 'boss', 15, 6, NULL, NULL, 17),
  -- Cobalion (boss)
  (12018, 12, NULL, 'cobalion', 'Cobalion', 'boss', 17, 7, NULL, NULL, 18),
  -- Virizion (boss)
  (12019, 12, NULL, 'virizion', 'Virizion', 'boss', 5, 7, NULL, NULL, 19),
  -- Terrakion (boss)
  (12020, 12, NULL, 'terrakion', 'Terrakion', 'boss', 13, 7, NULL, NULL, 20),
  -- Latios (boss, black-2)
  (12021, 12, 19, 'latios', 'Latios', 'boss', 15, 11, NULL, NULL, 1),
  -- Latias (boss, white-2)
  (12022, 12, 20, 'latias', 'Latias', 'boss', 15, 11, NULL, NULL, 1),
  -- Uxie (boss)
  (12023, 12, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, NULL, NULL, 21),
  -- Mesprit (boss)
  (12024, 12, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, NULL, NULL, 22),
  -- Azelf (boss)
  (12025, 12, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, NULL, NULL, 23),
  -- Zekrom (boss, black-2)
  (12026, 12, 19, 'zekrom', 'Zekrom', 'boss', 15, 4, NULL, NULL, 2),
  -- Reshiram (boss, white-2)
  (12027, 12, 20, 'reshiram', 'Reshiram', 'boss', 15, 2, NULL, NULL, 2),
  -- Regirock (boss)
  (12028, 12, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, NULL, NULL, 24),
  -- Registeel (boss)
  (12029, 12, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, NULL, NULL, 25),
  -- Regice (boss)
  (12030, 12, NULL, 'regice', 'Regice', 'boss', 6, NULL, NULL, NULL, 26),
  -- Regigigas (boss)
  (12031, 12, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, NULL, NULL, 27),
  -- Heatran (boss)
  (12032, 12, NULL, 'heatran', 'Heatran', 'boss', 2, 17, NULL, NULL, 28),
  -- Cresselia (boss)
  (12033, 12, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, NULL, NULL, 29),
  -- Zinzolin (boss; Team Plasma Sage)
  (12034, 12, NULL, 'zinzolin', 'Zinzolin', 'boss', NULL, NULL, 'zinzolin', NULL, 30),
  -- Zinzolin & Grunt (boss; the Multi Battles with Hugh at your side)
  (12035, 12, NULL, 'zinzolin-grunt', 'Zinzolin & Grunt', 'boss', NULL, NULL, 'zinzolin-grunt', NULL, 31),
  -- Shadow (Absol) (boss; Shadow Triad)
  (12036, 12, NULL, 'shadow-absol', 'Shadow (Absol)', 'boss', NULL, NULL, NULL, NULL, 32),
  -- Shadow (Banette) (boss; Shadow Triad)
  (12037, 12, NULL, 'shadow-banette', 'Shadow (Banette)', 'boss', NULL, NULL, NULL, NULL, 33),
  -- Shadow (Accelgor) (boss; Shadow Triad)
  (12038, 12, NULL, 'shadow-accelgor', 'Shadow (Accelgor)', 'boss', NULL, NULL, NULL, NULL, 34),
  -- N (boss; N's Castle, after the credits)
  (12039, 12, NULL, 'n', 'N', 'boss', NULL, NULL, 'n', NULL, 35);
