-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the games' own data, read from their disassemblies on 2026-11-17:
-- trades from src/trade.c (Ruby / Sapphire), src/data/trade.h (Emerald) and
-- src/data/ingame_trades.h (FireRed / LeafGreen), gifts, Eggs and fossils
-- from each map's script and the Game Corner prizes from the Celadon prize
-- room's script. Held items outside the item catalogue (Mail, X Attack,
-- Stardust, Tiny Mushroom) are left out until it holds them.
-- Cross-check, and the names of givers the games leave unnamed: Bulbapedia's
-- gift Pokémon and in-game trade lists, read 2026-11-17.
-- An unnamed giver is described by who they are in the game and where they
-- stand. A trader is named by the Original Trainer the game gives the traded
-- Pokémon (Elyssa, Kobe and the rest).
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 3 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 006_encounters_gen3.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Route 101 in rs
  -- Treecko (gift)
  (252, 25200, 201, 5, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Torchic (gift)
  (255, 25500, 201, 5, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Mudkip (gift)
  (258, 25800, 201, 5, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Rustboro City in rs
  -- Makuhita for Slakoth
  (296, 29600, 235, 5, NULL, 28, NULL, NULL, NULL, 'Elyssa', 287, 28700, 'MAKIT', NULL, NULL),
  -- Devon Corporation in rs
  -- Lileep (fossil)
  (345, 34500, 148, 5, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 148, 5, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lavaridge Town in rs
  -- Wynaut (egg)
  (360, 36000, 156, 5, NULL, 30, 5, 5, NULL, 'An old woman at the hot springs', NULL, NULL, NULL, NULL, NULL),
  -- Weather Institute in rs
  -- Castform (gift), holds Mystic Water
  (351, 35100, 253, 5, NULL, 27, 25, 25, 'After you drive the team out of the Weather Institute', 'A Weather Institute scientist', NULL, NULL, NULL, 318, NULL),
  -- Fortree City in rs
  -- Skitty for Pikachu
  (300, 30000, 153, 5, NULL, 28, NULL, NULL, NULL, 'Darrell', 25, 2500, 'SKITIT', NULL, NULL),
  -- Mossdeep City in rs
  -- Beldum (gift)
  (374, 37400, 195, 5, NULL, 27, 5, 5, 'After you enter the Hall of Fame', 'Steven', NULL, NULL, NULL, NULL, NULL),
  -- Pacifidlog Town in rs
  -- Corsola for Bellossom
  (222, 22200, 198, 5, NULL, 28, NULL, NULL, NULL, 'Lane', 182, 18200, 'COROSO', NULL, NULL),
  -- Professor Oak's Laboratory in frlg
  -- Bulbasaur (gift)
  (1, 100, 35, 6, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Charmander (gift)
  (4, 400, 35, 6, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 35, 6, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Route 2 in frlg
  -- Mr. Mime for Abra
  (122, 12200, 49, 6, NULL, 28, NULL, NULL, NULL, 'Reyley', 63, 6300, 'MIMIEN', NULL, NULL),
  -- Route 4 in frlg
  -- Magikarp (bought)
  (129, 12900, 57, 6, NULL, 35, 5, 5, NULL, 'The Magikarp salesman in the Pokémon Center', NULL, NULL, NULL, NULL, '500 Poké Dollars'),
  -- Cerulean City in frlg
  -- Jynx for Poliwhirl
  (124, 12400, 9, 6, NULL, 28, NULL, NULL, NULL, 'Dontae', 61, 6100, 'ZYNX', NULL, NULL),
  -- Underground Path (Kanto Routes 5-6) in frlg
  -- Nidoran F for Nidoran M, Pokémon FireRed only
  (29, 2900, 73, 6, 9, 28, NULL, NULL, NULL, 'Saige', 32, 3200, 'MS. NIDO', NULL, NULL),
  -- Nidoran M for Nidoran F, Pokémon LeafGreen only
  (32, 3200, 73, 6, 10, 28, NULL, NULL, NULL, 'Saige', 29, 2900, 'MR. NIDO', NULL, NULL),
  -- Vermilion City in frlg
  -- Farfetch'd for Spearow, holds Leek
  (83, 8300, 74, 6, NULL, 28, NULL, NULL, NULL, 'Elyssa', 21, 2100, 'CH''DING', 363, NULL),
  -- Route 11 in frlg
  -- Nidorina for Nidorino, Pokémon FireRed only
  (30, 3000, 40, 6, 9, 28, NULL, NULL, NULL, 'Turner', 33, 3300, 'NINA', NULL, NULL),
  -- Nidorino for Nidorina, Pokémon LeafGreen only
  (33, 3300, 40, 6, 10, 28, NULL, NULL, NULL, 'Turner', 30, 3000, 'NINO', NULL, NULL),
  -- Celadon City in frlg
  -- Clefairy (prize), Pokémon FireRed only
  (35, 3500, 6, 6, 9, 34, 8, 8, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '500 coins'),
  -- Abra (prize), Pokémon FireRed only
  (63, 6300, 6, 6, 9, 34, 9, 9, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '180 coins'),
  -- Scyther (prize), Pokémon FireRed only
  (123, 12300, 6, 6, 9, 34, 25, 25, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '5500 coins'),
  -- Porygon (prize), Pokémon FireRed only
  (137, 13700, 6, 6, 9, 34, 26, 26, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '9999 coins'),
  -- Dratini (prize), Pokémon FireRed only
  (147, 14700, 6, 6, 9, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2800 coins'),
  -- Clefairy (prize), Pokémon LeafGreen only
  (35, 3500, 6, 6, 10, 34, 12, 12, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '750 coins'),
  -- Abra (prize), Pokémon LeafGreen only
  (63, 6300, 6, 6, 10, 34, 7, 7, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '120 coins'),
  -- Pinsir (prize), Pokémon LeafGreen only
  (127, 12700, 6, 6, 10, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2500 coins'),
  -- Porygon (prize), Pokémon LeafGreen only
  (137, 13700, 6, 6, 10, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6500 coins'),
  -- Dratini (prize), Pokémon LeafGreen only
  (147, 14700, 6, 6, 10, 34, 24, 24, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '4600 coins'),
  -- Route 18 in frlg
  -- Lickitung for Golduck, Pokémon FireRed only
  (108, 10800, 47, 6, 9, 28, NULL, NULL, NULL, 'Haden', 55, 5500, 'MARC', NULL, NULL),
  -- Lickitung for Slowbro, Pokémon LeafGreen only
  (108, 10800, 47, 6, 10, 28, NULL, NULL, NULL, 'Haden', 80, 8000, 'MARC', NULL, NULL),
  -- Silph Co. in frlg
  -- Lapras (gift)
  (131, 13100, 67, 6, NULL, 27, 25, 25, 'After you beat Blue at Silph Co.', 'A Silph Co. employee on 7F', NULL, NULL, NULL, NULL, NULL),
  -- Fighting Dojo in frlg
  -- Hitmonlee (gift)
  (106, 10600, 14, 6, NULL, 27, 25, 25, 'After you beat him; pick one', 'Koichi, the Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Hitmonchan (gift)
  (107, 10700, 14, 6, NULL, 27, 25, 25, 'After you beat him; pick one', 'Koichi, the Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Cinnabar Lab in frlg
  -- Omanyte (fossil)
  (138, 13800, 12, 6, NULL, 29, 5, 5, 'Bring the Helix Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 12, 6, NULL, 29, 5, 5, 'Bring the Dome Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 12, 6, NULL, 29, 5, 5, 'Bring the Old Amber', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Seel for Ponyta
  (86, 8600, 12, 6, NULL, 28, NULL, NULL, NULL, 'Garett', 77, 7700, 'SEELOR', NULL, NULL),
  -- Electrode for Raichu
  (101, 10100, 12, 6, NULL, 28, NULL, NULL, NULL, 'Clifton', 26, 2600, 'ESPHERE', NULL, NULL),
  -- Tangela for Venonat
  (114, 11400, 12, 6, NULL, 28, NULL, NULL, NULL, 'Norma', 48, 4800, 'TANGENY', NULL, NULL),
  -- Water Labyrinth in frlg
  -- Togepi (egg)
  (175, 17500, 78, 6, NULL, 30, 5, 5, 'If your lead Pokémon is as friendly as can be', 'A traveling man', NULL, NULL, NULL, NULL, NULL),
  -- Celadon Condominiums in frlg
  -- Eevee (gift)
  (133, 13300, 7, 6, NULL, 27, 25, 25, 'In a Poké Ball on the table of the rooftop room', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Route 101 in emerald
  -- Treecko (gift)
  (252, 25200, 201, 7, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Torchic (gift)
  (255, 25500, 201, 7, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Mudkip (gift)
  (258, 25800, 201, 7, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Professor Birch's Laboratory in emerald
  -- Chikorita (gift)
  (152, 15200, 833, 7, NULL, 27, 5, 5, 'After you complete the Hoenn Pokédex; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Cyndaquil (gift)
  (155, 15500, 833, 7, NULL, 27, 5, 5, 'After you complete the Hoenn Pokédex; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Totodile (gift)
  (158, 15800, 833, 7, NULL, 27, 5, 5, 'After you complete the Hoenn Pokédex; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Rustboro City in emerald
  -- Seedot for Ralts, holds Chesto Berry
  (273, 27300, 235, 7, NULL, 28, NULL, NULL, NULL, 'Kobe', 280, 28000, 'DOTS', 179, NULL),
  -- Devon Corporation in emerald
  -- Lileep (fossil)
  (345, 34500, 148, 7, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 148, 7, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lavaridge Town in emerald
  -- Wynaut (egg)
  (360, 36000, 156, 7, NULL, 30, 5, 5, NULL, 'An old woman at the hot springs', NULL, NULL, NULL, NULL, NULL),
  -- Weather Institute in emerald
  -- Castform (gift), holds Mystic Water
  (351, 35100, 253, 7, NULL, 27, 25, 25, 'After you drive Team Aqua out of the Weather Institute', 'A Weather Institute scientist', NULL, NULL, NULL, 318, NULL),
  -- Fortree City in emerald
  -- Plusle for Volbeat
  (311, 31100, 153, 7, NULL, 28, NULL, NULL, NULL, 'Roman', 313, 31300, 'PLUSES', NULL, NULL),
  -- Battle Frontier (Generation III) in emerald
  -- Meowth for Skitty
  (52, 5200, 142, 7, NULL, 28, NULL, NULL, NULL, 'Isis', 300, 30000, 'MEOWOW', NULL, NULL),
  -- Mossdeep City in emerald
  -- Beldum (gift)
  (374, 37400, 195, 7, NULL, 27, 5, 5, 'After you enter the Hall of Fame', 'Steven', NULL, NULL, NULL, NULL, NULL),
  -- Pacifidlog Town in emerald
  -- Horsea for Bagon
  (116, 11600, 198, 7, NULL, 28, NULL, NULL, NULL, 'Skylar', 371, 37100, 'SEASOR', NULL, NULL);
