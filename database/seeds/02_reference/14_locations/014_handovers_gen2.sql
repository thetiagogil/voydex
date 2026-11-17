-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the games' own data, read from their disassemblies on 2026-11-17:
-- trades from data/events/npc_trades.asm, gifts and Eggs from each map's
-- script and the Game Corner prizes from each prize room's script (Gold /
-- Silver and Crystal).
-- Cross-check, and the names of givers the games leave unnamed: Bulbapedia's
-- gift Pokémon and in-game trade lists, read 2026-11-17.
-- An unnamed giver is described by who they are in the game and where they
-- stand. A trader is named by the Original Trainer the game gives the traded
-- Pokémon (Mike, Kyle and the rest).
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 2 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 005_encounters_gen2.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Professor Elm's Laboratory in gs
  -- Chikorita (gift), holds Berry (Gen II)
  (152, 15200, 817, 3, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Cyndaquil (gift), holds Berry (Gen II)
  (155, 15500, 817, 3, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Totodile (gift), holds Berry (Gen II)
  (158, 15800, 817, 3, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Violet City in gs
  -- Togepi (egg)
  (175, 17500, 138, 3, NULL, 30, 5, 5, 'After you get the Zephyr Badge', 'Elm''s aide in the Pokémon Center', NULL, NULL, NULL, NULL, NULL),
  -- Onix for Bellsprout, holds Bitter Berry
  (95, 9500, 138, 3, NULL, 28, NULL, NULL, NULL, 'Kyle', 69, 6900, 'ROCKY', 175, NULL),
  -- Goldenrod City in gs
  -- Eevee (gift)
  (133, 13300, 91, 3, NULL, 27, 20, 20, 'After you meet Bill in Ecruteak City', 'Bill', NULL, NULL, NULL, NULL, NULL),
  -- Abra (prize)
  (63, 6300, 91, 3, NULL, 34, 10, 10, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '200 coins'),
  -- Dratini (prize)
  (147, 14700, 91, 3, NULL, 34, 10, 10, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2100 coins'),
  -- Ekans (prize), Pokémon Gold only
  (23, 2300, 91, 3, 4, 34, 10, 10, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '700 coins'),
  -- Sandshrew (prize), Pokémon Silver only
  (27, 2700, 91, 3, 5, 34, 10, 10, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '700 coins'),
  -- Goldenrod Department Store in gs
  -- Machop for Drowzee, holds Gold Berry
  (66, 6600, 92, 3, NULL, 28, NULL, NULL, NULL, 'Mike', 96, 9600, 'MUSCLE', 169, NULL),
  -- Route 35 in gs
  -- Spearow (gift)
  (21, 2100, 116, 3, NULL, 27, 10, 10, 'He asks you to take it to his friend on Route 31', 'Randy', NULL, NULL, 'KENYA', NULL, NULL),
  -- Olivine City in gs
  -- Voltorb for Krabby, holds PRZCureBerry
  (100, 10000, 102, 3, NULL, 28, NULL, NULL, NULL, 'Tim', 98, 9800, 'VOLTY', 170, NULL),
  -- Cianwood City in gs
  -- Shuckle (gift), holds Berry (Gen II)
  (213, 21300, 85, 3, NULL, 27, 15, 15, 'He asks you to look after it', 'Mania', NULL, NULL, 'SHUCKIE', 168, NULL),
  -- Mt. Mortar in gs
  -- Tyrogue (gift)
  (236, 23600, 97, 3, NULL, 27, 10, 10, 'After you beat him', 'Kiyo', NULL, NULL, NULL, NULL, NULL),
  -- Blackthorn City in gs
  -- Rhydon for Dragonair, holds Bitter Berry
  (112, 11200, 82, 3, NULL, 28, NULL, NULL, NULL, 'Emy', 148, 14800, 'DON', 175, NULL),
  -- Celadon City in gs
  -- Mr. Mime (prize)
  (122, 12200, 6, 3, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '3333 coins'),
  -- Eevee (prize)
  (133, 13300, 6, 3, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6666 coins'),
  -- Porygon (prize)
  (137, 13700, 6, 3, NULL, 34, 20, 20, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '9999 coins'),
  -- Route 14 in gs
  -- Aerodactyl for Chansey, holds Gold Berry
  (142, 14200, 43, 3, NULL, 28, NULL, NULL, NULL, 'Kim', 113, 11300, 'AEROY', 169, NULL),
  -- Pewter City in gs
  -- Rapidash for Gloom, holds Burnt Berry
  (78, 7800, 104, 3, NULL, 28, NULL, NULL, NULL, 'Chris', 44, 4400, 'RUNNY', 172, NULL),
  -- Professor Elm's Laboratory in crystal
  -- Chikorita (gift), holds Berry (Gen II)
  (152, 15200, 817, 4, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Cyndaquil (gift), holds Berry (Gen II)
  (155, 15500, 817, 4, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Totodile (gift), holds Berry (Gen II)
  (158, 15800, 817, 4, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, 168, NULL),
  -- Violet City in crystal
  -- Togepi (egg)
  (175, 17500, 138, 4, NULL, 30, 5, 5, 'After you get the Zephyr Badge', 'Elm''s aide in the Pokémon Center', NULL, NULL, NULL, NULL, NULL),
  -- Onix for Bellsprout, holds Bitter Berry
  (95, 9500, 138, 4, NULL, 28, NULL, NULL, NULL, 'Kyle', 69, 6900, 'ROCKY', 175, NULL),
  -- Route 34 in crystal
  -- Pichu (egg)
  (172, 17200, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Cleffa (egg)
  (173, 17300, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Igglybuff (egg)
  (174, 17400, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Tyrogue (egg)
  (236, 23600, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Smoochum (egg)
  (238, 23800, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Elekid (egg)
  (239, 23900, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Magby (egg)
  (240, 24000, 115, 4, NULL, 30, 5, 5, 'The Odd Egg hatches into one of these', 'The Day-Care Man', NULL, NULL, NULL, NULL, NULL),
  -- Goldenrod City in crystal
  -- Eevee (gift)
  (133, 13300, 91, 4, NULL, 27, 20, 20, 'After you meet Bill in Ecruteak City', 'Bill', NULL, NULL, NULL, NULL, NULL),
  -- Abra (prize)
  (63, 6300, 91, 4, NULL, 34, 5, 5, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '100 coins'),
  -- Cubone (prize)
  (104, 10400, 91, 4, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '800 coins'),
  -- Wobbuffet (prize)
  (202, 20200, 91, 4, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '1500 coins'),
  -- Goldenrod Department Store in crystal
  -- Machop for Abra, holds Gold Berry
  (66, 6600, 92, 4, NULL, 28, NULL, NULL, NULL, 'Mike', 63, 6300, 'MUSCLE', 169, NULL),
  -- Route 35 in crystal
  -- Spearow (gift)
  (21, 2100, 116, 4, NULL, 27, 10, 10, 'He asks you to take it to his friend on Route 31', 'Randy', NULL, NULL, 'KENYA', NULL, NULL),
  -- Olivine City in crystal
  -- Voltorb for Krabby, holds PRZCureBerry
  (100, 10000, 102, 4, NULL, 28, NULL, NULL, NULL, 'Tim', 98, 9800, 'VOLTY', 170, NULL),
  -- Cianwood City in crystal
  -- Shuckle (gift), holds Berry (Gen II)
  (213, 21300, 85, 4, NULL, 27, 15, 15, 'He asks you to look after it', 'Mania', NULL, NULL, 'SHUCKIE', 168, NULL),
  -- Mt. Mortar in crystal
  -- Tyrogue (gift)
  (236, 23600, 97, 4, NULL, 27, 10, 10, 'After you beat him', 'Kiyo', NULL, NULL, NULL, NULL, NULL),
  -- Blackthorn City in crystal
  -- Dodrio for Dragonair, holds Smoke Ball
  (85, 8500, 82, 4, NULL, 28, NULL, NULL, NULL, 'Emy', 148, 14800, 'DORIS', 451, NULL),
  -- Dragon's Den in crystal
  -- Dratini (gift)
  (147, 14700, 89, 4, NULL, 27, 15, 15, 'Knows Extreme Speed if you answer every question right', 'The Dragon Clan elder', NULL, NULL, NULL, NULL, NULL),
  -- Power Plant in crystal
  -- Magneton for Dugtrio, holds Metal Coat
  (82, 8200, 34, 4, NULL, 28, NULL, NULL, NULL, 'Forest', 51, 5100, 'MAGGIE', 70, NULL),
  -- Celadon City in crystal
  -- Pikachu (prize)
  (25, 2500, 6, 4, NULL, 34, 25, 25, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2222 coins'),
  -- Porygon (prize)
  (137, 13700, 6, 4, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '5555 coins'),
  -- Larvitar (prize)
  (246, 24600, 6, 4, NULL, 34, 40, 40, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '8888 coins'),
  -- Route 14 in crystal
  -- Aerodactyl for Chansey, holds Gold Berry
  (142, 14200, 43, 4, NULL, 28, NULL, NULL, NULL, 'Kim', 113, 11300, 'AEROY', 169, NULL),
  -- Pewter City in crystal
  -- Xatu for Haunter, holds MysteryBerry
  (178, 17800, 104, 4, NULL, 28, NULL, NULL, NULL, 'Chris', 93, 9300, 'PAUL', 177, NULL);
