-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the games' own data, read from their disassemblies on 2026-11-17:
-- trades from data/events/trades.asm, gifts from each map's script and the
-- Game Corner prizes from data/events/prizes.asm (Red / Blue and Yellow).
-- Cross-check, and the names of givers the games leave unnamed: Bulbapedia's
-- gift Pokémon and in-game trade lists, read 2026-11-17.
-- An unnamed giver is described by who they are in the game and where they
-- stand. A trader is named by the Original Trainer the game gives the traded
-- Pokémon (in Generation I the traded Pokémon carry no trainer name, so the
-- trader is described).
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 1 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 004_encounters_gen1.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Professor Oak's Laboratory in rb
  -- Bulbasaur (gift)
  (1, 100, 35, 1, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Charmander (gift)
  (4, 400, 35, 1, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 35, 1, NULL, 27, 5, 5, 'Pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Route 2 in rb
  -- Mr. Mime for Abra
  (122, 12200, 49, 1, NULL, 28, NULL, NULL, NULL, 'A boy in the trade house', 63, 6300, 'MARCEL', NULL, NULL),
  -- Route 4 in rb
  -- Magikarp (bought)
  (129, 12900, 57, 1, NULL, 35, 5, 5, NULL, 'The Magikarp salesman in the Pokémon Center', NULL, NULL, NULL, NULL, '500 Poké Dollars'),
  -- Cerulean City in rb
  -- Jynx for Poliwhirl
  (124, 12400, 9, 1, NULL, 28, NULL, NULL, NULL, 'A man in the trade house', 61, 6100, 'LOLA', NULL, NULL),
  -- Underground Path (Kanto Routes 5-6) in rb
  -- Nidoran F for Nidoran M
  (29, 2900, 73, 1, NULL, 28, NULL, NULL, NULL, 'A girl in the Route 5 entrance', 32, 3200, 'SPOT', NULL, NULL),
  -- Vermilion City in rb
  -- Farfetch'd for Spearow
  (83, 8300, 74, 1, NULL, 28, NULL, NULL, NULL, 'A girl in the trade house', 21, 2100, 'DUX', NULL, NULL),
  -- Route 11 in rb
  -- Nidorina for Nidorino
  (30, 3000, 40, 1, NULL, 28, NULL, NULL, NULL, 'A boy upstairs in the gate', 33, 3300, 'TERRY', NULL, NULL),
  -- Celadon City in rb
  -- Nidorina (prize), Pokémon Red only
  (30, 3000, 6, 1, 1, 34, 17, 17, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '1200 coins'),
  -- Clefairy (prize), Pokémon Red only
  (35, 3500, 6, 1, 1, 34, 8, 8, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '500 coins'),
  -- Abra (prize), Pokémon Red only
  (63, 6300, 6, 1, 1, 34, 9, 9, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '180 coins'),
  -- Scyther (prize), Pokémon Red only
  (123, 12300, 6, 1, 1, 34, 25, 25, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '5500 coins'),
  -- Porygon (prize), Pokémon Red only
  (137, 13700, 6, 1, 1, 34, 26, 26, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '9999 coins'),
  -- Dratini (prize), Pokémon Red only
  (147, 14700, 6, 1, 1, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2800 coins'),
  -- Nidorino (prize), Pokémon Blue only
  (33, 3300, 6, 1, 2, 34, 17, 17, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '1200 coins'),
  -- Clefairy (prize), Pokémon Blue only
  (35, 3500, 6, 1, 2, 34, 12, 12, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '750 coins'),
  -- Abra (prize), Pokémon Blue only
  (63, 6300, 6, 1, 2, 34, 6, 6, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '120 coins'),
  -- Pinsir (prize), Pokémon Blue only
  (127, 12700, 6, 1, 2, 34, 20, 20, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2500 coins'),
  -- Porygon (prize), Pokémon Blue only
  (137, 13700, 6, 1, 2, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6500 coins'),
  -- Dratini (prize), Pokémon Blue only
  (147, 14700, 6, 1, 2, 34, 24, 24, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '4600 coins'),
  -- Celadon Condominiums in rb
  -- Eevee (gift)
  (133, 13300, 7, 1, NULL, 27, 25, 25, 'In a Poké Ball on the table of the rooftop room', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Route 18 in rb
  -- Lickitung for Slowbro
  (108, 10800, 47, 1, NULL, 28, NULL, NULL, NULL, 'A boy upstairs in the gate', 80, 8000, 'MARC', NULL, NULL),
  -- Silph Co. in rb
  -- Lapras (gift)
  (131, 13100, 67, 1, NULL, 27, 15, 15, 'After you beat Blue at Silph Co.', 'A Silph Co. employee on 7F', NULL, NULL, NULL, NULL, NULL),
  -- Fighting Dojo in rb
  -- Hitmonlee (gift)
  (106, 10600, 14, 1, NULL, 27, 30, 30, 'After you beat him; pick one', 'The Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Hitmonchan (gift)
  (107, 10700, 14, 1, NULL, 27, 30, 30, 'After you beat him; pick one', 'The Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Cinnabar Lab in rb
  -- Omanyte (fossil)
  (138, 13800, 12, 1, NULL, 29, 30, 30, 'Bring the Helix Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 12, 1, NULL, 29, 30, 30, 'Bring the Dome Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 12, 1, NULL, 29, 30, 30, 'Bring the Old Amber', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Seel for Ponyta
  (86, 8600, 12, 1, NULL, 28, NULL, NULL, NULL, 'A scientist in the fossil room', 77, 7700, 'SAILOR', NULL, NULL),
  -- Electrode for Raichu
  (101, 10100, 12, 1, NULL, 28, NULL, NULL, NULL, 'An old man in the trade room', 26, 2600, 'DORIS', NULL, NULL),
  -- Tangela for Venonat
  (114, 11400, 12, 1, NULL, 28, NULL, NULL, NULL, 'A woman in the trade room', 48, 4800, 'CRINKLES', NULL, NULL),
  -- Professor Oak's Laboratory in yellow
  -- Pikachu (gift)
  (25, 2500, 35, 2, NULL, 27, 5, 5, NULL, 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Route 2 in yellow
  -- Mr. Mime for Clefairy
  (122, 12200, 49, 2, NULL, 28, NULL, NULL, NULL, 'A boy in the trade house', 35, 3500, 'MILES', NULL, NULL),
  -- Route 4 in yellow
  -- Magikarp (bought)
  (129, 12900, 57, 2, NULL, 35, 5, 5, NULL, 'The Magikarp salesman in the Pokémon Center', NULL, NULL, NULL, NULL, '500 Poké Dollars'),
  -- Cerulean City in yellow
  -- Bulbasaur (gift)
  (1, 100, 9, 2, NULL, 27, 10, 10, 'If your Pikachu is friendly enough', 'Melanie', NULL, NULL, NULL, NULL, NULL),
  -- Route 24 in yellow
  -- Charmander (gift)
  (4, 400, 54, 2, NULL, 27, 10, 10, NULL, 'Damian', NULL, NULL, NULL, NULL, NULL),
  -- Underground Path (Kanto Routes 5-6) in yellow
  -- Machoke for Cubone
  (67, 6700, 73, 2, NULL, 28, NULL, NULL, NULL, 'A girl in the Route 5 entrance', 104, 10400, 'RICKY', NULL, NULL),
  -- Vermilion City in yellow
  -- Squirtle (gift)
  (7, 700, 74, 2, NULL, 27, 10, 10, 'After you get the Thunder Badge', 'Officer Jenny', NULL, NULL, NULL, NULL, NULL),
  -- Route 11 in yellow
  -- Dugtrio for Lickitung
  (51, 5100, 40, 2, NULL, 28, NULL, NULL, NULL, 'A boy upstairs in the gate', 108, 10800, 'GURIO', NULL, NULL),
  -- Celadon City in yellow
  -- Vulpix (prize)
  (37, 3700, 6, 2, NULL, 34, 18, 18, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '1000 coins'),
  -- Wigglytuff (prize)
  (40, 4000, 6, 2, NULL, 34, 22, 22, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2680 coins'),
  -- Abra (prize)
  (63, 6300, 6, 2, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '230 coins'),
  -- Scyther (prize)
  (123, 12300, 6, 2, NULL, 34, 30, 30, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6500 coins'),
  -- Pinsir (prize)
  (127, 12700, 6, 2, NULL, 34, 30, 30, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6500 coins'),
  -- Porygon (prize)
  (137, 13700, 6, 2, NULL, 34, 26, 26, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '9999 coins'),
  -- Celadon Condominiums in yellow
  -- Eevee (gift)
  (133, 13300, 7, 2, NULL, 27, 25, 25, 'In a Poké Ball on the table of the rooftop room', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Route 18 in yellow
  -- Parasect for Tangela
  (47, 4700, 47, 2, NULL, 28, NULL, NULL, NULL, 'A cook upstairs in the gate', 114, 11400, 'SPIKE', NULL, NULL),
  -- Silph Co. in yellow
  -- Lapras (gift)
  (131, 13100, 67, 2, NULL, 27, 15, 15, 'After you beat Blue at Silph Co.', 'A Silph Co. employee on 7F', NULL, NULL, NULL, NULL, NULL),
  -- Fighting Dojo in yellow
  -- Hitmonlee (gift)
  (106, 10600, 14, 2, NULL, 27, 30, 30, 'After you beat him; pick one', 'The Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Hitmonchan (gift)
  (107, 10700, 14, 2, NULL, 27, 30, 30, 'After you beat him; pick one', 'The Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Cinnabar Lab in yellow
  -- Omanyte (fossil)
  (138, 13800, 12, 2, NULL, 29, 30, 30, 'Bring the Helix Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 12, 2, NULL, 29, 30, 30, 'Bring the Dome Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 12, 2, NULL, 29, 30, 30, 'Bring the Old Amber', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Dewgong for Growlithe
  (87, 8700, 12, 2, NULL, 28, NULL, NULL, NULL, 'A woman in the trade room', 58, 5800, 'CEZANNE', NULL, NULL),
  -- Muk for Kangaskhan
  (89, 8900, 12, 2, NULL, 28, NULL, NULL, NULL, 'A scientist in the fossil room', 115, 11500, 'STICKY', NULL, NULL),
  -- Rhydon for Golduck
  (112, 11200, 12, 2, NULL, 28, NULL, NULL, NULL, 'An old man in the trade room', 55, 5500, 'BUFFY', NULL, NULL);
