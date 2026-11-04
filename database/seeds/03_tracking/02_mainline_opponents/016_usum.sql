-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Scope: Pokémon Ultra Sun / Ultra Moon major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Ultra Sun / Ultra Moon major fights. Game-specific rows are scoped where the source game changes the opponent.
-- Totems are their own opponents; a trial captain appears only where they battle you. An opponent fought twice on one Story point has one row per battle (Faba).
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
  -- Ilima
  (16001, 16, NULL, 'ilima', 'Ilima', 'trial-captain', 1, NULL, 'ilima', NULL, 1),
  -- Hala
  (16002, 16, NULL, 'hala', 'Hala', 'kahuna', 7, NULL, 'hala', 'Iki Town', 2),
  -- Lana (Ultra Moon only: Mina's trial)
  (16003, 16, 28, 'lana', 'Lana', 'trial-captain', 3, NULL, 'lana', NULL, 4),
  -- Kiawe (Mina's trial)
  (16004, 16, NULL, 'kiawe', 'Kiawe', 'trial-captain', 2, NULL, 'kiawe', NULL, 4),
  -- Mallow (Ultra Sun only: Mina's trial)
  (16005, 16, 27, 'mallow', 'Mallow', 'trial-captain', 5, NULL, 'mallow', NULL, 4),
  -- Olivia
  (16006, 16, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, 'olivia', 'Ruins of Life', 6),
  -- Sophocles (Ultra Sun only: Mina's trial)
  (16007, 16, 27, 'sophocles', 'Sophocles', 'trial-captain', 4, NULL, 'sophocles', NULL, 5),
  -- Nanu
  (16009, 16, NULL, 'nanu', 'Nanu', 'kahuna', 16, NULL, 'nanu', 'Malie City', 9),
  -- Mina
  (16010, 16, NULL, 'mina', 'Mina', 'trial-captain', 18, NULL, 'mina', NULL, 10),
  -- Hapu
  (16011, 16, NULL, 'hapu', 'Hapu', 'kahuna', 9, NULL, 'hapu', 'Exeggutor Island', 11),
  -- Ultra Necrozma
  (16012, 16, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'boss', 11, 15, NULL, NULL, 12),
  -- Molayne
  (16013, 16, NULL, 'molayne', 'Molayne', 'elite-four', 17, NULL, 'molayne', NULL, 13),
  -- Olivia
  (16014, 16, NULL, 'olivia-e4', 'Olivia', 'elite-four', 13, NULL, 'olivia-e4', NULL, 14),
  -- Acerola
  (16015, 16, NULL, 'acerola-e4', 'Acerola', 'elite-four', 14, NULL, 'acerola-e4', NULL, 15),
  -- Kahili
  (16016, 16, NULL, 'kahili', 'Kahili', 'elite-four', 10, NULL, 'kahili', NULL, 16),
  -- Hau
  (16017, 16, NULL, 'hau', 'Hau', 'champion', NULL, NULL, 'hau', 'Pokémon League', 17),
  -- Giovanni
  (16018, 16, NULL, 'giovanni', 'Giovanni', 'boss', 9, NULL, 'giovanni', NULL, 18),
  -- Hau (rival)
  (16019, 16, NULL, 'hau-rival', 'Hau', 'rival', NULL, NULL, 'hau', NULL, 19),
  -- Gladion (rival)
  (16020, 16, NULL, 'gladion', 'Gladion', 'rival', NULL, NULL, 'gladion', NULL, 20),
  -- Hau, Gladion and the Masked Royal (rival; the Battle Royal)
  (16021, 16, NULL, 'battle-royal', 'Hau, Gladion & the Masked Royal', 'rival', NULL, NULL, 'hau', NULL, 21),
  -- Guzma (boss)
  (16022, 16, NULL, 'guzma', 'Guzma', 'boss', NULL, NULL, 'guzma', NULL, 22),
  -- Lusamine (boss)
  (16023, 16, NULL, 'lusamine', 'Lusamine', 'boss', NULL, NULL, 'lusamine', NULL, 23),
  -- Nihilego (boss)
  (16024, 16, NULL, 'nihilego', 'Nihilego', 'boss', 13, 8, NULL, NULL, 24),
  -- Necrozma (boss, ultra-sun)
  (16025, 16, 27, 'necrozma-dusk-mane', 'Necrozma', 'boss', 11, 17, NULL, NULL, 1),
  -- Necrozma (boss, ultra-moon)
  (16026, 16, 28, 'necrozma-dawn-wings', 'Necrozma', 'boss', 11, 14, NULL, NULL, 1),
  -- Solgaleo (boss, ultra-sun)
  (16027, 16, 27, 'solgaleo', 'Solgaleo', 'boss', 11, 17, NULL, NULL, 2),
  -- Lunala (boss, ultra-moon)
  (16028, 16, 28, 'lunala', 'Lunala', 'boss', 11, 14, NULL, NULL, 2),
  -- Necrozma (boss)
  (16029, 16, NULL, 'necrozma', 'Necrozma', 'boss', 11, NULL, NULL, NULL, 25),
  -- Tapu Koko (boss)
  (16030, 16, NULL, 'tapu-koko', 'Tapu Koko', 'boss', 4, 18, NULL, NULL, 26),
  -- Tapu Lele (boss)
  (16031, 16, NULL, 'tapu-lele', 'Tapu Lele', 'boss', 11, 18, NULL, NULL, 27),
  -- Tapu Bulu (boss)
  (16032, 16, NULL, 'tapu-bulu', 'Tapu Bulu', 'boss', 5, 18, NULL, NULL, 28),
  -- Tapu Fini (boss)
  (16033, 16, NULL, 'tapu-fini', 'Tapu Fini', 'boss', 3, 18, NULL, NULL, 29),
  -- Zygarde (boss)
  (16034, 16, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, NULL, NULL, 30),
  -- Blacephalon (boss, ultra-sun)
  (16035, 16, 27, 'blacephalon', 'Blacephalon', 'boss', 2, 14, NULL, NULL, 3),
  -- Stakataka (boss, ultra-moon)
  (16036, 16, 28, 'stakataka', 'Stakataka', 'boss', 13, 17, NULL, NULL, 3),
  -- Totem Kommo-o (totem, Vast Poni Canyon has no captain)
  (16037, 16, NULL, 'totem-kommo-o', 'Totem Kommo-o', 'totem', 15, 7, NULL, NULL, 31),
  -- Totem Gumshoos (totem, ultra-sun; also Ilima's bonus trial)
  (16038, 16, 27, 'totem-gumshoos', 'Totem Gumshoos', 'totem', 1, NULL, NULL, NULL, 6),
  -- Totem Raticate (totem, ultra-moon; also Ilima's bonus trial)
  (16039, 16, 28, 'totem-raticate', 'Totem Raticate', 'totem', 16, 1, NULL, NULL, 5),
  -- Totem Araquanid (totem)
  (16040, 16, NULL, 'totem-araquanid', 'Totem Araquanid', 'totem', 3, 12, NULL, NULL, 32),
  -- Totem Marowak (totem)
  (16041, 16, NULL, 'totem-marowak', 'Totem Marowak', 'totem', 2, 14, NULL, NULL, 33),
  -- Totem Lurantis (totem)
  (16042, 16, NULL, 'totem-lurantis', 'Totem Lurantis', 'totem', 5, NULL, NULL, NULL, 34),
  -- Totem Togedemaru (totem)
  (16043, 16, NULL, 'totem-togedemaru', 'Totem Togedemaru', 'totem', 4, 17, NULL, NULL, 35),
  -- Totem Mimikyu (totem)
  (16044, 16, NULL, 'totem-mimikyu', 'Totem Mimikyu', 'totem', 14, 18, NULL, NULL, 36),
  -- Totem Ribombee (totem, Mina's trial)
  (16045, 16, NULL, 'totem-ribombee', 'Totem Ribombee', 'totem', 12, 18, NULL, NULL, 37),
  -- Faba (boss; Aether Paradise entrance)
  (16046, 16, NULL, 'faba', 'Faba', 'boss', NULL, NULL, NULL, NULL, 38),
  -- Faba (boss; Aether Paradise labs, second battle)
  (16047, 16, NULL, 'faba-labs', 'Faba', 'boss', NULL, NULL, NULL, NULL, 39),
  -- Faba (boss; Episode RR, Aether Paradise exterior)
  (16048, 16, NULL, 'faba-rr', 'Faba', 'boss', NULL, NULL, NULL, NULL, 40),
  -- Plumeria (boss)
  (16049, 16, NULL, 'plumeria', 'Plumeria', 'boss', NULL, NULL, 'plumeria', NULL, 41),
  -- Dulse (boss, ultra-sun; Ultra Recon Squad)
  (16050, 16, 27, 'dulse', 'Dulse', 'boss', NULL, NULL, NULL, NULL, 7),
  -- Soliera (boss, ultra-moon; Ultra Recon Squad)
  (16051, 16, 28, 'soliera', 'Soliera', 'boss', NULL, NULL, NULL, NULL, 6),
  -- Nanu (kahuna, ultra-moon; Mina's trial)
  (16052, 16, 28, 'nanu-mina', 'Nanu', 'kahuna', 16, NULL, 'nanu', 'Aether House', 7),
  -- Archie (boss; Episode RR)
  (16053, 16, NULL, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', NULL, 42),
  -- Maxie (boss; Episode RR)
  (16054, 16, NULL, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', NULL, 43),
  -- Cyrus (boss; Episode RR)
  (16055, 16, NULL, 'cyrus', 'Cyrus', 'boss', NULL, NULL, 'cyrus', NULL, 44),
  -- Lysandre (boss; Episode RR)
  (16056, 16, NULL, 'lysandre', 'Lysandre', 'boss', NULL, NULL, 'lysandre', NULL, 45),
  -- Ghetsis (boss; Episode RR)
  (16057, 16, NULL, 'ghetsis', 'Ghetsis', 'boss', NULL, NULL, 'ghetsis', NULL, 46);
